###WDI-HW Submission

######Open up a terminal window

- Move to your local `WDI_NYC_Array_Work` folder

```bash
cd path/to/ga_wdi/folder
cd WDI_NYC_Array_work
```
![image](./screenshots/work_directory.png)

- Move to the folder with today's assignment and look at what is inside
	- The description of the homework is in the README.md file
	- Any associated code that you will need is in the ASSIGNMENT_FILES folder

```bash
cd w01
cd d01
ls
```
![image](./screenshots/todays_folder.png)

######Check out your development branch and make sure you are on the right branch

```bash
git branch development
git checkout development
git branch
```

![image](./screenshots/checkout.png)


######Move to your __OWN PERSONAL DIRECTORY__ and do the work
- Do NOT edit any files that are not in your personal directory
- Remember to save all your files

![image](./screenshots/own_directory.png)
![image](./screenshots/do_work.png)



######Check status and add files to the stage

```bash
git status
git add .
git status
```

![image](./screenshots/git_add.png)


######Commit changes and push to Github

```bash
git commit -m "Complete HW 01-01"
git push origin development
```

![image](./screenshots/git_commit_push.png)


######Merge changes in to master and push to Github

```bash
git checkout master
git branch
git merge development
git push origin master
```

![image](./screenshots/merge_master.png)



######Make ONE pull request

---

![image](./screenshots/pull_request_01.png)

---

![image](./screenshots/pull_request_02.png)

---

![image](./screenshots/pull_request_03.png)

---

![image](./screenshots/pull_request_04.png)

---

You're DONE!
