# Q:
# How do rm nonexistent and rm -f nonexistent differ for a nonexistent file?
# A:
$ rm nonexistent
# returns: rm: nonexistent: No such file or directory
$ rm -f nonexistent
# Executes the command without giving any response about the file existing or not
