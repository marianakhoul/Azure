# Azure Storage Accounts

Managed storage accounts are associated with Virtual Machines and the attached data disks attached to the VMs.
Unamanged storage account is kind of different.
Empty storage acounts cost nothing. Could cost 2 cents per Gb per month.

Unique name across all of Azure due to the API functionality.

Different prices depending on the Location and on the Redundancy (Replication). Use the Azure pricing calculator to determine which is best for you depending on the budget you have.
The more data you have, the better it is to have it in a cheaper region.
Standard is the default performance. If you are expecting very low latency access, upgrade to Premium. We have restricted options in Replication due to that.
Premium, you pay less for the access of the files as opposed to paying more for the storage.
We want general purpose v2.
Blob storage is only for blobs and can have a public privacy.
Locally redundant storage, Azure will keep 3 backups of the data in the same location and same data center.
Geo redundant storage allows them to store 6 copies fo the file, 3 in the local data center and 3 in another data center. Higher availability.
Read-access Geo redundant storage gives you a second URL to use. Better performance if you have a read and write URL.
Zone reduendant storage stores 3 copies across availability zones.
Different redundancy depending on regions. Some regions don't have all options for redundancy.

### Blob Storage

All blobs have to be stored into a container. 
Use private access. Blob access is kind of dangerous since can be exposed to public people.
You can upload data from inside the portal.
Blob are ultimately used for unstructured data and have containers in which we can throw in files.
Always have access requirements.
Private access need authentication to access.

