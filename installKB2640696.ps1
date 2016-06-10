$hotfix=get-hotfix -id kb2640696 -ErrorAction SilentlyContinue
if($hotfix)
{
  #installed
}
else
{
   $args = "\\<Server>\deploymentshare$\Applications\KB2640696\Windows6.1-KB2640696-v3-x86.msu" +" /quiet"+" /norestart"
   start-process wusa $args -wait
}
