# Using p4merge as the merge and diff tool

I currently use meld as the diff and merge tool. But p4merge is yet another cross platform diff and merge tool.

```Bash
git config --global mergetool.p4merge.path "path_to_p4merge_executable"
```

Sample `~/.gitconfig` file contents

```ini
[user]
  email = johndoe@example.com
  name = John Doe
[color]
  ui = true
  diff = true
  branch = auto
  status = auto
[core]
  editor = /snap/bin/sublime-text.subl -w
  autocrlf = input
[merge]
  keepBackup = false
  tool = p4merge
[mergetool]
  prompt = false
[mergetool "p4merge"]
  cmd = p4merge "$BASE" "$LOCAL" "$REMOTE" "$MERGED"
  keepTemporaries = false
  trustExitCode = false
  keepBackup = false
[diff]
  tool = p4merge
[difftool]
  prompt = false
[difftool "p4merge"]
  cmd = p4merge "$LOCAL" "$REMOTE"
  keepTemporaries = false
  trustExitCode = false
  keepBackup = false
[filter "lfs"]
  required = true
  clean = git-lfs clean -- %f
  smudge = git-lfs smudge -- %f
  process = git-lfs filter-process
```

---

## References

* [Installing p4merge and configuring on ubuntu](https://gist.github.com/crmaxx/e8674c6228f4409f3bc6dd7337f95774)
* [p4merge as the diff and merge tool](https://gist.github.com/tony4d/3454372)
