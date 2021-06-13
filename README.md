# Automate React-Redux Files 🚀

<p align="center">
<img src='https://github.com/pieeee/redux-files-shell-script/blob/main/media/asset.gif'/>
</center>


### Create all your redux files and starter code with a simple command 🔨
It's very annoying to create react-redux files eg: `comp.reducer.js, comp.actions.js, comp.selector.js, comp.saga.js` for each store component everytime.And all the files have same starter **code**. Though there are extensions in VSCode for started code snippet. But creating all the same files again and again and writing the same starter code is boring and waste of time 😖. This simple shell script will help you to create your all redux files with starter code 🥳. 

### Usage ⚙️
There is a `sh` file in the repo named: `rdxf.sh`. You can use this script by running this file or in a shell function.

**Running script**
You may have face permission error while you run the script. So first give access to this file.

```sh
chmod +rx rdxf.sh
```
This script accepts two arguments. First one is the `name of store component`. And second one is **saga**. If you need a `.saga.js` file, you can pass `saga` as second argument

```sh
# if you use saga
path_to_script/rdxf.sh name_of_store_component saga
./rdxf.sh user saga

# if you dont use saga
path_to_script/rdxf.sh name_of_store_component 
./rdxf.sh user saga
```
**Using shell function**
You can create a shell function to run this script, which is the most efficient way. So you don't have to run the script from .sh file, which is also boring 💁‍♂️. So, let's make a shell function.

- First open your `.bashrc` or `.zshrc`

```sh
nano ~/.bashrc || ~/.zshrc
```

- Then declare the funtion at the very bottom. You can name the function anything you want. I'll name it `rdxf`.

```sh
rdxf () {
    # paste the code from rdxf.sh
    # remove the first line ---> #!/bin/bash
}
```
- Then save and exit. Now open terminal on the directory where you want to create your redux files.
```sh
name_of_the_function name_of_store_component saga
# example
rdxf user saga
# or
rdfx user
```

### License
The source code for the site is licensed under the MIT license.
