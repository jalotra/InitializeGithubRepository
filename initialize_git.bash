# !bin/bash
#As I source into this bashFile no variable should be declared as Global one
#All the variables definitions should be present in the function itself


#Example 
#creatingLocalRepository NewProject python3Project
#Here NewProject is the $1 variable
#and python3Project is the $2 variable

function creatingLocalRepository(){
    $USERNAME = ''                                       #ADD YOUR GITHUB USERNAME
    currentPath=`pwd`
    # echo ${currentPath}
    # if [ $2 ];then
    #     python3 creating_empty_repository.py $1 $2
    # else
    #     python3 creating_empty_repository.py $1 
    # fi

    #CD into the folder that the python script created  
    cd ..
    mkdir $1
    cd $1
    newPath=`pwd`
    if [ $2 ]; then
        touch .gitignore
    fi
    # echo ${newPath}

    
    #Initiate .gitignore addition and github repository making
    cd $currentPath
    python3 creating_empty_github_repository.py $1 $2
    cd $newPath

    #INITIALIZING ACCORDING TO GITHUB RULES
    #Initilize an empty git repository
    git init
    #Create a README.md
    touch README.md
    #Giving Name of the folder to README.md
    echo "Hello World, My master who goes with the name $USERNAME just created me.
    I hope that I you will find me helpful.I am happy to serve you " > README.md
    #Adding the Remote to this empty Git Repository
    git remote add origin https://github.com/${USERNAME}/$1.git
    # Adding all the files present in the current repository
    #Adding SOME FOLDERS
    mkdir src docs 
    #Adding all the files to git history
    git add .
    #Adding Initial Comment
    git commit -m "InitialCommit"
    #Pushing this to github  and to master Branch 
    git push -u origin master


    #Opening the visual Studio code(My Code Editor) // Or you can make it subl . FOR SublimeTextEditor 
    code .

    if [ $2 == 'python3Project' ];
    then
            #Create a python3 virtual environment
            python3 -m venv $1venv
            #source into this venv
            source $1venv/bin/activate
            #echo Install some of the python dependencies
            echo "pip install"

    fi
        #WE can add some other functionalities here Also
    # else
    #     {
    #         #Nothing pass
    #     } 

     
}
