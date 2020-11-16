# Comparing files

* `git diff` command is used to diff in the terminal
* `git difftool` - to show the changes in the diff tool configured using the `git config` command.

* `HEAD` refers to the state of the repository as per the last commit on the current branch.

* `git diff HEAD` - by default shows the difference between the last commit on the branch and the working directory. `git difftool HEAD` will show the same contents in the configured diff tool.

* `git diff --staged HEAD` - compares contents of the file in the staging area to the contents of it in the last commit.

## Limiting search to a file/path

* `git diff/difftool HEAD <filename>` - Compare the contents of the file between the last commit and the working directory.

* `git diff/difftool HEAD --staged <filename>` - Compare the contents of the file between the last commit and the staging area.

* `git diff/difftool -- <filename>` - compares the contents of the files between the staging area and the working directory.

## Comparing between two commits

* `git diff <commit_id1> HEAD` - All the changes made after the commit `commit_id1` till the last commit on the current branch.

* `git diff/difftool HEAD HEAD^` - Diff between the last commit and the last but one commit.

* `git diff/difftool commit_id1 commit_id2` - Difference starting from `commit_id1` till `commit_id2`

## Comparing between two branches

* `git diff/difftool branch1 branch2` - Difference between the branches. `git diff master origin/master` - Difference between the local and remote branch.
