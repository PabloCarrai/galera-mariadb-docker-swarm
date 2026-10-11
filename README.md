# galera-mariadb-docker-swarm
Intento de hacer correr un docker swarm con cinco virtuales en donde 2 van a ser balanceadores de carga haproxy y 3 van a ser galera mariadb cluster

> Lo que tenemos por el momento es un script que genera el docker-compose inicial. 


```bash

sudo chmod +x generar-docker-compose.sh
./generar-docker-compose.sh



```

> Luego de ejecutar el script tendras el docker-compose.yml inicial. Te toca hacer un 


```bash

docker stack deploy -c docker-compose.yml mi_cluster


```

> Esto levantara la fase inicial, y tendras el balanceador gal1 funcionando. Luego de eso tendras que hacer de nuevo 


```bash

./generar-docker-compose.sh



```

> Para activar la fase 2, y luego de esperar un rato levantar el resto de los mariadb gal2 y gal3. Y por ultimo una vez mas esto. 


```bash

docker stack deploy -c docker-compose.yml mi_cluster


```


> Mas detalle de esto en [aca](https://terli.wordpress.com/2026/10/11/docker-swarm-entre-5-equipos-virtuales-en-donde-2-son-balanceadores-de-carga-con-haproxy-y-3-equipos-son-mariadb-para-un-cluster-de-galera/)
