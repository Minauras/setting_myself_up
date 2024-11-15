# Setting myself up: Nara likes her environment
These are the steps to reproduce my favorite working environment for software development

## Mouse
I really enjoy trackballs. I have enjoyed using [the Logitech Erg0 M575](https://www.digitec.ch/en/s1/product/logitech-ergo-m575-wireless-mouse-14195680?supplier=406802) in both work an personal settings.

I like mapping the extra buttons to copy and paste history (Win + V), this is done through [Logi Options](https://www.logitech.com/en-ch/software/options.html)

## VSCode
My favorite editor right now is VSCode. I use the following extensions:

### Markdown
- Markdown All In One

### C/C++
- C/C++
- C/C++ Themes
- C/C++ Extension Pack
- C/C++ Compile Run by danielpinto8zz6
- CMake
- CMake Tools

### Python
- Python
- Python extension pack
For linting, I use [Pycodestyle/PEP8](https://code.visualstudio.com/docs/python/linting#_pycodestyle-pep8)

### Misc
- VSCode Action Buttons

## Windows Terminal
My terminal of choice is Git Bash in Windows Terminal.

If Git Bash is not already set up in Windows Terminal, add a new profile pointing to `C:\Program Files\Git\bin\bash.exe`.

To set Windows Terminal up the way I like it, use the following configuration:
- Git Bash as default terminal
- Color scheme: Tango Dark
- Font face: Fira Code if available, otherwise Consolas
- Font size: 11
- Background image: set use a cool satellite view from google earth with opacity 20%

### zsh
I use zsh as console, with the `.zshrc` included in this repository. It sets up my prompt style, git aliases, and zsh plugins.

I use the following plugins:
- [autosuggestion](https://github.com/zsh-users/zsh-autosuggestions)
- [syntax highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
- [history substring search](https://github.com/zsh-users/zsh-history-substring-search)

```
cd ~/.zsh
git clone https://github.com/zsh-users/zsh-autosuggestions.git
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
git clone https://github.com/zsh-users/zsh-history-substring-search.git
```

For history substring search, I like to map up and down to the Page Up and Page Down buttons. Keymaps for those buttons can be found with `cat -v`, and can then be updated in the `.zshrc`.

### micro editor
For console editors, I like using micro, which can be installed with `curl https://getmic.ro | bash`

### Commitizen and Gitmojis
To enhance my Git process, I like to use [Commitizen](https://github.com/commitizen/cz-cli), especially for its gitmojis.

After installing, I initialize commitizen with
```
commitizen init cz-emoji --save-dev --save-exact
```
