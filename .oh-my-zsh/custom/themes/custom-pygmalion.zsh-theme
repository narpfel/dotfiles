# This file is licensed under the MIT license.

# The MIT License (MIT)
#
# Copyright (c) 2009-2018 Robby Russell and contributors
# See the full list at https://github.com/robbyrussell/oh-my-zsh/contributors
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

# Yay! High voltage and arrows!

prompt_setup_pygmalion(){
  ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}%{$fg[green]%}"
  ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
  ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[red]%}Ξ%{$reset_color%}"
  ZSH_THEME_GIT_PROMPT_CLEAN=""

  if [[ "$(whoami)" == "$DEFAULT_USERNAME" ]]
  then
    local username="me"
  else
    local username="%n"
  fi

  local hostname="%m"

  base_prompt='%{$fg_bold[red]%}'"$username"'%{$reset_color%}%{$fg_bold[cyan]%}@%{$reset_color%}%{$fg_bold[green]%}'"$hostname"'%{$reset_color%}%{$fg[red]%}:%{$reset_color%}%{$fg[blue]%}%0~%{$reset_color%}'
  post_prompt='%{$fg_bold[blue]%}»%{$reset_color%} '

  base_prompt_nocolor=$(echo "$base_prompt" | perl -pe "s/%\{[^}]+\}//g")
  post_prompt_nocolor=$(echo "$post_prompt" | perl -pe "s/%\{[^}]+\}//g")

  precmd_functions+=(prompt_pygmalion_precmd)
}

prompt_pygmalion_precmd(){
  local gitinfo=$(git_prompt_info)
  local gitinfo_nocolor=$(echo "$gitinfo" | perl -pe "s/%\{[^}]+\}//g")
  local exp_nocolor="$(print -P \"$base_prompt_nocolor$gitinfo_nocolor$post_prompt_nocolor\")"
  local prompt_length=${#exp_nocolor}

  local nl=""

  if [[ $prompt_length -gt 40 ]]; then
    nl=$'\n%{\r%}';
  fi

  local pipe=""
  if [ $gitinfo ]; then
    pipe="%{$fg[red]%}|%{$reset_color%}"
  fi

  PROMPT="$base_prompt$pipe$gitinfo $nl$post_prompt"
}

prompt_setup_pygmalion
