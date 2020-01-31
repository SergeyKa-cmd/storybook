import Comment from '../Comment.vue';

export default {
    title: 'Comment',
};

export const asAComponent = () => ({
    components: {
        Comment,
    },
    template: '<Comment msg="test"/>',
});