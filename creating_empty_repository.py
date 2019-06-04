import os
import sys
from github import Github

#Setting up path to the root directory
PATH = os.getcwd()
PATH = os.path.split(PATH)[0]

#My Github Username and password 
USERNAME = str("jalotra")
PASSWORD = str("sjalotra@123")

def create():
    # folderName = sys.argv[1]
    # os.makedirs(PATH + '/' + folderName)
    user = Github(USERNAME, PASSWORD).get_user()
    repo = user.create_repo(sys.argv[1])
    print('CREATED AN EMPTY REPOSITORY AT THIS {} LOCAL PATH'.format(PATH))

if __name__ == "__main__":
    create()