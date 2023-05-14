#!/bin/bash

EN_LANG="AU"
ENCODING="utf-8"

curl -sS "http://ftp.vim.org/vim/runtime/spell/en/en_"$EN_LANG".diff" > ./en_AU.diff

# create empty files to link
touch "en_"$EN_LANG"."$ENCODING".add"
touch "en_"$EN_LANG"."$ENCODING".add.spl"
touch "en_"$EN_LANG"."$ENCODING".spl"
touch "en_"$EN_LANG"."$ENCODING".sug"
