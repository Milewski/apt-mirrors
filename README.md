## Usage

Grab this to your server with [`curl`](raw/master/ubuntu.sh), [`wget`](raw/master/ubuntu.sh) or [`copy and paste`](raw/master/ubuntu.sh). give it executable permission with `chmod +x ubuntu.sh` and run it `./ubuntu.sh`

## Troubleshooting

If you ever get this error when running `apt-get update`

> The following signatures couldn't be verified because the public key is not available: NO_PUBKEY 40986EAA43XD05B5 NO_PUBKEY 8B4DE6XCCAB2QFE2

It can be fixed by requesting the respective public keys like:

```
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 40986EAA43XD05B5
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 8B4DE6XCCAB2QFE2
```
