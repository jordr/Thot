# Thot V0.1

Thot is a document generator taking as input a textual document
expressed in a wiki-like language (currently dokuwiki syntax is
supported but more will be added) and produces as output a nice
displayable document (HTML, Latex, PDF, etc). The main concept is to
make document-making as less painful as possible while unleashing
powerful textual dialect: the basic wiki syntax may be improved by
augmenting the syntax thanks to external modules.

Thot is delivered under the license GPL v2 delivered in the [COPYING.md](file:COPYING.md) file.

To install Thot, unpack the archive containing it and type:
```
	PYTHON ./setup.py install [--user]
```
With `PYTHON` your command to invoke Python V3 and `--user` optional to install Thot locally.

For developing Thot, use instead the command below:
```
	PYTHON ./setup.py develop --user
```

For any problem, you can contact me to [hug.casse@gmail.com](mailto:hug.casse@gmail.com).
