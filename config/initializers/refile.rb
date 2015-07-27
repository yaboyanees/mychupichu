require "refile/s3"

aws = {
  access_key_id: "ACCESS ID HERE",
  secret_access_key: "ACCESS KEY HERE",
  region: "REGION HERE",
  bucket: "NAME HERE",
}
Refile.cache = Refile::S3.new(prefix: "cache", **aws)
Refile.store = Refile::S3.new(prefix: "store", **aws)