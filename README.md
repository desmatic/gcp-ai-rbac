### Privileges needed for deployment

1. Organization Administrator (roles/resourcemanager.organizationAdmin)

### Deployment

```bash
cp env.local .env.local
vim .env.local
source .env.local
terraform init && terraform apply
```
