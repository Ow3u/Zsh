########################################
# エイリアス

alias la='ls -a'
alias ll='ls -l'

# 'rm -I' は'del'と改名。
alias del='rm -I'
alias cp='cp -i'
alias mv='mv -i'

alias mkdir='mkdir -p'

# historyでタイムスタンプを表示する
alias history='fc -il 1'

# Chromeの起動、エラー非表示
alias chrome='/opt/google/chrome/chrome 2>/dev/null'
alias chrome-cors='chrome --allow-file-access-from-files --allow-file-access --allow-cross-origin-auth-prompt'
alias chrome-screenshot='chrome --headless --disable-gpu --screenshot'

# sudo の後のコマンドでエイリアスを有効にする
alias sudo='sudo '

# システム全体をアップデート
alias powerup='sudo -- sh -c "apt update && apt upgrade -y && apt dist-upgrade -y && apt autoremove -y && apt autoclean -y"'

# Git
alias gs='git status'

# グローバルエイリアス
#alias -g L='| less'
#alias -g G='| grep'

# virtualenv内のipythonを起動する。でも今はちゃんと自動で認識するみたい・・・
#alias ipy="python -c 'import IPython; IPython.terminal.ipapp.launch_new_instance()'"

# C で標準出力をクリップボードにコピーする
# mollifier delta blog : http://mollifier.hatenablog.com/entry/20100317/p1
#if which pbcopy >/dev/null 2>&1 ; then
    # Mac
#    alias -g C='| pbcopy'
#elif which xsel >/dev/null 2>&1 ; then
    # Linux
#    alias -g C='| xsel --input --clipboard'
#elif which putclip >/dev/null 2>&1 ; then
    # Cygwin
#    alias -g C='| putclip'
#fi
