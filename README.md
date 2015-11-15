# strip-html-tags

Script to recursive strip html tags

Here again


perl strip-html-tags.pl
> Input: <body><div class="contents"><div><strong>Hello World</strong></div></div></body>
> Hello World


echo '<tag>here</tag>' | perl strip-html-tags.pl
>Input: <tag>here</tag>
>here

