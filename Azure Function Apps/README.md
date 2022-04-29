# Azure Function Apps

### Part of Exam Covered
#### Develop Azure compute solutions (25-30%)
**Implement Azure Functions**
1. Create and deploy Azure Functions apps
2. Implement input and output bindings for a function
3. Implement function triggers by using data operations, timers, and webhooks
4. Implement Azure Durable Functions

### Overview/Notes
Look for function in the create resources.
Need to put your function in a resource group.
There is a domain name: .azurewebsites.net
Name needs to be unique across all of Azure.
Can have Code or Docker Container for your function.
You can edit the function in the browser too (browser based code using the code model - Publish).
Runtime Stack is the language. Custom Handler is effectively allowing you to support other languages not in the list. Version - Version of the programming language you chose in the Runtime Stack. Choose region. Need a storage accoutn related to the function since functions are files and need to be stored. You can choose the operating system. No Windows version of Python. Need to choose a Plan. There is a serverless option - not in control of running of the function in terms of number of servers, cpu, instance size etc. You can go to the App service plan version and it will aallow you to choose the service level (not serverless - PAAS). Serverless, you pay for the execution, amount of CPU used in the executions. Premium plan allows you to leave the function running and no startup lag. In the Serverless option, Microsoft shuts down your function if no one is calling it. Small lag when starting it up again to get it back in memory. Premium is more expensive, more features, better performance. Can add Application Insights to get information about the function.
