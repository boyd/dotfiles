set number
set filetype=true
set nowrap
set sw=2
set ignorecase
set smartcase
set ts=2
syntax enable
set hlsearch
 
" Enable use of the mouse for all modes
set mouse=a
 
" set tabstop=2
" set expandtab
set sts=2
 
" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler
 
 
" Enable use of the mouse for all modes
set mouse=a
 
" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start
 
" What to use for an indent.
" This will affect Ctrl-T and 'autoindent'.
" Python: 2 spaces
au BufRead,BufNewFile *.py set shiftwidth=2
au BufRead,BufNewFile *.py set expandtab
au BufRead,BufNewFile *py set tabstop=2
 
" Wrap text after a certain number of characters
au BufRead,BufNewFile *.py set textwidth=79
 
" The following line sets the smartindent mode for *.py files. It means that
" after typing lines which start with any of the keywords in the list (ie.
" def, class, if, etc) the next line will automatically indent itself to the
" next level of indentation:
au BufRead,BufNewFile *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
 
" Remove any extra whitespace from the ends of lines when saving a file
autocmd BufWritePre *.py normal m`:%s/\s\+$//e``
