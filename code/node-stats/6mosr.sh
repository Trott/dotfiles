#!/bin/zsh

git log --since="6 months ago" | grep '^    Reviewed-By: ' | sort | uniq -c | perl -n -e'/^(.* Reviewed-By: )(.*)$/ && print "$1 " . `git check-mailmap "$2" || echo "$2"`' 2>/dev/null | sort -k 3 | while read -r f1 f2 f3; do; echo "$f1 $f3"; done | perl -ape '$k="@F[ 1 .. $#F ]"; push @o,$k if !$h{$k}; @{$h{$k}}[3] += $F[0] }{ print "@{$h{$_}} $_\n" for @o' | sort -rn | more
