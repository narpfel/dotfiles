My dotfiles
===========

This setup is based on the [dotfiles setup](https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/) by Nicola Paolucci. Thanks.

Installation
------------

```zsh
git clone git@github.com:robbyrussell/oh-my-zsh.git $HOME/.oh-my-zsh
git clone --bare git@github.com:narpfel/dotfiles.git $HOME/.dotfiles
git --git-dir=$HOME/.dotfiles --work-tree=$HOME checkout
git clone git@github.com:junegunn/vim-plug $HOME/.config/nvim/bundle/vim-plug
# logout and then login again to load new config
config config --local status.showUntrackedFiles no
```

License
-------

The contents of this repository are licensed under the terms of version 3
(or any later version) of the GPL:

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.

For the full text of the GPL, see
[`.LICENSE`](https://github.com/narpfel/dotfiles/blob/master/.LICENSE).
