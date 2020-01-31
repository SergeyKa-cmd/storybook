<template>
  <div>
    <mdb-container>
      <mdb-btn
        :color="best?'default':''"
        :outline="!best?'default':''"
        @click="showBest"
      >
        Лучшие
      </mdb-btn>

      <mdb-btn
        :outline="!best?'':'default'"
        :color="!best?'default':''"
        @click="showAll"
      >
        Все
      </mdb-btn>
       <mdb-select v-model="basicOptions" color="default" search searchPlaceholder="поиск..."/>
      <ArticlesListItem v-for="item in 2" :key="item" />
    </mdb-container>
  </div>
</template>

<script>
//import { mapState, mapMutations } from 'vuex';
import ArticlesListItem from './ArticleListItem.vue';
import { mdbContainer, mdbBtn, mdbSelect } from '../../mdbvue';

export default {
  components: {
    mdbContainer,
    mdbSelect,
    ArticlesListItem,
    mdbBtn,
  },
  data() {
    return {
      best: true,
      basicOptions: [
        {
          text: 'Категории',
          value: null,
          disabled: true,
          selected: true,
        },
        { text: 'Все', value: 'all', selected: true },
        { text: 'Option nr 2', value: 'Option 2' },
        { text: 'Option nr 3', value: 'Option 3' },
      ],
    };
  },
  computed: {
   // ...mapState(['isMobile']),
  },
  methods: {
   // ...mapMutations('articlesModule', ['setBreadcrumbItems']),
    showBest() {
      this.best = true;
    },
    showAll() {
      this.best = false;
    },
  },
  created() {
   // this.setBreadcrumbItems([{ url: '', title: 'Статьи' }]);
  },
};
</script>
