colo desert

set relativenumber
set number
set so=10
set guifont=peep:h21

call plug#begin()
Plug 'lervag/vimtex'
Plug 'itchyny/calendar.vim'
Plug 'rhysd/vim-grammarous'
call plug#end()

:set guioptions-=m  "remove menu bar
:set guioptions-=T  "remove toolbar
:set guioptions-=r  "remove right-hand scroll bar
:set guioptions-=L  "remove left-hand scroll bar

map <F6> :setlocal spell! spelllang=en_gb<CR>
map <F5> :setlocal spell! spelllang=de<CR>
map <F1> <
map <F2> >
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set splitbelow
set splitright
map VS :sp<CR>
map QQ :q<CR>
imap <F1> <
imap <F2> >
map Ex :Explore C:\LaTeX\<CR>

let g:tex_flavor = "latex"
let g:vimtex_view_general_viewer = 'SumatraPDF'
let g:vimtex_view_general_options
	\ = '-reuse-instance -forward-search @tex @line @pdf'
let g:vimtex_view_general_options_latexmk = '-reuse-instance'

set nocompatible
filetype plugin on

inoremap <Space><Space> <Esc>/<++><Enter>"_c4l
inoremap <S-Space> <Space>
inoremap ödc \documentclass[a4paper]{}<Enter><Enter><++><Esc>2k$i
inoremap kj <Esc>
inoremap öpa ()<++><Esc>T(i
inoremap ösq []<++><Esc>T[i
inoremap öbr {}<++><Esc>T{i

"Latex
autocmd FileType tex inoremap öbd \begin{document}<Enter><Enter><Enter><Enter>\end{document}<Esc>2k$i
autocmd FileType tex inoremap öeq \begin{equation*}<Enter><Enter>\end{equation*}<Enter><++><Esc>2ki
autocmd Filetype tex inoremap öue \[<Enter><Enter>\]<Enter><++><Esc>2ki
autocmd FileType tex inoremap öal \begin{align}<Enter><Enter>\end{align}<Enter><++><Esc>2ki
autocmd FileType tex inoremap öfr \frac{}{<++>}<++><Esc>F}F}i
autocmd FileType tex inoremap örm \textrm{}<++><Esc>F}i
autocmd FileType tex inoremap ötx \text{}<++><Esc>F}i
autocmd FileType tex inoremap ösb _{}<++><Esc>F}i
autocmd FileType tex inoremap ödt \dot{}<++><Esc>F}i
autocmd FileType tex inoremap ösp ^{}<++><Esc>F}i
autocmd FileType tex inoremap öin \indent<Space>
autocmd FileType tex inoremap öhs \hspace{mm}<Space><++><Esc>T{i
autocmd FileType tex inoremap övs \vspace{em}<Space><++><Esc>T{i
autocmd FileType tex inoremap öblr \left\{\right\}<++><Esc>T{i
autocmd FileType tex inoremap öplr \left(\right)<++><Esc>T(i
autocmd FileType tex inoremap öslr \left[\right]<++><Esc>T[i
autocmd FileType tex inoremap öse \section{}<Enter><Enter><++><Esc>2k$i
autocmd FileType tex inoremap öss \subsection{}<Enter><Enter><++><Esc>2k$i
autocmd FileType tex inoremap öul \begin{itemize}<Enter>\item<Space><Enter>\end{itemize}<Enter><++><Esc>2k$i<Space>
autocmd FileType tex inoremap öit \item<Space>
autocmd FileType tex inoremap öol \begin{enumerate}<Enter>\item<Space><Enter>\end{enumerate}<Enter><++><Esc>2k$i<Space>
autocmd FileType tex inoremap ö4 $$<++><Esc>F$i
autocmd FileType tex inoremap ötb \textbf{}<++><Esc>F}i
autocmd FileType tex inoremap öti \textit{}<++><Esc>F}i
autocmd FileType tex inoremap ött \texttt{}<++><Esc>F}i
autocmd FileType tex inoremap ötsp \textsuperscript{}<++><Esc>F}i
autocmd FileType tex inoremap ötsb \textsubscript{}<++><Esc>F}i
autocmd FileType tex inoremap öin \int\limits_{}^{<++>}<++><Esc>F}F}i
autocmd FileType tex inoremap öup \usepackage{}<++><Esc>F}i
autocmd FileType tex inoremap öpc \begin{figure}[ht]<Enter>\centering<Enter>\includegraphics[width=0.4\textwidth]{}<Enter>\end{figure}<Enter><++><Esc>2kf}i
autocmd FileType tex inoremap öta \begin{tabular}{}<Enter><++><Enter>\end{tabular}<Enter><++><Esc>3kf{f{a
autocmd FileType tex inoremap öora \overrightarrow{}<++><Esc>F}i
autocmd FileType tex inoremap öve \vec{}<++><Esc>F}i
autocmd FileType tex inoremap ömp \begin{minipage}{0.5\textwidth}<Enter><Enter>\end{minipage}<Enter>\begin{minipage}{0.48\textwidth}<Enter><++><Enter>\end{minipage}<Enter><Enter><++><Esc>6ki<Tab>
autocmd FileType tex inoremap ömd \lvert{}\rvert<++><Esc>F}i
autocmd FileType tex inoremap öl <++><Esc>
autocmd FileType tex inoremap ö, \,
autocmd FileType tex inoremap önl \section{\hfill\small{<++>}}<Enter><Enter><++><Enter><Enter>\begin{sffamily}<Enter><++><Enter>\end{sffamily}<Esc>6k0f{a
autocmd FileType tex inoremap öex \vspace{1em}<Enter>\hrule<Enter><Enter><Enter><Enter>\vspace{1em}<Enter>\hrule<Enter><Enter><++><Esc>kkkkki\textbf{Example}<Space>
autocmd FileType tex inoremap öbs \boldsymbol{}<++><Esc>F}i
autocmd FileType tex inoremap öte \text{}<++><Esc>F}i
autocmd FileType tex inoremap öbe \begin{DELRN}<Enter>\end{DELRN}<Enter><Enter><++><Esc>/DELRN<Enter>ciw
autocmd FileType tex inoremap geö {\"o}
autocmd FileType tex inoremap geÖ {\"O}
autocmd FileType tex inoremap geü {\"u}
autocmd FileType tex inoremap geÜ {\"U}
autocmd FileType tex inoremap geä {\"a}
autocmd FileType tex inoremap geÄ {\"A}
autocmd FileType tex inoremap geß {\ss}
autocmd FileType tex inoremap ,al {\alpha}
autocmd FileType tex inoremap ,be {\beta}
autocmd FileType tex inoremap ,ga {\gamma}
autocmd FileType tex inoremap ,Ga {\Gamma}
autocmd FileType tex inoremap ,de {\delta}
autocmd FileType tex inoremap ,De {\Delta}
autocmd FileType tex inoremap ,ep {\varepsilon}
autocmd FileType tex inoremap ,ze {\zeta}
autocmd FileType tex inoremap ,et {\eta}
autocmd FileType tex inoremap ,th {\theta}
autocmd FileType tex inoremap ,TH {\Theta}
autocmd FileType tex inoremap ,io {\iota}
autocmd FileType tex inoremap ,ka {\kappa}
autocmd FileType tex inoremap ,la {\lambda}
autocmd FileType tex inoremap ,La {\Lambda}
autocmd FileType tex inoremap ,mu {\mu}
autocmd FileType tex inoremap ,nu {\nu}
autocmd FileType tex inoremap ,xi {\xi}
autocmd FileType tex inoremap ,Xi {\Xi}
autocmd FileType tex inoremap ,pi {\pi}
autocmd FileType tex inoremap ,PI {\Pi}
autocmd FileType tex inoremap ,rh {\rho}
autocmd FileType tex inoremap ,si {\sigma}
autocmd FileType tex inoremap ,Si {\Sigma}
autocmd FileType tex inoremap ,ta {\tau}
autocmd FileType tex inoremap ,up {\upsilon}
autocmd FileType tex inoremap ,Up {\Upsilon}
autocmd FileType tex inoremap ,ph {\phi}
autocmd FileType tex inoremap ,PH {\Phi}
autocmd FileType tex inoremap .ch {\chi}
autocmd FileType tex inoremap ,ps {\psi}
autocmd FileType tex inoremap ,PS {\Psi}
autocmd FileType tex inoremap ,om {\omega}
autocmd FileType tex inoremap ,Om {\Omega}
autocmd FileType tex inoremap öms \,
autocmd FileType tex inoremap önp \newpage

"Python
autocmd FileType python inoremap öpa ()<++><Esc>F)i
autocmd FileType python inoremap ö2 ""<++><Esc>F"i
autocmd FileType python inoremap ösq []<++><Esc>F]i

"HTML
autocmd FileType html inoremap ödv <div id=""><++><Enter></div><Esc>kf"a

"Calendar
map CC :Calendar<CR>
let g:calendar_google_calendar = 1
let g:calendar_time_zone = "+0100"

filetype indent on
syntax on
set nobackup
set noundofile

autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview
