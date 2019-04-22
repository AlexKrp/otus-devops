#Run MongoDB
/usr/bin/mongod --fork --logpath /var/log/mongod.log --config /etc/mongodb.conf
#Run NodeApp
cd /NodeLearnApp1 && npm start || exit