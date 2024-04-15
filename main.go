package main

import (
	"fmt"
	"net/http"
)

func readyToLearn(w http.ResponseWriter, req *http.Request) {
	w.Write([]byte("<h1>Ready to learn!</h1>"))
	fmt.Println("Server running...")
}

func main() {

	http.HandleFunc("/", readyToLearn)
	http.ListenAndServe(":8000", nil)
}
