colorscheme default
set background=dark

fun! ResetHL()
    for hl_group in getcompletion('', 'highlight')
        exe 'hi ' . hl_group . ' guifg=gray ctermfg=gray'
    endfor
endfun

call ResetHL()

" Line numbers:
hi LineNr ctermfg=240

" Comments:
hi Comment ctermfg=240
hi SpecialComment ctermfg=240

" Strings:
hi String ctermfg=064

" Characters:
hi Character ctermfg=green
hi SpecialChar ctermfg=green

" Errors:
hi Error ctermfg=gray ctermbg=black
hi Exception ctermfg=gray ctermbg=black

" Preprocessor directives:
syntax match Directive /#\w*/
hi Directive cterm=bold ctermfg=red

" Constants:
hi Number ctermfg=blue
hi Float ctermfg=blue
hi Boolean ctermfg=blue
hi Constant ctermfg=blue

" TODOs:
hi Todo cterm=bold ctermfg=240 ctermbg=black

" Search:
hi Search ctermfg=white ctermbg=240

" Matching parenthesis:
hi MatchParen ctermfg=white ctermbg=240

" Functions:
syntax match CustomFunction /\(.*\)\@<=\h\w*\(<\w\+>\)\=(/he=e-1
hi CustomFunction cterm=bold ctermfg=white

" Keywords:
" syntax keyword CustomKeyword alignas
" syntax keyword CustomKeyword alignof
" syntax keyword CustomKeyword and
" syntax keyword CustomKeyword and_eq
" syntax keyword CustomKeyword asm
" syntax keyword CustomKeyword atomic_cancel
" syntax keyword CustomKeyword atomic_commit
" syntax keyword CustomKeyword atomic_noexcept
" syntax keyword CustomKeyword auto
" syntax keyword CustomKeyword bitand
" syntax keyword CustomKeyword bitor
" syntax keyword CustomKeyword bool
" syntax keyword CustomKeyword break
" syntax keyword CustomKeyword case
" syntax keyword CustomKeyword catch
" syntax keyword CustomKeyword char
" syntax keyword CustomKeyword char8_t
" syntax keyword CustomKeyword char16_t
" syntax keyword CustomKeyword char32_t
" syntax keyword CustomKeyword class
" syntax keyword CustomKeyword compl
" syntax keyword CustomKeyword concept
" syntax keyword CustomKeyword const
" syntax keyword CustomKeyword consteval
" syntax keyword CustomKeyword constexpr
" syntax keyword CustomKeyword constinit
" syntax keyword CustomKeyword const_cast
" syntax keyword CustomKeyword continue
" syntax keyword CustomKeyword co_await
" syntax keyword CustomKeyword co_return
" syntax keyword CustomKeyword co_yield
" syntax keyword CustomKeyword decltype
" syntax keyword CustomKeyword default
" syntax keyword CustomKeyword delete
" syntax keyword CustomKeyword do
" syntax keyword CustomKeyword double
" syntax keyword CustomKeyword dynamic_cast
" syntax keyword CustomKeyword else
" syntax keyword CustomKeyword enum
" syntax keyword CustomKeyword explicit
" syntax keyword CustomKeyword export
" syntax keyword CustomKeyword extern
" syntax keyword CustomKeyword false
" syntax keyword CustomKeyword float
" syntax keyword CustomKeyword for
" syntax keyword CustomKeyword friend
" syntax keyword CustomKeyword goto
" syntax keyword CustomKeyword if
" syntax keyword CustomKeyword inline
" syntax keyword CustomKeyword int
" syntax keyword CustomKeyword long
" syntax keyword CustomKeyword mutable
" syntax keyword CustomKeyword namespace
" syntax keyword CustomKeyword new
" syntax keyword CustomKeyword noexcept
" syntax keyword CustomKeyword not
" syntax keyword CustomKeyword not_eq
" syntax keyword CustomKeyword nullptr
" syntax keyword CustomKeyword operator
" syntax keyword CustomKeyword or
" syntax keyword CustomKeyword or_eq
" syntax keyword CustomKeyword private
" syntax keyword CustomKeyword protected
" syntax keyword CustomKeyword public
" syntax keyword CustomKeyword reflexpr
" syntax keyword CustomKeyword register
" syntax keyword CustomKeyword reinterpret_cast
" syntax keyword CustomKeyword requires
" syntax keyword CustomKeyword return
" syntax keyword CustomKeyword short
" syntax keyword CustomKeyword signed
" syntax keyword CustomKeyword sizeof
" syntax keyword CustomKeyword static
" syntax keyword CustomKeyword static_assert
" syntax keyword CustomKeyword static_cast
" syntax keyword CustomKeyword struct
" syntax keyword CustomKeyword switch
" syntax keyword CustomKeyword synchronized
" syntax keyword CustomKeyword template
" syntax keyword CustomKeyword this
" syntax keyword CustomKeyword thread_local
" syntax keyword CustomKeyword throw
" syntax keyword CustomKeyword true
" syntax keyword CustomKeyword try
" syntax keyword CustomKeyword typedef
" syntax keyword CustomKeyword typeid
" syntax keyword CustomKeyword typename
" syntax keyword CustomKeyword union
" syntax keyword CustomKeyword unsigned
" syntax keyword CustomKeyword using
" syntax keyword CustomKeyword virtual
" syntax keyword CustomKeyword void
" syntax keyword CustomKeyword volatile
" syntax keyword CustomKeyword wchar_t
" syntax keyword CustomKeyword while
" syntax keyword CustomKeyword xor
" syntax keyword CustomKeyword xor_eq
" hi CustomKeyword cterm=bold
