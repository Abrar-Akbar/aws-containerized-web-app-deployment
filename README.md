# AWS Containerized Web App Deployment

## Prerequisites

- **CodeCommit:** Version control service for storing code and documents.
- **CodeBuild:** Compiles source code, runs unit tests, and produces artifacts (S3).
- **CodePipeline:** Models and configures software release process stages for continuous deployment.
- **IAM roles:** Provides access to AWS resources.
- **ECR (Elastic Container Registry):** Stores and manages local Docker images on AWS.
- **AWS Fargate:** Runs container applications without managing servers.
- **ECS (Elastic Container Service):** Deploys, manages, and scales Docker containers.

## Step 1: Configure IAM Role

Create an IAM role with the necessary permissions for AWS services.

- **Policy List:**
  - AmazonEC2ContainerRegistryPowerUser
  - AWSCodeCommitReadOnly
  - CloudWatchLogsFullAccess

## Step 2: CodeCommit Setup

Push code to a CodeCommit repository.

- Clone the repository to your local system.
- Create a main branch and push code using the HTTPS option.

## Step 3: Set Up ECR

Configure a private repository in ECR.

- Choose visibility settings (private).
- Provide a concise repository name.
- After creation, view the repository URI.

## Step 4: CodeBuild Setup

Set up CodeBuild with the source as CodeCommit.

- Choose the main branch as the reference type.
- Use default environment configuration.
- Configure computing medium as EC2.
- Use the IAM role created earlier for permissions.
- Use `buildspec.yml` to automate building Docker images from source code.

## Step 5: ECS Configuration

Configure ECS to run the Docker container.

- Create a cluster to organize container instances regionally.
- Configure task definition using Fargate.
- Specify container name and image URI.
- Create services to manage instances of the task description concurrently.

## Step 6: CodePipeline Setup

Configure CodePipeline for automated deployment.

- Provide a name for the pipeline.
- Configure CodeCommit as the source.
- Choose CodeBuild as the build provider.
- Configure ECS as the deployment provider.
- Release changes to trigger the deployment process.

After completion, view the hosted web app in the ECS task section with a public IP address.



