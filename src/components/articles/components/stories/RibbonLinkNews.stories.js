import RibbonLinkNews from '../RibbonLinkNews.vue';

export default {
    title: 'RibbonLinkNews',
};

export const asAComponent = () => ({
    components: {
        RibbonLinkNews,
    },
    template: '<RibbonLinkNews msg="test"/>',
});