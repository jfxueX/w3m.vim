" File: syntax/w3m.vim
" Last Modified: 2012.04.03
" Author: yuratomo (twitter @yusetomo)

if version < 700
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

"syn match w3mMark /[\*\+\-\#="]/
"syn match w3mNumber /^ *[0-9]\+\./
syn match w3mDate /\<[0-9]\{1,4}年[0-9]\{1,2}月[0-9]\{1,2}日/
syn match w3mBracket1 /「\_.\{-0,30}」/
syn match w3mBracket2 /『\_.\{-0,30}』/
syn match w3mBracket3 /【\_.\{-0,30}】/
syn keyword w3mCopyright Copyright
syn match w3mUrl contained "\vhttps?://[[:alnum:]][-[:alnum:]]*[[:alnum:]]?(\.[[:alnum:]][-[:alnum:]]*[[:alnum:]]?)*\.[[:alpha:]][-[:alnum:]]*[[:alpha:]]?(:\d+)?(/[^[:space:]]*)?$"
syn match w3mUrl "http[s]\=://\S*"

syn match w3mHeaderPackage          /^Package [^[:space:]]\+$/
syn match w3mHeaderOverview         /^Overview .$/
syn match w3mHeaderIndex            "^Index .$"
syn match w3mHeaderConstants        /^Constants$/
syn match w3mHeaderVariables        /^Variables$/
syn match w3mHeaderSubDir           /^Subdirectories$/
syn match w3mHeaderExamples         /^Examples$/
syn match w3mHeaderPackage_files    /^Package files$/
syn match w3mHeaderEnvVars          /^Environment Variables$/

"hi default link w3mMark Function
"hi default link w3mNumber Number
hi default link w3mDate Define
hi default link w3mBracket1 Macro
hi default link w3mBracket2 Macro
hi default link w3mBracket3 Macro
hi default link w3mCopyright Keyword
hi default link w3mUrl Comment
hi default link w3mTitle Comment

hi default link w3mHeaderPackage        Todo
hi default link w3mHeaderOverview       Define
hi default link w3mHeaderIndex          Define
hi default link w3mHeaderConstants      Define
hi default link w3mHeaderVariables      Define
hi default link w3mHeaderSubDir         Define
hi default link w3mHeaderExamples       Title
hi default link w3mHeaderPackage_files  Title
hi default link w3mHeaderEnvVars        Title

let b:current_syntax = 'w3m'
