#!/bin/bash
output=index.html
header=$(basename $(dirname $(pwd)))
dir=$(basename $(pwd))

if [ -e $output ]
then
    read -r -p "Overwrite ${output} [Y/n]? " yn
    [ "$yn" = "y" ] || [ "$yn" = "Y" ] || [ "$yn" = "" ] || exit 1
fi

cat <<EOF > $output
<html>
<head>
  <meta charset="utf-8">
  <title>$header</title>
  <style type="text/css">
    body {
      color: #5e6a71;
      font-family: 'Noto Sans', sans-serif;
      font-size: 1.4em;
      margin: 3em;
    }
    a {
      color: #0082bb;
    }
    a:hover {
      color: #ff5800;
    }
    a:visited {
      color: #5e6a71;
    }
  </style>
</head>
<body>
  <h2>$header/$dir/</h2>
  <ul>
EOF

for html in *.html
do
    [[ $html == "index.html" ]] && continue
    title=$(egrep -o '<title>(.*)</title>' $html \
        | sed -e 's|<title>||' -e 's|</title>||')
    echo "    <li><a href='$html'>$html</a> ($title)</li>" >> $output
done

cat <<EOF >> $output
  </ul>
</body>
EOF
