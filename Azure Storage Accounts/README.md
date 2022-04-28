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

### Performance
Standard is the default performance. If you are expecting very low latency access, upgrade to Premium. We have restricted options in Replication due to using premium performance.
Premium, you pay less for the access of the files as opposed to paying more for the storage.

Blob storage is only for blobs and can have a public privacy.

**Exam Q:We want general purpose v2 (99.99% of the time this is the correct answer.)**

### Replication
**Need to know the different replications and what they do for the exam**
Different redundancy depending on regions. Some regions don't have all options for redundancy.
1. **Locally redundant storage**, Azure will keep 3 backups of the data in the same location and same data center.
2. **Geo redundant storage** allows them to store 6 copies fo the file, 3 in the local data center and 3 in another data center. Higher availability. If there is a problem and a region go down, there is an option of failing over to another region.
3. **Read-access Geo redundant storage** gives you a second URL to use even if there is no problem. Better performance (distribute performance)if you have a read and write URL.
4. **Zone reduendant storage** stores 3 copies across availability zones.

### Networking
Networking default is public. Anyone who has the URL to the storage account can attempt to connect to the storage account. This doesn't allow viewing the files, but can see there is a front door (public endpoint). Can have public endpoint that is only available to certain networks. Any VM connected to this virtual network can connect to the storage account. Private endpoint menas the URL can't be accessed even if they had the key.

By default need to access the storage accounnt by using HTTPS. Data encryption in transit. Data moving between Azure and machine is encrypted and can't be read by people.

Soft delete protects from accidental deletion because it doesn't permanently delete something inn the storage account for 7 days. This is disabled by default.

**Exam Q: might ask you to create data lake. No longer in the Azure marketplace. It is a property of the storage account.**

### Create Blob Storage using the Portal
Inside the storage account, can create storage in forms of Containers (blobs), File share(SMB file shares), Tables (tabular data storage), Queues (Effectively scale apps according to traffic).
All blobs have to be stored into a container. 
Use private access. Blob access is kind of dangerous since can be exposed to public people.
You can upload data from inside the portal.
Blob are ultimately used for unstructured data and have containers in which we can throw in files.
Always have access requirements.
Private access need authentication to access. Can't access the content for the file using the URL only unless you specify this for some reason.

### Access Keys and Shares Access Signatures
Access keys is the primary way of accessing storage accounts. Can find under Settings. Do not want you access key to be out in the public. Can use the conenction string to connect to the storage account programmatically. Key 1 is to be used and Key 2 is for backup. Accidentally upload Key 1 to GitHub, can use Key 2 for the application instead and then regenerate Key 1.

To give people access to the account is by giving people a Shared Access Signature (SAS). With this, we aare sigining using Keys and being specific with the permission people are getting. Can also put expiration and start dates. Generate the SAS key will give you a connection string or SAS token to be appended to the URL to see content.

To revoke peoples permissions, not grant them access anymore, invalidate the key used to generate the token. Would need to regenerate the key to have 2 keys again.

