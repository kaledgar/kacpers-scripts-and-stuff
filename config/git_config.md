# Git notes

## SSH and multiple users

1. Create Key

```sh
ssh-keygen -t ed25519 -C "email"
```

2. Associate `.pub` with Git provider

3. Configure SSH alias:

```sh
nano ~/.ssh/config

# Host git-<name>
#   HostName <git-provider-domain>   # e.g. github.com / gitlab.com
#   User git
#   IdentityFile ~/.ssh/id_ed25519_<name>
```

4. Use alias in repo remote

```sh
git remote set-url origin git@git-<name>:<user>/<repo>.git
```