package main

import (
	"testing"
)

func TestMakeGreeting(t *testing.T) {
	exp := "Hello, Taro"
	got := makeGreeting("Taro")
	if got != exp {
		t.Errorf("got = %s; exp %s", got, exp)
	}
}
