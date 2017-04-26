# Q:
# Use the echo command and the redirect operator > to make a file called foo.txt containing the text “hello, world”. Then, using the cp command, make a copy of foo.txt called bar.txt. Using the diff command, confirm that the contents of both files are the same.
# A:
$ echo 'hello world' > foo.txt
$ cp foo.txt bar.txt
$ diff foo.txt bar.txt
