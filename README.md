# aws-containerized-web-app-deployment
# Prerequisites (Purpose of using the aws services in this projects)
CodeCommit- It is a version control service( Same as GitHub), which will be used to store code, documents etc.
CodeBuild- It is used to compile source code, runs unit test and produce artifact (S3).
CodePipeline- Used to quickly model and configure the different stages of software release process and automate the software change continuously to deploy on testing and production.
IAM roles- Used to access to AWS different resources to complete the task.
ECR (Elastic Container Registry)- Used to store, manage local docker images to AWS.
AWS Fargate- Used with ECS to run containers application without having to manage servers.
ECS (Elastic Container Service)- Used to easily deploy, manage and scale docker container.
