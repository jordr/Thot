# textile -- textile front-end
# Copyright (C) 2015  <hugues.casse@laposte.net>
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

# Supported syntax
#
# Text Styling (TS)
#	(class)		style class
#	(#id)		identifier
#	(class#id)
#	{CSS}
#	[L]			language
#
# Paragrah Styling (PS, includes TS)
#	<			align left
#	>			align right
#	=			centered
#	<>			justified
#	-			align middle
#	^			align top
#	~			align bottom
#	(+			indentation
#	)+			indentation
# 
# Text format (supports TS)
#	_xxx_		emphasize / italics
#	__xxx__		italics
#	*xxx*		strongly emphasized / bold
#	**xxx**		bold
#	-xxx-		strikethrough
#	+xxx+		underline
#	++xxx++		bigger
#	--smaller--	smaller
#	%...%		span
#	~xxx~		subscript
#	??xxx??		citation
#	^xxx^		supersript
#	==xxx==		escaping (multi-line)
#
# paragraphs
#	IPS?.		switch to paragraph I (p default)
#	IPS?..		multiline paragraph
#	p (default), bq, bc, hi, clear, dl, table, fn
#
# Lists
#	PS?*+		bulleted list
#	PS?#+		numbered list
#	PS?#n		numbered list starting at n
#	PS?#_		continued list
#	PS?(+|#)*	melted list
#	PS?; TERM \n; DEFINITION	definition list
#	PS?- TERM := DEFINITION	definition list
#
# Tables
#	table style (TaS) includes
#		PS
#		_	header
#		\i	column span
#		/i	row span
#	tablePS?.
#	TaS?|TaS?_. ... |TaS?_. ... |	header
#	TaS?|TaS? ... |TaS? ... |		row
#
# Code
#	@xxx@			inline code
#	bc.	... \n		single line code
#	bc.. ... \n p.	multi line code
#
# Headings
#	hi.			header for ith level.
#	hi(#R).		header with reference R.
#
# Blockquotes
#	bq. ...			single line blockquote
#	bq.. ... \n p.	multi-line quote
#
# Notes
#	[i]			foot note reference
#	fni. ...	foot note definition
#	[#R]		foot note reference
#	note#R. ...	foot note definition
#
# Links
#	"(CSS)?...(tooltip)?":U		link to URL U
#	'(CSS)?...(tooltip)?':U		link to URL U
#	["(CSS)?...(tooltip)?":U]	link to URL U
#	[...]U						alternate form
#
# Images
#	!PS?U!			Image whose URL is U.
#	!PS?U WxH!		Image with dimension (support percents / initial width, height).
#	!PS?U Ww Hh!	Image with dimension.
#	!PS?U n%!		Percentage on w and h.
#	!PS?U (...)!	Alternate text.
#
# Meta-characters
#	(c), (r), (tm), {c|}, {|c} cent, {L-}, {-L} pound,
#	{Y=}, {=Y} yen 

import tparser
import doc
import re
import highlight
import common
