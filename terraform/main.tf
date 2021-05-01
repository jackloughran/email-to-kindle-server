variable "do_token" {}

terraform {
  required_providers {
    digitalocean = {
      version = "2.8.0"
      source  = "digitalocean/digitalocean"
    }
  }
}

provider "digitalocean" {
  token = var.do_token
}

resource "digitalocean_droplet" "email" {
  image  = "debian-10-x64"
  name   = "email"
  region = "nyc3"
  size   = "s-1vcpu-1gb"
}
