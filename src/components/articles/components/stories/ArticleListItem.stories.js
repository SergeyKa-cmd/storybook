import ArticleListItem from '../ArticleListItem.vue';

export default {
    title: 'ArticleListItem',
};

export const asAComponent = () => ({ 
    components: {
        ArticleListItem,
    },
    template: '<ArticleListItem />',
});