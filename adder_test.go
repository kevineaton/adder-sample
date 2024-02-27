package main

import "testing"

func TestAddingTwoNumbers(t *testing.T) {
	expected := int64(8)
	result := add(3, 5)
	if result != expected {
		t.Errorf("expected %d, got %d", expected, result)
	}

	expected = int64(-26)
	result = add(-13, -13)
	if result != expected {
		t.Errorf("expected %d, got %d", expected, result)
	}

	expected = int64(22)
	result = add(11, 11)
	if result != expected {
		t.Errorf("expected %d, got %d", expected, result)
	}
}
