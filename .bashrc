# ctrl+s で出力がロックされてしまうのを防ぐ
stty stop undef

# よく使うエイリアスやら各コマンドのデフォルトのオプションを設定
#alias ls='ls -CF'
#alias ll='ls -AlFh --show-control-chars --color=auto'
alias ls='gls -AFh --color'
# A:「.」や「..」を表示せずに非表示ファイルも出力
# F:ファイルは後ろにバックスラッシュ、シンボリックリンクは後ろに@マークなどの表示オプションがつく
# h:見やすいように表示を整形
# --color:colorあり

alias ll='gls -slhAF --color' 
# s:ファイルサイズを数字で表示(キロバイト単位)
# l:パーミッションの権限などの情報も表示
# h:見やすいように表示を整形(sで表示させた数字に小数点や単位がついて見やすくなる)
# A:「.」や「..」を表示せずに非表示ファイルも出力
# F:ファイルは後ろにバックスラッシュ、シンボリックリンクは後ろに@マークなどの表示オプションがつく

alias mv='mv -i'
alias rm='rm -i'
alias cp='cp -i'
alias sc='screen'
alias ps='ps --sort=start_time'

# プロンプトの表示をカスタマイズ
#export PS1='[\[\033[0;32m\]\W \t\[\033[0m\]] $ '

# もろもろ環境変数を設定
export PATH=$PATH:/sbin:/usr/sbin # パス
export PATH=/usr/local/opt/coreutils/libexec/gnubin:${PATH}
export MANPATH=/usr/local/opt/coreutils/libexec/gnuman:${MANPATH}

export PAGER='/usr/local/bin/lv -c' # man とかで使われる
export EDITOR='/usr/bin/vim' # visudo とかで使われる
export HISTSIZE=100000 # これだけコマンド履歴を残す
export LANG='ja_JP.UTF-8' # 以下 3 つ文字コード
export LC_ALL='ja_JP.UTF-8'
export LC_MESSAGES='ja_JP.UTF-8'

# スクリプト読み込み
source $HOME/.git-completion.bash
source $HOME/.git-prompt.sh

# プロンプトに各種情報を表示
GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWUPSTREAM=1
GIT_PS1_SHOWUNTRACKEDFILES=
GIT_PS1_SHOWSTASHSTATE=1

############### ターミナルのコマンド受付状態の表示変更
# \u ユーザ名
# \h ホスト名
# \W カレントディレクトリ
# \w カレントディレクトリのパス
# \n 改行
# \d 日付
# \[ 表示させない文字列の開始
# \] 表示させない文字列の終了
# \$ $
export PS1='\[\033[1;32m\]\u\[\033[00m\]:\[\033[1;34m\]\W\[\033[1;31m\]$(__git_ps1)\[\033[00m\] \$ '
##############
source ~/.git-completion.bash
source ~/.git-prompt.sh
