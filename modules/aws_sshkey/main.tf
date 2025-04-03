# create public and private key
resource "tls_private_key" "studem_sshkey" {
    algorithm   = "RSA"
    rsa_bits    = 2048
}
resource "local_file" "studem_privatekey" {
    filename    = "stud_SSHkey.pem"
    content     = tls_private_key.studem_sshkey.private_key_pem
}
resource "aws_key_pair" "generated_key" {
    key_name    = "stud_SSHkey"
    public_key  = tls_private_key.studem_sshkey.public_key_openssh
}