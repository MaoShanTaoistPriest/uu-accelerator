<template>
  <div class="header">
    <el-menu mode="horizontal" background-color="#24243a" text-color="#f5f5f5" active-text-color="#02d3c1"
      :default-active="$route.path" class="el-menu-demo" router>
      <el-row type="flex" class="row-bg" justify="center" width="1200px">
        <el-menu-item index="/"><img :src="`${imgUrl}img/header/logo.png`" alt=""></el-menu-item>
        <el-menu-item index="/index"><span>首页</span></el-menu-item>
        <el-menu-item index="/games"><span>热门游戏</span></el-menu-item>
        <el-menu-item index="/channel"><span>特惠充值</span></el-menu-item>
        <el-menu-item index="/box"><span>加速盒抢购</span></el-menu-item>
        <el-menu-item index="/contact"><span>联系我们</span></el-menu-item>
        <el-menu-item>
          <a href="http://uu.baike.163.com/" target="_blank">UU百科</a>
        </el-menu-item>
        <el-menu-item>
          <a href="//wangyiuujiasuqi.tmall.com/" target="_blank">天猫旗舰店</a>
        </el-menu-item>
        <el-menu-item v-for="(item,index) in img" :key="index">
          <img :src="`${imgUrl}${item.normal}`" @mouseenter="goIn($event,item.hover)"
            @mouseleave="goOut($event,item.normal)">
        </el-menu-item>
        <el-menu-item>
          <div style="width: 60px;"></div>
        </el-menu-item>
      </el-row>
    </el-menu>
  </div>
</template>
<script>
  export default {
    data() {
      return {
        imgUrl: this.$imgUrl,
        img: []
      }
    },
    created() {
      this.axios.get("/headerImg").then(result => {
        this.img = result.data.data;
        // console.log(this.img);
      })
    },
    methods: {
      goIn(e, hover) {
        e.target.src = this.imgUrl + hover;
      },
      goOut(e, normal) {
        e.target.src = this.imgUrl + normal;
      }
    }
  }
</script>
<style scoped>
  .header .el-menu-demo {
    min-width: 1280px;
    padding: 11px 0;
    border-bottom: 2px solid #02d3c1;
  }

  .header .el-menu-demo .el-menu-item {
    font-size: 16px;
  }

  .header .el-menu-demo .el-menu-item span:hover {
    color: #02d3c1;
  }

  .header .el-menu-demo .el-menu-item a {
    text-decoration: none;
    color: #f5f5f5;
  }

  .header .el-menu-demo .el-menu-item a:hover {
    color: #02d3c1;
  }


  .el-menu--horizontal>.el-menu-item.is-active {
    border-bottom: 0px;
  }
</style>