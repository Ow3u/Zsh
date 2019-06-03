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

# 環境変数 - PATH, etc.
# Environmental variables are defined in, ~/.profile and/or ~/.zprofile 
# which will be sourced once upon login;
# Login shell should be enabled for Gnome Terminal in preferences.

