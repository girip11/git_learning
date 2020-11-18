# Rebasing

Suppose we branched out from a branch `master` to `topic` branch. Let's say the topic branch had few commits added to it at the same time there were some more commits added to master branch after the branching was done.

Using `git rebase master` on the topic branch brings all those additional commits from the master to the topic branch history and adds the commits that were made only on the topic branch on top of those new commits.

## Conflict resolution on rebase

* While rebasing also, we could face conflicts when the topic branch commits and master branch new commits touched same sections of the files.

* `git rebase --abort` can be used to abort the rebase operation when we have conflicts.

* `git mergetool` can be used to resolve the merge conflicts. Once we resolved all the conflicts, we add those merged files to staging area using the `git add` command and then run `git rebase --continue` to continue with the rebasing.

## `git pull` with rebase

* Pull the remote branch and rebase the local branch with that remote branch.

* `git fetch origin master` - Sync remote branches with local repository. `git branch -a` will display all local and remote branches on the current repository.

* `git fetch origin --prune` - Before fetching, remove any remote-tracking references that no longer exist on the remote `origin`.

* `git fetch --all --prune` - Will first clean up the remote branches that were deleted on the remote and not on the local repo and then fetch all the remote branches on to the local repo. But this will fetch all the brances from all the remotes. `git remote -v` displays all the remote repos for the local repo.

* `git pull --rebase origin master` will pull changes from the remote branch and rebase the current local branch with the remote branch `origin/master`
