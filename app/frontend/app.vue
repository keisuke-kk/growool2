<template>
</template>

<script>
export default {
  data: function () {
    return {
      message: "Hello Vue!"
    }
  }
}

document.addEventListener('DOMContentLoaded',() => {
  Vue.component('fade-in1', {
    template: `
    <div>
      <transition name="fade">
        <slot v-if="visible"></slot>
      </transition>
    </div>`,
    data() {
      return {
        visible: false
      };
    },
    created() {
      window.addEventListener("load", this.handleScroll);
    },
    destroyed() {
      window.removeEventListener("load", this.handleScroll);
    },
    methods: {
     handleScroll() {
       if (!this.visible) {
         var top = this.$el.getBoundingClientRect().top;
         this.visible = top < window.innerHeight + 100;
       }
     } 
    }
  })

  Vue.component('fade-in2', {
    template: `
    <div>
      <transition name="fade">
        <slot v-if="visible"></slot>
      </transition>
    </div>`,
    data() {
      return {
        visible: false
      };
    },
    created() {
      window.addEventListener("scroll", this.handleScroll);
    },
    destroyed() {
      window.removeEventListener("scroll", this.handleScroll);
    },
    methods: {
     handleScroll() {
       if (!this.visible) {
         var top = this.$el.getBoundingClientRect().top;
         this.visible = top < window.innerHeight + 100;
       }
     } 
    }
  })

  var app = new Vue({
    el: '#app'
  })
})
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>

