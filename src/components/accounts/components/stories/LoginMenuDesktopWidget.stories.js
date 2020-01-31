import LoginMenuDesktopWidget from '../LoginMenuDesktopWidget.vue';

export default {
  title: 'LoginMenuDesktopWidget',
};

export const regular = () => ({
  components: {
    LoginMenuDesktopWidget,
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
  template: '<LoginMenuDesktopWidget :items="items"/>',
});
