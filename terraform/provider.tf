# tell TF to use the DO provider
terraform {
    required_providers {
        digitalocean = {
            source = "digitalocean/digitalocean"
            version = "~> 2.0"
        }
    }
}

# store the variables from external
variable "do_token" {}
variable "pvt_key" {}

provider "digitalocean" {
    token = var.do_token # initialize with the token
}

# make sure you provide the ssh key in the DO GUI and put the name here
# for me, it's do_example; remember, it cannot be password protected!
data "digitalocean_ssh_key" "do_example" {
    name = "do_example"
}