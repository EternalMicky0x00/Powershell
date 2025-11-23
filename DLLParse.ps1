$W=@{
    PATH="$env:windir"
    filter='*.dll'
    Recurse=$TRUE
}
Get-ChildItem @W