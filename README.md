# b2 [BranchBuster]

b2 [BranchBuster] is a simple bash tool to remove git gone branches from your local repository.

## Features

- **Find Gone Branches**: Identifies branches that have been removed from the remote repository but still exist locally.
- **Delete Gone Branches**: Provides an interactive prompt to delete the identified gone branches.
- **Version Display**: Shows the current version of the script.

## Installation

To use `b2`, simply clone the repo and use the `Makefile` to install the script.:

```bash
make install
```

If you want to uninstall the script, just run:

```bash
make uninstall
```

You can upgrade the script to the latest version by running:

```bash
make upgrade
```

This basically fetches the latest changes from the remote repository and
replaces the script with the latest version.

## Usage

To use `b2`, simply run the script in your git repository:

```bash
b2
```

This will show you the branches that have been removed from the remote repository 
but still exist locally. You can then choose to delete these branches.

`--force` flag can be used to delete all the gone branches without any prompt:

```bash
b2 --force
```
