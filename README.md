# Compiler Design

## software

- linux - any distribution
- install `gcc` `flex` `bison`
- for ubuntu
  - `sudo apt install gcc`
  - `sudo apt install flex`
  - `sudo apt install bison`

## Parsing

- [intro](https://www.youtube.com/watch?v=0OclX6Chytg)
- [integer to float regular expression lex code](https://www.youtube.com/watch?v=ojq4gUvF2-U)
- [introduction to regular expression](https://www.youtube.com/watch?v=ffcHCFkANGM)

## Program List

- LEX code using Regular Grammar (without file-handling):
  - 1. Design a LEX Code to count the number of lines, space, tab-meta character, and rest of characters in each Input pattern.
  - 2. Design a LEX Code to identify and print valid Identifier of C/C++ in given Input pattern.
  - 3. Design a LEX Code to identify and print integer and float value in given Input pattern.
  - 4. Design a LEX Code for Tokenizing (Identify and print OPERATORS, SEPARATORS, KEYWORDS, IDENTIFIERS) the following C-fragment:
    ```c
    int p=1,d=0,r=4;
    float m=0.0, n=200.0.
    while (p <= 3)
         { if(d==0)
               { m= m+n*r+4.5; d++;  }
            else
               { r++; m=m+r+1000.0;  }
    	 p++;  }
    ```
- LEX code using Regular Grammar (with file-handling):

  - 5. Design a LEX Code to count and print the number of total characters, words, white spaces in given 'Input.txt' file.
  - 6. Design a LEX Code to replace white spaces of 'Input.txt' file by a single blank character into 'Output.txt' file.
  - 7. Design a LEX Code to remove the comments from any C-Program given at run-time and store into 'out.c' file.
  - 8. Design a LEX Code to extract all html tags in the given HTML file at run time and store into Text file given at run time.

- LEX code using DFA:

  - 9. Design a DFA in LEX Code which accepts string containing even number of 'a' and even number of 'b' over input alphabet {a, b}.
  - 10. Design a DFA in LEX Code which accepts string containing third last element 'a' over input alphabet {a, b}.
  - 11. Design a DFA in LEX Code to Identify and print Integer & Float Constants and Identifier.

- YACC/LEX code:
  - 12. Design YACC/LEX code to recognize valid arithmetic expression with operators +, -, \* and /.
  - 13. Design YACC/LEX code to evaluate arithmetic expression involving operators +, -, \* and / without operator precedence grammar & with operator precedence grammar.
  - 14. Design YACC/LEX code that translates infix expression to postfix expression.
  - 15. Design Desk Calculator using YACC/LEX code.
