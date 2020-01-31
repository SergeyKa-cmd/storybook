<template>
  <component :is="tag" :class="liClass">
    
    <a :class="className" @click.prevent="toggleCat">
      <div class="d-flex justify-content-between align-items-center">

      
      <i v-if="icon" :class="iconClass" />
      <img v-else-if="img" :src="src" width="32"  class="rounded-circle avatar z-depth-1-half"/>
      <span class="text-left flex-grow-1 title"> {{name}}</span>
      <i class="fas fa-rotate-icon rotate-icon" :class="rotateIconClass"/>
      </div>
    </a>
    <transition @before-enter="beforeEnter" @enter="enter" @before-leave="beforeLeave" @leave="leave">
      <div class="collapsible-body" v-show="toggle">
        <ul class="sub-menu">
          <slot></slot>
        </ul>
      </div>
    </transition>
  </component>
</template>

<script>
import classNames from 'classnames';
import waves from '../../../mixins/waves';

const SideNavCat = {
  name: 'SideNavCat',
  props: {
    tag: {
      type: String,
      default: "li"
    },
    name: {
      type: String
    },
    icon: {
      type: String
    },
    wrapperClass: {
      type: String
    },
    show: {
      type: Boolean,
      default: false
    },
    far: {
      type: Boolean,
      default: false
    },
    regular: {
      type: Boolean,
      default: false
    },
    fal: {
      type: Boolean,
      default: false
    },
    light: {
      type: Boolean,
      default: false
    },
    fab: {
      type: Boolean,
      default: false
    },
    brands: {
      type: Boolean,
      default: false
    },
    img: {
      type: Boolean,
      default: false
    },
    src: {
      type: String
    },
  },
  data() {
    return {
      toggle: this.show,
      height: 0
    };
  },
  computed: {
    className() {
      return classNames(
        'collapsible-header ripple-parent arrow-r'
      );
    },
    liClass() {
      return classNames(
        'menu-item',
        this.wrapperClass,
        this.toggle && 'active'
      );
    },
    iconClass() {
      return classNames(
        this.far || this.regular ? 'far' :
          this.fal || this.light ? 'fal' :
            this.fab || this.brands ? 'fab' : 'fas',
        'fa-' + this.icon
      );
    },
    rotateIconClass() {
      return classNames(
        'fas fa-angle-down rotate-icon'
      );
    }
  },
  created() {
    this.$parent.$on('toggleCat', catId => {
      if (catId === this._uid) {
        this.toggle = !this.toggle;
      } else {
        this.toggle = false;
      }
    });
  },
  methods: {
    toggleCat(e) {
      this.wave(e);
      this.$parent.$emit('toggleCat', this._uid);
    },
    beforeEnter(el) {
      el.style.height = '0';
    },
    enter(el) {
      el.style.height = el.scrollHeight + 'px';
    },
    beforeLeave(el) {
      el.style.height = el.scrollHeight + 'px';
    },
    leave(el) {
      el.style.height = '0';
    }
  },
  mixins: [waves]
};

export default SideNavCat;
export { SideNavCat as mdbSideNavCat };
</script>

<style scoped>
.collapsible-body {
  display: block;
  overflow: hidden;
  transition: height .3s;
}
.rotate-icon{
  position: static !important;
}
.title{
  padding-left: 1em;
}
</style>
