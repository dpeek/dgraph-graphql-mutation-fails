echo "Update Schema"
curl -X POST localhost:8080/admin/schema --data-binary '@schema.graphql'

printf "\n\nSmall Mutation\n"
curl -X POST localhost:8080/graphql -H "Content-Type: application/json" --data-binary '@small.json'

printf "\n\nLarge Mutation\n"
curl -X POST localhost:8080/graphql -H "Content-Type: application/json" --data-binary '@large.json'