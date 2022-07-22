History
=======

Sets [history][1] options and defines history aliases.

**Note:** If you are migrating from oh-my-zsh and want to keep your history, you
will either need to set HISTFILE manually to `$HOME/.zsh_history` or rename
`~/.zsh_history` to ~/.zhistory`.

Options
-------

  - `BANG_HIST` treats the **!** character specially during expansion.
  - `EXTENDED_HISTORY` writes the history file in the *:start:elapsed;command* format.
  - `SHARE_HISTORY` shares history between all sessions. Note that
    `SHARE_HISTORY`, `INC_APPEND_HISTORY`, and `INC_APPEND_HISTORY_TIME` are
    mutually exclusive.
  - `HIST_EXPIRE_DUPS_FIRST` expires a duplicate event first when trimming history.
  - `HIST_IGNORE_DUPS` does not record an event that was just recorded again.
  - `HIST_IGNORE_ALL_DUPS` deletes an old recorded event if a new event is a duplicate.
  - `HIST_FIND_NO_DUPS` does not display a previously found event.
  - `HIST_IGNORE_SPACE` does not record an event starting with a space.
  - `HIST_SAVE_NO_DUPS` does not write a duplicate event to the history file.
  - `HIST_VERIFY` does not execute immediately upon history expansion.
  - `HIST_BEEP` beeps when accessing non-existent history.

Variables
---------

  - `HISTFILE` stores the path to the history file.
  - `HISTSIZE` stores the maximum number of events to save in the internal history.
  - `SAVEHIST` stores the maximum number of events to save in the history file.

Aliases
-------

  - `history-stat` lists the ten most used commands

Authors
-------

## Settings

### histfile

Can be configured either by setting HISTFILE manually before loading this
module or by using zstyle:

```sh
zstyle ':prezto:module:history' histfile "<file_name>"
```

defaults to "${ZDOTDIR:-$HOME}/.zsh_history".

### histsize

```sh
zstyle ':prezto:module:history' histsize <number>
```

defaults to 10000.

### savehist

```sh
zstyle ':prezto:module:history' savehist <number>
```

defaults to histsize

## Authors

  - [Robby Russell](https://github.com/robbyrussell)
  - [Sorin Ionescu](https://github.com/sorin-ionescu)

[1]: http://zsh.sourceforge.net/Guide/zshguide02.html#l16
[2]: https://github.com/sorin-ionescu/prezto/issues
