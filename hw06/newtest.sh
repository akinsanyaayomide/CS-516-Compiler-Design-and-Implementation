#!/bin/sh

FILE_NAME="$1"
FILE_TYPE=${FILE_NAME: ${#FILE_NAME}-2}
rm -rf output

if [ "$FILE_NAME" = "" ] ; then
	echo "
	Running matmul as default.
	To run script on specific file use:
	sh ./test.sh {llprograms|hw4programs|hw5programs}/FILE_NAME.{oat|ll} {inputs, if u have any}\n\n\n"
	echo "none- spills all uids to the stack"
	./main.native --print-regs --liveness trivial --regalloc none llprograms/matmul.ll
	time ./a.out

	echo "\n\n greedy- uses register and greedy linear-scan algo"
	./main.native --print-regs --liveness dataflow --regalloc greedy llprograms/matmul.ll
	time ./a.out

	echo "\n\n better- our version"
	./main.native --print-regs --liveness dataflow --regalloc better llprograms/matmul.ll 
	time ./a.out

	echo "\n\n clang- base c version"
	./main.native --clang llprograms/matmul.ll 
	time ./a.out
else 
	if [ "$FILE_TYPE" = "ll" ] ; then 
		echo "\n to use: \nsh ./test.sh {llprograms|hw4programs|hw5programs}/FILE_NAME.{oat|ll} {inputs, if u have any}\n
		timing: $FILE_NAME \n"

		echo "none- spills all uids to the stack"
		./main.native --print-regs --liveness trivial --regalloc none $FILE_NAME
		time ./a.out

		echo "\n\n greedy- uses register and greedy linear-scan algo"
		./main.native --print-regs --liveness dataflow --regalloc greedy $FILE_NAME
		time ./a.out

		echo "\n\n better- our version"
		./main.native --print-regs --liveness dataflow --regalloc better $FILE_NAME 
		time ./a.out

		echo "\n\n clang- base c version"
		./main.native --print-regs --clang $FILE_NAME
		time ./a.out
	else 
		echo "NOTE: OAT branch 
		\n to use: \nsh ./test.sh {llprograms|hw4programs|hw5programs}/FILE_NAME.{oat|ll} {inputs, if u have any}\n
		timing: $FILE_NAME \n"

		IN_ONE="$2"
		IN_TWO="$3"

		echo "none- spills all uids to the stack"
		./main.native ${FILE_NAME} runtime.c --liveness trivial --regalloc none
		time ./a.out ${IN_ONE} ${IN_TWO}

		echo "\n\n greedy- uses register and greedy linear-scan algo"
		./main.native ${FILE_NAME} runtime.c --liveness dataflow --regalloc greedy
		time ./a.out ${IN_ONE} ${IN_TWO}

		echo "\n\n better- our version"
		./main.native ${FILE_NAME} runtime.c --liveness dataflow --regalloc better
		time ./a.out ${IN_ONE} ${IN_TWO}
 
		echo "\n\n clang- base c version"
		./main.native --clang ${FILE_NAME} runtime.c --liveness dataflow --regalloc greedy
		time ./a.out ${IN_ONE} ${IN_TWO}

	fi
fi