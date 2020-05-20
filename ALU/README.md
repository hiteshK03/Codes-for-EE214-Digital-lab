# ALU

This is the VHDL code for the design of an Arithmetic Logic Unit capable of performing addition and multiplication of two 8-bit input giving output as the 8-LSBs of the answer of that operation.  

Plus, it can left-shift and right-shift a 8-bit input with any amout specified by the other input of 8-bit, giving the output as the 8-LSBs of the shifted number.  

Finally, 32-to-8 multiplexer decides according to the opcode (select lines) as to which operation is to be performed.  

Below is the superficial design of ALU.  

![alu](https://user-images.githubusercontent.com/45922320/74584348-68ae6f00-4ff7-11ea-963b-c098aa8bbb63.png)
![alu_in](https://user-images.githubusercontent.com/45922320/74584351-69df9c00-4ff7-11ea-951c-096dbc327bb8.png)


The design of each unit is present [here](https://github.com/v1an1/Codes-for-EE214-Digital-lab/tree/master/ALU/img)

### Dependencies

[Quartus](https://www.intel.com/content/www/us/en/programmable/downloads/download-center.html)

[Optional] [Model-Sim](https://www.intel.com/content/www/us/en/programmable/downloads/download-center.html) is needed, if you want to test your logic through testbench and tracefile.
