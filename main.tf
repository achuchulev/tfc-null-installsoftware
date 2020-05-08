resource "null_resource" "foo" {
    triggers {
        build = "${timestamp()}"
    }
  provisioner "local-exec" {
    command = <<EOH
curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
chmod +x ./kubectl
./kubectl version --client
EOH
  }
}
