#!/usr/bin/env bash

# Author: Pavel Hrebicek (xhrebi04)
# Tests for FLP BKG-SIMPLIFY

RED='\033[0;31m'
GREEN='\033[0;32m'
YEL='\033[0;33m'
NC='\033[0m' # No Color
total=0
ok=0

echo "Starting testing..."
echo "***********************************************"

########################################################
# Test if BKG grammar is valid

#Bad nonTerminal symbol
./simplify-bkg -i tests/test01.in > tests/test01.temp
((total++))
diff tests/test01.temp tests/test01.out

if [ "$?" == "0" ]
  then
    echo -e "[TEST 01] ./simplify-bkg -i tests/test01.in [${GREEN}OK${NC}]"
    ((ok++))
    rm tests/test01.temp
   else
    echo -e "[TEST 01] ./simplify-bkg -i tests/test01.in [${RED}BAD${NC}]"
fi

#Bad terminal symbol
./simplify-bkg -i tests/test02.in > tests/test02.temp
((total++))
diff tests/test02.temp tests/test02.out

if [ "$?" == "0" ]
  then
    echo -e "[TEST 02] ./simplify-bkg -i tests/test02.in [${GREEN}OK${NC}]"
    ((ok++))
    rm tests/test02.temp
   else
    echo -e "[TEST 02] ./simplify-bkg -i tests/test02.in [${RED}BAD${NC}]"
fi

#Bad startingNonTerminal symbol
./simplify-bkg -i tests/test03.in > tests/test03.temp
((total++))
diff tests/test03.temp tests/test03.out

if [ "$?" == "0" ]
  then
    echo -e "[TEST 03] ./simplify-bkg -i tests/test03.in [${GREEN}OK${NC}]"
    ((ok++))
    rm tests/test03.temp
   else
    echo -e "[TEST 03] ./simplify-bkg -i tests/test03.in [${RED}BAD${NC}]"
fi

########################################################
# BKG 1

# -i
./simplify-bkg -i tests/test04.in > tests/test04_i.temp
((total++))
diff tests/test04_i.temp tests/test04.in

if [ "$?" == "0" ]
  then
    echo -e "[TEST 04] ./simplify-bkg -i tests/test04.in [${GREEN}OK${NC}]"
    ((ok++))
    rm tests/test04_i.temp
   else
    echo -e "[TEST 04] ./simplify-bkg -i tests/test04.in [${RED}BAD${NC}]"
fi

# -1
./simplify-bkg -1 tests/test04.in > tests/test04_1.temp
((total++))
diff tests/test04_1.temp tests/test04_1.out
if [ "$?" == "0" ]
  then
    echo -e "[TEST 05] ./simplify-bkg -1 tests/test04.in [${GREEN}OK${NC}]"
    ((ok++))
    rm tests/test04_1.temp
   else
    echo -e "[TEST 05] ./simplify-bkg -1 tests/test04.in [${RED}BAD${NC}]"
fi


# -2
./simplify-bkg -2 tests/test04.in > tests/test04_2.temp
((total++))
diff tests/test04_2.temp tests/test04_2.out
if [ "$?" == "0" ]
  then
    echo -e "[TEST 06] ./simplify-bkg -2 tests/test04.in [${GREEN}OK${NC}]"
    ((ok++))
    rm tests/test04_2.temp
   else
    echo -e "[TEST 06] ./simplify-bkg -2 tests/test04.in [${RED}BAD${NC}]"
fi

########################################################
# BKG 2

# -i
./simplify-bkg -i tests/test05.in > tests/test05_i.temp
((total++))
diff tests/test05_i.temp tests/test05.in

if [ "$?" == "0" ]
  then
    echo -e "[TEST 07] ./simplify-bkg -i tests/test05.in [${GREEN}OK${NC}]"
    ((ok++))
    rm tests/test05_i.temp
   else
    echo -e "[TEST 07] ./simplify-bkg -i tests/test05.in [${RED}BAD${NC}]"
fi

# -1
./simplify-bkg -1 tests/test05.in > tests/test05_1.temp
((total++))
diff tests/test05_1.temp tests/test05_1.out
if [ "$?" == "0" ]
  then
    echo -e "[TEST 08] ./simplify-bkg -1 tests/test05.in [${GREEN}OK${NC}]"
    ((ok++))
    rm tests/test05_1.temp
   else
    echo -e "[TEST 08] ./simplify-bkg -1 tests/test05.in [${RED}BAD${NC}]"
fi


# -2
./simplify-bkg -2 tests/test05.in > tests/test05_2.temp
((total++))
diff tests/test05_2.temp tests/test05_2.out
if [ "$?" == "0" ]
  then
    echo -e "[TEST 09] ./simplify-bkg -2 tests/test05.in [${GREEN}OK${NC}]"
    ((ok++))
    rm tests/test05_2.temp
   else
    echo -e "[TEST 09] ./simplify-bkg -2 tests/test05.in [${RED}BAD${NC}]"
fi

########################################################
# BKG 3

# -i
./simplify-bkg -i tests/test06.in > tests/test06_i.temp
((total++))
diff tests/test06_i.temp tests/test06.in

if [ "$?" == "0" ]
  then
    echo -e "[TEST 10] ./simplify-bkg -i tests/test06.in [${GREEN}OK${NC}]"
    ((ok++))
    rm tests/test06_i.temp
   else
    echo -e "[TEST 10] ./simplify-bkg -i tests/test06.in [${RED}BAD${NC}]"
fi

