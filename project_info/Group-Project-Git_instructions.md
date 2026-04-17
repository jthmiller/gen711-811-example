# Group Project Instructions
1. Review rubric [here](rubric.md)
2. Start to form groups (no more than 3) and discuss which of these projects would interest you:

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
```
Then, add a connection to the original owner’s repository:
```
git remote add project_leader_username git://github.com/project_leader_username/project
```

3. ***IMPORTANT*** For the project repo, you need to make a file named '.gitignore' in the main repo directory. This is a text file that tells git to ignore the files listed in particular directories. We do not want to share fastqs over github- only the code to do so. We will share fastqs using the '/tmp' directory as done in the steps above. 

4. Get your fastqs into the repo
    - Your own data/choice (ok with us to make sure it is feasible) 
        - put all fastq files in a directory named 'fastqs' in the 'data' folder
        - See me if you need help with this, but if you got your data from HCGS, it will probably look like this:
        ```cp cobb-data.sr.unh.edu/projects/YOUR-PROJ-NAME/reads/*fastq.gz data/fastqs/```
    - Metabarcoding of cyanobacteria communities from New England Lakes over a summer (16s v4-v5).
        - /tmp/GEN711-811_data/Cyanobacteria
    - Metabarcoding to compare fish species across US estuaries (12s MiFish).
        - /tmp/GEN711-811_data/NERRs
    - Metabarcoding of Algae (Diatoms) to compare high and low quality streams (18s or RBCL).
        - /tmp/GEN711-811_data/MassDEP
    - Fecal microbiota transplant (FMT) study. Metabarcoding of human guts (16s). Most of the support for this project is through qiime2's website turtorials
        - To get the data, run this from within your repo. Do not commit
        - ```wget -P "data/fastqs" -O "fmt-tutorial-demux-1.qza" "https://data.qiime2.org/2024.10/tutorials/fmt/fmt-tutorial-demux-1-10p.qza"```


5. Get the reference databases needed for your project from ```/tmp/GEN711-811_data/refdbs``` into a directory called ```refdb``` in your repo. 

6. Start making your pipeline. Save all steps to a script in the 'code' directory. A good place to start is '01_trim.sh' 

7. Use the HCGS tutorials for help when needed [here](https://github.com/Joseph7e/HCGS_Metabarcoding_Tutorials)