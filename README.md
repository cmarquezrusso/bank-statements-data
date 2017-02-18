# HACKATON: Bank Account Statements into Elastic Search
This project is just a **playground** for importing **Bank accounts statements data** into **elastic search**

##### TODO's list 

- [x] Learn about elastic-search
- [x] ~Convert Bank's csv files into JSON files~ Not needed
- [x] Inject these JSON files into elastic-search
- [ ] Create a Kibana dashboard to show `interesting data` <sup>1</sup>

<sup>1</sup> `Interesting data` = no idea of what im doing

## Installation instructions

### Requirements:

### Disclaimer:
`
I'm using fish shell :).
`

This project requires **docker**, **node** and **npm**. Once docker is installed, just execute the following commands:

- `docker-machine start default`
- `eval (docker-machine env default)`
- `docker-compose up`

sudo sysctl -w vm.max_map_count=262144

This will start a new environment with `elasticsearch`, `logstash` and `kibana`

This is based on the work done by https://github.com/deviantony/docker-elk

# Supported Banks:

## Bank of New Zealand (BNZ)

BNZ officialy supports the following file formats: `CSV`, `QIF`, `GIFTS` and `OFX`
These formats are poor on details (time doesnt exists here)

However, you can use [my utility](https://github.com/cristian04/util-bnz-data-extractor) which is using BNZ API and importing transactions into elastic search.

### How to export bank statements
- Login into your account
- Select the account that you want and click on Export
- Select CSV and select the desired time range.

`Tip: More data = More stuff to play with`

# Tools

- CSV2JSON: This tools converts CSV files into a JSON, which are easier digested by `elastic-search`
  `npm install --global csv2json`

## How to import data into elastic-search
- CSV Files: Just put your CSV files into logstash/data
- Using Utility (Recommended) Refer to https://github.com/cristian04/util-bnz-data-extractor

# Contributions:
Feel free to add your suggestions and ideas on this project.
