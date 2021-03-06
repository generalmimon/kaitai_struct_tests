package spec

import (
	"runtime/debug"
	"os"
	"testing"
	"github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"
	. "test_formats"
	"github.com/stretchr/testify/assert"
)

func TestRepeatUntilComplex(t *testing.T) {
	defer func() {
		if r := recover(); r != nil {
			debug.PrintStack()
			t.Fatal("unexpected panic:", r)
		}
	}()
	f, err := os.Open("../../src/repeat_until_complex.bin")
	if err != nil {
		t.Fatal(err)
	}
	s := kaitai.NewStream(f)
	var r RepeatUntilComplex
	err = r.Read(s, &r, &r)
	if err != nil {
		t.Fatal(err)
	}

	assert.EqualValues(t, 3, len(r.First))
	assert.EqualValues(t, 4, r.First[0].Count)
	assert.EqualValues(t, []uint8{(0 + 1), 2, 3, 4}, r.First[0].Values)
	assert.EqualValues(t, 2, r.First[1].Count)
	assert.EqualValues(t, []uint8{(0 + 1), 2}, r.First[1].Values)
	assert.EqualValues(t, 0, r.First[2].Count)
	assert.EqualValues(t, 4, len(r.Second))
	assert.EqualValues(t, 6, r.Second[0].Count)
	assert.EqualValues(t, []uint16{(0 + 1), 2, 3, 4, 5, 6}, r.Second[0].Values)
	assert.EqualValues(t, 3, r.Second[1].Count)
	assert.EqualValues(t, []uint16{(0 + 1), 2, 3}, r.Second[1].Values)
	assert.EqualValues(t, 4, r.Second[2].Count)
	assert.EqualValues(t, []uint16{(0 + 1), 2, 3, 4}, r.Second[2].Values)
	assert.EqualValues(t, 0, r.Second[3].Count)
	assert.EqualValues(t, []uint8{(0 + 102), 111, 111, 98, 97, 114, 0}, r.Third)
}
