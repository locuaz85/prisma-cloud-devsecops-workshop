provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "29c6e108-951e-41b0-9225-86b1ba415baf"
    git_commit           = "687d88b71f1d4bdc1d3ae40e0a81b3c9ec15a142"
    git_file             = "code/build/s33.tf"
    git_last_modified_at = "2024-02-21 04:20:41"
    git_last_modified_by = "160639439+locuaz85@users.noreply.github.com"
    git_modifiers        = "160639439+locuaz85"
    git_org              = "locuaz85"
    git_repo             = "prisma-cloud-devsecops-workshop"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
