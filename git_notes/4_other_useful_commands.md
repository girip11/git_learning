# Other useful commands

## Backing out changes

* `git reset HEAD <file>` or `git restore --staged <file>` - brings the file from the staging area to working directory as a modified file. Basically unstage the file.

* `git checkout -- <file>` or `git restore <file>` - This command will restore the file state to what's in the latest commit.

## Renaming and moving files

* `git mv <current_file> <new_file>` - Moves and renames the file. This command will automatically stage the renamed/moved file.

* If we have to undo this, we have 2 approaches.

  1. `git mv <new_file> <old_file>` - Just swap the parameters passed to previously rename/move the file.

  2. We need to execute the following commands.
     * `git restore --staged <renamed/moved_file>` - This will undo staging of renamed/moved file
     * `git restore --staged <original_file>` - This will unstage deleting the original file.
     * `git restore <original_file>` - This will restore the original file with its contents pointing to the latest/last commit.

## Remove tracked files

* Untracked files can be deleted using operating system provided `rm` command.

* `git rm <file>` - to delete the tracked file.

## Commit logs

* `git log -h` or `git help log` or ``
* `git log --oneline -n <number>` - Show one line description of last n commits
* `git log [-i] --grep=<regex_pattern> [--grep=<regex_pattern>] [--all-match]` - Displays commits where the commit messages match the given regex patterns. `-i` for ignore case.

* `git log --all --oneline --graph --decorate` - Shows the commit graph
* `git log --since="3 days ago"`
* `git log -- <filename>` - All commits involving that particular file.
* `git log --follow -- <filename>` - Follow the file history including renaming of that file.

## Display commit information

* `git show <commit_sha>` - Complete commit information including the diff of changes.

## Git alias

Make long command short using git aliases.

* `git config [--global|--system|--local] alias.hist "log --all --oneline --graph --decorate"`. From now onwards, `git hist` expands to `git log --all --oneline --graph --decorate`

We can edit the git config using the configured editor with the help of the command `git config [--global|--system|--local] -e`.

## `.gitignore`

* `.gitignore` - accepts the glob patterns.
* One expression per line.
* All directories and files matching the `.gitignore` pattern will be ignored by `git`.
* Always commit `.gitignore` to Git.

To add exclude patterns specific to your local Git repo and if you don't want to commit those to `.gitignore`, add those entires to `.git/info/exclude`. This way none of the collaborators of the project will be affected by your local excludes.

--

## References

* [Gitignore](https://git-scm.com/docs/gitignore)
