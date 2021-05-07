resource "local-file" "foo" {
  content = var.PUBLIC_IP
  filename = "/tmp/publicip.txt"
}