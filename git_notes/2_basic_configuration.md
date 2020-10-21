# Git basic configuration

* `git config -h` - This will display the help on the terminal itself.
* `git config --help` - This will display the help on a browser

## Basic user specific configuration

* These settings are required to

```Bash
git config --global --add user.name <username>

git config --global --add user.email <user_email>
```

`git config --global --list` - List all the configuration at all users level.

## Cloning a remote repository

* `git clone <remote_git_repo_url> <directory_name>`

## Git integration with editor

`git config --global --add core.editor vi`

After configuring the editor, `git config --global -e` will launch the global git settings in the configured editor.
