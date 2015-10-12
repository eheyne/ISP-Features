# Internet Systems Programming Assignments Features

## How to Run the ISP Assignment Auto Grader

### Install Ruby
Navigate to this site [Ruby Downloads](https://www.ruby-lang.org/en/downloads/) and follow the instructions to download Ruby for your operating system.  For windows you may have to install [Ruby Installer](http://rubyinstaller.org/) first.  If it did not get added to your path do so now.

### Install DevKit
Once Ruby has been installed, run the corresponding installer for Ruby DevKit.  This need be placed somewhere permanent and in your path. Once it is installed, open up a command window and navigate to where you installed it (Ex cd C:\RubyDevKit) and run the following commands.

Auto-detect Ruby installations and add them to a configuration file for the next step.

```
ruby dk.rb init

```

Install the DevKit, binding it to your Ruby installation.

```
ruby dk.rb install
```

### Install the `bundler` gem
Once ruby and the devkit has been installed you will need to install a gem that will be used for running the tests.  Bundler provides a consistent environment for Ruby projects by tracking and installing the exact gems and versions that are needed.  Bundler is an exit from dependency hell, and ensures that the gems you need are present in development, staging, and production.

```
gem install bundler
```

### Install Chrome Web Driver

Navigate to [http://chromedriver.storage.googleapis.com/index.html?path=2.19/](http://chromedriver.storage.googleapis.com/index.html?path=2.19/) and download the appropriate driver based on your operating system.  This download will consist of a compressed file.  Unzip the compressed file and it will contain one file.  Copy this file to somewhere where it will be in your path, I usually put it in with my ruby install `bin` folder.


### Download the ISP-Features from Github

You've already found this README so you are in the right place.  Download this repository to your local drive.  This repository contains the auto graders for each of the assignments that are given for the ISP course.  You will find files like `AssignmentXXXXGrader.rb`.  Before you can do anything you will need to bundle all the ruby gems up so that you can run the grader.

Run the following command in the folder where ISP-Features is:

```
bundle install
```

### Run the Auto Grader
First you will need to grab all of the students URLs that they submitted in SpringBoard and put them in a file.  Then you will need to run the corresponding assignments grader.  

Create an output folder off the root of ISP-Features.

```
mkdir output
```

and for each assignment create a folder in output

```
mkdir Assignment2
```

Now you are ready to run the grader.  You will need to tell the grader what the name of the file is that has all of the URLs in it.

```
ruby Assignment2Grader.rb Assignment2Urls.txt
```

The grader will generate output files for each of the students
