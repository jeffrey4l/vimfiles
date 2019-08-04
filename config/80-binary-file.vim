" Install
"
"     yaourt -S docx2txt antiword poppler pandoc unoconv
 
let g:zipPlugin_ext = '*.zip,*.jar,*.xpi,*.ja,*.war,*.ear,*.celzip,*.oxt,*.kmz,*.wsz,*.xap,*.docm,*.dotx,*.dotm,*.potx,*.potm,*.ppsx,*.ppsm,*.pptx,*.pptm,*.ppam,*.sldx,*.thmx,*.xlam,*.xlsm,*.xlsb,*.xltx,*.xltm,*.xlam,*.crtx,*.vdw,*.glox,*.gcsx,*.gqsx'
autocmd BufReadPre *.docx set ro
" require docx2txt
autocmd BufReadPost *.docx silent %!docx2txt "%" -
" require antiword
autocmd BufReadPost *.doc silent %!antiword "%"
" require poppler
autocmd BufReadPost *.pdf silent %!pdftotext "%" -
" require pandoc
autocmd BufReadPost *.rtf,*.odp,*.odt silent %!pandoc "%" -tplain -o /dev/stdout
" require unoconv
autocmd BufReadPost *.xlsx silent %!unoconv --stdout -f csv "%" |column -s, -t
" require jp2a
autocmd BufReadPost *.jpg set nowrap
autocmd BufReadPost *.jpg silent %!jp2a --width=250 "%"
