# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"
export HISTFILE=~/.config/.oh-my-zsh/.zsh_history
export HISTSIZE=1000000          # Number of commands to remember in history

export SAVEHIST=1000000          # Number of lines to save in the history file
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
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

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
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
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
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
source /home/linh/zsh-autosuggestions/zsh-autosuggestions.zsh
if [ -z "$KAFKA_CLUSTER_ID" ]; then
  export KAFKA_CLUSTER_ID="$(~/Downloads/Setups/kafka_2.13-3.8.0/bin/kafka-storage.sh random-uuid)"
fi
alias pip=pip3
export JAVA_HOME=/home/linh/Downloads/Setups/jdk/jdk-21
#export JAVA_HOME=/usr/lib/jvm/java-17-openjdk
#export JAVA_HOME=/usr/lib/jvm/java-11-openjdk  
#export JAVA_HOME=/home/linh/Downloads/Setups/jdk/jdk1.8.0_202
export PLANTUML_JAR=/home/linh/Downloads/Setups/plantuml-1.2024.6.jar
export PATH=$PATH:/home/linh/Downloads/uctags-2024.08.17-linux-x86_64/bin:/home/linh/.config/bin:/home/linh/Downloads/gradle-8.10/bin:/home/linh/Downloads/Setups/kafka_2.13-3.8.0/bin:/home/linh/.local/bin

export HIVE_VERSION=4.0.0
export REDIS_PASSWORD=bitnami
export REDISCLI_AUTH=bitnami
export SPRING_CLI=~/Downloads/Setups/spring-3.3.4
export PATH=$PATH:$SPRING_CLI/bin

export FLINK_HOME=/home/linh/Downloads/Setups/flink-1.20.0
#export FLINK_HOME=/home/linh/Downloads/Setups/flink-1.5.0
export PATH=$PATH:$FLINK_HOME/bin/

export http_proxy="http://10.60.117.103:8085"
export https_proxy="https://10.60.117.103:8085"
export no_proxy="git.viettelpost.vn"
export MAVEN_HOME=/home/linh/Downloads/Setups/apache-maven-3.9.9
export PATH=$MAVEN_HOME/bin:$PATH
alias mvn=$MAVEN_HOME/bin/mvn

export ROBUSTA_PASS=R0busta@2024

export HBASE_HOME=/home/linh/Downloads/Setups/hbase-2.6.0
export PATH=$HBASE_HOME/bin:$PATH
