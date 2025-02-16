### Docker Commands
```bash
docker network create crud
```

```bash
docker build -t 3-tier:mysql-v1 .
```

```bash
docker run --rm -d --name mysql -e MYSQL_ROOT_PASSWORD=CrudApp@1 -p 3306:3306 --network crud 3-tier:mysql-v1
```

```bash
docker build -t 3-tier:backend-v1 .
```

```bash
docker run -d --name backend \
-e DB_HOST=mysql \
-e DB_USER=crud \
-e DB_PASSWD=CrudApp@1 \
-e DB_PORT=3306 \
--network crud \
3-tier:backend-v1
```
```bash
docker build -t 3-tier:frontend-v1 .
```

```bash
docker run  -d --name frontend -p 80:80 --network crud 3-tier:frontend-v1
```