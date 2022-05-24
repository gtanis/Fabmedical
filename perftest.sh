host="fabmedical-628230.mongo.cosmos.azure.com"
username="fabmedical-628230"
password="l8xUd4xFfgq9jOD3vYoJUuTHQgt53i6jKZk5Sj7WOGe7lFME95VhLZFWz3c0V4cDKcNEZHoECWa78LH1VSEQKw=="
dbname="contentdb"
port="10255"

for i in {1..250}; do
    mongo $host:$port/$dbname \
        -u $username -p $password \
        --ssl --sslAllowInvalidCertificates \
        --eval 'db.sessions.insert({"title":"Perf Test"})' &
done
