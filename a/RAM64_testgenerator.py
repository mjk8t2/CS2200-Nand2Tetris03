# Author: Matthew Kovar
# Date: 2018-11-07

# largest 'in' value: 32767 = 2^15 - 1
# smallest 'in' value: -32768 = -2^15

# test 8 addresses, 0, 8, 16, ... 56, one address corresponding to each RAM8 module
# test 8 inputs, -32768, -8192, -256, -1, 0, 1, 8192, 32767
# test load and not load
# test tick and tock

addresses = [8*i for i in range(8)]
ins = [-32768, -8192, -256, -16, 0, 1, 4096, 32767]
loads = [0, 1]
ticks = ['+', ' ']

header = "| time |   in   |load |address|  out   |"
cmpstring = header + "\n"
tststring = """// Author: Matthew Kovar
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
"""
row = "|{}|{}|{}|{}|{}|"
print(header)
timecounter = 0
overallcounter = 0
outvalue = 0
outvaluebefore = 0
for i in ins:
  for j in addresses:
    for k in loads:
      for l in ticks:
        overallcounter += 1
        timevalue = overallcounter//2 # since it starts at 0+
        
        # for the .cmp file
        time = " " + (str(timevalue) + l).ljust(5)
        inn = str(i).rjust(7) + " "
        load = "  " + str(k) + "  "
        address = str(j).rjust(5) + "  "
        
        if overallcounter % 4 == 0:
          outvalue = inn
        elif overallcounter % 32 != 0:
          outvalue = outvaluebefore
        if overallcounter % 32 == 0:
          outvaluebefore = outvalue
        
        
        out = str(outvalue)
        out = out.strip()
        out = out.rjust(7)
        out = out + " "
        
        thisrow = row.format(time, inn, load, address, out)
        
        cmpstring += thisrow + "\n"
        
        # print(thisrow)
          
        # for the .tst file
        mystring = """
set in {},
set load {},
set address {},
tick,
output;
tock,
output;
""".format(i, k, j)
      # print(mystring)
      tststring += mystring
      timecounter += 1
        
with open('RAM64.cmp', 'w') as f:
  f.write(cmpstring)
  
with open('RAM64.tst', 'w') as f:
  f.write(tststring)