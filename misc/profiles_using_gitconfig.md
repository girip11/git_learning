# Different Profiles using gitconfig

- Create `.gitconfig` under `$HOME` directory.
- Now we can create different `.gitconfig` files each for different git repo providers like github, gitlab, bitbucket etc.

```Conf
[includeIf "gitdir:/media/girish/HDD/code_repos/azure_repos/repos/**"]
  path = ~/gitconfig/.gitconfig-azurerepos
[includeIf "gitdir:/media/girish/HDD/code_repos/bitbucket/repos/**"]
  path = ~/gitconfig/.gitconfig-bitbucket
[includeIf "gitdir:/media/girish/HDD/code_repos/github/repos/**"]
  path = ~/gitconfig/.gitconfig-github
[includeIf "gitdir:/media/girish/HDD/code_repos/gitlab/repos/**"]
  path = ~/gitconfig/.gitconfig-gitlab
```

- Now create `gitconfig` directory if it doesnt exist already.

- Now create `.gitconfig-<profile>` under the newly created `gitconfig` directory.

- One of my main usecases is that I have different accounts for work and personal. And I have different ssh keys for each of those accounts. So with these gitconfig profiles I will be able to specify different configuration based on where the repositories reside.

- For now I would like to place the following configuration in to `.gitconfig-bitbucket`

```conf
[core]
  sshCommand = ssh -i ~/.ssh/girish_bitbucket_rsa -F /dev/null
```

- Similarly I will add different ssh commands pointing to different private key files based on the profile.

---

## References

- [How to Use Multiple Git Configs on One Computer](https://www.freecodecamp.org/news/how-to-handle-multiple-git-configurations-in-one-machine/)
- [git includeIf reference](https://git-scm.com/docs/git-config/2.19.2)
