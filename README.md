# pg_prove

```shell
docker run -v $PWD/path/to/testdir:/t -e "PGPASSWORD=$PGPASSWORD" --network=host xenoterracide/pg_prove:latest \
  pg_prove --host localhost --dbname mydb --username postgres --ext .sql --recurse /t
```

# postgis-pgtap
Add testing to your Postgis database
