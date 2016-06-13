#
# DO NOT DELETE THESE LINES!
#
# Your DNSimple email is:
#
#     sethvargo+terraform@gmail.com
#
# Your Identity is:
#
#     hashiconf-1ff1de774005f8da13f42943881c655f
#

variable "dnsimple_token" {}
variable "dnsimple_email" {}

provider "dnsimple" {
  token = "${var.dnsimple_token}"
  email = "${var.dnsimple_email}"
}

resource "dnsimple_record" "web" {
  domain = "terraform.rocks"
  type = "A"
  name = "frederik"
  ttl = 3600
  value = "${aws_instance.web.0.public_ip}"
}
