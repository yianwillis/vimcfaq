DOC_DIR=../../doc
TOOLS_DIR=../tools
VIMCDOC_DIR=../../../vimcdoc/doc

all: vim-stylesheet.css html

vim-stylesheet.css: ${TOOLS_DIR}/vim-stylesheet.css
	cp ${TOOLS_DIR}/vim-stylesheet.css .

html: ${DOC_DIR}/tags-cn ${DOC_DIR}/*.cnx
	${TOOLS_DIR}/vim2html.pl \
		${DOC_DIR}/tags-cn \
		--global_url=https://yianwillis.github.io/vimcdoc/doc \
		--global_tag=${VIMCDOC_DIR}/tags-cn \
		${DOC_DIR}/*.cnx
