# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
 zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git z dircycle)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# Example aliases
 alias zshconfig="nvim ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Cambiar a la versión de Node.js especificada en .nvmrc al entrar en un directorio
nvm_auto_use() {
    if [ -f ".nvmrc" ]; then
        nvm use $(<.nvmrc) || echo "No se pudo usar la versión especificada en .nvmrc"
    fi
}

# Ejecutar nvm_auto_use cada vez que cambies de directorio
autoload -Uz add-zsh-hook
add-zsh-hook chpwd nvm_auto_use

alias abvpn= "sudo openconnect --os=win --usergroup=gateway --protocol=gp arng.agbar.net -s 'vpn-slice srvlrabdes01 srvlrabint01 srvlrabint02 srvlrabpro01 srvlrabpro02 srvelabpro01 srvwshostint01 srvwshostint02 srvwshostint03 srvwshostpro01 algol.agbar.local algolint.agbar.local algolcmint.agbar.local cmint.agbar.local gitlab.agbar.net sicabd.agbar.local sicabp.agbar.local mdmwebdes-back.aiguesdebarcelona.cat webtelelecturapre-back.aiguesdebarcelona.cat webtelelectura-back.aiguesdebarcelona.cat webtelelecturapre.aiguesdebarcelona.cat srvlrabdes01.agbar.ga.local srvlrabint01.agbar.ga.local srvabappfusei01 demowebclient-dev.aiguesdebarcelona.cat identity-dev.aiguesdebarcelona.cat identity-pre.aiguesdebarcelona.cat identity.aiguesdebarcelona.cat identity-backoffice-dev.aiguesdebarcelona.cat apipre.aiguesdebarcelona.cat dniepre.aiguesdebarcelona.cat abchatbotcat.aiguesdebarcelona.cat abchatbotesp.aiguesdebarcelona.cat redisabdev.redis.cache.windows.net redisabpre.redis.cache.windows.net redisabpro.redis.cache.windows.net jira.aiguesdebarcelona.cat srvlimsappsop01 srvwshostdes02 portuno.agbar.net nexus.agbar.net SRVSICABAPPD01 sigab.aiguesdebarcelona.cat suez-apim-dev.agbar.net tokenizador-des.aiguesdebarcelona.cat tokenizador-pre.aiguesdebarcelona.cat tokenizador.aiguesdebarcelona.cat srvsicabappi01 contigut-estatic.aiguesdebarcelona.cat jenkins.agbar.net acrabsdevaks.azurecr.io sicabem-des.aiguesdebarcelona.cat sicabem-int.aiguesdebarcelona.cat sicabem.aiguesdebarcelona.cat msrv-sequera-des.aiguesdebarcelona.cat msrv-sequera-pre.aiguesdebarcelona.cat msrv-sequera.aiguesdebarcelona.cat guiaestilsweb-des.aiguesdebarcelona.cat guiaestilsweb-pre.aiguesdebarcelona.cat guiaestilsweb.aiguesdebarcelona.cat sapabd.agbar.ga.local sapabr.agbar.ga.local'"
proj() {
  cd ~/Desktop/TRABAJO/ && ls
}

mark() {
  local name=$1
  local dir=$(pwd)
  
  if [ -z "$name" ]; then
    echo "Error: Debes proporcionar un nombre para el alias."
    return 1
  fi

  # Verifica si el alias ya existe
  if alias "$name" &> /dev/null; then
    echo "El alias '$name' ya existe y apunta a: $(alias "$name" | sed "s/alias $name='//;s/'//")"
    return 0
  fi

  # Agrega el alias al final de ~/.zshrc
  echo "alias $name='cd $dir'" >> ~/.zshrc

  # Recarga ~/.zshrc para que el alias esté disponible de inmediato
  source ~/.zshrc

  echo "Alias '$name' creado para el directorio '$dir'."
}
alias ont='cd /Users/arielyumn/Desktop/TRABAJO/ont-frontend'
