# Git_Init

# Shell Script to Auto-Initialize a Git Repository
If you have ever created multiple files in a project before initializing a repository and are tired off typing in git command after git command when you finally do decide to initialize your project into a repository i.e.:

echo "# example" >> README.md

git init

git add README.md

git commit -m "first commit"

git branch -M main

git remote add origin https://github.com/YourUserName/example.git

git push -u origin main

Here is a solution! This shell script will automatically perform all the necessary git calls to initialize a new repository for your project.
Once a user has created a new repository in github, they only need call this script from their command line within the project directory.

In order to work correcty, the script requires two input arguments after the file call:
1. The name of your newly created git repository
2. A commit message

If the arguments are not called correctly it will print an error and show the user the correct argument inputs.

Once called the script will execute and complete the following:
1. Add a README.md to your file with the same name as your repository
2. Call git init to initialize you project as a repository
3. Add all the files in your project directory to the repository
4. Commit the changes along with the message the user entered as a command line argument
5. Create a main branch for your repository
6. Add the remote origin that the repository will be pushed to using the repository name given as the first command line argument
7. Push the changes tto your remote repository.

This script is set up to SSH into github hence the "git@github.com:YourUserName/$repository_name.git" but could be modified to use 'https://github.com/YourUserName/$repository_name.git/' as well if you have your IDE connected to your github account. 
That being said, you will have to modify *YourUserName* to reflect your own github username.

In order for to be able to call this shell script from your project directory you will have to add it to your PATH. I have found that an easy way to do this is to open your terminal (lets use bash) and type the following command:

**nano ~/.bashrc** 

This will open up your bash configuration file. From there you can add an export line like so:

**export PATH=$PATH:/path/to/this/script**

Be sure to replace *path/to/this/script* with the file path to wheverever you have saved this script on your computer.

Then you need to refresh you bash shell by calling:

**source ~/.bachrc**

Once that is complete this script should be ready to use.

## Example

Let's say you have a project in the following directory:

**home/users/projects/example**

example is our project that we wish to initialize into a new repository. The user would then go to github.com and create a new respository called "example". Once created they would open a terminal and cd into the project directory (above). Then the user would enter: 

**gitinit.sh example "First commit using gitinit script"**

Voila! You have an initialized repository!
