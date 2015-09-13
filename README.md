# Assembly-Primer-for-Hackers
Assembly Primer for Hackers on SecurityTube.Net

Use Assembler to create an Object File:

as -o HelloWorld.o    HelloWorld.s
# as   =  A portable GNU Assembler

Now use  GNU Linker to create a Linking File:
# ld -o HelloWorld HelloWorld.o

# ld = The GNU Linker

Run the program now:

./HelloWorld
