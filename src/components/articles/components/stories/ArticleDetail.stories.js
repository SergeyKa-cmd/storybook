import ArticleDetail from '../ArticleDetail.vue';

export default {
    title: 'ArticleDetail',
};

export const asAComponent = () => ({
    components: {
        ArticleDetail,
    },
    template: '<ArticleDetail msg="test"/>',
});