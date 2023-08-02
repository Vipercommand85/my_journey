# Git & GitHub Masterclass ( Udemy)

## Section 1: Getting started with Git

### Setup Git Workspace
* **git init**: initalizes the current working directory as a git repository
* **git add**: will add any files in the current directory/repo to the stage area for adding to the repo
* **git commit**: will write the changes in the staging area to the repo
	-- can use the **-m** option to add a message when the files is added to the repo

## Reviewing File Changes	
* **git diff [FILE NAME]** : will show the changes with an **a**/**b** indication of new/old file and the differences between them
* **git diff [SHA ID] -p** : can use this syntax to look at a specific commit

## Missing Git Configs from Original Initliazation
* **git config --list** : shows all the configurable options with Git
* **git config --gloabl user.name "[YOUR NAME]"** : will configure your name for this repo so that tracking who made what changes will be easier
* **git config --gloabal user.email [YOUR EMAIL]** : configures your email for the repo for alerts on any changes
* **git config --gloabal core.editor "[NAME OF EDITOR] --wait" : configures the default editor to use for the git as well as telling git to wait until the commit message has been added to the file with the editor  	

## Pushing Local Repo to Github
* **git remote add origin [ URL TO GITHUB REPO]** : adds remote repo path to the local machine
* **git push origin master** : will send the master branch to the origin branch on github
	-- may be asked for credentials, GitHub credentials

## Pulling from GitHub
* **git pull origin master** : will pull all commits and chnages from the remote repo to a local machine
* **git branch --set-upstream-to=origin/master master** : will create a tracker on the local master branch for the remote repo, origin, and branch, master
	
## Git Status
* **git fetch** : will download all changes made to the tracked branch
* **git status** : will display all of the changes that were "fetched" from the remote repo

## Undoing Changes and Reverting Commits
* **git reset HEAD .** : will unstage all files in the current branch


# Section 3: Fork & Clone
## Intro to Forking GitHub Repo
* only exist in GitHub, there are no Git Forks
### GitHub Fork
* copies a remote repo in another GitHub account to your own GitHub account
* any changes made to either repo will not be reflected in the other

## Forking a Repository
* in GitHub use the **Fork** button at the top right of a repo
* GItHub will make a copy of the repo that will be stored in your GitHub account

## Clone a Repository
* on GitHub click on **_Clone/Download_** button and copy the url that is listed
* open a terminal on the local machine
* create a directory where you want to have this new clone exist
* now enter the following command
```bash
git clone [copied URL]
```
* no need to add the location of the remote repository as the act of cloning it a remote repo does this for you
* can be confirmed with the following command
```bash
git remote
```
* any changes made localy still need to be **pushed** to the remote repo

## Exploring Git Logs

 
# Section4: Working with Branches
* **git branch [NAME OF BRANCH]** : creates a new branch with the name supplied
* **git branch** : will list all branches
* **git checkout [BRANCH NAME]** : will move to the desired branch
* **git checkout branch -b [NAME OF BRANCH]** : Will create change to the newely created branch
* **git branch -d [NAME OF BRANCH]** : will delete the specified branch

### .gitignore File
* utilize this file to have git ignore adding changes to files or directories
* **\/[FILE NAME]** : will ignore this file only
* **[DIR NAME]\/** : will ignore any files in specified directory.
* **[DIR NAME]/\*.[FILE EXT]** : will ignore all files with the specified file extension inside the directory, all files without this file extension will show changes*

### Syncing Branches
* using the below command will automatically create a new branch locally that will track the remote branch of the same name
* you will also be switched to that branch
```bash
git checkout --track origin/test
```
### Graphing Branches on the Terminal
* below command will log in a graphical way the branch you are currently working in
```bash
git log --graph
```

### Merging Branches
* below command will merge the source branch to the destination branch
```bash
git merge [SOURCE BRANCH] [DESTINATION BRANCH]
```
 * after successful merge, good practice to delete the source branch that was merged into the destination brach
 * will need to delete branch from the remote repo as well
 ```bash
 git brach -d [SOURCE BRANCH]
 ```
 
### Pull Request in Github
* under pull requests tab any pull requests will be listed
* review what changes will take affect as an sanity check, (individual/owner that is responsible for accepting pull requests)
* accept the pull request and commit with a comment
* GitHub automatically knows that the code in the merged brach exists elsewhere, so you will be prompted to salely delete the merged branch

## Section 5: Merge Conflicts
### Types of Merges
* **Fast-Forward Merge:** basically a pointer being updated to the most recent commit
* **Recursive Merge:** searching for shared commits that both branches have in common, oragnizes them together and merges them into a single branch












