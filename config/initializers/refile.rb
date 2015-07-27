require "refile/s3"

aws = {
  access_key_id: "AKIAIZTQDKLZHER4HO5A",
  secret_access_key: "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",
  region: "us-east-1",
  bucket: "mychu",
}
Refile.cache = Refile::S3.new(prefix: "cache", **aws)
Refile.store = Refile::S3.new(prefix: "store", **aws)