# -1
./simplify-bkg -1 tests/test06.in > tests/test06_1.temp
((total++))
diff tests/test06_1.temp tests/test06_1.out
if [ "$?" == "0" ]
  then
    echo -e "[TEST 11] ./simplify-bkg -1 tests/test06.in [${GREEN}OK${NC}]"
    ((ok++))
    rm tests/test06_1.temp
   else
    echo -e "[TEST 11] ./simplify-bkg -1 tests/test06.in [${RED}BAD${NC}]"
fi


# -2
./simplify-bkg -2 tests/test06.in > tests/test06_2.temp
((total++))
diff tests/test06_2.temp tests/test06_2.out
if [ "$?" == "0" ]
  then
    echo -e "[TEST 12] ./simplify-bkg -2 tests/test06.in [${GREEN}OK${NC}]"
    ((ok++))
    rm tests/test06_2.temp
   else
    echo -e "[TEST 12] ./simplify-bkg -2 tests/test06.in [${RED}BAD${NC}]"
fi

########################################################
# BKG 4

# -i
./simplify-bkg -i tests/test07.in > tests/test07_i.temp
((total++))
diff tests/test07_i.temp tests/test07.in

if [ "$?" == "0" ]
  then
    echo -e "[TEST 13] ./simplify-bkg -i tests/test07.in [${GREEN}OK${NC}]"
    ((ok++))
    rm tests/test07_i.temp
   else
    echo -e "[TEST 13] ./simplify-bkg -i tests/test07.in [${RED}BAD${NC}]"
fi

# -1
./simplify-bkg -1 tests/test07.in > tests/test07_1.temp
((total++))
diff tests/test07_1.temp tests/test07_1.out
if [ "$?" == "0" ]
  then
    echo -e "[TEST 14] ./simplify-bkg -1 tests/test07.in [${GREEN}OK${NC}]"
    ((ok++))
    rm tests/test07_1.temp
   else
    echo -e "[TEST 14] ./simplify-bkg -1 tests/test07.in [${RED}BAD${NC}]"
fi


# -2
./simplify-bkg -2 tests/test07.in > tests/test07_2.temp
((total++))
diff tests/test07_2.temp tests/test07_2.out
if [ "$?" == "0" ]
  then
    echo -e "[TEST 15] ./simplify-bkg -2 tests/test07.in [${GREEN}OK${NC}]"
    ((ok++))
    rm tests/test07_2.temp
   else
    echo -e "[TEST 15] ./simplify-bkg -2 tests/test07.in [${RED}BAD${NC}]"
fi
########################################################
# BKG 5

# -i
./simplify-bkg -i tests/test08.in > tests/test08_i.temp
((total++))
diff tests/test08_i.temp tests/test08.in

if [ "$?" == "0" ]
  then
    echo -e "[TEST 16] ./simplify-bkg -i tests/test08.in [${GREEN}OK${NC}]"
    ((ok++))
    rm tests/test08_i.temp
   else
    echo -e "[TEST 16] ./simplify-bkg -i tests/test08.in [${RED}BAD${NC}]"
fi

# -1
./simplify-bkg -1 tests/test08.in > tests/test08_1.temp
((total++))
diff tests/test08_1.temp tests/test08_1.out
if [ "$?" == "0" ]
  then
    echo -e "[TEST 17] ./simplify-bkg -1 tests/test08.in [${GREEN}OK${NC}]"
    ((ok++))
    rm tests/test08_1.temp
   else
    echo -e "[TEST 17] ./simplify-bkg -1 tests/test08.in [${RED}BAD${NC}]"
fi


# -2
./simplify-bkg -2 tests/test08.in > tests/test08_2.temp
((total++))
diff tests/test08_2.temp tests/test08_2.out
if [ "$?" == "0" ]
  then
    echo -e "[TEST 18] ./simplify-bkg -2 tests/test08.in [${GREEN}OK${NC}]"
    ((ok++))
    rm tests/test08_2.temp
   else
    echo -e "[TEST 18] ./simplify-bkg -2 tests/test08.in [${RED}BAD${NC}]"
fi

########################################################

# BKG 6

# -i
./simplify-bkg -i tests/test09.in > tests/test09_i.temp
((total++))
diff tests/test09_i.temp tests/test09.in

if [ "$?" == "0" ]
  then
    echo -e "[TEST 19] ./simplify-bkg -i tests/test09.in [${GREEN}OK${NC}]"
    ((ok++))
    rm tests/test09_i.temp
   else
    echo -e "[TEST 19] ./simplify-bkg -i tests/test09.in [${RED}BAD${NC}]"
fi

# -1
./simplify-bkg -1 tests/test09.in > tests/test09_1.temp
((total++))
diff tests/test09_1.temp tests/test09_1.out
if [ "$?" == "0" ]
  then
    echo -e "[TEST 20] ./simplify-bkg -1 tests/test09.in [${GREEN}OK${NC}]"
    ((ok++))
    rm tests/test09_1.temp
   else
    echo -e "[TEST 20] ./simplify-bkg -1 tests/test09.in [${RED}BAD${NC}]"
fi


# -2
./simplify-bkg -2 tests/test09.in > tests/test09_2.temp
((total++))
diff tests/test09_2.temp tests/test09_2.out
if [ "$?" == "0" ]
  then
    echo -e "[TEST 21] ./simplify-bkg -2 tests/test09.in [${GREEN}OK${NC}]"
    ((ok++))
    rm tests/test09_2.temp
   else
    echo -e "[TEST 21] ./simplify-bkg -2 tests/test09.in [${RED}BAD${NC}]"
fi

########################################################
echo -e "FINISHED TESTING:"
echo -e "OK/TOTAL: ${ok}/${total}"

if [ "$ok" == "$total" ]
  then
    echo -e "[${GREEN}SUCCESSFULL${NC}]"
   else
    echo -e "[${RED}FAILED${NC}]"
fi

echo "***********************************************"
#make
