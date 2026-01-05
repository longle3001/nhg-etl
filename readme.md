Step 1:
```
git clone https://github.com/longle3001/nhg-etl.git
```

Step 2: thêm file .env  trong thư mục code vừa clone về
```
PROJECT_NAME=nhg
```

Step 3:
run docker
```
docker compose up --build 
```


----
Next: Setup Dbt and vidualize at local

Sau này anh em chỉ cần pull repo này về dùng là được, không cân phải mất công setup lại

Step 1:
Thiết lập dbt
```
dbt init
```

step 2:
chuản bị file profiles.yml như sau
```
config: {}
dwh:
  outputs:
    dwh:
      driver: native
      port: 9000
      host: clickhouse
      password: default
      schema: prod
      threads: 2
      type: clickhouse
      send_receive_timeout: 3600
      user: default
  target: dwh

```