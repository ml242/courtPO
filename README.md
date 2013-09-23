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
