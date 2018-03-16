function Get-FooBar {
    param (
        [parameter(Mandatory)]
        [SecureString]$Password
    )

    $Password | Out-Null
}