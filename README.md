# Sequential Circuits: Latches

In this lab, you learned about the basic building block of sequential circuits: the latch.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Summary
In this lab we learned how to use a D-Latch 
and implement it into a boolean circuit. We learned
how sequential logic circuits are different from 
combinational logic circuits. We learned how circuits
can use a latch, demux, and mux to manage and retain 
information.

## Lab Questions

###  Why can we not just use structural Verilog to implement latches?
You can't use structural Verilog because we need to change
each variable when it is needed in a correct sequence. Sequential
logic is what lets us do this process. We need to constantly
allow the variables to influence each other, and we only want
to take information when specific variables are changed/updated. 

### What is the meaning of always @(*) in a sensitivity block?
The meaning of always @(*) in a sensitivity block is to detect 
when input states change. This allows the circuit to continuously
update its output based on the current input value. 

### What importance is memory to digital circuits?
Memory is important to digital circuits because it allows
us to access states that we generate in the past. It also
allows us to retain data that we previously generated. 