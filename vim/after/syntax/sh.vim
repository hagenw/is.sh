" Add 'is' to the operators (https://github.com/hagenw/is.sh)
syn match   shOperator  "\<is\>"                                    nextgroup=isArticle,isArg skipwhite
syn match   shOperator  "\<is not\>"                                nextgroup=isArticle,isArg skipwhite
syn keyword isArticle   a an the                                    nextgroup=isArg skipwhite contained
syn keyword isArg       file dir directory link symlink             contained
syn keyword isArg       existent existing exist exists              contained
syn keyword isArg       readable writeable executable               contained
syn keyword isArg       available installed var variable empty      contained
syn keyword isArg       number older newer gt lt ge le eq           contained
syn keyword isArg       equal match matching substr substring       contained
syn keyword isArg       true false                                  contained

hi def link isArg       shCommandSub
hi def link isArticle   shCommandSub
