# Skeleton - set of dotfiles, scripts, and other configurations.

> [!NOTE]
> As of January 1, 2026, I now use [Void Linux](https://voidlinux.org/) with [i3wm](https://i3wm.org/) leaving Debian for now. [Sway](https://swaywm.org/) configs will be untouched as I primarily focus on i3wm. Configurations will be kept for future references. (Could possibly be changed if I'm not so lazy so, 👍)

This will always be a work in progress, expect changes from time to time.

## Key Notes: 
> Probably for me too

If you're using nano with the [syntax highlighting](https://github.com/galenguyer/nano-syntax-highlighting), it's better to cherry-pick the ones you'll use. Then again, I think Vim would suit better since you can configure it with LSP and some more stuff. There's also [NeoVim](https://neovim.io/) that uses [Lua](https://www.lua.org/) instead of vimscript. (main advantages are the language being much more known, much less complex than VimL too I might add) You can also use [Helix](https://helix-editor.com/), also great text editor.

Vim isn't actually hard? Well, for me it isn't now. [Vim Master](https://github.com/renzorlive/vimmaster) actually helped me to learn the basics of vim in under 10 minutes. Highly recommended.

In i3/scripts/powermenu.sh, Lines 8-11 are using `loginctl`, which is from `elogind` as Void uses runit. If you want this to work with systemd, change this to `systemctl`, provided that you have `polkitd` installed or else it won't shutdown or do anything since you lack permission.

For font compatibility, (not exactly "compatibility" in a way that it would break if you don't have these installed, it's just to look much more nice) install [Poppins](https://fonts.google.com/specimen/Poppins) font and whatever font you prefer in Nerd Fonts.

As for the display manager (or login manager, whatever the name is) I use [Ly](https://github.com/fairyglade/ly), or just use the good ol' `startx` from tty, assuming you have configured .xinitrc

### For Firefox:
To make `userChrome.css` work, make sure to enable
```
toolkit.legacyUserProfileCustomizations.stylesheets
```
in `about:config`.

To locate the current used profile, go to `about:profiles` and look for ***Root Directory***, which would look like
```
	/home/<username>/.mozilla/firefox/<some random jargon idk why mozilla even did this>.default-default
```

Here's how the configuration would look like:

<img width="1366" height="731" alt="image" src="https://github.com/user-attachments/assets/0b8ecc7c-ca44-4eb8-a56a-96f7e5236953" />

---

## 📂 Repository Structure:

```
skeleton
├── chrome
│   └── userChrome.css
├── fastfetch
│   └── config.jsonc
├── foot
│   └── foot.ini
├── helix
│   ├── README
│   ├── config.toml
│   └── languages.toml
├── i3
│   ├── config
│   └── scripts
│       └── powermenu.sh
├── i3status
│   └── i3status.conf
├── nano
│   ├── nanorc
│   └── syntax-highlighting
│       ├── arduino.nanorc
│       ├── c.nanorc
│       ├── conf.nanorc
│       ├── css.nanorc
│       ├── git.nanorc
│       ├── gitcommit.nanorc
│       ├── html.nanorc
│       ├── json.nanorc
│       ├── markdown.nanorc
│       ├── nanorc.nanorc
│       ├── php.nanorc
│       ├── sh.nanorc
│       ├── systemd.nanorc
│       └── toml.nanorc
├── picom
│   └── picom.conf
├── sway
│   └── configs
│   │   ├── autostart
│   │   ├── defaults
│   │   ├── input
│   │   ├── keybinds
│   │   ├── rules
│   │   ├── theme
│   │   ├── window
│   │   └── workspaces
│   └──config
├── swaync
│   ├── config.json
│   ├── configSchema.json
│   └── style.css
├── tofi
│   └── config
├── waybar
│   ├── color.css
│   ├── config.jsonc
│   └── style.css
├── wofi
│   ├── config
│   └── style.css
└── README..md
```

# Sources used:
> All credits goes to the rightful owners.

[Arch Wiki](https://wiki.archlinux.org/title/Main_page) <br>
[Debian Packages](https://www.debian.org/distrib/packages) <br>
[Debian Sway Configuration](https://github.com/agung-satria/debian-sway/) <br>
[Debian Wiki](https://wiki.debian.org/FrontPage) <br>
[Fastfetch](https://github.com/fastfetch-cli/fastfetch) <br>
[Github Formatting Syntax](https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax) 
<br>
[i3wm](https://i3wm.org/) <br>
[i3wm Starter Pack](https://github.com/addy-dclxvi/i3-starterpack) <br>
[Ly Display Manager](https://github.com/fairyglade/ly) <br>
[Nano Syntax Highlighting](https://github.com/galenguyer/nano-syntax-highlighting) <br>
[Nerd Fonts](https://www.nerdfonts.com/) <br>
[Optimizing Firefox](https://wiki.archlinux.org/title/Firefox/Tweaks)
[Papirus Icon Theme](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme) <br>
[Squared](https://github.com/EliverLara/Squared) <br>
[Sway](https://swaywm.org/) <br>
[The Void Linux Handbook](https://docs.voidlinux.org/) <br>
[Vim LSP](https://github.com/mattn/vim-lsp-settings) <br>
[Vim Master](https://github.com/renzorlive/vimmaster) <br>
