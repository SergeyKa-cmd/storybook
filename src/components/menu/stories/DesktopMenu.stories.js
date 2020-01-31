import DesktopMenu from '../DesktopMenu.vue';

export default {
  title: 'DesktopMenu',
};

export const NoAuth = () => ({
  components: {
    DesktopMenu,
  },
  data() {
    return {
      items: [{
        id: 1,
        title: 'Элемент меню',
        url: '/',
      },
      {
        id: 2,
        title: 'Элемент меню 2',
        url: '/',
      }],
    };
  },
  template: '<DesktopMenu :items="items" :isAuth="false"/>',
});
export const Auth = () => ({
  components: {
    DesktopMenu,
  },
  data() {
    return {
      items: [{
        id: 1,
        title: 'Элемент меню',
        url: '/',
      },
      {
        id: 2,
        title: 'Элемент меню 2',
        url: '/',
      }],
    };
  },
  template: '<DesktopMenu :items="items" :isAuth="true" />',
});
