# Terraform

Terraform is a infrastructure as a code tool that allow you to manage the infrastructure with the configuration files rather than the graphical user interface.
It allows you to build,change and manage the infrastructure in consistent and the repeatible way.

Using Terraform has serveral advantages over manually managing your infrastructure.

* Terraform can manage infrastructure on multiple cloud platform.
* The human-readable configuration language helps to write infrastructure code quickly.
* It helps you to track the resources throughout the deployments.
* You can commit your configurations to version control to safely collaborate on infrastructure.

![image](https://user-images.githubusercontent.com/30388181/155275324-0f764cd9-1f07-4177-975d-ce052343a9b4.png)

To deploy the resources with the Terraform, standardized method should be followed.

* **Scope** of the Project i.e., understand the infrastructure of the project.
* **Author** i.e., write the configuration for you infrastructure.
* **Initialize** i.e., Install all the plugin that is required to manage the infrastructure.
* **Plan** i.e., Preview the changes and see is it really matching your actual configration.
* **Apply** i.e, once plan is finished, apply that plan to execute.

**Installing a Terraform in the particular OS**

https://www.terraform.io/downloads

![image](https://user-images.githubusercontent.com/30388181/155278111-4e568e61-31f9-403c-bf25-6d3624845be6.png)


Create a directory in the C drive as Terraform and Extract the Executabe at same.
![image](https://user-images.githubusercontent.com/30388181/155275001-f6df2ce0-956b-45b0-b85b-a188b156ee0b.png)
![image](https://user-images.githubusercontent.com/30388181/155275052-4ebee97e-9630-4328-a1b0-f9254d2aad59.png)

Set the path of the location over the Environment variable.
![image](https://user-images.githubusercontent.com/30388181/155290754-18d19680-6bb6-4912-91c1-be93926b1711.png)


Now open the command prompt and type the command **terraform version** to get the version of the terraform.
![image](https://user-images.githubusercontent.com/30388181/155290305-42ec1c86-e8f9-481f-8a63-3d3b1dd9d7ca.png)


once this is done, you have successfully installed the terraform on your system.

**Run Terraform on the VSCode**

Download the Azure CLI and install

It is used as to connect with the azure environment and deploy the resources.
https://docs.microsoft.com/en-us/cli/azure/install-azure-cli-windows?tabs=azure-cli#latest-version

![image](https://user-images.githubusercontent.com/30388181/155293731-dc991b02-4ba5-4c47-9ab2-58fdd2bf715c.png)

Download the VSCode Next.
https://code.visualstudio.com/Download

Once we installed the VSCode, we are gonna install the extensions. Extension provide us the extra help that make VSCode easier to use.
* Azure CLI Tools
* HashiCorp Terraform
* Bracket Pair Colorizer 2 ( This is optional but it is helpful in keeping an order especially complex files.)

Last things need to be done is go to the terminal and click on the new termainal and type **terraform version** and **az version** to check an output from VS.

![image](https://user-images.githubusercontent.com/30388181/155295561-d3d3033c-ab52-473a-ba1c-dda1d257b95b.png)

Once that is done, we are ready to use terraform with VSCode. 

**Terraform WorkFlow(write,Plan,Apply)**

**write** Terraform uses directory as a workspace. While working with the CLI, Directory is considered as the root module.
![image](https://user-images.githubusercontent.com/30388181/155320678-d6b6edc8-b764-43de-80dd-d03d48221e7d.png)

**Terraform files**
Terraform Files ends with the **.tf** extension(there is also file where it ends with the .tf.json extension).
Common Files that we see in the teraform will be **main.tf**. This is used as a main set of configuration for a project.
There can be other configuration files for the large set of environments like for SQL database, App Services etc., but Terraform will consider all of them as single configuration. We only split to make easier to understand and read.

![image](https://user-images.githubusercontent.com/30388181/155321673-797c8678-8b8f-4ec8-9e9b-dde18aa39fa5.png)

Terraform files starts with the provider block which tells terraform which provider we are working with. Is it Azure,AWS,GCP,Alibaba etc.

![image](https://user-images.githubusercontent.com/30388181/155322092-7acbbc43-7560-4fe4-ae5f-e2e79c9e3efc.png)

**Terraform Commands**

**Initialization**

when we have a code written, we can initialize the directory through the **terraform init** command. Directory has to be initialized before moving towards planning. Initialization creates a hidden directory **.terraform**. This directory used to cache the modules and the plugins.

Initialization also creates **.terraform.lock.hcl** file to track the dependencies of the configuration.
Any changes to the configuration files in the directory should be followed by initialization to update the state and any require modules.

**Plan**

Once we performed the initialization, we move to plan through **terraform plan**. This command will read the current state of the object and make sure if it's up to date and compare with the old configuration to check the difference. After that it creates the plan of the changes that will take place.

**Apply** 

once we verified the changes, they we can use the **terraform apply** to apply the changes. By default **terraform apply** will also run **terraform plan** before the **terraform apply**. so, we can use the **terraform apply** and skip **terraform plan** if we are confident with the configuration.

**Remove**

If you wanted to undo all the changes that was done then we can use the **terraform destroy** to do so.
![image](https://user-images.githubusercontent.com/30388181/155325639-4486ca67-8c0f-4be2-82f5-72ac3f6d5e3b.png)

Happy Learning 👍








