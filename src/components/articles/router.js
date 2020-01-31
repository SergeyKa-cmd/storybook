export default {

  path: '/articles',
  component: () => import('./Articles.vue'),
  children: [
    {
      // при совпадении пути с шаблоном /user/:id/profile
      // в <router-view> компонента User будет показан UserProfile
      path: ':id', // artcles/id
      name: 'articleDetail',
      component: () => import('./components/ArticleDetail.vue'),
    },
    {
      // при совпадении пути с шаблоном /user/:id/profile
      // в <router-view> компонента User будет показан UserProfile
      path: '',
      name: 'articlesList',
      component: () => import('./components/ArticlesList.vue'),
    },
  ],
};
