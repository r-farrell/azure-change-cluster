!/bin/bash
case "$1" in
  deu) echo "Change Cluster to mski Dev"
       az cloud set --name AzureCloud
       az account set --subscription EPBP-MyBuildings-Dev
       az aks get-credentials --name mskiaksdeu1cl01 --resource-group MYBUILDINGS_EU1_DEV_MSKI_RSG --admin;;
  seu) echo "Change Cluster to mski Stage"
       az cloud set --name AzureCloud
       az account set --subscription EPBP-MyBuildings-Stage
       az aks get-credentials --name mskiaksseu1cl01 --resource-group MYBUILDINGS_EU1_STAGE_MSKI_RSG --admin ;;
  peu) echo "Change Cluster to mski Prod"
       az cloud set --name AzureCloud
       az account set --subscription EPBP-MyBuildings-Prod
       az aks get-credentials --name mskiakspeu1cl01 --resource-group MYBUILDINGS_EU1_PROD_MSKI_RSG --admin;;
  dcn) echo "Change Cluster to mski China Dev"
       az cloud set --name AzureChinaCloud
       az account set --subscription EPBP-MyBuildings-DEV
       az aks get-credentials --resource-group EPBP_CN1_DEV_MSKI_RSG --name mskiaksdcn1cl01 --admin;;
  scn) echo "Change Cluster to mski China Stage"
       az cloud set --name AzureChinaCloud
       az account set --subscription EPBP-MyBuildings-STAGE
       az aks get-credentials --resource-group EPBP_CN1_STAGE_MSKI_RSG --name mskiaksscn1cl01 --admin;;
  pcn) echo "Change Cluster to mski China Prod"
       az cloud set --name AzureChinaCloud
       az account set --subscription EPBP-MyBuildings-PROD
       az aks get-credentials --resource-group EPBP_CN1_PROD_MSKI_RSG --name mskiakspcn1cl01 --admin;;
esac
