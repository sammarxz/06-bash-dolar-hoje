#!/bin/bash


request() {
  req=$(curl -ss "https://api.exchangeratesapi.io/latest?base=USD&symbols=USD,BRL")

  echo "Checando o preço do dólar para hoje..."

  sleep 1s

  res=`echo $req | jq .rates.BRL`

  total=`echo "$res * $1" | bc`

  LANG=C printf "${1} USD = %.2f BRL \n" $total
}


value_to_convert=$1


if [ $value_to_convert ]
  then
    #Passou args
    request "$value_to_convert"
  else
    #Não passou args
    request 1
fi
