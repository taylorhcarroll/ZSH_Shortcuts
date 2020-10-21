# ZSH_Shortcuts
This is where I will store my zsh alias and shortcuts
It's pretty self explanatory, I am including the troubleshooting section here as well.




## If you see this: 
 [oh-my-zsh] Insecure completion-dependent directories detected: drwxrwxr-x 3  
 /usr/local/share/zsh drwxrwxr-x 4  
 /usr/local/share/zsh/site-functions [oh-my-zsh].  
 For safety, we will not load completions from these directories until [oh-my-zsh] you fix their permissions and ownership and restart zsh.   
 [oh-my-zsh] See the above list for directories with group or other writability.   
 [oh-my-zsh] To fix your permissions you can do so by disabling [oh-my-zsh] the write permission of "group" and "others" and making sure that the.  
 [oh-my-zsh] owner of these directories is either root or your current user.   
 [oh-my-zsh] The following command may help: [oh-my-zsh] compaudit | xargs chmod g-w,o-w.  
 [oh-my-zsh] If the above didn't help or you want to skip the verification of.  
 [oh-my-zsh] insecure directories you can set the variable ZSH_DISABLE_COMPFIX to.  
 [oh-my-zsh] "true" before oh-my-zsh is sourced in your zshrc file.  

### Put this in your terminal
chmod 755 /usr/local/share/zsh
chmod 755 /usr/local/share/zsh/site-functions


## If you want zsh to be default shell when opening terminal:
Open Terminal -> Preferences -> General
Under "Shells open with" select "Command (complete path):
paste in "/bin/zsh"
