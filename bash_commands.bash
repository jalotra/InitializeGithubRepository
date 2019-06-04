# !bin/bash
#As I source into this bashFile no variable should be declared as Global one
#All the variables definitions should be present in the function itself


#Example 
#creatingLocalRepository NewProject python3Project
#Here NewProject is the $1 variable
#and python3Project is the $2 variable

function creatingLocalRepository(){
    $USERNAME = jalotra
    python creating_empty_repository.py $1
    #CD into the folder that the python script created  
    PATH = $PWD - 'InitializeGithubProject'
    PATH = PATH/$1
    cd PATH

    #INITIALIZING ACCORDING TO GITHUB RULES
    #Initilize an empty git repository
    git init
    #Giving Name of the folder to README.md
    echo "Hello World, My name who goes with the name $USERNAME just created me.
    I hope that I you will find me helpful.I am happy to serve you " > README.md
    #Adding the Remote to this empty Git Repository
    git remote add origin git@github.com:$USERNAME/$1.git
    # Adding all the files present in the current repository
    git add .
    #Adding Initial Comment
    git commit -m "InitialCommit"
    #Pushing this to github  and to master Branch 
    git push -u origin master

    if [$2 = python3Project]
    then
            #Create a python3 virtual environment
            python3 -m venv venv
            #source into this venv
            source venv/bin/activate
            #echo Install some of the python dependencies
            echo "pip install"
    fi
        #WE can add some other functionalities here Also
    # else
    #     {
    #         #Nothing pass
    #     } 

     #Opening the visual Studio code(My Code Editor) // Or you can make it subl . FOR SublimeTextEditor 
    code .
}
