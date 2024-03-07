
# spin up an nginx server on a 1CPU/1GB server with the SSH key
resource "digitalocean_droplet" "www-1" {
    image = "ubuntu-22-04-x64"
    name = "www-1"
    region = "nyc3"
    size = "s-1vcpu-1gb"
    ssh_keys = [
        data.digitalocean_ssh_key.do_example.id
    ]


    # add a connection from the new server
    # we will pass in the private key at run time
    connection {
        host = self.ipv4_address
        user = "root"
        type = "ssh"
        private_key = file(var.pvt_key) # create a file from the private key passed in
        timeout = "2m"
    }

    # run some initial set up to make sure everything is configured;
    # we will manage all other configuration through ansible
    provisioner "remote-exec" {
      inline = [
        "export PATH=$PATH:/usr/bin"
      ]
    }
}

# output the IP for ansible
output "nginx_ip_address" {
    value = digitalocean_droplet.www-1.ipv4_address
}