package main

import(
	"fmt"
	"time"
)

func msg(mensaje string){
	fmt.Println(mensaje)
}

var turn = 1

func procesoP(){
  for{
	msg("No Critica P 1")
	msg("No Critica P 2")
	msg("No Critica P 3")

	for turn != 1{}

	msg("Critica P 1")
	msg("Critica P 2")
	msg("Critica P 3")
	turn = 2
  }

}

func procesoQ(){
  for{
	msg("No Critica Q 1")
	msg("No Critica Q 2")
	msg("No Critica Q 3")

	for turn != 2{}

	msg("Critica Q 1")
	msg("Critica Q 2")
	msg("Critica Q 3")
	turn = 1
  }
}

func main(){
	go procesoP()
	go procesoQ()

	time.Sleep(time.Second)
}
