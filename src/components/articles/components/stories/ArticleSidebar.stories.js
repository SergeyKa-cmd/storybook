import ArticleSidebar from '../ArticleSidebar.vue';

export default {
    title: 'ArticleSidebar',
};

export const asAComponent = () => ({
    components: {
        ArticleSidebar,
    },
    template: '<ArticleSidebar msg="test"/>',
});