printf "Please input few tags [E.g: food,coffee]: "
read -r tags

echo '{ "tags": "'$tags'" }' > data.json
