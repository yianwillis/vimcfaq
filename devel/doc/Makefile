DOC_DIR=../../doc
TOOLS_DIR=../tools

all: vim-stylesheet.css html

vim-stylesheet.css: ${TOOLS_DIR}/vim-stylesheet.css
	cp ${TOOLS_DIR}/vim-stylesheet.css .

html: ${DOC_DIR}/tags-cn ${DOC_DIR}/*.cnx
	${TOOLS_DIR}/vim2html.pl --banner ${DOC_DIR}/tags-cn ${DOC_DIR}/*.cnx
