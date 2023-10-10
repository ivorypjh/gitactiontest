package main

import(
	"fmt"
	"time"
)

func main(){
	for{
		fmt.Println("Go file")
		time.Sleep(10 * time.Second)
	}
}