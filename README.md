# GitLog2Diary

## Description

A script to generate diary from git log, this is required by COMP9041 assignment 2 in 2018S2.

>Andrew wrote: Some students choose to store this information in git commit messages and use a script to generate diary.txt from git log before they submit. You are welcome to do this. 

## Git Commit Message Format

**Important: to generate start time, git commit message must follow a special format**

**重要：为了生成开始时间，git commit 内容必须遵循特定格式**

```shell
git commit -m "01:30 your commit message"
```
- [01:30]: The hours and minutes used for this commit, a white space is followed.

## Full Usage Documentation

```shell
./GitLog2Diary.pl ["Author"] [> diary.txt]
```

- [Author]: specify an author. If omitted, all author will be matched.
- [> diary.txt]: output as a text file. If omitted, just print out the diary.

## Example

```shell
➜ ./GitLog2Diary.pl "Jack Jiang" >diary.txt 
➜ cat diary.txt 
# Jack Jiang's Diary

- Author: z5555555
- Date: Sun Oct 21 23:32:44 2018
- Generated
    - at weber
    - by https://github.com/Jiangyiqun/GitLog2Diary

Start Time  |Stop Time   |Comments                                      
------------|------------|----------------------------------------------
Null        |21/10 20:28 |Initial commit
21/10 20:32 |21/10 20:34 |add hello world
21/10 19:34 |21/10 20:46 |add some lines of code
21/10 20:53 |21/10 21:23 |almost finish
21/10 21:25 |21/10 21:26 |remove vstages
Null        |21/10 21:47 |finish
21/10 21:46 |21/10 21:48 |remove templete.txt
Null        |21/10 21:49 |remove diary.txt
Null        |21/10 21:53 |Update README.md
21/10 21:51 |21/10 22:04 |add example.png
21/10 22:30 |21/10 22:40 |fix bug of invalid format
21/10 22:51 |21/10 23:21 |add additional information
21/10 23:20 |21/10 23:30 |add title

```