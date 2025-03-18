# Github actions

actions/checkout@v2 - This action checks-out your repository under $GITHUB_WORKSPACE

hashicorp/setup-terraform action is a JavaScript action that sets up Terraform CLI in your GitHub Actions workflow by downloading a specific version of Terraform CLI and adding it to the PATH.


# terraform


Run terraform init to initialize the working directory.

Run terraform apply to apply the configuration and provision the resources.

After the apply is complete, Terraform will output the public IP address of the newly created EC2 instance.

Make sure you have valid AWS credentials set up on your local machine, or configure them via the AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY environment variables.
