Steps:
Created a end-to-end pipeline for creating and deployment infrastructure such as storage account using terraform with Azure Devops.
CI and CD pipelines are as-code and version control.
The variables files are havinf all the variables used in creating end-to-end coonfiguration
Azure terraform will run main.tf files- which is a ymal file
Steps in Azure devops:

CI Process
1) Use the latest Terraform Version
2) Create the terrafrom state
3) Build and validate the files
4) Create the artifact and place it in a folder

CD Process
1) Connect to Azure through Service Principle or Managed identity
2) Use the artifact folder to extract the files
3) Deploy it to Azure with specified Resource Group and sunscription

Note: Each component created on Azure will be source control and have tagging based on each specific environment.

We can use ARM template or Terraform to create and deploy infrastructure and code based on the Project specific environment.
