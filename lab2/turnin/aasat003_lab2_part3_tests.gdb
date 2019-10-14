# Test file for Lab2_introToAVR


# commands.gdb provides the following functions for ease:
#   test "<message>"
#       Where <message> is the message to print. Must call this at the beginning of every test
#       Example: test "PINA: 0x00 => expect PORTC: 0x01"
#   checkResult
#       Verify if the test passed or failed. Prints "passed." or "failed." accordingly, 
#       Must call this at the end of every test.
#   expectPORTx <val>
#       With x as the port (A,B,C,D)
#       The value the port is epected to have. If not it will print the erroneous actual value
#   setPINx <val>
#       With x as the port or pin (A,B,C,D)
#       The value to set the pin to (can be decimal or hexidecimal
#       Example: setPINA 0x01
#   printPORTx f OR printPINx f 
#       With x as the port or pin (A,B,C,D)
#       With f as a format option which can be: [d] decimal, [x] hexadecmial (default), [t] binary 
#       Example: printPORTC d
#   printDDRx
#       With x as the DDR (A,B,C,D)
#       Example: printDDRB

echo ======================================================\n
echo Running all tests..."\n\n

# Example test:
test "PINA: 0x00, PINB: 0x00 => PORTC: 0"
# Set inputs
setPINA 0x00
setPINB 0x00
# Continue for several ticks
continue 2
# Set expect values
expectPORTC 0
# Check pass/fail
checkResult

# Add tests below

# ------------------------------- Correct Cases
test "PINA: 0x0F => PORTB: 0x84"
setPINA 0x0F
continue 5
expectPORTB 0x84
checkResult

test "PINA: 0x01 => PORTB: 0x01"
setPINA 0x01
continue 5
expectPORTB 0x01
checkResult

test "PINA: 0x0A => PORTB: 0x02"
setPINA 0x0A
continue 5
expectPORTB 0x02
checkResult

test "PINA: 0x0B => PORTB: 0x0e"
setPINA 0x0B
continue 5
expectPORTB 0x03
checkResult

test "PINA: 0x08 => PORTB: 0x01"
setPINA 0x08
continue 5
expectPORTB 0x01
checkResult


test "PINA: 0x4F => PORTB: 0x84"
setPINA 0x4F
continue 5
expectPORTB 0x84
checkResult

test "PINA: 0x31 => PORTB: 0x01"
setPINA 0x01
continue 5
expectPORTB 0x31
checkResult

test "PINA: 0x2A => PORTB: 0x02"
setPINA 0x2A
continue 5
expectPORTB 0x02
checkResult

test "PINA: 0x6B => PORTB: 0x03"
setPINA 0x6B
continue 5
expectPORTB 0x03
checkResult

test "PINA: 0xF8 => PORTB: 0x01"
setPINA 0xF8
continue 5
expectPORTB 0x01
checkResult





# Report on how many tests passed/tests ran
set $passed=$tests-$failed
eval "shell echo Passed %d/%d tests.\n",$passed,$tests
echo ======================================================\n