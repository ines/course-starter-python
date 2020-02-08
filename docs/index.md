# From Zero to ICSP (Ines Course Starter - Python)

Course Starter python is a starter repo based on the course framework [Ines Montani](https://ines.io/) developed for her [online open-source spaCy course](https://course.spacy.io/). Since creating this framework in April 2019, it has since become a useful tool and platform for Data Scientists and Developers alike to implement their own courses in a manner similar to other popular online Data science educational platforms. 

This course gives the developer the versatility of a lecture slide-type informational piece followed by multiple-choice questions and coding exercises equipped with verification of the students' submitted answers.

Ines Montani has created this framework using Gatsby and Reveal.js in the front-end and Binder and Docker in the back-end. This framework was made possible thanks to the useful JavaScript library [`Juniper`](https://github.com/ines/juniper) Ines created which can add interactive, editable and runnable code snippets to websites. 

***Please Note:***    
This project is under active development and there are possibilities of changes. If you would like to contribute or point out corrections, please create a new issue addressing your concern, suggestions or contribution. 
[![](https://user-images.githubusercontent.com/13643239/56341448-68fe9380-61b5-11e9-816f-5c71ae71b94f.png)](https://course-starter-python.netlify.com)


## What To Expect 

I hope that this thorough documentation will help you deploy, customize and troubleshoot your starter course. Ines provides some wonderful instructions in her `README.md` file, but I noticed there were a few notes I wanted to add to it for my colleagues and others attempting to make their course so that they can save time on troubleshooting. 

You will be working with different file types including `.md` (and potentially `.rmd`), `.json`, `.py` and `.txt`. 
You may need to know _some_ Html for additional customization, however by no means in-depth. 

let's get started. 

## Setup using Docker Compose 

### Clone the repo 

Clone this repo [starter course repo](https://github.com/UBC-MDS/course-starter-python)
and locate yourself to the root of the repo where the `Dockerfile` is located. 

Then run this command. It should take 5-7 minutes. 
```
docker-compose up
```
then go to your favourite web browser and type in the searchbar 

`http://0.0.0.0:8000/`


## Setup without Docker 

This tutorial will describe the steps to create a complete initial "Starter Course" with zero customization. From here we will then change, edit and add files to complete your desired unique course. 

### Install Node 

**Mac instructions** 

_Make sure that you have homebrew installed in order to download `Node`_

The most important part of this installation is making sure that you are running some version of 10. 


Check if you have `Node` installed already by using the command :
```
node --version
``` 

If that produces an error then you can simply download version 10 with the following command: 

```
brew install node@10
```

If it's a version other than 10, you will **need** to downgrade/upgrade to version 10 - or Gatsby will not be able to start a development server or build a page. 

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

Next, you will want to install version 10 with the command: 

```
brew install node@10
```

if the checkmark is currently on `node` we then unlink node from its current version first using: 

```
brew unlink node
```

Everyone will need to link version 10 that was just installed: 

```
brew link node@10
```

This will likely need to be forced and thus will require: 

```
brew link --force --overwrite node@10
```

You may also be prompted to specify that you need to have node@10 first in your PATH so so you should run the command below before attempting force linking node@10 (the command above) again:

```
 echo 'export PATH="/usr/local/opt/node@10/bin:$PATH"' >> ~/.bash_profile 
 ```

Next check again what version you are running to confirm that it is a version of 10. 
there is a possibility that an error will be produced so you can either permanently set your 
```
node --version
``` 
this should output the following: 

```
v10.13.0
```

Now that we have this done, Gatsby's installation and building process should be much easier. 

### Install Gatsby 

This should a single command to complete this and will install Gatsby globally on your computer. 

```
npm install -g gatsby-cli
```
***NOTE: you will not need to update your dependencies here. 

### Clone or Install the Repository

There are 2 methods in which this step can be done.

a) Simply clone the [starter course repo](https://github.com/ines/course-starter-python)
b) [Import](https://github.com/new/import) and install this repo

Make sure that you ***merge all the changes on the other branches to the master one** if you do not create a pull request for `electron` and `feature/deep-links` branches your course will not successfully deploy.*

One you have done this you will need to locate yourself to the root of the repo. 

## Running on local Server 

Next, we must  install all relevant dependencies by running the following: 
```
npm install 
```

***NOTE: you will be prompted to `run "npm audit fix" to fix them`. I do not recommend doing this as it will burn your site down.***  
the output below will still build your course: 
```
found 572 vulnerabilities (4 low, 4 moderate, 564 high)
```

and finally to build the site on your local:

```
npm run dev    
```

Delivering this as an output (copy and paste this address into any browser) : 
```
You can now view course-starter-python in the browser.

  http://localhost:8000/
```
This should be the begining of a functioning starter-course! 


Now that you have a website that is deploying on your local server we can now begin the steps to customize it to your own taste. 


## Customization

There is a lot of different areas to make your site unique but below we are going to edit the files systematically. 

### Introduction on Homepage

_It's important to attribute Naome Ross and Julia Silge's courses for this section as they are responsible for the code pasted below_ 

## Customization

There is a lot of different areas to make your site unique but below we are going to edit the files systematically. 

### Introduction on Homepage

_It's important to attribute Naome Ross and Julia Silge's courses for this section as they are responsible for the code pasted below_ 

Unlike Ines's [Spacy Course](https://course.spacy.io/), you may want an introduction similar to what [Julia Silge](https://supervised-ml-course.netlify.com/) and [Naome Ross](https://noamross.github.io/gams-in-r-course/) did for their courses. 

They introduced their courses with a brief summary

| ![alt-text-1](img/julia.png)  | ![alt-text-2](img/naome.png) |
|:---:|:---:|
| Julia Silge's course front page | Naome Ross's course front page| 

This can be done by doing the following:

- Navigate into the `src/pages/` and open `index.js` 

You will be adding a new `<section>` (Html code) under `<Layout isHome>` and inbetween the following two lines shown below : between 
```
<Layout isHome>
   <Logo className={classes.logo} aria-label={siteMetadata.title} /> # HERE
            {chapters.map(({ slug, title, description }) => (
```
Here is an example of the code you can add.

```
<section>
                <h1 className={classes.subtitle}> INSERT CATCHY TAG LINE HERE </h1>
                <div className={classes.introduction}>
                <p>
                    FILLER WORDS HERE. WHAT IS YOUR COURSE ABOUT? DINOSAURS? NEURAL NETS? HOW TO SURVIVE EVENTS WITH THE INLAWS? WRITE IT HERE! 
                </p>
                </div>
            </section>
```

Since we are adding new class names will are going to need to edit the document that formats the class name. This can be found in `src/styles/` in the doc `index.module.sass`. 

you will need to paste the new classes as follows below into the document. 

```
.subtitle
    font-family: var(--font-display)
    width: 600px
    height: auto
    max-width: 100%
    margin: 0 auto 1rem
    display: block
    text-align: center

.introduction
    width: var(--width-container)
    max-width: 100%
    padding: 1rem
    margin: 0 auto
    display: block
    text-align: left
```

If you want to play with the measurements this is a welcomed opportunity to customize your course further. 

This can be done by doing the following:

- Navigate into the `src/pages/` and open `index.js` 

You will be adding a new `<section>` (Html code) under `<Layout isHome>` and inbetween the following two lines shown below : between 
```
<Layout isHome>
   <Logo className={classes.logo} aria-label={siteMetadata.title} /> # HERE
            {chapters.map(({ slug, title, description }) => (
```
Here is an example of the code you can add.

```
<section>
                <h1 className={classes.subtitle}> INSERT CATCHY TAG LINE HERE </h1>
                <div className={classes.introduction}>
                <p>
                    FILLER WORDS HERE. WHAT IS YOUR COURSE ABOUT? DINOSAURS? NEURAL NETS? HOW TO SURVIVE EVENTS WITH THE INLAWS? WRITE IT HERE! 
                </p>
                </div>
            </section>
```

Since we are adding new class names will are going to need to edit the document that formats the class name. This can be found in `src/styles/` in the doc `index.module.sass`. 

you will need to paste the new classes as follows below into the document. 

```
.subtitle
    font-family: var(--font-display)
    width: 600px
    height: auto
    max-width: 100%
    margin: 0 auto 1rem
    display: block
    text-align: center

.introduction
    width: var(--width-container)
    max-width: 100%
    padding: 1rem
    margin: 0 auto
    display: block
    text-align: left
```

If you want to play with the measurements this is a welcomed opportunity to customize your course further. 

### Course Homepage Information 

Here is where we will be changing all the homepage information including Course Name, "About This Course", "About Me", Website and Source. All of these factors are edited in the `meta.json` file located at the root of the repo. Ines has provided [a detailed discription](https://github.com/ines/course-starter-python#metajson) of what each component is responsible for. I am simply going to add some points that could be considered helpful when navigating in this documents  

| Setting              | Additional Notes: |
| -------------------- | ----------------- |
| `courseId`           | Ines does not have this parameter in her spacy course, however deleting this will not let the course function properly so not having this setting is not an option unless you want to explore what makes her spacy course repo different than her course-starter repo. This `courseId` is reflected once you compile your site and it reads `You can now view "courseId" in the browser.`  |
| `slogan`             | This will show up once you deploy your site and it will be show in the image of the link that you send.  |
| `juniper.branch`     | We will address this further when building a binder but note that the branch here specified is called binder. That means that we will need to edit the `requirements.txt` file and push it to the binder branch|

for guidance on the other settings refer to [Ines Montani's Documentation](https://github.com/ines/course-starter-python#metajson)

### Images, Logos, Icons, Videos and Audio files 

If you have been following along here while you construct your course you may notice at this point that you have yet to change and graphics. 

The `static` file is where any additional images, videos and audio files are store that you will need for the questions or slides part of your course. 

I find it particularly useful to create additional files in here to address the different chapters you will be making for added clarity and organization. aka I add a folder for each chapter and save the images in it's corresponding folder. 

See architechture below. Make sure to add this to your path when calling them in your md file. 

```


```

To address the standard Course and bio images Ines has added a discriptive table in her course [`README.md`](https://github.com/UBC-MDS/course-starter-python#static-assets)

_Note: If the change th
