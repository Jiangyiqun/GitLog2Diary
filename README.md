# GitLog2Diary / Git 日志重排

## Description / 描述

A script to generate a markdown diary from git log, which helps you to know how long you have spent on each commit as well as the whole project.

**Important: to record the start time of each commit, the commit message must follow a particular format**

一个由 Git Log 生成 markdown 日志的小工具，用于帮助你得知在每个提交上使用的时间，以及在整个项目上的耗时。

**重要：为了记录每个提交的开始时间，提交消息必须遵循特定格式**

## Commit Message Format / 提交消息格式

```shell
git commit -m "01:30 your commit message"
```
- hh:mm your commit message. If the start time tag is omitted, the time spent on this commit will be set to 0.
- 小时:分钟 提交消息。若忽略开始时间标签，则该提交的耗时被视为0.

## Usage Documentation / 使用文档

```shell
./GitLog2Diary.pl ["Author"] [> diary.txt]
```

- Author: specify an author. If omitted, all authors of this project will be counted.
- \> diary.txt: output as a text file. If omitted, just print out the diary.
- 作者: 指定一个作者。若不提供，则该项目的所有作者都会被计算在内。
- \> 日志.txt: 输出为文本文件。如果忽略，则只是打印到屏幕上。

## Example / 例子

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

Summery: 27 hours and 23 minutes
```