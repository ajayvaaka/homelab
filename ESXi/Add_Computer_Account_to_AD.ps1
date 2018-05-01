###############################################################################
# Description : Adding Computer accounts to Active Directory in lab environment ,considering Active Directory is virtual within vCenter server
# Dependencies: Powercli 10.0.0 and above 
################################################################################

$source = Get-Content -raw ".\content.json"  -ErrorAction Stop |ConvertFrom-Json
