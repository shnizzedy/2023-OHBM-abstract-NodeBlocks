for FILE in `ls *.tex`
do
  NAME=${FILE::${#FILE}-4}
  latex -output-format=pdf $FILE
  convert -define png:color-type=6 -background white -alpha remove -alpha off $NAME.pdf $NAME.png
done
rm -rf *.aux *.log
echo "Figures regenerated!"