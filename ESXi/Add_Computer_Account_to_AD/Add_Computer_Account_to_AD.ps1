###############################################################################
# Description : Adding Computer accounts to Active Directory in lab environment ,considering Active Directory is virtual within vCenter server
# Dependencies: Powercli 10.0.0 and above 
################################################################################
###Collect Info from json file
$source = Get-Content -raw ".\content.json"  -ErrorAction Stop |ConvertFrom-Json

###Connect to vCenter Server appliance
connect-viserver $source.QA.vc -User $source.QA.user -Password $source.QA.password 

$computer = foreach($x in $source.QA.computeraccount)

{

Invoke-VMScript -VM $source.QA.ADVM -GuestUser $source.QA.ADuser -GuestPassword $source.QA.ADpassword -ScriptText 'New-ADcomputer –name $computer -path $source.QA.path'

}
