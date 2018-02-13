#!/usr/bin/env bash

# Author: Pavel Hrebicek (xhrebi04)
# Tests for FLP BKG-SIMPLIFY

RED='\033[0;31m'
GREEN='\033[0;32m'
YEL='\033[0;33m'
NC='\033[0m' # No Color
total=0
ok=0

## BAD GRAMMAR TESTS ##
## TEST01 - TEST 03
## TEST01 - bad nonterminal symbol
## TEST02 - bad terminal symbol
## TEST03 - bad startingnonterminal symbol

echo "Starting testing..."
echo "***********************************************"
echo -e "[${YEL}******** BAD GRAMMAR TESTING *******${NC}]"
for (( i=1; i<=3; i++ ))
do
  ((total++))
  ./simplify-bkg -i tests/test0${i}.in > tests/test0${i}_i.temp
  diff tests/test0${i}_i.temp tests/test0${i}.out  

  if [ "$?" == "0" ]
    then
      echo -e "[TEST 0$i] ./simplify-bkg -i tests/test0$i.in [${GREEN}OK${NC}]"
      ((ok++))
      rm tests/test0${i}_i.temp
    else
      echo -e "[TEST 0$i] ./simplify-bkg -i tests/test0$i.in [${RED}BAD${NC}]"
  fi
done
echo -e "[${YEL}****** END BAD GRAMMAR TESTING *****${NC}]"

for (( i=4; i<=9; i++ ))
do
  ((total++))
  # -i
  ./simplify-bkg -i tests/test0${i}.in > tests/test0${i}_i.temp
  diff tests/test0${i}_i.temp tests/test0${i}.in  

  if [ "$?" == "0" ]
    then
      echo -e "[TEST 0$i] ./simplify-bkg -i tests/test0$i.in [${GREEN}OK${NC}]"
      ((ok++))
      rm tests/test0${i}_i.temp
    else
      echo -e "[TEST 0$i] ./simplify-bkg -i tests/test0$i.in [${RED}BAD${NC}]"
  fi

  ((total++))
  # -1
  ./simplify-bkg -1 tests/test0${i}.in > tests/test0${i}_1.temp
  diff tests/test0${i}_1.temp tests/test0${i}_1.out
  if [ "$?" == "0" ]
    then
      echo -e "[TEST 0$i] ./simplify-bkg -1 tests/test0${i}.in [${GREEN}OK${NC}]"
      ((ok++))
      rm tests/test0${i}_1.temp
    else
      echo -e "[TEST 0$i] ./simplify-bkg -1 tests/test0${i}.in [${RED}BAD${NC}]"
  fi
done

echo "***********************************************"
echo -e "FINISHED TESTING:"
echo -e "OK/TOTAL: ${ok}/${total}"

if [ "$ok" == "$total" ]
  then
    echo -e "[${GREEN}SUCCESSFULL${NC}]"
   else
    echo -e "[${RED}FAILED${NC}]"
fi


