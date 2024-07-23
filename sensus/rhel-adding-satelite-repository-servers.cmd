subscription-manager clean
rpm -e katello-ca-consumer-satellite.saxb.net-1.0-1.noarch
wget http://rhn.saxb.net/pub/katello-ca-consumer-latest.noarch.rpm -O rhn.saxb.net.noarch.rpm
rpm -ihv rhn.saxb.net.noarch.rpm
subscription-manager register --org Sensus --activationkey rhel-auto-subscription,wet-rni-dev-8
yum install katello-agent -y