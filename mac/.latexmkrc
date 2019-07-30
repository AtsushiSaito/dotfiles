#!/usr/bin/env perl
$latex            = 'platex -synctex=1 -halt-on-error';
$bibtex           = 'pbibtex -kanji=utf8';
$dvipdf           = 'dvipdfmx %O -o %D %S';
$max_repeat       = 5;
$pdf_mode         = 3;
$pvc_view_file_via_temporary = 0;
$pdf_previewer = 'open -a /Applications/Skim.app';

$latex = "find . -type f -name '*.tex' -print0 | xargs -0 sed -i '' -e 's/、/, /g' -e 's/。/. /g'; platex -synctex=1 -halt-on-error";