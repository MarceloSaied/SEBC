echo -e "----------------------------------------------------------- installing -----------------------------------------------------------------------------\n"
yum install -y vim ntp ntpdate ntp-doc nscd htdig bind-utils
chkconfig ntpd on
chkconfig nscd on
service ntpd start
service nscd start
echo -e "----------------------------------------------------------- checking -----------------------------------------------------------------------------\n"
echo -e "\n1. Swappiness:"
cat /proc/sys/vm/swappiness
echo 'vw.swappiness=1' >> /etc/sysctl.conf
echo 1 > /proc/sys/vm/swappiness
echo -e "\nSwappiness changed to"
cat /proc/sys/vm/swappiness
echo -e "\n2. Mount"
mount
echo -e "\n3. Show the reserve space of any non-root, ext-based volumes"
df -h
echo -e "\n4. Disable transparent hugepage support"
echo never > /sys/kernel/mm/redhat_transparent_hugepage/defrag
echo never > /sys/kernel/mm/redhat_transparent_hugepage/enabled
echo "echo never > /sys/kernel/mm/transparent_hugepage/defrag" >> /etc/rc.d/rc.local
echo "echo never > /sys/kernel/mm/transparent_hugepage/enabled" >> /etc/rc.d/rc.local
cat /sys/kernel/mm/transparent_hugepage/defrag
cat /sys/kernel/mm/transparent_hugepage/enabled
echo -e "\n5. List your network interface configuration"
ifconfig
echo -e "\n6.List forward and reverse host lookups using getent or nslookup"
getent hosts localhost
getent hosts 127.0.0.1
getent hosts `hostname`
nslookup `hostname`
echo -e "\n7. Show the nscd service is running"
service nscd status
echo -e "\n8. Show the ntpd service is running"
service ntpd status
