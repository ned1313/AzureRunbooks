######################################################################################################
<#
.SYNOPSIS
    Creates a Mesos cluster and Mesos Slaves with Docker on Ubuntu 15.04 in Windows Azure

.DESCRIPTION
    Will create at least one Ubuntu VM as Mesos master and one Ubuntu VM as Mesos slave.  Additional
    VMs can be created for each role.

.EXAMPLE
    .\Azure_Mesos_Build.ps1 -ServicePrefix "PLUTO" `
                            -Location "East US 2" `
                            -AdminUser "CloudAdmin" `
                            -AdminPassword "23&(sfkh" `
                            -MasterCount "3" `
                            -SlaveCount "3" `
                            -ClassCSubnetNumber 13
                           
     Creates a virtual network and storage account in the 'East US 2' data center location prefixed with
     'PLUTO'.  The virtual network has two subnets - 10.0.13.0/24 and 10.1.13.0/24,