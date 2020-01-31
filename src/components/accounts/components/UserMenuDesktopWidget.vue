<template>
  <mdb-dropdown tag="li" class="nav-item avatar">
    <mdb-dropdown-toggle tag="a" navLink color="indigo" slot="toggle" waves-fixed>
      <img :src="avatarUrl"
        width="35"
        class="img-fluid rounded-circle z-depth-0" />
        {{userName}}
    </mdb-dropdown-toggle>
    <mdb-dropdown-menu>
      <mdb-dropdown-item to="/">Настройки</mdb-dropdown-item>
      <mdb-dropdown-item @click.native="logoutUser">Выход</mdb-dropdown-item>
    </mdb-dropdown-menu>
  </mdb-dropdown>
</template>


<script>
import {
  mdbDropdown,
  mdbDropdownMenu,
  mdbDropdownToggle,
  mdbDropdownItem,
} from '../../mdbvue';

export default {
  components: {
    mdbDropdown,
    mdbDropdownMenu,
    mdbDropdownToggle,
    mdbDropdownItem,
  },
  props:{
    userName: String,
    avatarUrl: String
  }
};
</script>
