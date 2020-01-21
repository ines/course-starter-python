# From Zero to ICSP (Ines Course Starter - Python)

Course Starter python is a starter repo based on the course framework [Ines Montani](https://ines.io/) developed for her [online open source spaCy course](https://course.spacy.io/). Since creating this framework in April 2019, it has since become a useful tool and plateform for Data Scientists and Devellopers alike to implement their own courses in a manner similar to other popular online Data science educational plateforms. 

This course gives the developer the versatility of a lecture slide type informational piece followed by multiple choice questions and coding exercises equiped with verification of the students submitted answers.

Ines Montani has created this framework using Gatsby and Reveal.js in the front-end and Binder and Docker in the back-end. This framework was made possible thanks to the useful JavaScript library [`Juniper`](https://github.com/ines/juniper) Ines created which can add interactive, editable and runnable code snippets to websites. 

***Please Note:***    
This project is under active development and there is a possibility of changes. If you would like to contribute or point out  corrections, please create a new issue addressing your concern, suggestions or contribution. 
[![](https://user-images.githubusercontent.com/13643239/56341448-68fe9380-61b5-11e9-816f-5c71ae71b94f.png)](https://course-starter-python.netlify.com)


## What To Expect 

I hope that this thorough documentation will help you deploy, customize and troubleshoot your own Starter course. 

You will be working with different file types including `.md` (and potentially `.rmd`), `.json`, `.py` and `.txt`. 
You may need to know _some_ html for additional customization, however by no means in depth. 

let's get started. 

## Setup 

This tutorial will describe the steps to create a complete initial "Starter Course" with zero customization. From here we will then change, edit and add files to complete your desired unique course. 

### Install Node 

**Mac instructions** 

_Make sure that you have homebrew installed in order to download `Node`_

The most important part of this installation is making sure that you are running a version of 10. 

Check if you have Node already using command :
```
node --version
``` 

If that produces an error than you can simply download version 10 with the following command: 

```
brew install node@10
```

If it's a version greater than 10, you will **need** to downgrade or Gatsby will not be able to start a development server or build a page.

To change to version 10 follow the following commands:

```
brew search node
```
This will give you an output similar to this: 

```
==> Formulae
libbitcoin-node   node-build     node@12       nodeenv
llnode       node-sass      node_exporter    nodenv
node ✓       node@10       nodebrew
```

Next you will want to install version 10 will command: 

```
brew install node@10
```

we then unlink it from the current version: 

```
brew unlink node
```

and then link version 10 that was just installed: 

```
brew link node@10
```
This willl likely need to be forced and thus will require: 

```
brew link --force --overwrite node@10
```

Next check again what version you are running to confirm that it is a version of 10. 

```
node --version
``` 


### Install Gatsby 

This should a single command to complete this. 

```
npm install -g gatsby-cli
```



