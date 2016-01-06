
workflow Linux_Hello_World
{
	param(
		[parameter(Mandatory)]
		[String]$username,
		[parameter(Mandatory)]
		[String]$password
)
	$pass = ConvertTo-SecureString `
		-AsPlainText $password -Force
	$cred = New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList $username,$pass
	Invoke-SSHCommand `
		-ComputerName "MARSMaster01.cloudapp.net" `
		-Credential $cred `
		-Port 22 `
		-ScriptBlock {
			sudo apt-get update
			echo "apt-get update complete"
		}
}