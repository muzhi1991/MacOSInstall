#!/bin/sh
basepath=$(cd `dirname $0`; pwd)

DEFAULT_RC_NAME=.zshrc
MYRC_NAME=.myrc
INSERT_CONTENT='source '$HOME/${MYRC_NAME}

if [ -f ~/${DEFAULT_RC_NAME} ]; then
    linecount=$(find ~/.zshrc|xargs grep -c ${MYRC_NAME})
    if [[ ${linecount} -eq 0 ]]; then
        echo ${INSERT_CONTENT} >> ~/${DEFAULT_RC_NAME}
        echo "add line to ~/.zshrc "
        #cp ${basepath}/${MYRC_NAME} ~/.
    fi
    ln -siF ${basepath}/${MYRC_NAME} $HOME/
fi
