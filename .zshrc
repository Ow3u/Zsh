# プラグイン
# Uninstallion: 
# 1) remove corresponding line from below; 
# 2) delete the plugin directory from ~/.zsh/plugins/
source ~/.zsh/plugins/oh-my-zsh/plugins/shrink-path/shrink-path.plugin.zsh
source ~/.zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
fpath=(~/.zsh/plugins/zsh-completions/src/ $fpath)

# 各種 zsh モジュールを autoload
for f in ~/.zsh/[0-9]*.(sh|zsh)
do
    source "$f"
done

# Virutalenvwrapper
# enables the virtualenvwrapper command
venvwrapper="/usr/share/virtualenvwrapper/virtualenvwrapper.sh"
if [ -f $venvwrapper ]; then
    source "$venvwrapper"
fi

# 環境変数
# Note: .profileに定義されている環境変数も反映されるのでbashも
# 使う予定があるならそちらに新しいパスを通すのも考慮する

# NeoVim - dein
export XDG_CONFIG_HOME=$HOME/.config

