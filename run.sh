dotnet tool restore

dotnet fusion subgraph pack -w ./subgraph1 -s ./subgraph1/schema.graphql -c ./subgraph1/subgraph-config.json -p ./subgraph1/subgraph1.fsp

dotnet fusion subgraph pack -w ./subgraph2 -s ./subgraph2/schema.graphql -c ./subgraph2/subgraph-config.json -p ./subgraph2/subgraph2.fsp

dotnet fusion compose -s ./subgraph1 -p gateway.fgp

dotnet fusion compose -s ./subgraph2 -p gateway.fgp

unzip -p ./gateway.fgp schema.graphql > fusion-schema.graphql