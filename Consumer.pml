#define wait(s) atomic {s>0 -> s--}
#define signal(s) s++

#define MAX 10000

int notEmpty = 0


int buffer[MAX]
int pos = 0

active proctype Producer(){
  int event
  int c = 0
  do
  ::
    event = _pid*1000 + c
    c++
    buffer[pos] = event
    pos++
    signal(notEmpty)
  od
}

active proctype Consumer(){
  int event
  do
  ::
    wait(notEmpty)
    pos--
    event = buffer[pos]
    printf("EH%d handling %d\n", _pid, event)
  od
}
