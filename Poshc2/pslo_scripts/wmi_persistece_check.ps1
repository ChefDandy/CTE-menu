Write-Host "Showing All Root Event Filters"
Get-WmiObject -Namespace root/subscription -Class __EventFilter

Write-Host "Showing All CommandLine Event Consumers"
Get-WmiObject -Namespace root/subscription -Class CommandLineEventConsumer

Write-Host "Showing All Filter to Consumer Bindings"
Get-WmiObject -Namespace root/subscription -Class __FilterToConsumerBinding