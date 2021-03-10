package main

import (
	"fmt"
	"io"
	"net/http"
)

// Handler - says Hello World
func Handler(w http.ResponseWriter, r *http.Request) {
	io.WriteString(w, "Hello World")
}

func main() {
	http.HandleFunc("/", Handler)

	fmt.Println("Listening on port 5050...")

	http.ListenAndServe(":5050", nil)
}
