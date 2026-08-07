### Final project of 'Let's Go' by Alex Edwards.

!['Let's Go' by Alex Edwards.](./Let'sGo.png)

#### Set up mysql db

```
docker compose up -d
```

#### To setup db tables run sql file -

/internal/models/testdata/setup.sql

#### To delete all db tables run sql file -

/internal/models/testdata/teardown.sql

#### Start server

```
go run ./cmd/web
```

#### open server in browser .

pay attention that is https server .

```
https://localhost:4000/
```
