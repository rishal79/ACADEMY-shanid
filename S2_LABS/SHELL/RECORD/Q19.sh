Q)Shell script to display the content of a directory file in windows style


Code:
echo "\n\n Directory of `pwd` \n"
for f in *
do
#dpart=`ls -l $f | cut -d ' ' -f6,7`
fdatetime=`date -r $f "+%d-%m-%y %H:%M:%S"`
if [ -d $f ]
then
echo "$f \t\t<DIR>\t\t $fdatetime"
else
f_size=`cat $f | wc -c`
echo "$f \t\t $f_size \t $fdatetime"
fi
done

Algorithm:
Step 1: Show current directory path.
Step 2: For each file/dir in current folder.
Step 3: Get its last modified date & time.
Step 4: If it's a directory, print name, <DIR>, and time.
Step 5: If it's a file, get size in bytes and print name, size, and time.
Step 6: Repeat till all items are done.
Step 7: End.


Input:
sh window.sh file1.txt

Output:
\n\n Directory of /c/Users/PROGRAMMING LAB 2/desktop/anjala \n
1.sh \t\t 27 \t 16-05-25 12:03:00
a.sh \t\t 24 \t 16-05-25 12:02:49
a.sh.rev \t\t 24 \t 16-05-25 14:20:10
b.sh \t\t 14 \t 16-05-25 12:12:14
c.sh \t\t 23 \t 16-05-25 15:16:58
c.sh.rev \t\t 23 \t 16-05-25 15:15:56
compare.sh \t\t 291 \t 16-05-25 14:53:51
content.sh \t\t 268 \t 16-05-25 15:36:13
