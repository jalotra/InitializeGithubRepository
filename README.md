### UseCase:
```bash
WORKS ONLY IN LINUX AND MAC
I wrote this script to ease my and your work to create a repo both locally and in github, 
then to manually add remote origin and do an initial commit.

Since I regularly use python3 I have incorporated a functionality that lets you make a python3Project
and also add a .gitignore and create a venv using the venv module that python > 3.6 provides.

And also I have a normal use case .
```

### Install:
```bash
git clone ${this_repo_https_address}
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
chmod +x initialize_git.bash
source ./initialize_git.bash
Then add your Github username and password to creating_empty_github_repository.py and also your username in
initialize_git.bash
```
### HowToRun:
```bash
Now to run for different use-cases:
1. A python3Project : creatingLocalRepository <--folderName> python3Project
    example : creatingLocalRepository NewProject python3Project
 
2. A Normal Project : creatingLocalRepository <--folderName>
    example : creatingLocalRepository NewProject 