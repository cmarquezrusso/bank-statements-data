# HACKATON: Bank Account Statements into Elastic Search
This project is just a **playground** for importing **Bank accounts statements data** into **elastic search**

Please vote for an API feature to be added in BNZ
https://community.bnz.co.nz/t/api-application-programming-interface/337

##### TODO's list 

- [x] Learn about elastic-search
- [x] ~~Convert Bank's csv files into JSON files~~ Not needed. CSV files must be ingested by using logstash. Json file must be ingested by elastic-search api
- [x] Inject these JSON files into elastic-search
- [ ] Create a Kibana dashboard to show `interesting data` <sup>1</sup>
- [ ] Create a Machine Learning Engine to analyze and categorize data <sup>1</sup>

<sup>1</sup> No idea of what Im doing

## Installation instructions
### Disclaimer:
`
I'm using fish shell :).
`

### Update
minikube start --memory 4096

kubectl create configmap k8s-temp --from-file=/Users/cristian04/.minikube --from-file=config=/Users/cristian04/.kube/config

### Requirements:

This project requires **docker**, **node** and **npm**. Once docker is installed, just execute the following commands:

- `docker-machine start default`
  - `docker-machine ssh`
  - `sudo sysctl -w vm.max_map_count=262144` This is required for elastic-search
  - `exit`
- `eval (docker-machine env default)`
- `docker-compose up`

This will start a new environment with `elasticsearch`, `logstash` and `kibana`

This is based on the work done by https://github.com/deviantony/docker-elk

# Supported Banks:

## Bank of New Zealand (BNZ)

BNZ officialy supports the following file formats: `CSV`, `QIF`, `GIFTS` and `OFX`
These formats are poor on details (transaction time doesnt exist here)

However, you can use [my utility](https://github.com/cristian04/util-bnz-data-extractor) which is using BNZ API and importing transactions into elastic search. To avoid reverse engineering, please vote for this https://community.bnz.co.nz/t/api-application-programming-interface/337

### How to export bank statements
- Login into your account
- Select the account that you want and click on Export
- Select CSV and select the desired time range.

`Tip: More data = More stuff to play with`

# Tools

- CSV2JSON: This tools converts CSV files into a JSON, which are easier digested by `elastic-search`
  `npm install --global csv2json`

## How to import data into elastic-search

- CSV Files: Just put your CSV files into `logstash/data`
- Using Utility (Recommended) Refer to https://github.com/cristian04/util-bnz-data-extractor

# Contributions:
Feel free to add your suggestions and ideas on this project.

# Credits 

[Cristian Russo](http://www.cristianmarquez.me)
