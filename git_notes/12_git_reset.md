# Git reset and reflog

## Git reset

* Using git reset we can move `HEAD` to a particular commit.
* `git reset HEAD^1` or `git reset HEAD@{1}` - This moves the HEAD to point to the last but previous commit. `HEAD^{n}` moves HEAD back by n commits.
* `git reset <commit_id>` - Moves the `HEAD` to that commit.

* Reset can be soft and hard.
* Hard reset - resets working directory, staging area and moves the `HEAD` to the specified commit.
* Soft reset - Moves the `HEAD` to the specified commit (or back by n commits) but does not alter the working directory or the staging area.

## Git reflog

> Reference logs, or "reflogs", record when the tips of branches and other references were updated in the local repository. Reflogs are useful in various Git commands, to specify the old value of a reference. For example, HEAD@{2} means "where HEAD used to be two moves ago", master@{one.week.ago} means "where master used to point to one week ago in this local repository", and so on.

Suppose we have reset our `HEAD` to a previous commit, but now we would want our `HEAD` to be reverted back to the old state(before reset). Using `reflog` we can find the `commit id` and then reset `HEAD` to go back to that `commit id`.
