cd /d %~dp0

platex -kanji=utf8 main
pbibtex main
mendex main.glo -s esysnomencl.ist -o main.gls
platex -kanji=utf8 main
platex -kanji=utf8 main
dvipdfmx main
pause