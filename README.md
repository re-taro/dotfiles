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
brew install chezmoi
```

### 4. Initialize chezmoi

```sh
# HTTPS
chezmoi init https://github.com/re-taro/dotfiles.git
# SSH
chezmoi init git@github.com:re-taro/dotfiles.git
```

### 5. Apply the dotfiles.

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
