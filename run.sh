$(docker-compose up -d)
$(docker-compose stop)
$(docker network connect --ip 10.0.1.2 gobgpstudy_LAN2 C2)
$(docker network connect --ip 10.0.2.3 gobgpstudy_LAN3 C3)
$(docker-compose start)

$(docker-compose exec C1 /bin/bash /etc/init.d/quagga restart)
$(docker-compose exec C2 /bin/bash /etc/init.d/quagga restart)
$(docker-compose exec C3 /bin/bash /etc/init.d/quagga restart)
