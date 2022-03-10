# RoR2DS-docker
Risk of Rain 2 Dedicated Server in docker

![Docker Image Size (tag)](https://img.shields.io/docker/image-size/puteulanus/ror2ds/latest)
![Docker Image Version (tag latest semver)](https://img.shields.io/docker/v/puteulanus/ror2ds/latest?label=server%20update%20time)
[![Build Status](https://app.travis-ci.com/puteulanus/RoR2DS-docker.svg?branch=master)](https://app.travis-ci.com/puteulanus/RoR2DS-docker)


```bash
docker run -d -v `pwd`/server.cfg:/Config/server.cfg --cap-add=SYS_PTRACE -p 27015:27015/udp puteulanus/ror2ds
```
