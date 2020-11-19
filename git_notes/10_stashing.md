# Git stash command

Stash can be viewed like a stack. New stashed changes are added on the top of the stack.

* `git stash list` - List the stashed entries
* `git stash` - By default stashes the changes.
* `git stash save -m <stash message>` or `git stash push -m "message"`  - Stashes the changes in the current working directory.

## Applying stashed changes

* `git stash apply` - Takes the stashed changes on the top of the list of stashed entries and applies it to the working directory. But this does not remove the entry from the stash list.
* `git stash drop` - Deletes the latest entry on the stash list.
* `git stash pop` - Takes the latest stash entry and deletes it from the stash list and applies the changes to the working directory

## Stash untracked files

By default git stashes only the tracked files. We can obtain the list of tracked files using `git ls-files`. By using `git stash -u` we can stash the untracked files that are not ignored by the `.gitignore` list.

## Reference a particular stash

* `git stash show stash@{2}` - Shows the list of files in the 3rd(index starts from 0) stash.

* `git stash apply stash@{2}` - This applies the changes from stash at index 2 in the stash list to the working directory.

* `git stash drop stash@{2}` - Drops the stash at the specified index.
* `git stash clear` - Clears the stash list. After this command `git stash list` should return 0 entries.

## Stashing in to a Branch

* `git stash branch <feature_branch>` - This command creates a new branch `feature_branch` and applies the first stash entry from the stash list and then deletes that applied stash entry. This command is equivalent to the following commands

```bash
git checkout -b feature_branch
git stash pop
```

* Using this command, we can take the changes made in one branch to a completely new branch easily.
