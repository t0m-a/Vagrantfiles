#!/usr/bin/env bash
source /vagrant/data_private/secret
cd /etc/
git clone https://$GITHUB_TOKEN@github.com/t0m-a/srv-ops-configs-private.git
cp -pr /etc/srv-ops-configs-private/letsencrypt /etc/

cd /etc/letsencrypt/live
ln -s /etc/letsencrypt/archive/tsimon.me/cert2.pem /etc/letsencrypt/live/tsimon.me/cert.pem
ln -s /etc/letsencrypt/archive/tsimon.me/chain2.pem /etc/letsencrypt/live/tsimon.me/chain.pem
ln -s /etc/letsencrypt/archive/tsimon.me/fullchain2.pem /etc/letsencrypt/live/tsimon.me/fullchain.pem
ln -s /etc/letsencrypt/archive/tsimon.me/privkey2.pem /etc/letsencrypt/live/tsimon.me/privkey.pem

ln -s /etc/letsencrypt/archive/console.tsimon.me/cert1.pem /etc/letsencrypt/live/console.tsimon.me/cert.pem
ln -s /etc/letsencrypt/archive/console.tsimon.me/chain1.pem /etc/letsencrypt/live/console.tsimon.me/chain.pem
ln -s /etc/letsencrypt/archive/console.tsimon.me/fullchain1.pem /etc/letsencrypt/live/console.tsimon.me/fullchain.pem
ln -s /etc/letsencrypt/archive/console.tsimon.me/privkey1.pem /etc/letsencrypt/live/console.tsimon.me/privkey.pem

ln -s /etc/letsencrypt/archive/git.tsimon.me/cert1.pem /etc/letsencrypt/live/git.tsimon.me/cert.pem
ln -s /etc/letsencrypt/archive/git.tsimon.me/chain1.pem /etc/letsencrypt/live/git.tsimon.me/chain.pem
ln -s /etc/letsencrypt/archive/git.tsimon.me/fullchain1.pem /etc/letsencrypt/live/git.tsimon.me/fullchain.pem
ln -s /etc/letsencrypt/archive/git.tsimon.me/privkey1.pem /etc/letsencrypt/live/git.tsimon.me/privkey.pem

cp -p /etc/srv-ops-configs-private/nginx/current/.htpasswd /etc/nginx/
/bin/cp -prf /etc/srv-ops-configs-private/nginx/current/main.conf /etc/nginx/sites-enabled/default
service nginx restart