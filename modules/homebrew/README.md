Homebrew
========

Defines Homebrew specific environment variables and aliases.

Variables
---------

Execute the following to list the environment variables loaded in the shell:

```sh
brew shellenv
```

Aliases
-------

Aliases are enabled by default. To disable them, add the following to
_`${ZDOTDIR:-$HOME}/.zpreztorc`_.

```sh
zstyle ':prezto:module:homebrew:alias' skip 'yes'
```

### Homebrew Core

  - `brewc` cleans outdated brews and their cached archives.
  - `brewi` installs a formula.
  - `brewL` lists installed formulae that are not dependencies of another installed formula.
  - `brewl` lists installed formulae.
  - `brewo` lists brews which have an update available.
  - `brews` searches for a formula.
  - `brewu` updates and upgrades Homebrew packages and formulae.
  - `brewx` uninstalls a formula.

### Homebrew Cask

  - `cask` is aliased to `brew cask`.
  - `caski` installs a cask.
  - `caskl` lists installed casks.
  - `casko` lists casks which have an update available.
  - `caskx` uninstalls a cask.

Authors
-------

*The authors of this module should be contacted via the [issue tracker][1].*

  - [Sorin Ionescu](https://github.com/sorin-ionescu)
  - [Griffin Yourick](https://github.com/tough-griff)

[1]: https://github.com/sorin-ionescu/prezto/issues
