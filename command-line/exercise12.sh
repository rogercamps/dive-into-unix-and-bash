# Q:
# Replicate the original sonnet_1.txt (containing the first two lines of the sonnet) by first redirecting the contents of line_1.txt and then appending the contents of line_2.txt. Call the new file sonnet_1_copy.txt, and confirm using diff that it’s identical to sonnet_1.txt
# A:
$ cat line_1.txt >  sonnet_1_copy.txt
$ cat line_2.txt >>  sonnet_1_copy.txt
