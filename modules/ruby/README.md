Ruby
====

Configures [Ruby][1] local gem installation, loads version managers, and defines
aliases.

Local Gem Installation
----------------------

When a Ruby version manager is not detected, local gems are installed in
`~/.gems`; otherwise, they are installed according to the manager.

RVM
---

An alternative to the above is to use [The Ruby Version Manager (RVM)][2], which
allows for managing multiple, isolated Ruby installations and gem sets in the
home directory.

Since RVM is loaded into the shell and is known to override shell commands, it
may conflict with shell scripts.

Load this module as late as possible when using RVM since RVM will complain if
it is not first in `$PATH`.

rbenv
-----

An alternative RVM is to use [rbenv][3], which allows for switching between
multiple, isolated Ruby installations in the home directory.

While it is not as feature rich as RVM, it is not loaded into the shell and is
not known to cause conflicts with shell scripts.

This will be loaded automatically if rbenv is installed to `$RBENV_ROOT`,
`~/.rbenv`, or if the `rbenv` command is on the path.

chruby
------

Yet another alternative is [chruby][4], which is simpler than both RVM and
rbenv.

### Settings

#### Auto-Switch

To enable auto switching the Ruby version on directory change based on the
`.ruby-version` file, add the following line to [`zpreztorc`][5]:

```sh
zstyle ':prezto:module:ruby:chruby' auto-switch 'yes'
```

Bundler
-------

Manage gems that are not meant to be used as commands, such as application
dependencies, with [Bundler][6].

Aliases
-------

Aliases are enabled by default. To disable them, add the following to
_`${ZDOTDIR:-$HOME}/.zpreztorc`_.

```sh
zstyle ':prezto:module:ruby:alias' skip 'yes'
```

### General

  - `rb` is short for `ruby`.

### Bundler

  - `rbb` manages ruby dependencies (`bundle`).
  - `rbbc` cleans up unused gems in your bundler directory.
  - `rbbe` executes a script in the context of the current bundle.
  - `rbbi` installs the gems specified in the `Gemfile` in `vendor/bundle`.
  - `rbbI` installs the following:
    - gems specified in the `Gemfile` in `vendor/bundle`.
    - packages the gems into `vendor/cache`.
    - appends bundler directories to  `.gitignore`.
  - `rbbl` lists all gems in the current bundle.
  - `rbbo` opens an installed gem in the editor.
  - `rbbp` packages gem files into `vendor/cache`.
  - `rbbu` updates gems to their latest version.

Functions
---------

  - `ruby-app-root` displays the path to the Ruby application root directory.
  - `ruby-info` exposes information about the Ruby environment via the
    `$ruby_info` associative array.

Theming
-------

To display the name of the current Ruby version in a prompt, define the
following style in the `prompt_name_setup` function.

    # %v - ruby version.
    zstyle ':prezto:module:ruby:info:version' format 'version:%v'

Then add `$ruby_info[version]` to `$PROMPT` or `$RPROMPT` and call
`ruby-info` in the `prompt_name_preexec` hook function.

Authors
-------

*The authors of this module should be contacted via the [issue tracker][7].*

  - [Sorin Ionescu](https://github.com/sorin-ionescu)

[1]: http://www.ruby-lang.org
[2]: https://rvm.io
[3]: https://github.com/sstephenson/rbenv
[4]: https://github.com/postmodern/chruby
[5]: https://github.com/sorin-ionescu/prezto/blob/master/runcoms/zpreztorc
[6]: http://gembundler.com
[7]: https://github.com/sorin-ionescu/prezto/issues
