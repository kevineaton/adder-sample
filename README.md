# adder-sample
This is a demonstration repo I use when teaching SCM, Jenkins, and other topics. It is intentionally simple.

Build with
`go build`

Test with
`go test ./...`

## CI/CD

I incorporate this into both Jenkins and GHA for purposes of demonstration. Since it is a public repo, I only allow GHA on merge to main.

## Terraform

In the `./terraform` folder, I have the basics of the TF commands needed to spin up a quick simple server for demonstration purposes. Make sure you get your own PAT and SSH key for Digital Ocean.

You can use my referral link for some free credits (not sponsored, and not required for the course):

[![DigitalOcean Referral Badge](https://web-platforms.sfo2.cdn.digitaloceanspaces.com/WWW/Badge%201.svg)](https://www.digitalocean.com/?refcode=d411ee18d06b&utm_campaign=Referral_Invite&utm_medium=Referral_Program&utm_source=badge)