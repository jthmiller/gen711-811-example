## Lab

1. Review rubric
2. Review github interface 
    - Log into your github account, and make a repo named 'lab-notes'
    - click the green 'code' button, and copy the https address of your repo
    - On your the terminal, in your gen711 folder run: 
        ```
        git clone https://github.com/jthmiller/lab-notes.git
        ```
- Add the folder to your vs code workspace


## After you have started  


## After choosing a project and group members:
- Choose one of your accounts to be the main host of the project
- Make a new repository with a name that reflects the project.

### Everyone else in the group (except the main host)
- Find your groups repo at github
- Click the “Fork” button at the top right.
- You’ll now have your own copy of that repository in your github account.
- Go to your copy of the repo (make sure your username is shown)
- Again, click the green 'code' button, and copy the https address of your repo
- Go to VScode, and open a terminal/shell.
- Go into your gen711 folder if you aren't there already. (run pwd to check)
```
git clone https://github.com/jthmiller/project.git
cd project

Then, add a connection to the original owner’s repository:
```
git remote add project_leader_username git://github.com/project_leader_username/project
```


### adding a new folder to repo from the terminal while connected to RON:


- The person that is the host of the project will make 'tokens' so that other group members can contribute
- https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token
    - Settings
    - < > Developer settings
    - Personal access tokens
    - Share this token with the group members

- Each person should SSH into RON.
- In your home directory, run this:
```
git clone 

mkdir data



