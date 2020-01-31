<template>

    <div>


        <router-link
          class="btn btn-primary btn-sm ripple-parent login-menu-link"
          to="/"
          >
          <mdb-icon icon="sign-in-alt" /> Вход
        </router-link>

        <router-link
          class="btn btn-info btn-sm ripple-parent login-menu-link"
          to="/"
          >
          <mdb-icon icon="user-plus" /> Регистрация
        </router-link>
   </div>
</template>

<script>
import { mdbIcon } from '../../mdbvue';


export default {
  components: {
    mdbIcon,
  },

};
</script>
