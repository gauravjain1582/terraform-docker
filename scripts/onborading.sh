ssh-keygen -t rsa -b 4096 -f terraform-key
cp terraform-key* aws/
cp terraform-key* gcp/
