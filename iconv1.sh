find tmallcollection -type d -exec mkdir -p utf/{} \;
for i in `find tmallcollection -name *.java -type f` ; do iconv -c -f GBK -t UTF-8 $i > utf/$i; done

