import UserMenuDesktopWidget from '../UserMenuDesktopWidget.vue';

export default {
  title: 'UserMenuDesktopWidget',
};

export const regular = () => ({
  components: {
    UserMenuDesktopWidget,
  },
  data() {
    return {
      userName: 'D. Bob',
    };
  },
  template: '<UserMenuDesktopWidget :userName="userName" avatarUrl="https://lorempixel.com/32/32/"/>',
});
