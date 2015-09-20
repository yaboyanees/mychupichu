require "refile/s3"

aws = {
  access_key_id: "AKIAJJY2PNI2QLWT2WRA",
  secret_access_key: "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",
  region: "us-east-1",
  bucket: "mychu",
}
Refile.cache = Refile::S3.new(prefix: "cache", **aws)
Refile.store = Refile::S3.new(prefix: "store", **aws)