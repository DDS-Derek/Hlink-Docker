# Hlink-Docker

docker-compose
```
version: '2'
services:
  hlink:
    image: ddsderek/hlink:latest
    ports:
      - 9090:9090
    volumes:
      - /config:/config # 配置文件
      - /data/:/data # 数据目录，请把要硬链接的目录全部挂载在/data下，不然会出现权限问题
    environment:
      - PUID=1000
      - PGID=1000
      - UMASK=022
```
这是我用的，大家可以参考一下
```
version: '2'
services:
  hlink:
    image: ddsderek/hlink:latest
    ports:
      - 9090:9090
    volumes:
      - /home/暂存/docker/hlink/config:/config # 配置文件
      - /home/video/movies:/data/movies
      - /home/video/tv:/data/tv
    environment:
      - PUID=1000
      - PGID=1000
      - UMASK=022
```