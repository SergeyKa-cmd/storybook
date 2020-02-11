Порядок запуска:
1. Объявим тип storage class: standard-pv.yaml
2. Объявим PV gitlab-share:   gitlab-pv.yaml - Пропускаем шаг, если был выполнен 1.
3. Объявим PVC gitlab-claim: gitlab-pvc.yaml
4. Разворачиваем gitlab-app с подмонитрованными PVC: gitlab-app.yaml
5. Создаем service gitlab NodePort: gitlab-app-service.yaml
6. Выпускаем в ingress nginx: ingress-gitlab.yaml
___________________________________________________
7. Разворачиваем storybook-app: storybook-app.yaml
8. Создаем service storybook NodePort: storybook-app-service.yaml
9. Выпускаем в ingress nginx: ingress-storybook.yaml
