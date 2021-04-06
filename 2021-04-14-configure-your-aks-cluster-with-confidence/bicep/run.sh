export RG_NAME="webinar"
export RG_LOCATION="eastus2"
export BICEP_FILE="webinar.bicep"
export WEBINAR_PARAMETERS

# Login to your Azure account
az login

# Create the Resource Group to deploy the Webinar Environment
az group create --name $RG_NAME --location $RG_LOCATION

# Deploy
az deployment group create \
  --name webinarenvironment \
  --resource-group $RG_NAME \
  --template-file $BICEP_FILE \
  --parameters $WEBINAR_PARAMETERS