import HelloWorld from './HelloWorld.vue';

export default {
  title: 'HelloWorld',
};

export const asAComponent = () => ({
  components: {
    HelloWorld,
  },
  template: '<hello-world msg="test"/>',
});
