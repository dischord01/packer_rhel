## Usage

### Installing Packer

Download the latest packer from http://www.packer.io/downloads.html and unzip the appropriate directory.

If you're using Homebrew

```
$ brew tap homebrew/binary
$ brew install packer
```

### Get the SHA1 of the downloaded ISO

On macOS

```
openssl sha1 rhel-server-6.5-x86_64-dvd.iso	

..
SHA-256 Checksum: a51b90f3dd4585781293ea08adde60eeb9cfa94670943bd99e9c07f13a259539
```

### Edit template-iso.json with the `sha1` of the ISO. 

```
$ git clone https://github.com/dischord01/packer_rhel.git
$ cd packer_rhel
$ vim template-iso.json
```

### Running Packer

```
$ packer build template-iso.json
```

If you want to build only virtualbox.

```
$ packer build -only=virtualbox-iso template.json
```

Add the new .ovf box to Vagrant as `rhel.6.5`

```
$ vagrant box add <path/to/box.ovf> --name rhel.6.5
```