package main

import "testing"

func main_test(t *testing.T) {
	want := true
	got := true
	if want != got {
		t.Errorf("Error in test")
	}
}
