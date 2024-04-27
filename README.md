# aws-containerized-web-app-deployment
# Prerequisites (Purpose of using the AWS services in this project)
CodeCommit- It is a version control service( Same as GitHub), which will be used to store code, documents, etc.
CodeBuild- It is used to compile source code, run unit tests, and produce artifacts (S3).
CodePipeline- Used to quickly model and configure the different stages of the software release process and automate the software change continuously to deploy on testing and production.
IAM roles- Used to access AWS different resources to complete the task.
ECR (Elastic Container Registry)- Used to store, and manage local docker images to AWS.
AWS Fargate- Used with ECS to run container applications without having to manage servers.
ECS (Elastic Container Service)- Used to easily deploy, manage, and scale docker containers.
# Step1:
 we will configure an IAM role with the permission required in this project for AWS services. To create an IAM role
# Policy List
1. AmazonEC2ContainerRegistryPowerUser
2. AWSCodeCommitReadOnly
3. CloudWatchLogsFullAccess
![image](https://github.com/Abrar-Akbar/aws-containerized-web-app-deployment/assets/62903208/0806398b-c59f-40a1-9271-5851628b1ded)
   
# Step2:
 We need to push our code to a repository for which code commit will be used. After creating the git repository, it provides different ways of connection such as HTTPS, SSH, and HTTPS(GRC). We will be using the HTTPS option to clone the repository so that we can push code to CodeCommit.
 
![image](https://github.com/Abrar-Akbar/aws-containerized-web-app-deployment/assets/62903208/9b8e9f77-d66e-4581-b83a-e03a710c7979)

In the local system where the web app code is available clone the repository and push the code.
Code to create branch main- git checkout -b main
Add files: - git add .
Commit - git commit -m
Push - git push origin main
Content of Docker file used in this project.
# Step3:
Now, we will set up ECR. Visibility settings can be chosen between private and public. In this project, we will be using a private repository. A concise name that can be identified by the developer should be provided in the repository name.

![image](https://github.com/Abrar-Akbar/aws-containerized-web-app-deployment/assets/62903208/7c7756da-ceae-4460-93f8-6591fe4df61d)

After creating a container repository, it can be shown listed in private along with its URI.

# Step 4:
Now, we will set up CodeBuild with the source as CodeCommit. CodeBuild will extract code from the CodeCommit repository that we created earlier. Reference type can be selected as a branch with a relevant name, in our case “main”.

We will be using the default environment configuration. CodeBuild also requires a computing medium, for which we will use EC2. We don’t need to configure EC2. To execute an operation of CodeBuild permission is required which is provided by the IAM role created earlier.
buildspec.yml file will be used to build commands which will be provided through CodeCommit.



