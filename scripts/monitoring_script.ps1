# Monitor Logic App runs history
$logicAppName = "AzureHROnboardingLogicApp"
$runs = az logic workflow run list --resource-group YourResourceGroup --workflow-name $logicAppName --query "[].name" -o tsv

foreach ($run in $runs) {
    $runDetails = az logic workflow run show --resource-group YourResourceGroup --workflow-name $logicAppName --name $run -o json
    Write-Host "Run Name: $($runDetails.Name)"
    Write-Host "Start Time: $($runDetails.StartTime)"
    Write-Host "Status: $($runDetails.Status)"
    Write-Host "--------------------------------------------------"
}
