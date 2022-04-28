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
The colon is part of the commands (not used for more information). Uses server-side copy. Cheaper and quicker than downloading and uploading.
1. Login to Azure: az login
2. AzCopy (Parameters)
 * /Source: (Container where the file we are moving is - URL)
 * /Dest: (destination where we are moving the file to
 * /Pattern: (could be image name or a patterns if moving multiple files with a similar pattern).
 * /SourceKey: Get either a key or SAS, and copy the SAS Token/ Access Key
 * /DestKey: would be the same as source key if inside the same container. Different if moving to another container.
 * /SyncCopy copies image to local memory and upload to new storage account. Want this to be done behind the scenes so won't use /SyncCopy.
