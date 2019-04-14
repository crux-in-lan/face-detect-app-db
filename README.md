# face-detect-app-db
Database part of the <a href='https://github.com/crux-in-lan/face-detect-app'>face-datect-app</a>

1. Open filed ./pg_dump/users.sql and ./pg_dump/login.sql and replace "example_user" with the databa user you use.
2. Use pg_restore to restore the two tables. The command used for dumping is:

 pg_dump -h <ip-host> -p 5432 -U <username> --format plain --verbose --file "./login.sql" --table tmp.login <database-name>
