#/bin/bash
echo $1
diff <(ssh root@10.241.1.165 "sudo cat /opt/splunk/etc/$1") <(ssh root@10.241.3.13 "sudo cat /opt/splunk/etc/$1")
