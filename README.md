Erl-Base58
==========

Version: 0.1.0

This is a simple implementation of a Base58 encoder and decoder for Integers and Binaries. Base58 is most prevalent in the [Bitcoin](http://bitcoin.org) virtual currency system. The Base58 representation makes use of a representation that is mostly free from ambiguous characters, this makes is easier for a human to verify that the Base58 string is correct.

Usage
-----

The following example demonstrates the usage of this module:

```erlang
1> base58:integer_to_base58(16#00010966776006953D5567439E5E39F86A0D273BEED61967F6).
"16UwLL9Risc3QfPqBUvKofHmBQ7wMtjvM"
2> base58:base58_to_integer("16UwLL9Risc3QfPqBUvKofHmBQ7wMtjvM").
25420294593250030202636073700053352635053786165627414518
3> base58:base58_to_integer("16UwLL9Risc3QfPqBUvKofHmBQ7wMtjvM") == 16#00010966776006953D5567439E5E39F86A0D273BEED61967F6.
true
4> base58:binary_to_base58(binary:encode_unsigned(16#00010966776006953D5567439E5E39F86A0D273BEED61967F6)).
"16UwLL9Risc3QfPqBUvKofHmBQ7wMtjvM"
5> base58:base58_to_binary("6UwLL9Risc3QfPqBUvKofHmBQ7wMtjvM").
<<0, 1,9,102,119,96,6,149,61,85,103,67,158,94,57,248,106,13,
  39,59,238,214,25,103,246>>
6> base58:check_base58("16UwLL9Risc3QfPqBUvKofHmBQ7wMtjvM"). 
true
7> base58:check_base58("16UwLL9Risc3QfPqBUvKofHmBQ7wMtjv0").
false
```

Functions
---------

The following functions have been exposed:

 * ```base58:check_base58/1``` will check to see if a Base58 string is valid.
 * ```base58:integer_to_base58/1``` will convert and unsigned integer into a Base58 string.
 * ```base58:binary_to_base58/1``` will convert a binary to a Base58 string.
 * ```base58:base58_to_integer/1``` will convert a Base58 string to an integer.
 * ```base58:base58_to_binary/1``` will convert a Base58 string to a binary.

License
-------

This application is licensed under an [Apache 2.0 License](http://www.apache.org/licenses/LICENSE-2.0.html)

    Copyright 2013 David Ellefsen 

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.


