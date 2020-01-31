import ArticlesList from '../ArticlesList.vue';

export default {
    title: 'ArticlesList',
};

export const asAComponent = () => ({
    components: {
        ArticlesList, 
    },
    template: '<ArticlesList msg="test"/>',
});