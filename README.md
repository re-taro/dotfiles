# dotfiles

re-taro's dotfiles.

## How to setup

### 1. Install Command Line Tools

```sh
xcode-select --install
```

### 2. Install Homebrew

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### 3. Install chezmoi

```sh
brew install chezmoi bitwarden-cli
```

### 4. Initialize chezmoi

```sh
# HTTPS
chezmoi init https://github.com/re-taro/dotfiles.git
# SSH
chezmoi init git@github.com:re-taro/dotfiles.git
```

### 5. Login to Bitwarden

```sh
bw login
```

### 6. Apply the dotfiles.

```sh
chezmoi apply
```

## Edit dotfiles

Editing files in dotfiles is done via chezmoi. Direct editing is not recommended.

```sh
chezmoi edit <file_path>
```

**Don't forget to apply the edits.**

```sh
chezmoi apply
```

## Note: For secure files managed by Bitwarden

The following files are located in Bitwarden's Vault.

- SSH Config (`~/.ssh/config`)
- SSH Autholized keys (`~/.ssh/authorized_keys`)

You must be logged into Bitwarden and Bitwarden CLI to access these file entities. After logging in, run `chezmoi apply`.
