<template>
<div class = "mt-5">
<h3>Категории</h3>
    <mdb-list-group>
    <mdb-list-group-item :active="true">
      Cras justo odio<mdb-badge color="primary" pill>14</mdb-badge>
    </mdb-list-group-item>
    <mdb-list-group-item>Dapibus ac facilisis in<mdb-badge color="primary" pill>2</mdb-badge>
    </mdb-list-group-item>
    <mdb-list-group-item>Morbi leo risus<mdb-badge color="primary" pill>1</mdb-badge>
    </mdb-list-group-item>
  </mdb-list-group>
</div>
</template>
<script>
import { mdbListGroup, mdbListGroupItem, mdbBadge } from '../../mdbvue';

export default {
  components: {
    mdbListGroup,
    mdbListGroupItem,
    mdbBadge,
  },
};
</script>
