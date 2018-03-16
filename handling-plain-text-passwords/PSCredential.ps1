function Get-FooBar {
    param (
        # The style appropriate credential name is "-Credential" with no "s"
        [parameter()]
        [ValidateNotNull()]
        [PSCredential]$Credential = [System.Management.Automation.PSCredential]::Empty
    )

    # Extract PSCredential Input
    $Domain = $Credential.GetNetworkCredential().Domain
    $Username = $Credential.GetNetworkCredential().UserName
    $Password = $Credential.GetNetworkCredential().Password

    # Output the Values
    Write-Output "[FooBar] Domain: $Domain // Username: $Username // Password: $Password"
}