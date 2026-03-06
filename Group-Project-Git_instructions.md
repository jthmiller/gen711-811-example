# Group Project Instructions
1. Review rubric [here](rubric.md)
2. Start to form groups (no more than 3) and discuss which of these projects would interest you:

    - Your own data/choice (ok with us to make sure it is feasible) 
    - Metabarcoding of cyanobacteria communities from New England Lakes over a summer.
    - Metabarcoding to compare fish species across US estuaries.
    - Metabarcoding of Algae (Diatoms) to compare high and low quality streams.
    - Fecal microbiota transplant (FMT) study. Metabarcoding of human guts.

## After choosing a project and group members:
- Choose one of your accounts to be the main host of the project
- Make a new repository with a name that reflects the project.

### Everyone else in the group (except the main host)
- Find your groups repo at github
- Click the “Fork” button at the top right.
- You’ll now have your own copy of that repository in your github account.
- Go to your copy of the repo (make sure your username is shown)
- Again, click the green 'code' button, and copy the https address of your repo
- Go to VScode, and open a new window from the 'File' menu.
- Hit 'cmd + shift + p' to select 'Connect current window to host' and select RON
- Open a new terminal and make sure you are in your home directory
- Clone your branch of the repo and change directories into it with: 
```
git clone https://github.com/jthmiller/project.git
cd project

Then, add a connection to the original owner’s repository:
```
git remote add project_leader_username git://github.com/project_leader_username/project
```




