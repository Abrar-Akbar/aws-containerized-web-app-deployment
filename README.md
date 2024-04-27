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
