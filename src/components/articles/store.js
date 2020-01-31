import Vue from 'vue';

export default {
  namespaced: true,
  state: {
    breadcrumbItems: null,
  },
  mutations: {
    setBreadcrumbItems(state, data) {
      Vue.set(state, 'breadcrumbItems', data);
    },

  },

};
