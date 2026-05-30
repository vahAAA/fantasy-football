This is my playground where I want to test spark while preparing for a fantasy football season.

Original players.json came from Sleeper API https://api.sleeper.app/v1/players/nfl
I transformed it into the array so it is easier to work with 

`
jq '[.[] ]' players.json > players_array.json
`

and parsed to parquet file.

`
val df = spark.read.option("multiline", "true").json("players_array.json")
df.write.parquet("players.snappy.parquet")
`
