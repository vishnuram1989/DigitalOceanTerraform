provider "digitalocean" {
    token = "${var.do_token}"
}

resource "digitalocean_droplet" "droplet-1" {
    name = "${var.droplet_name}"
    size = "s-1vcpu-2gb"
    monitoring = "${var.enable_monitoring}"
    private_networking = "${var.enable_private_networking}"
    region = "${var.region}"
    image = "${var.image_name}"
}
