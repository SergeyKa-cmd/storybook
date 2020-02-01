## 0.1.0 (2020-01-31)

 -Manipulating with docker-compose-monitoring.yml file. Monitoring apps version dependencies issue

## 0.0.2 (2020-01-31)

- Trying to deploy monitoring and Storybook app on GCP instace (35.190.208.40)
- Gitlab docker registry implemented

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

