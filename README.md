# BNZ CashNav

This is my approach to create a kubeapp (kubernetes application) to analyze my bank transactions.

Inspired by learning about the ELK stack (for centralised logging) and by CashNav. https://www.westpac.co.nz/bank-accounts/everyday-money-tools/cashnav/

# As BNZ doesnt have an application like CashNav, I decided to build my own.

**Technology stack**: Kubernetes, Docker, Python, Javascript

## UPDATE: We are using taiga to track our feature requests. 
https://tree.taiga.io/project/cristian04-bnz-cashnav/kanba

## Installation instructions

### NEW! Running on Kubernetes!

`git clone`

`minikube start --memory 4096`

`kubectl create configmap k8s-temp --from-file=/Users/cristian04/.minikube --from-file=config=/Users/cristian04/.kube/config`



# Contributions:
Feel free to add your suggestions and ideas on this project

>> Please vote for an API feature to be added in BNZ
   https://community.bnz.co.nz/t/api-application-programming-interface/337

# Credits 

[Cristian Russo](http://www.cristianmarquez.me)
