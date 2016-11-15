# (dotfiles) Configuration

## what are dotfiles?

Your dotfiles are how you personalize your system. These are mine, almost entirely influenced by those of Zach Holman (thanks, dude!) and all those that came before his setup. If you're interested in the philosophy behind why projects like these are awesome, you might want to [read Zach's post on the subject](http://zachholman.com/2010/08/dotfiles-are-meant-to-be-forked/).

**Since these scripts have been customized for my system, I'd recommend that you refer to [Zach's repository](https://github.com/holman/dotfiles) directly. If you run into any snags, please [open an issue](https://github.com/holman/dotfiles/issues) on Zach's repository - he'd love to get it fixed for you!**

## install

Run this:

```sh
git clone https://github.com/holman/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
script/bootstrap
```

** You may be prompted to install Xcode Command Line Dev Tools. Do it!

This will symlink the appropriate files in `.dotfiles` to your home directory.
Everything is configured and tweaked within `~/.dotfiles`.

The main file you'll want to change right off the bat is `zsh/zshrc.symlink`,
which sets up a few paths that'll be different on your particular machine.

`dot` is a simple script that installs some dependencies, sets sane OS X
defaults, and so on. Tweak this script, and occasionally run `dot` from
time to time to keep your environment fresh and up-to-date. You can find
this script in `bin/`.

## topical

Everything's built around topic areas. If you're adding a new area to your
forked dotfiles — say, "GoLang" — you can simply add a `golang` directory and put
files in there. Anything with an extension of `.zsh` will get automatically
included into your shell. Anything with an extension of `.symlink` will get
symlinked without extension into `$HOME` when you run `script/bootstrap`.

## what's Inside?

A lot of stuff. Check them out in the file browser above and see what components may mesh up with you. [Fork Zach's repository](https://github.com/holman/dotfiles/fork), remove what you don't use, and build on what you do use.

## components

There's a few special files in the hierarchy.

- **bin/**: Anything in `bin/` will get added to your `$PATH` and be made
  available everywhere.
- **topic/\*.zsh**: Any files ending in `.zsh` get loaded into your
  environment.
- **topic/path.zsh**: Any file named `path.zsh` is loaded first and is
  expected to setup `$PATH` or similar.
- **topic/completion.zsh**: Any file named `completion.zsh` is loaded
  last and is expected to setup autocomplete.
- **topic/\*.symlink**: Any files ending in `*.symlink` get symlinked into
  your `$HOME`. This is so you can keep all of those versioned in your dotfiles
  but still keep those autoloaded files in your home directory. These get
  symlinked in when you run `script/bootstrap`.

## thanks

Zach Holman, Ryan Bates, and everyone else who's contributed to the dotfiles revolution. Read more @ [dotfiles.github.io](http://dotfiles.github.io/).

## ASCII art (because internet)
````
_____/\\\\\\\\\\\\_________________________/\\\________/\\\__________________/\\\________
 ___/\\\//////////_________________________\/\\\_______\/\\\_________________\/\\\________
  __/\\\_______________/\\\______/\\\_______\/\\\_______\/\\\_________________\/\\\________
   _\/\\\____/\\\\\\\__\///____/\\\\\\\\\\\__\/\\\\\\\\\\\\\\\___/\\\____/\\\__\/\\\________
    _\/\\\___\/////\\\___/\\\__\////\\\////___\/\\\/////////\\\__\/\\\___\/\\\__\/\\\\\\\\\__
     _\/\\\_______\/\\\__\/\\\_____\/\\\_______\/\\\_______\/\\\__\/\\\___\/\\\__\/\\\////\\\_
      _\/\\\_______\/\\\__\/\\\_____\/\\\_/\\___\/\\\_______\/\\\__\/\\\___\/\\\__\/\\\__\/\\\_
       _\//\\\\\\\\\\\\/___\/\\\_____\//\\\\\____\/\\\_______\/\\\__\//\\\\\\\\\___\/\\\\\\\\\__
        __\////////////_____\///_______\/////_____\///________\///____\/////////____\/////////___
````
