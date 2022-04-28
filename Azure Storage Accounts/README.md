# Azure Storage Accounts

### Part of Exam Covered
#### Develop for Azure storage (15-20%)
Overview of unmanaged storage accounts.

### Overview/Notes

Managed storage accounts are associated with Virtual Machines and the attached data disks attached to the VMs.
Unamanged storage account is kind of different.
Empty storage acounts cost nothing. Could cost 2 cents per Gb per month.

Unique name across all of Azure due to the API functionality.

Want your storage account to be close to your application. This slows things down and also a cost for moving data between different regions.
Different prices depending on the Location and on the Redundancy (Replication). Use the Azure pricing calculator to determine which is best for you depending on the budget you have.
The more data you have, the better it is to have it in a cheaper region.
Standard is the default performance. If you are expecting very low latency access, upgrade to Premium. We have restricted options in Replication due to using premium performance.
Premium, you pay less for the access of the files as opposed to paying more for the storage.

Blob storage is only for blobs and can have a public privacy.

**Exam Q:We want general purpose v2 (99.99% of the time this is the correct answer.**

**Need to know the different replications and what they do for the exam**
Different redundancy depending on regions. Some regions don't have all options for redundancy.
1. **Locally redundant storage**, Azure will keep 3 backups of the data in the same location and same data center.
2. **Geo redundant storage** allows them to store 6 copies fo the file, 3 in the local data center and 3 in another data center. Higher availability. If there is a problem and a region go down, there is an option of failing over to another region.
3. **Read-access Geo redundant storage** gives you a second URL to use even if there is no problem. Better performance (distribute performance)if you have a read and write URL.
4. **Zone reduendant storage** stores 3 copies across availability zones.


### Blob Storage

All blobs have to be stored into a container. 
Use private access. Blob access is kind of dangerous since can be exposed to public people.
You can upload data from inside the portal.
Blob are ultimately used for unstructured data and have containers in which we can throw in files.
Always have access requirements.
Private access need authentication to access.

