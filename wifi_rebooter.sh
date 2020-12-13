
#!/bin/bash

# Only send two pings to google, sending output to /dev/null
ping -c2 8.8.8.8 > /dev/null

# If the return code from ping ($?) is not 0 (meaning there was an error)
if [ $? != 0 ]
then
    # Restart the wireless interface
    ifdown --force wlan0
    ifup wlan0
fi
