<template>
  <div>
    <el-menu mode="horizontal" background-color="#24243a" class="el-menu-demo">
      <el-row type="flex" class="row-bg" justify="center" width="1200px">
        <el-menu-item v-for="(item,index) in img" :key="index">
          <img :src="`${imgUrl}${item.normal}`" @mouseenter="goIn($event,item.hover)"
            @mouseleave="goOut($event,item.normal)">
        </el-menu-item>
      </el-row>
      <div class="bottom">
        <div class="bottomText">
          <span class="bottomLeft">
            <a href="http://www.163.com" target="_blank">
              <img :src="`${imgUrl}/img/footer/wylogo.png`">
            </a>
            <a href="http://game.163.com" target="_blank">
              <img :src="`${imgUrl}/img/footer/wygame.png`">
            </a>
          </span>
          <div class="bottomRight">
            <span class="bottomRightTop">
              <a href="http://gb.corp.163.com/gb/about/overview.html" target="_blank">公司简介</a>&nbsp;-&nbsp;
              <a href="http://help.163.com/" target="_blank">客户服务</a>&nbsp;-&nbsp;
              <a href="http://gb.corp.163.com/gb/legal.html" target="_blank">相关法律</a>&nbsp;-&nbsp;
              <a href="http://game.163.com/about/" target="_blank">网易游戏</a>&nbsp;-&nbsp;
              <a href="http://game.163.com/contact/" target="_blank">联系我们</a>&nbsp;-&nbsp;
              <a href="http://game.163.com/contact/business.html" target="_blank">商务合作</a>&nbsp;-&nbsp;
              <a href="http://hr.game.163.com/index.html" target="_blank">加入我们</a>
            </span><br><br>
            <span class="bottomRightBottom">
              <span style="float: left;">网易公司版权所有 ©1997-2019</span>
              <a class="nie-cn-reportcenter" href="http://www.cogcpa.org" target="_blank">中国网络游戏版权保护联盟举报中心</a>
            </span>
          </div>
        </div>
      </div>
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
      this.axios.get("/footerImg").then(result => {
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
  .bottom {
    width: 100%;
    height: 133px;
  }

  .bottomText {
    width: 865px;
    height: 73px;
    margin: 30px auto 0;
  }

  .bottomLeft {
    display: inline-block;
    height: 31px;
    margin: -30px 50px 0 0;
  }

  .bottomRight {
    display: inline-block;
    height: 50px;
    /* margin-top: 30px; */
  }

  .bottomRight {
    color: aliceblue;
  }

  .bottomRight a {
    text-decoration: none;
    color: aliceblue;
  }

  .bottomRight a:hover {
    color: #02d3c1;
  }
</style>