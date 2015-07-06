```
            ___        ______    _   _ _____   ____            _
           / \ \      / / ___|  | \ | | ____| |  _ \ __ _  ___| | _____ _ __
          / _ \ \ /\ / /\___ \  |  \| |  _|   | |_) / _` |/ __| |/ / _ \ '__|
         / ___ \ V  V /  ___) | | |\  | |___  |  __/ (_| | (__|   <  __/ |
        /_/   \_\_/\_/  |____/  |_| \_|_____| |_|   \__,_|\___|_|\_\___|_|

```

## Setup

* Git clone this project:
    `https://github.com/rosstimson/awsne-packer.git`
* Install [Packer](http://www.packer.io) on your local machine.  If you're on a
  Mac and use Homebrew then the easiest way is to use
  [Cask](http://caskroom.io):
    - `brew install caskroom/cask/brew-cask`
    - `brew cask install packer`

### AWS Credentials

AWS credentials needed should be stored in the following environment variables:

* `PACKER_AWS_ACCESS_KEY_ID`
* `PACKER_AWS_SECRET_ACCESS_KEY`

An example IAM policy for the Packer user is supplied:
`packer-iam-policy.example.json`

## Build AMI

Building an EC2 AMI is as simple as:

* `packer build awsne-packer.json`
* Grab a coffee.

## Authors

Ross Timson <ross@rosstimson.com>
