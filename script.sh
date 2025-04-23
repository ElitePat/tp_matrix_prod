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
file1="data1a"
file2="data1b"

rm $file1 $file2

msg="Exponentielle"
echo "$msg"

for (( i=1; i<10000 ; i=$(( $i * 2 )) )); 
do 
	echo "Calcul pour: $i";
	sec1=$SECONDS
	#sleep $(($i/10)) #remplacer par notre commande
	
	sec2=$SECONDS
	temps=$(($sec2 - $sec1))
	echo -e "$i\t$temps" >> $file1
done

msg="Exponentielle terminé"
echo "$msg"

# temps d'attente
$(sleep 2)

msg="Lineaire"
echo "$msg"

for (( i=0; i<10000 ; i=$(( $i + 250 )) )); 
do 
	echo "Calcul pour: $i";
	sec1=$SECONDS
	#sleep $(($i/10)) #remplacer par notre commande
	
	sec2=$SECONDS
	temps=$(($sec2 - $sec1))
	echo -e "$i\t$temps" >> $file2
done

msg="Lineaire terminé"
echo "$msg"
