#!/bin/bash
for branch in `git branch -r | grep -v HEAD`; do echo -e `git show --format="%an" $branch | head -n 1`; done | sort | uniq -ci | sort -g -r
