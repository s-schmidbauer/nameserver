/usr/local/bin/adblocks.sh > /tmp/adblocks.conf
sort /tmp/adblocks.conf | uniq -u > /var/unbound/etc/adblocks.conf
unbound-checkconf && unbound-control reload
rm /tmp/adblocks.conf
