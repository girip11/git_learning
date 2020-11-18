# Git aliases

```Conf
[alias]
  # one-line log
  l = log --oneline
  lgod = log  --graph --oneline --decorate
  la = log  --graph --oneline --decorate --all
  ls = log --pretty=format:"%C(yellow)%h\\ %ad%Cred%d\\ %Creset%s%Cblue\\ [%cn]" --decorate --date=short
  ll = log --pretty=format:"%C(yellow)%h%Cred%d\\ %Creset%s%Cblue\\ [%cn]" --decorate --numstat

  a = add
  ap = add -p
  au = add -u

  c = commit --verbose
  ca = commit -a --verbose
  cm = commit -m
  cam = commit -a -m
  mc = commit --amend --verbose
  
  d = diff
  dt = difftool
  ds = diff --stat
  dc = diff --cached

  s = status
  ss = status -s
  su = status -u

  co = checkout
  cob = checkout -b
  # list branches sorted by last modified
  b = "!git for-each-ref --sort='-authordate' --format='%(authordate)%09%(objectname:short)%09%(refname)' refs/heads | sed -e 's-refs/heads/--'"

  # list aliases
  la = "!git config -l | grep alias | cut -c 7-"
```

---

## References

* [Useful git aliases](https://gist.github.com/mwhite/6887990)
* [Must Have Git Aliases: Advanced Examples](https://www.durdn.com/blog/2012/11/22/must-have-git-aliases-advanced-examples/)
* [git aliases](https://haacked.com/archive/2014/07/28/github-flow-aliases/)
