# RoR2DS-docker
Risk of Rain 2 Dedicated Server in docker

```bash
docker run -d -v `pwd`/server.cfg:/Config/server.cfg --cap-add=SYS_PTRACE -p 27015:27015/udp puteulanus/ror2ds
```
