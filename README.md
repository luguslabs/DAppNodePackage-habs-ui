# DAppNode Package Archipel UI
Archipel UI package for DAppNode 

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)
[![Website archipel.id](https://img.shields.io/badge/Website-archipel.id-brightgreen.svg)](https://archipel.id/)
[![Documentation Readme](https://img.shields.io/badge/Documentation-Wiki-brightgreen.svg)](https://github.com/luguslabs/archipel)
[![Twitter Follow](https://img.shields.io/twitter/follow/espadrine.svg?style=social&label=Follow)](https://twitter.com/luguslabs)

Dappnode package responsible for providing the Archipel UI service.

Actually based on version [v1.0.0](https://github.com/luguslabs/archipel/releases/tag/v1.0.0) of [Archipel](https://github.com/luguslabs/archipel)

It is an AragonApp whose repo is deployed at this address: [0x9f85ae5aefe4a3eff39d9a44212aae21dd15079a ](https://etherscan.io/address/0x9f85ae5aefe4a3eff39d9a44212aae21dd15079a) and whose ENS address is: [archipel-ui.public.dappnode.eth](https://etherscan.io/enslookup?q=archipel-ui.public.dappnode.eth])

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

- git

  Install [git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git) commandline tool.

- docker

  Install [docker](https://docs.docker.com/engine/installation). The community edition (docker-ce) will work. In Linux make sure you grant permissions to the current user to use docker by adding current user to docker group, `sudo usermod -aG docker $USER`. Once you update the users group, exit from the current terminal and open a new one to make effect.

- docker-compose

  Install [docker-compose](https://docs.docker.com/compose/install)

**Note**: Make sure you can run `git`, `docker ps`, `docker-compose` without any issue and without sudo command.

### Building

```
$ git clone https://github.com/luguslabs/DAppNodePackage-archipel-ui
```

```
$ docker-compose build
or
$ docker build --rm -f build/Dockerfile -t dnp_archipel-ui:dev build
```

## Running

### Start

```
$ docker volume create --name=archipelpublicdappnodeeth_config
$ docker-compose up -d
```

### Stop

```
$ docker-compose down
```

### Status

```
$ docker-compose ps
```

### Logs

```
$ docker-compose logs -f
```

**Note**:
There is a time drift issue on Docker for Mac, to solve it try running [Fixing Time drift issue on Docker for Mac](https://blog.shameerc.com/2017/03/quick-tip-fixing-time-drift-issue-on-docker-for-mac):

```
$ docker run --rm --privileged alpine hwclock -s
```

## Generating a tar.xz image

[xz](https://tukaani.org/xz/) is required

```
$ docker save dnp_archipel:dev | xz -e9vT0 > dnp_archipel-ui_dev.tar.xz
```

You can download the latest tar.xz version from here [releases](https://github.com/luguslabs/archipel/releases).

### Loading a Docker image

```
$docker load -i dnp_archipel-ui_dev.tar.xz
```

## Contributing

Please read [CONTRIBUTING.md](TBD) for details on our code of conduct, and the process for submitting pull requests to us.

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/luguslabs/archipel/tags).

## Authors

- **Vladimir Ostapenco** - _Initial work_ - [vladostp](https://github.com/vladostp)
- **Francois Branciard** - _Initial work_ - [branciard](https://github.com/branciard)

See also the list of [contributors](https://github.com/luguslabs/archipel/contributors) who participated in this project.

## License

This project is licensed under Apache 2 - see the [LICENSE](LICENSE) file for details

## References

[git](https://git-scm.com/)

[docker](https://www.docker.com/)

[docker-compose](https://docs.docker.com/compose/)

[DappNode](https://www.dappnode.io/)


## Acknowledgements
<p align="center">
  <img src=./web3_foundation_grants_badge.svg width = 400>
</p>

The bootstrap development of Archipel is financed by [WEB3 Foundation](https://web3.foundation/)'s grant program [Wave4](https://medium.com/web3foundation/wrap-up-for-winter-with-our-wave-four-grant-recipients-52c27b831a6e). Thanks a lot for support.


