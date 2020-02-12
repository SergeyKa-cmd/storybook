Порядок запуска:
<<<<<<< HEAD
<<<<<<< HEAD
2. Объявим PV gitlab-share:   gitlab-pv.yaml
=======
1. Объявим тип storage class: standard-pv.yaml
=======
>>>>>>> db80a438bc1df7f00190c7dc8a96889977ad11d9
2. Объявим PV gitlab-share:   gitlab-pv.yaml - Пропускаем шаг, если был выполнен 1.
>>>>>>> f19376e8538b8638bb1443e0cf755dbadaa32b5a
3. Объявим PVC gitlab-claim: gitlab-pvc.yaml
4. Разворачиваем gitlab-app с подмонитрованными PVC: gitlab-app.yaml
5. Создаем service gitlab NodePort: gitlab-app-service.yaml
6. Выпускаем в ingress nginx: ingress-gitlab.yaml
___________________________________________________
7. Разворачиваем storybook-app: storybook-app.yaml
8. Создаем service storybook NodePort: storybook-app-service.yaml
9. Выпускаем в ingress nginx: ingress-storybook.yaml
