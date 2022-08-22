# leetcode-neovim
a vim plugin for submitting code to leetcode, test your code and execute it in vim

# requirements
This plugin comes configured and packaged with Water Linux

if you want to install it manually you first have to install 
[leetcode-cli](https://github.com/clearloop/leetcode-cli)
# Installation
The installation process is like any other plugin
```
Plug 'Virgilio-AI/leetcode-neovim'
```
# Quick start
```
" Leetcode Nvim Configs:
augroup leetcode
	autocmd!
	autocmd VimEnter *.leetcode.*.py LeetcodeEnter
	autocmd BufEnter *.leetcode.*.py nnoremap <F11> :LeetcodeTest<CR>
	autocmd BufEnter *.leetcode.*.py nnoremap <F11><F11> :LeetcodeExecute<CR>
augroup END

```
add [leetcode](https://github.com/clearloop/leetcode-cli) executable under ~/.cargo/bin/leetcode to the path

