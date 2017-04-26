-A powerful technique is ⌃R, which lets you search interactively through your previous commands, and then optionally edit the result before executing. For example, we could try this to bring up the last curl command:
 $ CONTROL + R
 (bck-i-search): curl (or git or whatever previous commmands we want to search)


-'CONTROL + A' brings us to the beginning of the line, while 'CONTROL + E' brings us directly to the end of the line, and 'CONTROL + U' deletes everything and brings us to the beginning of the line to start over

-OPTION + CLICK -> pointing with the mouse cursor and clicking exactly to the position we want the cursor to go to will be the fastest way to go back if we have typed something and we dont want to simply press the left or right arrow to get a desired position on the command line.

-$ clear -> will clear everything on the screen, 'CONTROL + L' will do the same thing.

-$ exit -> will exit the terminal, 'CONTROL + D' will do the same thing.

-Press 'CONTROL + C' whenever something goes wrong, and if that doesn't work 90% of the times pressing 'ESC' will do the job. Typing the letter 'q' will also work in some cases.

-three important techniques for solving common problems:
Have you restarted the application?
Have you rebooted the device?
Have you tried uninstalling and reinstalling the app?
//#2 alone probably solves 90% of unexplained computer errors.

-IMPORTANT COMMANDS SUMMARY
Command	            Description	                     Example
echo <string>	      Print string to screen	         $ echo hello
man <command>	      Display manual page for command	 $ man echo
⌃C	                Get out of trouble	             $ tail^C
⌃A	                Move to beginning of line
⌃E	                Move to end of line
⌃U	                Delete to beginning of line
Option-click	      Move cursor to location clicked
Up & down arrow	    Scroll through previous commands
clear or ⌃L	        Clear screen	$ clear
exit or ⌃D	        Exit terminal	$ exit

-$ echo "From fairest creatures we desire increase," > sonnet_1.txt
(Recall that you can use up arrow to retrieve the previous command rather than typing it from scratch.) Here the right angle bracket > takes the string output from echo and redirects its contents to a file called sonnet_1.txt.

-$ cat sonnet_1.txt -> cat is the shortcut for concatenate, which is a hint that it can be used to combine the contents of multiple files, but the usage above (to dump the contents of a single file to the screen) is extremely common. Think of cat as a “quick-and-dirty” way to view the contents of a particular file

-cat command can take multiple arguments for example: cat line_2.txt line_1.txt  >  sonnet_1_reversed.txt will concatenate line_2 and line_1 in that order

-One useful ability of ls is support for the wildcard character * (read “star”). For example, to list all files ending in “.txt”, we would type this:
$ ls *.txt
sonnet_1.txt
sonnet_1_reversed.txt

-To get ls to display hidden files and directories, we need to pass it the -a option (for “all”):

-The way to rename a file is with the mv command, short for “move”:
$ echo "test text" > test
$ mv test test_file.txt
$ ls
test_file.txt

-The command for deleting a file is rm, for “remove”:
$ rm second_test.txt
remove second_test.txt? y
$ ls second_test.txt
ls: second_test.txt: No such file or directory

-
Command	          Description	                          Example
>	                Redirect output to filename	          $ echo foo > foo.txt
>>	              Append output to filename	            $ echo bar >> foo.txt
cat <file>	      Print contents of file to screen	    $ cat hello.txt
diff <f1> <f2>	  Diff files 1 & 2	                    $ diff foo.txt bar.txt
ls	              List directory or file	              $ ls hello.txt
ls -l	            List long form	                      $ ls -l hello.txt
ls -rtl	          Long by reverse modification time	    $ ls -rtl
ls -a	            List all (including hidden)	          $ ls -a
touch <file>	    Create an empty file	                $ touch foo
mv <old> <new>	  Rename (move) from old to new	        $ mv foo bar
cp <old> <new>	  Copy old to new	                      $ cp foo bar
rm <file>	        Remove (delete) file	                $ rm foo
rm -f <file>	    Force-remove file	                    $ rm -f bar

-$ '!!'' ,is a substitue for pressing up arrow when we want to repeat a previous command

-A closely related usage is “bang” followed by some number of characters, which runs the last command that started with those characters. For example, to run the last curl command, we could type this:
 $ !curl

- $ head sonnets.txt
the command above will show us the first 10 lines of the file
$ tail sonnet.txt will show us the last 10 lines the file

-$ wc sonnets.txt
  2620  17670  95635 sonnets.txt
Here the three numbers indicate how many lines, words, and bytes there are in the file, so there are 2620 lines, 17670 words, and 95635 bytes.

-Command	                 Description	                    Example
up & down arrow keys	     Move up or down one line
spacebar	                 Move forward one page
⌃F	                       Move forward one page
⌃B	                       Move back one page
G	                         Move to end of file
1G	                       Move to beginning of file
/<string>	                 Search file for string	          /rose
n	                         Move to next search result
N	                         Move to previous search result
q	                         Quit less

-Using grep, we can find the references directly (grep is case sensitive):
$ grep rose sonnets.txt
The rose looks fair, but fairer we it deem
As the perfumed tincture of the roses.
Die to themselves. Sweet roses do not so;
Roses of shadow, since his rose is true?
Which, like a canker in the fragrant rose,
Nor praise the deep vermilion in the rose;
The roses fearfully on thorns did stand,
 Save thou, my rose, in it thou art my all.
I have seen roses damask'd, red and white,
But no such roses see I in her cheeks;

-Grep with wc:
$ grep rose sonnets.txt | wc
   10   82   419

-to make grep case insensitive:
$ grep -i rose sonnets.txt | wc
   12   96   508

-
Command	                  Description	                              Example
curl	                    Interact with URLs	                      $ curl -O example.com
which	                    Locate a program on the path	            $ which curl
head <file>	              Display first part of file	              $ head foo
tail <file>	              Display last part of file	                $ tail bar
wc <file>	                Count lines, words, bytes	                $ wc foo
cmd1 | cmd2	              Pipe cmd1 to cmd2	                        $ head foo | wc
ping <url>	              Ping a server URL	                        $ ping google.com
less <file>	              View file contents interactively	        $ less foo
grep <string> <file>	    Find string in file	                      $ grep foo bar.txt
grep -i <string> <file>	  Find case-insensitively	                  $ grep -i foo bar.txt
ps	                      Show processes	                          $ ps aux
top	                      Show processes (sorted)	                  $ top
kill -<level> <pid>	      Kill a process	                          $ kill -15 24601
pkill -<level> -f <name>	Kill matching processes	                  $ pkill -15 -f spring

-When we say we are running a program we are not really running the program but a copy of it which is called a process.

-The shorthand 755 is often used for scripts as it allows you the owner to write or modify the script and for everyone to execute the script.

-
