# A vagrant box for Java development

The following software will be installed in the box:

- git
- docker
- java8
- nodejs
- npm
- maven
- gradle
- firefox
- chromium
- vim

## Prerequisite


To have your own vimrc installed to the vagrant box, create a data folder, and put your own .vimrc file into the folder. And also you can copy your own ssh key file to vagrant box if you want to access the git repository you access outside.

```bash
mkdir data
cp ~/.vimrc data/
cp ~/.tern-project data/
cp ~/.ssh/id_rsa* data/
```

## Cassandra installation

I need to have cassandra installed in the box, but will use it from the host machine most of the time. So I need to run cassandra on the private ip address (i.e. 192.168.33.10, not localhost). And there are somethings need to be aware to achieve this:

- Update cassandra configuration to make sure it listens on the private ip address:

```yaml
    - listen_address: 192.168.33.10
    - rpc_address: 192.168.33.10
    - seed_provider:
        - class_name: org.apache.cassandra.locator.SimpleSeedProvider
          parameters:
              - seeds: "192.168.33.10
```

- Open ports used by cassandra

```bash
sudo ufw allow 8888
sudo ufw allow 7000
sudo ufw allow 7001
sudo ufw allow 7199
sudo ufw allow 9042
sudo ufw allow 9160
sudo ufw allow 61620
sudo ufw allow 61621
```

