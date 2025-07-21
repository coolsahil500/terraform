resource "aws_s3_bucket" "pipeline_bucket" {
  bucket = "ci-cd-pipeline-artifacts-${random_id.suffix.hex}"

  force_destroy = true

  tags = {
    Name = "PipelineArtifactsBucket"
  }
}

resource "random_id" "suffix" {
  byte_length = 4
}
