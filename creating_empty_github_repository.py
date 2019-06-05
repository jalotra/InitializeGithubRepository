import os
import sys
from github import Github
from shutil import copyfile

#Setting up path to the root directory
PATH = os.getcwd()
PATH = os.path.split(PATH)[0]

#Github Username and password 
USERNAME = ''                          #ADD YOUR USERNAME
PASSWORD = ''                          #ADD TOUR PASSWORD

def createGithubRepository():
    user = Github(USERNAME, PASSWORD).get_user()
    repo = user.create_repo(sys.argv[1])
    print('CREATED AN EMPTY REPOSITORY AT THIS {} LOCAL PATH'.format(PATH))

def addGitignore(variable):
    if variable == 'python3Project':
        folderName = sys.argv[1]
        destinationFile = PATH + '/' + folderName + '/' + '.gitignore'
        srcFile = os.getcwd() + '/' + '.gitignore'
        copyfile(srcFile, destinationFile)
        print('ADDED .GITIGNORE TO THE {} FOLDER MADE'.format(destinationFile))

    

if __name__ == "__main__":
    # print(len(sys.argv))
    createGithubRepository()
    if len(sys.argv) == 3:
        addGitignore(sys.argv[2])
