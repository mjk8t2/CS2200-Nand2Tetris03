// Author: Matthew Kovar
// Date: 2018-11-07

// The testing documentation follows:
// For RAM64, we test 8 types of inputs, ranging
// from the minimum 16-bit 2's complement integer to the
// maximum; specifically, -32768, -8192, -256, -16, 0, 1, 4096, 32767,
// to ensure that the RAM64 unit successfully stores and recalls
// all types of inputs.  For each of these inputs, we try to load
// new values over them (load = 1) as well as read them only
// (load = 0).  We test the RAM's ability to store contents
// by retrieving values previously held.  Finally, we use
// eight different adresses, (eight apart) so that we write
// to each RAM8 unit used to implment the RAM64

// Hence, this thoroughly tests the RAM64 unit's ability to store,
// access, and write 16-bit words using a wide range of addresses

load RAM64.hdl,
output-file RAM64.out,
compare-to RAM64.cmp,
output-list time%S1.4.1 in%D1.6.1 load%B2.1.2 address%D2.3.2 out%D1.6.1;

set in -32768,
set load 0,
set address 0,
tick,
output;
tock,
output;

set in -32768,
set load 1,
set address 0,
tick,
output;
tock,
output;

set in -32768,
set load 0,
set address 8,
tick,
output;
tock,
output;

set in -32768,
set load 1,
set address 8,
tick,
output;
tock,
output;

set in -32768,
set load 0,
set address 16,
tick,
output;
tock,
output;

set in -32768,
set load 1,
set address 16,
tick,
output;
tock,
output;

set in -32768,
set load 0,
set address 24,
tick,
output;
tock,
output;

set in -32768,
set load 1,
set address 24,
tick,
output;
tock,
output;

set in -32768,
set load 0,
set address 32,
tick,
output;
tock,
output;

set in -32768,
set load 1,
set address 32,
tick,
output;
tock,
output;

set in -32768,
set load 0,
set address 40,
tick,
output;
tock,
output;

set in -32768,
set load 1,
set address 40,
tick,
output;
tock,
output;

set in -32768,
set load 0,
set address 48,
tick,
output;
tock,
output;

set in -32768,
set load 1,
set address 48,
tick,
output;
tock,
output;

set in -32768,
set load 0,
set address 56,
tick,
output;
tock,
output;

set in -32768,
set load 1,
set address 56,
tick,
output;
tock,
output;

set in -8192,
set load 0,
set address 0,
tick,
output;
tock,
output;

set in -8192,
set load 1,
set address 0,
tick,
output;
tock,
output;

set in -8192,
set load 0,
set address 8,
tick,
output;
tock,
output;

set in -8192,
set load 1,
set address 8,
tick,
output;
tock,
output;

set in -8192,
set load 0,
set address 16,
tick,
output;
tock,
output;

set in -8192,
set load 1,
set address 16,
tick,
output;
tock,
output;

set in -8192,
set load 0,
set address 24,
tick,
output;
tock,
output;

set in -8192,
set load 1,
set address 24,
tick,
output;
tock,
output;

set in -8192,
set load 0,
set address 32,
tick,
output;
tock,
output;

set in -8192,
set load 1,
set address 32,
tick,
output;
tock,
output;

set in -8192,
set load 0,
set address 40,
tick,
output;
tock,
output;

set in -8192,
set load 1,
set address 40,
tick,
output;
tock,
output;

set in -8192,
set load 0,
set address 48,
tick,
output;
tock,
output;

set in -8192,
set load 1,
set address 48,
tick,
output;
tock,
output;

set in -8192,
set load 0,
set address 56,
tick,
output;
tock,
output;

set in -8192,
set load 1,
set address 56,
tick,
output;
tock,
output;

set in -256,
set load 0,
set address 0,
tick,
output;
tock,
output;

set in -256,
set load 1,
set address 0,
tick,
output;
tock,
output;

set in -256,
set load 0,
set address 8,
tick,
output;
tock,
output;

set in -256,
set load 1,
set address 8,
tick,
output;
tock,
output;

set in -256,
set load 0,
set address 16,
tick,
output;
tock,
output;

set in -256,
set load 1,
set address 16,
tick,
output;
tock,
output;

set in -256,
set load 0,
set address 24,
tick,
output;
tock,
output;

set in -256,
set load 1,
set address 24,
tick,
output;
tock,
output;

set in -256,
set load 0,
set address 32,
tick,
output;
tock,
output;

set in -256,
set load 1,
set address 32,
tick,
output;
tock,
output;

set in -256,
set load 0,
set address 40,
tick,
output;
tock,
output;

set in -256,
set load 1,
set address 40,
tick,
output;
tock,
output;

set in -256,
set load 0,
set address 48,
tick,
output;
tock,
output;

set in -256,
set load 1,
set address 48,
tick,
output;
tock,
output;

set in -256,
set load 0,
set address 56,
tick,
output;
tock,
output;

set in -256,
set load 1,
set address 56,
tick,
output;
tock,
output;

set in -16,
set load 0,
set address 0,
tick,
output;
tock,
output;

set in -16,
set load 1,
set address 0,
tick,
output;
tock,
output;

set in -16,
set load 0,
set address 8,
tick,
output;
tock,
output;

set in -16,
set load 1,
set address 8,
tick,
output;
tock,
output;

set in -16,
set load 0,
set address 16,
tick,
output;
tock,
output;

set in -16,
set load 1,
set address 16,
tick,
output;
tock,
output;

set in -16,
set load 0,
set address 24,
tick,
output;
tock,
output;

set in -16,
set load 1,
set address 24,
tick,
output;
tock,
output;

set in -16,
set load 0,
set address 32,
tick,
output;
tock,
output;

