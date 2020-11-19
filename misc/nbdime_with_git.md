# Using nbdime as difftool for notebooks

## Installing nbdime

* Install `nbdime` at the user level using `pip install --user nbdime`. If we face any issues while launching nbdime using git difftool, then we may need to update `gitpython` using `pip install --user -U GitPython`.

## Add nbdime as difftool and mergetool to git

* Executing the command `nbdime config-git --enable --global` adds the difftool and merge tool to the current user's gitconfig. This will add nbdime as tools for cli diff, merge and difftool and mergetool.

* **I prefer to only keep the difftool and mergetool configuration for nbdime and remove the cli configuration for diff and merge**. So I manually edit the git config using `git config --global -e` and add the following contents to it

```conf
[difftool "nbdime"]
  cmd = git-nbdifftool diff \"$LOCAL\" \"$REMOTE\" \"$BASE\"
[mergetool "nbdime"]
  cmd = git-nbmergetool merge \"$BASE\" \"$LOCAL\" \"$REMOTE\" \"$MERGED\"
```

## Launching nbdime as difftool

By default, I use `p4merge` as the difftool and mergetool. For jupyter notebooks alone I prefer using `nbdime`. If we have some notebooks modified and we would like to view the diff, then the command `git difftool -t nbdime <file_to_diff>` would launch the diff in the default browser using nbdime.

---

## References

* [nbdime with git](https://nbdime.readthedocs.io/en/latest/)
