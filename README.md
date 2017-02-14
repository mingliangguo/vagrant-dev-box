# A vagrant box for Java development

The following software will be installed in the box:

- git
- docker
- java8
- nodejs
- npm
- maven
- gradle
- firefox
- chromium
- vim

## Prerequisite


To have your own vimrc installed to the vagrant box, create a data folder, and put your own .vimrc file into the folder. And also you can copy your own ssh key file to vagrant box if you want to access the git repository you access outside.

```bash
mkdir data
cp ~/.vimrc data/
cp ~/.tern-project data/
cp ~/.ssh/id_rsa* data/
```

