# tmux-remote

`tmux-remote` is a simple plugin that toggles your host machine's tmux keybindings when working remotely.

Tested and working macOS and Linux.

### Why
When in nested sessions with tmux, `tmux-remote` enables you to enter a mode where your host machine's tmux bindings are disabled, which easily allows you to switch contexts between host and remote tmux sessions.

### Installation

#### Install with TPM
Install using [tpm](https://github.com/tmux-plugins/tpm) (tmux Plugin Manager)

By adding the following in your `.tmux.conf`:

```tmux
set -g @plugin 'danyim/tmux-remote'
```

Then hit `prefix + I` to fetch the plugin and source it.

#### Manual Install

Clone the repo:

    $ git clone https://github.com/danyim/tmux-remote

Add this line to the bottom of `.tmux.conf`:

```tmux
run-shell ~/path/to/tmux-remote/remote.tmux
```

Then reload your tmux environment with `$ tmux source-file ~/.tmux.conf`.

### Usage

| Key           | Action        |
| ------------- | ------------- |
| F10 (without prefix)           | Turns on remote mode  |
| F11 (without prefix)           | Turns off remote mode  |
| F12 (without prefix)           | Toggles the remote mode  |

### Options

```tmux
# Change the default on keybinding (F10)
setw -g @remote-on-key F10
# Change the default off keybinding (F11)
setw -g @remote-off-key F11
# Change the default toggle keybinding (F12)
setw -g @remote-toggle-key F12
```

### Resources

- [Tmux in practice: local and nested remote tmux sessions](https://medium.freecodecamp.org/tmux-in-practice-local-and-nested-remote-tmux-sessions-4f7ba5db8795)
  Medium article by Alexey Samoshkin that inspired this plugin
- [Nested tmux](http://stahlke.org/dan/tmux-nested/)
  article by Dan Stahlke outlining the method for toggling keybindings

### License

[MIT](LICENSE.md)
