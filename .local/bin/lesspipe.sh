#!/bin/sh
case "$1" in
   # add all extensions you want to handle here
   *.awk|*.groff|*.java|*.js|*.m4|*.php|*.pl|*.pm|*.pod|*.sh|\
   *.ad[asb]|*.asm|*.inc|*.[ch]|*.[ch]pp|*.[ch]xx|*.cc|*.hh|\
   *.lsp|*.l|*.pas|*.p|*.xml|*.xps|*.xsl|*.axp|*.ppd|*.pov|\
   *.diff|*.patch|*.py|*.rb|*.sql|*.ebuild|*.eclass)
      pygmentize -O encoding=utf-8 -f 256 "$1" ;;
   *) /bin/lesspipe.sh "$1";;
esac