set in -16,
set load 1,
set address 32,
tick,
output;
tock,
output;

set in -16,
set load 0,
set address 40,
tick,
output;
tock,
output;

set in -16,
set load 1,
set address 40,
tick,
output;
tock,
output;

set in -16,
set load 0,
set address 48,
tick,
output;
tock,
output;

set in -16,
set load 1,
set address 48,
tick,
output;
tock,
output;

set in -16,
set load 0,
set address 56,
tick,
output;
tock,
output;

set in -16,
set load 1,
set address 56,
tick,
output;
tock,
output;

set in 0,
set load 0,
set address 0,
tick,
output;
tock,
output;

set in 0,
set load 1,
set address 0,
tick,
output;
tock,
output;

set in 0,
set load 0,
set address 8,
tick,
output;
tock,
output;

set in 0,
set load 1,
set address 8,
tick,
output;
tock,
output;

set in 0,
set load 0,
set address 16,
tick,
output;
tock,
output;

set in 0,
set load 1,
set address 16,
tick,
output;
tock,
output;

set in 0,
set load 0,
set address 24,
tick,
output;
tock,
output;

set in 0,
set load 1,
set address 24,
tick,
output;
tock,
output;

set in 0,
set load 0,
set address 32,
tick,
output;
tock,
output;

set in 0,
set load 1,
set address 32,
tick,
output;
tock,
output;

set in 0,
set load 0,
set address 40,
tick,
output;
tock,
output;

set in 0,
set load 1,
set address 40,
tick,
output;
tock,
output;

set in 0,
set load 0,
set address 48,
tick,
output;
tock,
output;

set in 0,
set load 1,
set address 48,
tick,
output;
tock,
output;

set in 0,
set load 0,
set address 56,
tick,
output;
tock,
output;

set in 0,
set load 1,
set address 56,
tick,
output;
tock,
output;

set in 1,
set load 0,
set address 0,
tick,
output;
tock,
output;

set in 1,
set load 1,
set address 0,
tick,
output;
tock,
output;

set in 1,
set load 0,
set address 8,
tick,
output;
tock,
output;

set in 1,
set load 1,
set address 8,
tick,
output;
tock,
output;

set in 1,
set load 0,
set address 16,
tick,
output;
tock,
output;

set in 1,
set load 1,
set address 16,
tick,
output;
tock,
output;

set in 1,
set load 0,
set address 24,
tick,
output;
tock,
output;

set in 1,
set load 1,
set address 24,
tick,
output;
tock,
output;

set in 1,
set load 0,
set address 32,
tick,
output;
tock,
output;

set in 1,
set load 1,
set address 32,
tick,
output;
tock,
output;

set in 1,
set load 0,
set address 40,
tick,
output;
tock,
output;

set in 1,
set load 1,
set address 40,
tick,
output;
tock,
output;

set in 1,
set load 0,
set address 48,
tick,
output;
tock,
output;

set in 1,
set load 1,
set address 48,
tick,
output;
tock,
output;

set in 1,
set load 0,
set address 56,
tick,
output;
tock,
output;

set in 1,
set load 1,
set address 56,
tick,
output;
tock,
output;

set in 4096,
set load 0,
set address 0,
tick,
output;
tock,
output;

set in 4096,
set load 1,
set address 0,
tick,
output;
tock,
output;

set in 4096,
set load 0,
set address 8,
tick,
output;
tock,
output;

set in 4096,
set load 1,
set address 8,
tick,
output;
tock,
output;

set in 4096,
set load 0,
set address 16,
tick,
output;
tock,
output;

set in 4096,
set load 1,
set address 16,
tick,
output;
tock,
output;

set in 4096,
set load 0,
set address 24,
tick,
output;
tock,
output;

set in 4096,
set load 1,
set address 24,
tick,
output;
tock,
output;

set in 4096,
set load 0,
set address 32,
tick,
output;
tock,
output;

set in 4096,
set load 1,
set address 32,
tick,
output;
tock,
output;

set in 4096,
set load 0,
set address 40,
tick,
output;
tock,
output;

set in 4096,
set load 1,
set address 40,
tick,
output;
tock,
output;

set in 4096,
set load 0,
set address 48,
tick,
output;
tock,
output;

set in 4096,
set load 1,
set address 48,
tick,
output;
tock,
output;

set in 4096,
set load 0,
set address 56,
tick,
output;
tock,
output;

set in 4096,
set load 1,
set address 56,
tick,
output;
tock,
output;

set in 32767,
set load 0,
set address 0,
tick,
output;
tock,
output;

set in 32767,
set load 1,
set address 0,
tick,
output;
tock,
output;

set in 32767,
set load 0,
set address 8,
tick,
output;
tock,
output;

set in 32767,
set load 1,
set address 8,
tick,
output;
tock,
output;

set in 32767,
set load 0,
set address 16,
tick,
output;
tock,
output;

set in 32767,
set load 1,
set address 16,
tick,
output;
tock,
output;

set in 32767,
set load 0,
set address 24,
tick,
output;
tock,
output;

set in 32767,
set load 1,
set address 24,
tick,
output;
tock,
output;

set in 32767,
set load 0,
set address 32,
tick,
output;
tock,
output;

set in 32767,
set load 1,
set address 32,
tick,
output;
tock,
output;

set in 32767,
set load 0,
set address 40,
tick,
output;
tock,
output;

set in 32767,
set load 1,
set address 40,
tick,
output;
tock,
output;

set in 32767,
set load 0,
set address 48,
tick,
output;
tock,
output;

set in 32767,
set load 1,
set address 48,
tick,
output;
tock,
output;

set in 32767,
set load 0,
set address 56,
tick,
output;
tock,
output;

set in 32767,
set load 1,
set address 56,
tick,
output;
tock,
output;
