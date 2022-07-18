" Date: 29/May/2022 - Sunday
" Author: Virgilio Murillo Ochoa
" personal github: Virgilio-AI
" linkedin: https://www.linkedin.com/in/virgilio-murillo-ochoa-b29b59203
" contact: virgiliomurilloochoa1@gmail.com
" web: virgiliomurillo.com


" ------------------------------------------------------------------------------
" Exit when your app has already been loaded (or "compatible" mode set)
if exists("g:loaded_code_runner") || &cp
  finish
endif
let g:loaded_code_runner= 1 " your version number
let s:keepcpo           = &cpo
set cpo&vim

" Public Interface:
" This are the default mappings
" Example:
" if !hasmapto('<Plug>AppFunction')
"   map <unique> <F11> <Plug>AppFunction
" endif

" for compile and run file, std input or custom files
if !hasmapto('<Plug>CompileAndRun')
  map <unique> <F11> <Plug>TestLeetcode
endif

" for compile and run file, input from custom files
if !hasmapto('<Plug>CompileAndRunInput')
  map <unique> <F11><F11> <Plug>ExecuteLeetcode
endif






" Global Maps:
"
" Example:
"
" noremap <silent> <unique> <script> <Plug>AppFunction
"  \ :call <SID>AppFunction()<CR>


noremap <silent> <unique> <script> <Plug>TestLeetcode
 \ :call <SID>TestLeetcode()<CR>

noremap <silent> <unique> <script> <Plug>ExecuteLeetcode
 \ :call <SID>ExecuteLeetcode()<CR>


noremap <silent> <unique> <script> <Plug>EnterLeetcode
 \ :call <SID>EnterLeetcode()<CR>











" ------------------------------------------------------------------------------
" Global Functions: here are the global functions that will call all the other
" local functions
" Example:
" fun! s:AppFunction()
"   call s:InternalAppFunction()
"   call s:InternalAppFunction()
" endfun



fun! s:TestLeetcode()
endfun



fun! s:ExecuteLeetcode()
endfun

fun! s:EnterLeetcode()
	normal GVgg=
	:Tnew
	normal <C-w>w
	:T echo "hello world"
endfun






" ------------------------------------------------------------------------------
" Internal Functions: these are the internal functions that cannot be accesed
" outside of the script
" Example:
" fun! s:InternalAppFunction()
" 	echo "calling the internal app function"
" endfun



" ------------------------------------------------------------------------------
let &cpo= s:keepcpo
unlet s:keepcpo
