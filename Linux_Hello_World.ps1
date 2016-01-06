workflow Linux_Hello_World
{
	Invoke-SSHCommand `
		-ComputerName "MARSMaster01.cloudapp.net" `
		-Credential (Get-Credential) `
		-Port 22 `
		-ScriptBlock {
			sudo apt-get update
			echo "apt-get update complete"
		}
}