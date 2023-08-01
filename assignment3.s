.global _start

_start:
    MOV R0, #5
    MOV R1, #8
    MOV R5, #15
    CMP R0, R1   //compare 2 data
    BLT lesser //handle less 
    BGT greater //handle greater
    BAL equal //handle equal

greater:
    LSL R5, R5, #2 // perform 2 logical left shifts
    BAL end
    
lesser:
    LSR R5, Rt,#1 //perform 1 logical right shifts
    BAL end

equal:
    ROR R5, R5, #1 //perform 1 right rotation
    BAL end

end:
    SVC #0  //terminate the program and return 0