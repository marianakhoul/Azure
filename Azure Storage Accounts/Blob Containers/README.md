# Blob Containers

Ultimate in the unstructured data. Container in which we can throw files. Give the container a name. 
There is also access levels. Private endpoint. 
Want to store images, text files and videos for a website - would use Blob containers.
Container level anonymous access allows you access to the whole container.
The default (private) is usually the best option.
Using the portal, we can upload data into the container.
Containers don't have a real folder structure, it's virtual folder structure. 
In the advanced option for the upload, can create a folder even if it doesn't exhist.

Not many options in the portal for moving files. Can use a software called AzCopy. Install it on your machine. Reason is because we want to use the commandline tool to manipulate the file and move it around. Need to add AzCopy location to $PATH.

In the Powershell Terminal, type azcopy /?(slash questionmark). This will show you some examples on how to use AzCopy. 

### Copy Files with AzCopy (Powershell)
Can move data between containers, storage accounts, subscriptions.. 
The colon is part of the commands (not used for more information). Uses server-side copy. Cheaper and quicker than downloading and uploading.
1. Login to Azure: az login
2. AzCopy (Parameters)
 * /Source: (Container where the file we are moving is - URL)
 * /Dest: (destination where we are moving the file to
 * /Pattern: (could be image name or a patterns if moving multiple files with a similar pattern).
 * /SourceKey: Get either a key or SAS, and copy the SAS Token/ Access Key
 * /DestKey: would be the same as source key if inside the same container. Different if moving to another container.
 * /SyncCopy copies image to local memory and upload to new storage account. Want this to be done behind the scenes so won't use /SyncCopy.

### Acquire and Break Leases
aquiring a lease is like a lock. To do a write, change, deletion, undoing of the lock, need to include the LeaseID with the request. Ensuring things don't get accidentally deleted. To do anything with the file, need to break the lease. With API too, you can provide the ID. Once Lease is broken, can delete files. Leasing allows putting locks on files to not get deleted. Actively moving things around, want to lock stuff when in progress of working. 

### Storage Access Tiers
By default, the Blob is in the hot access tier. This is only available for general purpose V2 storage account. Paying normal rates for storage and access.
If you have a file which you don't access much, can put it in a cool tier. Blob properties, scroll down, see access tier. This will have affects on the cost. Cool access tier means we are committing to 30 days of having the file in Azure (can't be removed before). Will save money on storage and the access becomes more expensive. We do this to files that we don't access much, maybe in the case of an emergency. Third tier is Archive. Archive becomes even cheaper but making file more inaccessible and there is a delay in accessing. Would need to push a request and Azure will let you know when it is ready. Stored for at least 180 days. Delay could be up to a few hours. Save backups and infrequently accessed files in terms of storage.



