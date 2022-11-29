# Setup Git Workspace
* **git init** ==> initalizes the current working directory as a git repository
* **git add** ==> will add any files in the current directory/repo to the stage area for adding to the repo
* **git commit** ==> will write the changes in the staging area to the repo
	-- can use the **-m** option to add a message when the files is added to the repo

# Reviewing File Changes	
* **git diff [FILE NAME]** ==> will show the changes with an **a**/**b** indication of new/old file and the differences between them
* **git diff [SHA ID] -p** == can use this syntax to look at a specific commit

# Missing Git Configs from Original Initliazation
* **git config --list** ==> shows all the configurable options with Git
* **git config --gloabl user.name "[YOUR NAME]"** ==> will configure your name for this repo so that tracking who made what changes will be easier
* **git config --gloabal user.email [YOUR EMAIL]** ==> configures your email for the repo for alerts on any changes
* **git config --gloabal core.editor "[NAME OF EDITOR] --wait" ==> configures the default editor to use for the git as well as telling git to wait until the commit message has been added to the file with the editor  	
# Pushing Local Reop to GIthub
* **git remote add origin [ URL TO GITHUB REPO]** ==> adds remote repo path to the local machine
* **git push origin master** ==> will send the master branch to the origin branch on github
	-- may be asked for credentials, GitHub credentials

# Pulling from GitHub
* **git pull origin master** ==> will pull all commits and chnages from the remote repo to a local machine
* **git branch --set-upstream-to=origin/master master** ==> will create a tracker on the local master branch for the remote repo, origin, and branch, master
	
# Git Status
* **git fetch** ==> will download all changes made to the tracked branch
* **git status** ==> will display all of the changes that were "fetched" from the remote repo

# Undoing Changes and Reverting Commits
* **git reset HEAD .** ==> will unstage all files in the current branch
	
# Branches
* **git branch [NAME OF BRANCH]** ==> creates a new branch with the name supplied
* **git branch** ==> will list all branches
* **git checkout [BRANCH NAME]** ==> will move to the desired branch
* **git checkout branch -b [NAME OF BRANCH]** ==> Will create change to the newely created branch
* **git branch -d [NAME OF BRANCH]** ==> will delete the specified branch

# .gitignore File

* utilize this file to have git ignore adding changes to files or directories
* /[FILE NAME] ==> will ignore this file only
* [DIR NAME]/ ==> will ignore any files in specified directory.
* [DIR NAME]/*.[FILE EXT] ==> will ignore all files with the specified file extension inside the directory, all files without this file extension will show changes*

# Merging Branches
* **git merge [SOURCE BRANCH] [DESTINATION BRANCH]**
