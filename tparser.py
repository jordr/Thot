
import re
import doc
import common
import os.path

DEBUG = False

############### Word Parsing #####################

def handleVar(man, match):
	id = match.group('varid')
	val = man.doc.getVar(id)
	man.send(doc.ObjectEvent(doc.L_WORD, doc.ID_NEW, doc.Word(val)))

INITIAL_WORDS = [
	(handleVar, doc.VAR_RE)
]

def handleText(man, line):

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
		fun, wre = man.words[idx]
		word = line[:match.start()]
		if word:
			man.send(doc.ObjectEvent(doc.L_WORD, doc.ID_NEW, doc.Word(word)))
		line = line[match.end():]
		fun(man, match)
		match = man.words_re.search(line)

	# end of line
	man.send(doc.ObjectEvent(doc.L_WORD, doc.ID_NEW, doc.Word(line + ' ')))


############### Line Parsing ######################

def handleComment(man, match):
	pass

def handleAssign(man, match):
	man.doc.setVar(match.group(1), match.group(2))

def handleUse(man, match):
	name = match.group(1).strip()
	if name in man.used_mods:
		return
	path = man.doc.getVar("THOT_USE_PATH")
	mod = common.loadModule(name, path)
	if mod:
		man.used_mods.append(mod)
		mod.init(man)
	else:
		common.onError('cannot load module %s' % name)

def handleInclude(man, match):
	path = match.group(1).strip()
	if not os.path.isabs(path):
		path = os.path.join(os.path.dirname(man.file_name), path)
	try:
		file = open(path)
		man.parseInternal(file, path)
	except IOError, e:
		common.onError('%s:%d: cannot include "%s": %s' % (man.file_name, man.line_num, path, e))

def handleLabel(man, match):
	par = doc.Par()
	man.push(par)
	man.getParser().parse(man, match.group(1))
	while par <> man.get():
		man.pop()
	man.pop()
	man.get().setLabel(par)


INITIAL_LINES = [
	(handleComment, re.compile("^@@.*")),
	(handleAssign, re.compile("^@([a-zA-Z_0-9]+)\s*=(.*)")),
	(handleUse, re.compile("^@use\s+(\S+)")),
	(handleInclude, re.compile('^@include\s+(.*)')),
	(handleLabel, re.compile('^@label\s+(.*)'))
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
	line_num = None
	file_name = None
	used_mods = None

	def __init__(self, doc):
		self.item = doc
		self.doc = doc
		self.parser = DefaultParser()
		self.items = []
		self.lines = INITIAL_LINES[:]
		self.words = INITIAL_WORDS[:]
		self.added_lines = []
		self.added_words = []
		self.used_mods = []

	def get(self):
		return self.item

	def debug(self, msg):
		"""Used to output message."""
		print "DEBUG: %s" % msg

	def send(self, event):
		if DEBUG:
			self.debug("send(%s)" % event) 
		self.item.onEvent(self, event)

	def push(self, item):
		self.items.append(self.item)
		self.item = item
		item.setFileLine(self.file_name, self.line_num)
		if DEBUG:
			self.debug("push(%s)" % item)
			self.debug("stack = %s" % self.items)

	def pop(self):
		self.item = self.items.pop()
		if DEBUG:
			self.debug("pop(): %s" % self.item)
			self.debug("stack = %s" % self.items)		

	def forward(self, event):
		if DEBUG:
			self.debug("forward(%s)" % event)
		self.pop()
		self.send(event)

	def setParser(self, parser):
		self.parser = parser

	def getParser(self):
		return self.parser

	def parseInternal(self, file, name):
		prev_line = self.line_num
		prev_file = self.file_name
		self.line_num = 0
		self.file_name = name
		for line in file:
			self.line_num += 1
			if line[-1] == '\n':
				line = line[0:-1]
			self.parser.parse(self, line)
		self.line_num = prev_line
		self.file_name = prev_file

	def parse(self, file, name = '<unknown>'):
		try:
			self.parseInternal(file, name)
			self.send(doc.Event(doc.L_DOC, doc.ID_END))
			self.doc.clean()
		except common.ParseException, e:
			common.onError('%s:%d: %s' % (self.file_name, self.line_num, str(e)))

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

class BlockParser:
	old = None
	block = None
	re = None

	def __init__(self, man, block, re):
		self.old = man.getParser()
		man.setParser(self)
		self.block = block
		self.re = re
		man.send(doc.ObjectEvent(doc.L_PAR, doc.ID_NEW, self.block))

	def parse(self, man, line):
		if self.re.match(line):
			man.setParser(self.old)
		else:
			self.block.add(line)
