#!/bin/bash
#exam2.sh
echo ${MY_VAR}

echo "script name:${0}"
echo "매개변수 갯수 :${#}"
echo "전체 매개변수  값 : ${*}"
echo "전체 매개변수 값2 : ${@}"
echo "매개변수 1 : ${1}"
echo "매개변수 2 : ${2}"

arr=("hello" "world" 1 2 3 4 5)

echo "배열 전체 : ${arr[@]}"
echo "배열 원소의 갯수 : ${#arr[@]}"
echo "배열 첫번째 : ${arr}, 혹은 ${arr[0]}"
echo "5번 index를 갖는 배열의 원소 : ${arr[5]}"

arr[5]="five"

echo "5번 index를 갖는 배열의 원소 : ${arr[5]}"

# 5번 원소 해제
unset arr[5]
echo "5번 원소 삭제 후"
echo "5번 index를 갖는 배열의 원소 : ${arr[5]}"
echo "6번 index를 갖는 배열의 원소 : ${arr[6]}"