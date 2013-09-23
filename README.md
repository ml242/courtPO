###WDI-HW Submission Steps

---

####Instructions in words:
- Open up a terminal window
- Move to your local `WDI_NYC_Hash_Work` folder
- Checkout your development branch
- Pull from the upstream master
- Do your work
- Stage all your changed
- Commit your changes
- Push your development branch to origin
- Checkout your master branch
- Merge your development branch into your master branch
- Push your master to your origin
- Make a pull request with a title starting with `hw_w01_submission`

---

####Instructions in code:
```bash
cd ~/ga_wdi/WDI_NYC_Hash_Work
git checkout development
git pull upstream master
```

#####You may need to `save` and `close` a merge/commit message
#####At this point, you do the work in your OWN folder

#####Once you have completed your work:
```bash
git add .
git commit -m "Completed HW"
git push origin development
git checkout master
git branch
git merge development
git push origin master
```

######Make a pull request
- Go to your own github account and make your pull request
- Title your pull request with the week and day (for example `HW w01-d01`)
- You MUST inlucude comments on your successes and challenges
=======
Web Development Immersive
============================

![](https://github.com/generalassembly/ga-ruby-on-rails-for-devs/raw/master/images/ga.png "GeneralAssemb.ly")

Congratulations on joining us at General Assembly for the Web Development Immersive course! All your class files can be found here.



#Instructional Team:



###Phillip Lamplugh
* <phillip.lamplugh@generalassemb.ly>


###Alicia Lauerman
* <alicia.lauerman@generalassemb.ly>


###Jonathan Leung
* <jonathan.leung@generalassemb.ly>


---

##GITHUB CLASS REPOSITORY

GitHub is a popular developer tool, and we want you to be familiar with it. GA is all about learning by doing, so in order to learn how to use GitHub we are going to use it during nrealy every part of the course.

On the first day of class, you should clone this repo.

From the terminal, clone by typing:

```bash
git clone https://github.com/ga-students/WDI_NYC_Hash.git
```

Verify you added the remote by typing:

```bash
git remote -v
```

We know it takes time to get familiar with GitHub so here are a few quick tips:

###How Do I Get Files From GitHub?

For each lesson the instructor will post slides, exercises and, solution files. To get these files, __pull__ (download) them from the instructor's repository (upstream).

From the terminal type:
(make sure you are in the correct directory)

```bash
git pull origin master
```

---

# Class Resources

### How to Study
[How to Learn](http://www.scotthyoung.com/blog/Programs/HolisticLearningEBook.pdf)
