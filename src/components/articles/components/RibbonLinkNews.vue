<template>
      <mdb-container>
      <mdb-row class="d-flex justify-content-center">
        <h3 >Интересное на "МореМам"</h3>
      </mdb-row>

      <mdb-row>

      <mdb-col md="4" v-for="i in 5" :key="i"  style="width: 100%">
        <mdb-card narrow class="mb-5 z-depth-1-half" style="width: 22rem">
          <mdb-view hover cascade>
            <a href="#!">
              <mdb-card-image
                src="https://mdbootstrap.com/img/Photos/Lightbox/Thumbnail/img%20(147).jpg"
                alt="Card image cap"
              ></mdb-card-image>
              <mdb-mask flex-center waves overlay="white-slight"></mdb-mask>
            </a>
          </mdb-view>
          <mdb-card-body cascade>
            <h5 class="pink-text pb-2 pt-1 text-center">
              <mdb-icon icon="utensils" />Culinary
            </h5>
            <mdb-card-title class="text-center">
              <strong>Cheat day inspirations</strong>
            </mdb-card-title>
          </mdb-card-body>
        </mdb-card>
      </mdb-col>
    </mdb-row>
    </mdb-container>
 </template>
<script>
import {
  mdbCol,
  mdbCard,
  mdbCardImage,
  mdbCardBody,
  mdbCardTitle,
  mdbView,
  mdbMask,
  mdbIcon,
  mdbRow,
  mdbContainer,
} from '../../mdbvue';

export default {
  components: {
    mdbCol,
    mdbCard,
    mdbCardImage,
    mdbCardBody,
    mdbCardTitle,
    mdbView,
    mdbMask,
    mdbIcon,
    mdbRow,
    mdbContainer,
  },
};
</script>
