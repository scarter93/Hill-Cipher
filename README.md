# Hill-Cipher
VHDL

##Description

The Hill Cipher uses linear transforms to encrypt and decrypt values, in this case three values.
The system uses a key loader module to load the encryption key, a key inverter to generate a descryption key, a multiplexer to select encrypt
or decrypt mode, and finally a matrix multiplier to actually perform the encryption/decryption.

##Known Issues

Currently the key inverter is not fully pipelined, meaning that the next value to be inverted can't be loaded on the next clock edge.
This is something that can be improved although the pipeline is still quite effective.

##Operation

A key must be loaded (one column at a time), done by keeping the load_key signal high while inputing values.
Once this is done, encryption can be done after a clock cycle, but decryption should wait approximately 6/7 clock cycles for generation of the key.
When loading a key, some garbage output will displayed this can be ignored as it due the fact input is being loaded while there is an old key 
still in the system.

##Questions?

Feel free to reach me at stephen.carter@mail.mcgill.ca

