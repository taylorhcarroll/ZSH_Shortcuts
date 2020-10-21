
#BEGIN IN USE#################################################################

alias tree="cmd //c tree/f"


help () {
    clear
    echo " - gohome                    Takes me to my home directory"
    echo " - cat [filename]            Outputs the contents of a file right in the terminal"
    echo " - touch [filename]          Creates a new file"
    echo " - mkdir [directory]         Creates a new directory"
    echo " - mg [directory]            Creates a new directory and goes into it"
    echo "git add --all             Stages all modified files to be committed"
    echo "gaa                       Stages all modified files to be committed"
    echo "git commit -m [message]   Commits all staged files"
    echo "gcm [message]             Commits all staged files"
    echo "git push origin [branch]  Uploads your branch to Github"
    echo "gpo [branch]              Uploads your branch to Github"
    echo "changeorigin              Changes where you push your code"
    echo      "su-grunt-jsonserver () makes file structure for json"
}

#makes it easier to reload the zshrc file to save new aliases
alias save="source ~/.zshrc"
#opens your .zshrc file so you can make more custom aliases and methods
alias customize="code ~/.zshrc"

#takes me back to root
alias gohome="cd ~"

# creates basic directory with HTML, CSS, and JS, links the CSS and JS sheets and opens Visual Studio
cbc() {
   mkdir src
   cd src
   touch index.html
   mkdir styles
   cd styles
   touch main.css
   cd ../
   mkdir api
   cd api
   touch database.json
   cd ../
   mkdir script
   cd script
   touch main.js
   cd ../
   touch .gitignore
   echo ".DS_Store" >.gitignore
   echo "<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width initial-scale=1.0">
   <meta http-equiv="X-UA-Compatible" content="ie=edge">
   <link rel="stylesheet" href="/styles/main.css">
   <title>Document</title>
</head>
<body>
   <script src="/script/main.js"></script>
</body>
</html> " >> index.html
   code .
}

#shorthand for git status
alias gs='git status'

#create a new directory and cd to it
mg() {
[ -n "$1" ] && mkdir -p "$@" && cd $_;
}

#used to create a gitIgnore file
gic() {
   touch .gitignore
   echo ".DS_Store" >.gitignore
}


#shorthand for starting json-server, edit later to accept diff database names#
#alias jserv='json-server -p 8088 -w database.json'#
alias jserv='json-server -p 8088 -w'
#go to this in a browser http://localhost:8088/#

# Defined 'code' here due to issue on work machine where the shell command for VS Code will not persist when terminal and VS code is closed/re-opened
## will attempt to resolve later, possible /usr/local/bin/code/ is not installed properly?
code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}

#END IN USE##################################################################

#Troubleshooting####################


##If you see this: 
# [oh-my-zsh] Insecure completion-dependent directories detected: drwxrwxr-x 3 
# /usr/local/share/zsh drwxrwxr-x 4 
# /usr/local/share/zsh/site-functions [oh-my-zsh] 
# For safety, we will not load completions from these directories until [oh-my-zsh] you fix their permissions and ownership and restart zsh. 
# [oh-my-zsh] See the above list for directories with group or other writability. 
# [oh-my-zsh] To fix your permissions you can do so by disabling [oh-my-zsh] the write permission of "group" and "others" and making sure that the 
# [oh-my-zsh] owner of these directories is either root or your current user. 
# [oh-my-zsh] The following command may help: [oh-my-zsh] compaudit | xargs chmod g-w,o-w 
# [oh-my-zsh] If the above didn't help or you want to skip the verification of 
# [oh-my-zsh] insecure directories you can set the variable ZSH_DISABLE_COMPFIX to 
# [oh-my-zsh] "true" before oh-my-zsh is sourced in your zshrc file.

#Put this in your terminal
# chmod 755 /usr/local/share/zsh
# chmod 755 /usr/local/share/zsh/site-functions


##If you want zsh to be default shell when opening terminal:
#Open Terminal -> Preferences -> General
#Under "Shells open with" select "Command (complete path):
#paste in "/bin/zsh"
###################################


