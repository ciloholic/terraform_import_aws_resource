# tfstateバックアップ

```
$ cp -f terraform.tfstate terraform.tfstate.before
```

# 既存リソースのインポート

```
$ terraform import aws_s3_bucket.after_bucket [bucket_name]
$ terraform import aws_s3_bucket_public_access_block.after_bucket_public_access_block [bucket_name]
```
