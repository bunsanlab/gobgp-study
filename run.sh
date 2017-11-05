$(docker-compose up -d)
$(docker-compose stop)
$(docker network connect --ip 10.0.1.2 gobgpstudy_LAN2 C2)
$(docker-compose start)
