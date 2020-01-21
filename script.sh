# for f in *.cbr; do 
#     cp -- "$f" "${f%.txt}.rar"
# done
result=${PWD##*/}
echo $result
for f in *.cbr; do 
    mkdir temp
    unrar e $f ./temp
    # cp -- "$f" "${f%.txt}.rar"
done


convert ./temp/*.jpg $result.pdf

rm -r temp
