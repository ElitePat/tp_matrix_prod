#!/bin/bash
# script.sh

# usage: ./script.sh

#===========================Brouillon=============================
#ma_var="On commence"
#res=$(echo $ma_var)
#echo "$res"

#x=1
#while [ $x -le 5 ]
#do
  #echo "Welcome $x times"
  #x=$(( $x * 2 ))
#done
#fact=1
#================================================================

### Variables:
file1="data2"
#rm $file1

msg="Augmentation Lineaire"
echo "$msg"

for (( i=0; i<10000 ; i=$(( $i + 250 )) )); 
do 
	echo "Calcul pour: $i";
	sec1=$SECONDS
	#sleep $(($i/10)) #remplacer par notre commande
	./build/src/top.matrix_product $i $i $i
	sec2=$SECONDS
	temps=$(($sec2 - $sec1))
	echo -e "$i\t$temps" >> $file1
done

msg="Test terminé"
echo "$msg"
