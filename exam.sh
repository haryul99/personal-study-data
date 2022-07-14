#!/bin/bash
#exam.sh
export MY_VAR="haryul"

./exam2.sh

function func(){
        ./a.out
        echo "오류 코드 ($?)"
}

#함수 호출
func
