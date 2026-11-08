# Final Project of "Let's Go!" by Alex Edwards.

!['Let's Go' by Alex Edwards.](./Let'sGo.png)

#### Excellent book to get started with web programming in Go .

#### Set up MySQL DB -

```
docker compose up -d
```

#### To setup DB tables run SQL file -

/internal/models/testdata/setup.sql

#### To delete all DB tables run SQL file -

/internal/models/testdata/teardown.sql

#### Start server -

```
go run ./cmd/web
```

#### open server in browser -

pay attention that is https server

```
https://localhost:4000/
```


#### My live example -

https://lets.pitron-halomot.org/
