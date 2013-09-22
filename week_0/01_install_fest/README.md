# Mac OS X Setup

Instructions for OS X 10.6 - 10.8.5

## Google Chrome
---

Download [Google Chrome] [chrome]

Access settings under Chrome > Preferences
## Sublime Text 2
---
### 1. Download
Download [Sublime Text 2] [st2]

### 2. Install Package Control
Follow instructions on the [Package Control Website] [pkctl]

### 3. Set up a Shortcut
Set up a [command line][shortcut] shortcut for Sublime Text 2

## Xcode Command Line Tools
---
Download and install the latest **Command Line Tools for Xcode** package depending on your OS Version:
### For OS X Mountain Lion
[Mountain Lion CLI Tools](https://www.dropbox.com/s/c8eczu02lj18q1w/command_line_tools_os_x_mountain_lion_for_xcode__september_2013.dmg)

### For OS X Lion

[Lion CLI Tools](https://www.dropbox.com/s/etep718y7vxd4rs/xcode462_cltools_10_76938260a.dmg)


### Verify your compiler was installed
Type this in terminal:

```
gcc --version
```

You should see the GCC version message:

```
Apple LLVM version 5.0 (clang-500.2.76) (based on LLVM 3.3svn)
Target: x86_64-apple-darwin12.5.0
Thread model: posix
Configured with: --prefix=/Applications/Xcode.app/Contents/Developer/usr --with-gxx-include-dir=/usr/include/c++/4.2.1
```

## Homebrew
---

[Homebrew] [brew] is a package manager for OS X. Open Terminal and install Homebrew with:

```
ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"
```

Now check our environment is correctly configured:

```
brew doctor
```

If there are any problems, the doctor will let you know and often even suggest how to fix it. If not, you're probably not the only one, so paste the doctor's message into a Google search.

**Note:** You may need to edit your `~/.bash_profile`.

```bash
# Add Homebrews binary path to the front of the $PATH
echo "export PATH=/usr/local/bin:$PATH" >> ~/.bash_profile
source ~/.bash_profile
```

Now we want to update Homebrew to make sure we're getting the latest formulas:

```
brew update
```
Add homebrew/dupes to take advantage of homebrew packages that replace the Mac built-ins:

```
brew tap homebrew/dupes
```

## Install & Configure Git
---
```
brew install git 
```

```bash
git config --global user.name "Your Actual Name"
git config --global user.email "Your Actual Email"
```

* [Now Add your SSH Key to Github] [sshkeys]
* And Configure your [.gitconfig and .gitignore][gconfig]

## Install Rbenv
---
[Rbenv] [rbenv] is a tool for maintaining and switching between Ruby versions on the command-line. This lets you leave the standard OS X version of Ruby alone (it is the ancient 1.8.7) and use newer versions of Ruby easily and safely.

```
brew install rbenv
```

To complete the installation, configure your bash profile by typing:

```bash
echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
exec $SHELL -l
```

We'll also want to install the ruby-build and rbenv-gem-rehash plugins for rbenv

```
brew install ruby-build
brew install rbenv-gem-rehash
```

## 4. Install Ruby
---
```
rbenv install 1.9.3-p448
rbenv global 1.9.3-p448
```

Test that it worked:

```
ruby --version
```
If ruby was installed correctly, you should see:

```
ruby 1.9.3p448 (2013-06-27 revision 41675) [x86_64-darwin12.5.0]
```
## Postgres.App
---
### Download
Download and install the [Postgres.App](http://postgresapp.com/)


## Additional Tools
---

* [Alfred App](http://www.alfredapp.com/)
* [Spectacle](http://spectacleapp.com/)
* [HipChat](https://www.hipchat.com/mac)
* [ST2 Flatland Theme](https://github.com/thinkpixellab/flatland)
* [Solarized Theme](https://www.dropbox.com/s/7ejobxk753nawi1/Solarized%20Dark%20ansi.terminal)
* [Adobe Source Code Pro Font](http://sourceforge.net/projects/sourcecodepro.adobe/files/SourceCodePro_FontsOnly-1.017.zip/download) 

[st2]: http://www.sublimetext.com/2
[pkctl]: https://sublime.wbond.net/installation#st2
[chrome]: https://www.google.com/intl/en/chrome/browser/
[rbenv]: https://github.com/sstephenson/rbenv
[brew]: http://brew.sh/
[sshkeys]: https://help.github.com/articles/generating-ssh-keys
[xcode]: https://developer.apple.com/downloads/index.action
[shortcut]:  https://gist.github.com/artero/1236170
[gconfig]:  https://gist.github.com/phlco/6642359
