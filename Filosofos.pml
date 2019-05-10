#define wait(s) atomic{s>0 -> s--}
#define signal(s) s++

#define N 5

#define right(i) i
#define left(i) (i+1) % 5

byte fork[N] = {1}

active[5] proctype filosofo(){
  byte i = _pid
  do
  ::
    printf("Filosofo %d pensando \n", i)
    wait(fork[right(i)])
    wait(fork[left(i)])
    printf("Filosofo %d comiendo \n", i)
    signal(fork[right(i)])
    signal(fork[left(i)])
  od
}
