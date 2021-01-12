
 
## Hunting for birthdays!
## create a birthday text file to hunt for

birthdays.txt
  Born       Died     Name
02/22/1732 12/14/1799 Washington, George
10/30/1735 07/04/1826 Adams, John
04/13/1743 07/04/1826 Jefferson, Thomas
03/16/1751 06/28/1836 Madison, James
04/28/1758 07/04/1851 Monroe, James
07/11/1767 02/23/1848 Adams, John Quincy
32 lines skipped
02/06/1911 06/05/2004 Reagan, Ronald Wilson
06/12/1924            Bush, George Herbert Walker
08/19/1946            Clinton, Bill
08/04/1961            Bush, George W.
08/04/1961            Obama, Barack
06/14/1946            Trump, Donald J.


## Linux sed command
## The first line is the actual command. The remaining four lines are illustrative.

sed 's+\([0-9][0-9]\)/\([0-9][0-9]\)/\([0-9][0-9][0-9][0-9]\)+\3-\1-\2+g' birthdays.txt
         [0-9][0-9]     [0-9][0-9]     [0-9][0-9][0-9][0-9]
       \(          \) \(          \) \(                    \)
                     /              /
sed 's+                                                      +\3-\1-\2+g'

## [0-9] means any digit; \d may not work
## \( \) forms a logical group that will be saved into a pattern group (below)
## s+ + +g does a global replace (all occurrences on each line)
## \3 \1 \2 are the pattern groups that it matched


Output from sed
  Born       Died     Name
1732-02-22 1799-12-14 Washington, George
1735-10-30 1826-07-04 Adams, John
1743-04-13 1826-07-04 Jefferson, Thomas
1751-03-16 1836-06-28 Madison, James
1758-04-28 1851-07-04 Monroe, James
1767-07-11 1848-02-23 Adams, John Quincy
32 lines skipped
1911-02-06 2004-06-05 Reagan, Ronald Wilson
1924-06-12            Bush, George Herbert Walker
1946-08-19            Clinton, Bill
1961-08-04            Bush, George W.
1961-08-04            Obama, Barack
1946-06-14            Trump, Donald J.

 

