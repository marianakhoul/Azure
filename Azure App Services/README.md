# Azure App Services

### Part of Exam Covered
#### Develop Azure compute solutions (25-30%)
**Create Azure App Service Web Apps**
1. Create an Azure App Service Web App
2. Enable diagnostics logging
3. Deploy code to a web app
4. Configure web app settings including SSL, API settings, and connection strings
5. Implement autoscaling rules including scheduled autoscaling and autoscaling by operational or system metrics

### Overview/Notes
Platform-as-a-service (PAAS). Not Serverless.
Package up your code and configuration, publish it into Azure and Azure will run it as an App Service. Developer friendly. Integrated with GitHub and Visual Studio. Continuous integration and development of code. Different programming languages that it supports. Friendly cloud base model for applications. 

Create Web App. (also under web option of the categories)
Web App comes with a fully qualified domain .azurewebsites.net
So the Web App name needs to be unique across all of Azure.
For Publish, Need to decide if it's Code based or a Docker Container.
For the code option, you choose the programming language.
Choose your Operating System (Windows or Linux).
Choose your region - price affected by the region and so is latency/performance. Want users closer to our application.

Choose an App Service Plan. The plan is the hosting plan. Standard S1 plan by default.
Can choose the change size and sku and it shows the different options you have. Can host code for free on the free plan. Downside is that Azure will shut down resources for things that aren't used. Will take time for website to be back up when someone tries to revisit it.
Isolated means you have resources that aren't shared (physcial). Single tenant system with no shared resources between Azure customers. 

**Read through the pricing and tiers for the Web Aapps for the exam because you might get questions about knowing what features are available based on tier. Example: WHy would you upgrade to premium etc. https://azure.microsoft.com/en-us/pricing/details/app-service/windows/ **

### Create A Web App





















