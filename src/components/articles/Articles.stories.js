import Articles from './Articles.vue';

 export default {
     title: 'Articles',
 };

export const asAComponent = () => ({
    components: {
        Articles,
    },
     template: '<Articles msg="test"/>',
});