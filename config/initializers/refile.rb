require "refile/s3"

aws = {
  access_key_id: "KEY ID",
  secret_access_key: "ACCESS_KEY",
  region: "REGION",
  bucket: "NAME",
}
Refile.cache = Refile::S3.new(prefix: "cache", **aws)
Refile.store = Refile::S3.new(prefix: "store", **aws)