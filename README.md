## Clone All Github Repos

This code has been created with the purpose of cloning mutliple repositories in a quick and easy way. It has been designed specifically for UBC MDS students, but it's pretty easy to customize the code for your own needs.

### How To Use

1. Clone this repo by running `git clone https://github.com/johannesharmse/clone_all.git`

2. Make sure you have a Markdown file with all the repo links you want to clone saved somewhere locally. In the case of **UBC MDS 2017 students** the Markdown file is in your **MDS Home directory**, similar to `jharmse_home/README.md`. This is the only repo/file you are required to have locally before running this code. The code will look for all links in the README starting with `https://github.ubc.ca/ubc-mds-2017/` which are assumed to be the repos the user wants to clone. The links are assumed to be in the standard Markdown format, for example `[XXX](https://github.ubc.ca/ubc-mds-2017/XXXXXX)`.

3. Run `bash clone_all.sh REPO_PATH`, where `REPO_PATH` is the relative path to the Markdown file of interest. E.g. `bash clone_all.sh ../../UBC/Courses/jharmse_home/README.md`. You may have to type in your Github credentials once, but the credentials are being cached, which eliminates having to retype it for every single clone command.

4. After waiting for the code to finish, check `docs/repos` for all your newly cloned repos.
