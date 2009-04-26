
import re
import doc
import common
	

############### Word Parsing #####################

def handleVar(man, match):
	id = match.group('varid')
	val = man.doc.getVar(id)
	man.send(doc.ObjectEvent(doc.L_WORD, doc.ID_NEW, doc.Word(val)))

INITIAL_WORDS = [
	(handleVar, doc.VAR_RE)
]

def handleText(man, line):
	global re
	
	# init RE_WORDS
	if man.words_re == None:
		text = ""
		i = 0
		for (fun, wre) in man.words:
			if text <> "":
				text = text + "|"
			text = text + "(?P<a" + str(i) + ">" + wre + ")"
			i = i + 1
		man.words_re = re.compile(text)
	
	# look in line
	match = man.words_re.search(line)
	while match:
		idx = int(match.lastgroup[1:])
		fun, re = man.words[idx]
		word = line[:match.start()]
		if word:
			man.send(doc.ObjectEvent(doc.L_WORD, doc.ID_NEW, doc.Word(word)))
		line = line[match.end():]
		fun(man, match)
		match = man.words_re.search(line)
	
	# end of line
	if line:
		man.send(doc.ObjectEvent(doc.L_WORD, doc.ID_NEW, doc.Word(line)))


############### Line Parsing ######################

def handleComment(man, match):
	pass

def handleAssign(man, match):
	man.doc.setVar(match.group(1), match.group(2))

def handleUse(man, match):
	name = match.group(1)
	path = man.doc.getVar("THOT_USE_PATH")
	mod = common.loadModule(name, path)
	if mod:
		mod.init(man)
	else:
		common.onError('cannot load module %s' % name)

INITIAL_LINES = [
	(handleComment, re.compile("^@@.*")),
	(handleAssign, re.compile("^@([a-zA-Z_0-9]+)\s*=(.*)")),
	(handleUse, re.compile("^@use\s+(\S+)"))
]

class DefaultParser:
	
	def parse(self, handler, line):
		line = handler.doc.reduceVars(line)
		done = False
		for (fun, re) in handler.lines:
			match = re.match(line)
			if match:
				fun(handler, match)
				done = True
				break
		if not done:
			handleText(handler, line)


class Manager:
	item = None
	items = None
	parser = None
	doc = None
	lines = None
	words = None
	words_re = None
	added_lines = None
	added_words = None
	
	def __init__(self, doc):
		self.item = doc
		self.doc = doc
		self.parser = DefaultParser()
		self.items = []
		self.lines = INITIAL_LINES[:]
		self.words = INITIAL_WORDS[:]
		self.added_lines = []
		self.added_words = []
	
	def get(self):
		return item
	
	def send(self, event):
		#print "send(" + str(event) + ")"
		self.item.onEvent(self, event)
	
	def push(self, item):
		self.items.append(self.item)
		self.item = item
		#print "push(" + str(item) + ")"
	
	def pop(self):
		#print "pop(" + str(self.item) + ") to " + str(self.items[-1])
		self.item = self.items.pop()
	
	def forward(self, event):
		#print "forward(" + str(event) + ")"
		self.pop()
		self.send(event)
	
	def setParser(self, parser):
		self.parser = parser
	
	def getParser(self):
		return self.parser
	
	def parse(self, file):
		for line in file:
			if line[-1] == '\n':
				line = line[0:-1]
			self.parser.parse(self, line)
		self.send(doc.Event(doc.L_DOC, doc.ID_END))
		self.doc.clean()

	def addLine(self, line):
		self.added_lines.append(line)
		self.lines.append(line)
	
	def addWord(self, word):
		self.added_words.append(word)
		self.words.append(word)
		self.words_re = None
	
	def setSyntax(self, lines, words):
		
		# process lines
		self.lines = []
		self.lines.extend(INITIAL_LINES)
		self.lines.extend(self.added_lines)
		self.lines.extend(lines)
		
		# process words
		self.words = []
		self.words.extend(INITIAL_WORDS)
		self.words.extend(self.added_words)
		self.words.extend(words)
		self.words_re = None

