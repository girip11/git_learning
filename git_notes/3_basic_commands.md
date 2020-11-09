# Basic Git commands

## Generating text data

Generating random text from [https://hipsum.co](https://hipsum.co/the-api/)

```Bash
curl -s "https://hipsum.co/api/?type=hipster-centric&sentences=3" | jq
```

## `git init`

* `git init <dir>` - Initializes `dir` to be a git repository (creates a `.git` directory in the `<dir>`).

## Git status

* `git status` - prints the status (what files are untracked, what files are in the staging area, which files are modified etc)

* `git status -s` - short git status
* `git status -u` - show only the untracked files.

* `git ls-files` - lists all the files that are currently in the committed state as in the `.git` repo as well as the files in the staging area. Untracked files won't be displayed by this command.

## Git add to index/staging area

* `git add <file_name|dir_name>` - Adds the file to the staging area. In case of `dir_name` all the files in the directory are added recursively.

* `git add -u` - add all tracked files to the staging area.

* `git add -A` - add all tracked and untracked files to the staging area.

## Git commit

* `git commit -a` - stage and commit all **modified files**. This helps us avoid `git add` because this command does `git add` and then `git commit` as well.

* `git commit --dry-run` - `--dry-run` option can be used to see what files would be commited when `git commit` is done without actually committing.

* `git commit -m "<commit_message>"` - commits the staged files with the commit message. If `-m` option is omitted, the configured editor is opened so that we can type the commit message in detail(multiline commit message).

## Push local branch to remote repository

`git remote -v` - lists all the remote repositories for this local repo.

`git remote add <name> <url>` - used to add remote repo.

`git push <remote_name(origin)> <local_branch_name>:[<remote_branch_name>]` - Push the local branch to remote repo either with same name as local branch or use a different name for remote branch.

## Git clean

`git clean -fxfd --dry-run` - Recursively deletes all files and directories(even the untracked files) taking the git repository to a pristine state(very similar to cloning this repo inside an empty directory). Remove the option `--dry-run` to make those changes.

* `git help clean` - to know more about the `git clean` command

---

## References

* [Anthonywritescode git clean](https://www.youtube.com/watch?v=cE9IRYDMoS8)
