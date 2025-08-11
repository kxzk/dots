alias ..="z .."
alias ...="z ../.."

# ignores
alias ignorepy="curl https://www.toptal.com/developers/gitignore/api/python,macos,data,jupyternotebooks > .gitignore"
alias ignorego="curl https://www.toptal.com/developers/gitignore/api/go,macos > .gitignore"

# util
alias g="git"
alias gp="git pull"
alias gbl="git bl"
alias vim="nvim"
alias grep="grep --color=auto"
alias checkports="lsof -i -n -P | grep TCP"
alias license="curl https://gist.githubusercontent.com/kadekillary/dbc6007d5e8f7bd6b2a54270b192f547/raw/1ac0c8ac6b26a8471e14f6a627833f8d9e75f765/LICENSE > LICENSE"
alias ip="curl ipecho.net/plain ; echo"
alias weather="curl wttr.in"
alias dots="cd dots"
alias home="cd desktop"
alias cd="z"
alias ls="eza --icons"
alias lst="eza -T --icons"
alias tree="eza -lxT --no-permissions --no-time --no-user --no-filesize --icons"
alias D="duckdb"
alias ativ="source .venv/bin/activate"
alias dativ="deactivate"
alias h="cd Desktop"
alias agent="codex -q -a full-auto"

mk() { mkdir -p "$1" && cd "$1"; }

alias claude="$HOME/.local/bin/claude"
alias cl="CLAUBBIT=1 CLAUDE_CODE_DISABLE_NONESSENTIAL_TRAFFIC=1 ENABLE_BACKGROUND_TASKS=1 $HOME/.local/bin/claude --disallowedTools NotebookEdit,NotebookWrite"
alias cldp="CLAUBBIT=1 CLAUDE_CODE_DISABLE_NONESSENTIAL_TRAFFIC=1 ENABLE_BACKGROUND_TASKS=1 $HOME/.local/bin/claude --dangerously-skip-permissions --disallowedTools NotebookEdit,NotebookWrite"
