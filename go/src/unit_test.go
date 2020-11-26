package main

import "testing"

func TestAddWorks_whenTypical(t *testing.T) {
	expected := 3

	actual := Add(1, 2)

	if actual != expected {
		t.Errorf("No Match: %d != %d", actual, expected)
	}
}
