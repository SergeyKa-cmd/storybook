<template>
  <mdb-navbar color="indigo" dark position="top">
    <mdb-container>
      <mdb-navbar-brand to="/">
        <img src="/public/logo.svg" height="40" alt="Море мам" />
      </mdb-navbar-brand>
      <mdb-navbar-toggler>
        <mdb-navbar-nav>
          <mdb-nav-item
          v-for="item in items"
          :key="item.id"
          :to="item.url">
          {{item.title}}
          </mdb-nav-item>
        </mdb-navbar-nav>

      </mdb-navbar-toggler>

      <mdb-navbar-toggler>
        <mdb-navbar-nav right>
         <mdb-form-inline
                role="search"
                action="https://yandex.ru/search/site/"
                method="get"
                target="_self"
                accept-charset="utf-8"
              >
                <div class="form-group md-form mt-0 pt-1 ripple-parent" @click="wave">
                  <input type="hidden" name="searchid" value="2342584" />
                  <input type="hidden" name="l10n" value="ru" />
                  <input type="hidden" name="reqenc" value />
                  <mdb-input  type="text" name="text" placeholder="Поиск ..." />
                </div>
              </mdb-form-inline>
        </mdb-navbar-nav>
        <mdb-navbar-nav right>
          <UserMenuDesktopWidget v-if="isAuth" userName="D. Bob" avatarUrl="https://lorempixel.com/32/32/" />
          <LoginMenuDesktopWidget v-else/>
        </mdb-navbar-nav>
      </mdb-navbar-toggler>
    </mdb-container>
  </mdb-navbar>
</template>

<script>
import {
  mdbNavbar,
  mdbNavbarBrand,
  mdbNavItem,
  mdbNavbarToggler,
  mdbNavbarNav,
  mdbContainer,
  mdbFormInline, mdbInput, waves,
} from '../mdbvue';

import LoginMenuDesktopWidget from '../accounts/components/LoginMenuDesktopWidget.vue';

import UserMenuDesktopWidget from '../accounts/components/UserMenuDesktopWidget.vue';

export default {
  props: {
    items: Array,
    isAuth: Boolean
  },
  components: {
    mdbNavbar,
    mdbNavbarBrand,
    mdbNavItem,
    mdbNavbarToggler,
    mdbNavbarNav,
    mdbContainer,
    LoginMenuDesktopWidget,
    UserMenuDesktopWidget,
    mdbFormInline,
    mdbInput,
  },
  mixins: [waves],
};
</script>
