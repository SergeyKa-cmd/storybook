## 0.1.1 (2020-02-06)

 - Backup crucial docker images to Google Container Registry:
   [Steps to create](https://stackoverflow.com/questions/42697026/install-google-cloud-components-error-from-gcloud-command):
    + Remove the existing installation using
    
    $ sudo apt-get remove google-cloud-sdk
    + Navigate to https://cloud.google.com/sdk/docs/quickstart-linux and follow the steps to download the correct tar.gz package for your system
    + Navigate to the download directory and unzip the archive using

    $ tar -zxf google-cloud-sdk-*
    + Install the SDK using

    $ ./google-cloud-sdk/install.sh
    + Closing your current terminal session and opening a new one
    + Run $ gcloud init and re-enable connection to current project ID
    + Run $ gcloud components install docker-credential-gcr
    + Push to Google COntainer registry:
    
    $ docker push gcr.io/skyfall-267015/storybook-app
    + All related official [Google Container Registry docs](https://cloud.google.com/container-registry/docs/pushing-and-pulling?hl=ru)
   
## 0.1.0 (2020-01-31)

 - Manipulating with docker-compose-monitoring.yml file. Monitoring apps version dependencies issue

## 0.0.3 (2020-01-31)

- Trying to deploy monitoring and Storybook app on GCP instace (35.190.208.40)
- Gitlab docker registry implemented

## 0.0.2 (2020-01-31)

 1.  Gitlab Runner deployment:
На сервере, где работает Gitlab CI выполните команду:

docker run -d --name gitlab-runner --restart always \
-v /srv/gitlab-runner/config:/etc/gitlab-runner \
-v /var/run/docker.sock:/var/run/docker.sock \
gitlab/gitlab-runner:latest

После запуска Runner нужно зарегистрировать, это можно сделать командой:

```sserdj7@gitlab-storybook:~$ sudo docker exec -it gitlab-runner gitlab-runner register --run-untagged --locked=false
Runtime platform                                    arch=amd64 os=linux pid=13 revision=003fe500 version=12.7.1
Running in system-mode.                            
                                                   
Please enter the gitlab-ci coordinator URL (e.g. https://gitlab.com/):
https://gitlab.moremam.ru
Please enter the gitlab-ci token for this runner:
BpeRXAcBPGbNdhxzqij2
Please enter the gitlab-ci description for this runner:
[2a4ffeeee8af]: storybook-runner
Please enter the gitlab-ci tags for this runner (comma separated):
linux,xenial,ubuntu,docker
Registering runner... succeeded                     runner=BpeRXAcB
Please enter the executor: ssh, virtualbox, docker-ssh+machine, kubernetes, custom, docker-ssh, shell, docker, parallels, docker+machine:
docker
Please enter the default Docker image (e.g. ruby:2.6):
alpine:latest
Runner registered successfully. Feel free to start it, but if it's running already the config should be automatically reloaded! 
sserdj7@gitlab-storybook:~$ C
```

2.  Creating Gitlab registry using this article:

 https://dev.to/zaptic/how-to-gitlab-and-docker-registry-2moh

https://docs.gitlab.com/ce/administration/packages/container_registry.html

6.  CI/CD Pipeline prepare - **In progress**

7.  Нужно написать тесты 

 
## 0.0.1 (2020-01-30)

- Created current Storybook repository and added changelog.md

- ----------------------------------------Проектный минимум-----------------------------
1.  Создать инстанс Gitlab - **Готово**
2.  Создать инстанс приложения Storybook
3.  Создать инстанс Мониторинга (Prometheus+Grafana+Alertmanager)monitoring-storybook: **Готово. В тестовом режиме  по адресу http://35.190.208.40:3000**

``docker-machine create --driver google \
--google-machine-image https://www.googleapis.com/compute/v1/projects/ubuntu-os-cloud/global/images/family/ubuntu-1604-lts \
--google-machine-type n1-standard-1 \
--google-zone europe-west1-b \
monitoring-storybook``
    
И создаем firewall правила в GCP:
 + $ gcloud compute firewall-rules create prometheus-default --allow tcp:9090

 + $ gcloud compute firewall-rules create post-default --allow tcp:5000

 + $ gcloud compute firewall-rules create grafana-default --allow tcp:3000

4.  Создать экспортеры для приложения Storybook в Prometheus
5.  Настроить Alertmanager для отправки собщений (ChatOps) в Telegram, Slack, mail итд.
6.  Создать инстанс для сбора логов (EFK, ELK, что-то еще)
7.  Подготовить развертывание инфраструктуры с помощью Terraform, Ansible, Docker-compose

------------------------------Опциональные фичи---------------------------

7.  Использование Terraform load balancer для балансировки нагрузки
8.  Развертывание в кластере K8s
9.  Система резервного копирования.

