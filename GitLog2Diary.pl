#!/usr/bin/perl -w
use POSIX qw(strftime);

@date;
@start;
@stop;
@comments;

@git_log = `git log --author="" --pretty=format:"%ct %s"
`;

foreach $log (@git_log) {
    print $log;
}