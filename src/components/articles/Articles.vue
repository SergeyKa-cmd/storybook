<template>
  <div>
    <!-- <div v-if="isMobile">
      <router-view></router-view>
    </div> -->
    <div >
      <h1>HELO WORLD</h1>
      <mdb-container>
        <mdb-breadcrumb v-if="breadcrumbItems !== null">
          <mdb-breadcrumb-item>
            <!-- <router-link to="/">Главная</router-link> -->
          </mdb-breadcrumb-item>
          <mdb-breadcrumb-item
            v-for="item in breadcrumbItems"
            :key="item.title"
            :active="item.url === ''"
          >
            <!-- <router-link :to="item.url"  v-if="item.url !== ''">{{item.title}}</router-link> -->
            <!-- <span v-else>{{item.title}}</span> -->
          </mdb-breadcrumb-item>
        </mdb-breadcrumb>
      </mdb-container>
      <!-- <router-view></router-view> -->

    </div>
  </div>
</template>

<script>
// import { mapMutations, mapState } from 'vuex';
import {
  mdbContainer,
  mdbBreadcrumb,
  mdbBreadcrumbItem,
} from '../mdbvue';

export default {
  components: {
    mdbContainer,
    mdbBreadcrumb,
    mdbBreadcrumbItem,
  },
  // methods: {
  //   ...mapMutations(['setNavigationTitle']),
  // },
  // created() {
  //   this.setNavigationTitle('Статьи');
  // },
  // computed: {
  //   ...mapState(['isMobile']),
  //   ...mapState('articlesModule', ['breadcrumbItems']),
  // },
};
</script>
