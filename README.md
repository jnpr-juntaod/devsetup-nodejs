#devsetup
This project contains scripts and Wiki instructions to set up the development environment for the new tech stack for JunosSpace. You can setup the dev environment for the new tech stack on the same CentOS node where the old tech stack (JBoss/MySQL) resides or on a separate node. JBoss and MySQL are the main components of the old tech stack. Nginx and NodeJS are the main components of the new tech stack (for now). The following diagram shows how they work together in the dev environment. 

<img src="https://github.com/JSpaceTeam/devsetup/raw/master/images/arch.png"/>

We are following [nvie.com](http://nvie.com/posts/a-successful-git-branching-model/) branching model. Here is the [wiki page](https://github.com/JSpaceTeam/devsetup/wiki/Branching-Model) on how to follow this model in GitHub. Please read it before developing features or fixing bugs.

Assuming that you have already setup the dev environment for the old tech stack (JBoss, etc), here are the major steps to setup the dev environment for the new tech stack.

1. Install Nginx. See this [Wiki page](https://github.com/JSpaceTeam/devsetup/wiki/Getting-Started#install-nginx) for detailed instructions.
2. Install and setup git. See this [Wiki page](https://github.com/JSpaceTeam/devsetup/wiki/Getting-Started#setup-git) for detailed instructions. It is strongly recommended that you go through the following GitHub guides if you are a novice GitHub user.
  - [Understanding the GitHub Flow](https://guides.github.com/introduction/flow/)
  - [Get started with Hello World](https://guides.github.com/activities/hello-world/)
  - [Other great guides...](https://guides.github.com)
3. Setup dev environment. See this  [Wiki page](https://github.com/JSpaceTeam/devsetup/wiki/Getting-Started#setup-devenv) for detailed instructions.

=======================

*Learn more about new Space teck stack: [click here](http://jspaceteam.github.io/shadowfax-docbook)*

