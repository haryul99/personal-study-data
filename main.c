#include <stdlib.h>
#include <stdio.h>
int main(int argc, char* argv[]){
        if(argc<2){
                fprintf(stderr,"인자는 2개 이상이어야 합니다.\n");
                exit(16);
        }
}