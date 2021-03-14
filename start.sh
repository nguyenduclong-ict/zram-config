#! /bin/bash
c=0
r=0
while [ $r -lt 20 ] && [ $c -eq 0 ]; do
	r=$((r + 1))
	/usr/local/sbin/zram-config "start"
	c=$(zramctl | grep -w '\[SWAP\]' | wc -l)
done
