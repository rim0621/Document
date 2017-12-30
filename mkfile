

gcc -c main.c
gcc -c read.c
gcc -c write.c

gcc -o test main.o read.o write.o

=> 위 세개 .c파일은 io.h헤더를 사용하고 있다.

  test: main.o read.o write.o
    gcc -O test main.o read.o write.o

  main.o : io.h main.c
       gcc -c main.c
 
  read.o : io.h read.c
       gcc -c read.c
 
  write.o : io.h write.c
       gcc -c write.c


