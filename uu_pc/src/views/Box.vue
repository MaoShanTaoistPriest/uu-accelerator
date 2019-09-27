<template>
  <div>
    <my-header></my-header>
    <!-- 顶部导航栏，粘性头部效果 -->
    <el-row type="flex" class="top">
      <el-col :offset="4" :span="3" class="top_first">
        <span>网易UU加速盒</span>
        <div :style="{backgroundImage:'url(' + imgUrl +'img/box/icon_tag.png'+ ')'}">正式版</div>
      </el-col>
      <el-col :offset="8" :span="1">
        <a href="#first" @click="checkTop(1)" :class="topA==1?'active':''">产品介绍</a>
      </el-col>
      <el-col :span="1">
        <a href="javascript:;" @click="checkTop(2)" :class="topA==2?'active':''">技术规格</a>
      </el-col>
      <el-col :span="1">
        <a href="http://uu.baike.163.com/app/search?enc=utf8&amp;qs=加速盒" title="常见问题" target="_blank">常见问题</a>
      </el-col>
      <el-col :span="2">
        <div class="buy">
          <a href="//mall.uu.163.com/goods/5" class="ljgm" target="_blank">立即购买</a>
        </div>
      </el-col>
    </el-row>
    <!-- 第一个板块，产品介绍 -->
    <el-row id="first" class="one" :style="{backgroundImage:'url(' + imgUrl +'img/box/pic_index.jpg'+ ')'}">
      <el-col>
        <h2>网易UU加速盒</h2>
      </el-col>
      <el-col>
        <p>为三大主机
          <span>PS4</span>
          <span>Switch</span>
          <span>Xbox One</span>
          <br><br>提供专业、稳定、快速的联网体验
        </p>
      </el-col>
    </el-row>
    <!-- 第二个模块，套餐价格 -->
    <div class="two">
      <el-row class="twoTitle">
        <el-col>
          <p>套餐价格</p>
        </el-col>
        <el-col>
          <span>加速盒需配合UU会员使用，暂不支持PC游戏、手机游戏加速</span>
        </el-col>
        <el-col>
          <el-row class="twoPrice" type="flex">
            <el-col v-for="(item,index) in packageImg" :key="index">
              <a href="//mall.uu.163.com/goods/5" target="_blank"
                :style="{backgroundImage:'url(' + imgUrl +item.img+ ')'}"></a>
            </el-col>
          </el-row>
        </el-col>
      </el-row>
    </div>
    <!-- 第三个模块，即插即用 -->
    <div class="three">
      <el-row class="threePlug" :style="{backgroundImage:'url(' + imgUrl +'img/box/pic_light_1.png'+ ')'}">
        <el-col>
          <h2>即插即用 适配任何路由器</h2>
        </el-col>
        <el-col>
          <p>无需开启电脑，无需对路由器进行升级，即插即用</p>
        </el-col>
        <el-col>
          <p>配合主机加速APP，一站式开启联机游戏之旅</p>
        </el-col>
        <el-col class="plugTv" :style="{backgroundImage:'url(' + imgUrl +'img/box/pic_tv.png'+ ')'}">
        </el-col>
      </el-row>
      <div class="plugGames" :style="{backgroundImage:'url(' + imgUrl +'img/box/pic_playgame.png'+ ')'}">
      </div>
    </div>
    <!-- 第四个模块，NAT类型优化 -->
    <div class="four">
      <div class="NATGames" :style="{backgroundImage:'url(' + imgUrl +'img/box/pic_games.png'+ ')'}">
      </div>
      <el-row class="fourBox">
        <el-col>
          <h2>NAT类型优化</h2>
        </el-col>
        <el-col :style="{backgroundImage:'url(' + imgUrl +'img/box/pic_results.png'+ ')'}" class="fourResults">
        </el-col>
        <el-col :style="{backgroundImage:'url(' + imgUrl +'img/box/pic_box_portrait.png'+ ')'}" class="fourPortrait">
        </el-col>
      </el-row>
    </div>
    <!-- 第五个模块，双端会员 -->
    <div class="five">
      <el-row>
        <el-col>
          <h2>一个账户 双端会员</h2>
        </el-col>
        <el-col :style="{backgroundImage:'url(' + imgUrl +'img/box/pic_user.png'+ ')'}" class="user">
        </el-col>
        <el-col :style="{backgroundImage:'url(' + imgUrl +'img/box/pic_light_2.png'+ ')'}" class="light">
        </el-col>
        <el-col :style="{backgroundImage:'url(' + imgUrl +'img/box/pic_pc.png'+ ')'}" class="pc" :span="5" :offset="6">
        </el-col>
        <el-col :style="{backgroundImage:'url(' + imgUrl +'img/box/pic_box_landscape.png'+ ')'}" class="box" :span="5"
          :offset="2">
        </el-col>
        <div class="fiveTxt">
          <div class="line"></div>
          <p>PC端高级会员<span>支持1台主机加速</span></p>
          <p class="ts">需使用【UU PC客户端】进行游戏加速</p>
        </div>
        <div class="fiveTxt txt1">
          <div class="line"></div>
          <p>主机端会员<span>支持2台主机加速</span></p>
          <p class="ts">需使用【UU加速盒】进行游戏加速</p>
        </div>
      </el-row>
    </div>
    <div class="six">
      <el-row>
        <el-col>
          <h2>大道至简 匠心智造</h2>
        </el-col>
        <el-col>
          <p>一体化设计，简约小巧</p>
        </el-col>
      </el-row>
    </div>
    <my-footer></my-footer>
  </div>
</template>
<script>
  export default {
    data() {
      return {
        imgUrl: this.$imgUrl,
        topA: 1,
        packageImg: [],
      }
    },
    methods: {
      checkTop(num) {
        this.topA = num;
      }
    },
    created() {
      this.axios.get("boxPackage").then(result => {
        this.packageImg = result.data.data;
        // console.log( this.packageImg);
      })
    },
  }
</script>
<style scoped>
  .top {
    width: 1920px;
    background-color: #000;
    position: sticky;
    top: 0;
    z-index: 10;
  }

  .top .top_first>span {
    text-decoration: none;
    font-size: 18px;
    color: #fff;
    line-height: 64px;
    margin: 0 0 0 20px;
  }

  .top .top_first>div {
    display: inline-block;
    width: 52px;
    background-size: 52px 20px;
    font-size: 12px;
    line-height: 20px;
    color: #fff;
    margin: 0 0 0 10px;
  }

  .top a {
    text-decoration: none;
    font-size: 14px;
    color: #fff;
    line-height: 64px;
    margin: 0 0 0 0px;
  }

  .top a:hover,
  .top a.active {
    color: #02d3c0;
  }

  .top .buy {
    background-color: #02d3c0;
    border-radius: 16px;
    height: 32px;
    width: 112px;
    margin: 18px 0 0 0;
  }

  .top .buy a {
    font-size: 14px;
    font-weight: 700;
    color: #fff;
    display: inline-block;
    margin: -16px 0 0 0;
    letter-spacing: 2px;
  }

  .one {
    width: 1920px;
    height: 650px;
    background-size: 100% 650px;
  }

  .one h2 {
    float: left;
    font-size: 48px;
    font-weight: 700;
    color: #000;
    margin: 260px 0 0 360px;
  }

  .one p {
    float: left;
    font-size: 18px;
    color: #000;
    margin: 50px 0 0 360px;
    text-align: left;
  }

  .one p span {
    display: inline-block;
    background-color: #2b2b2b;
    border-radius: 20px;
    color: #00dcc8;
    padding: 4px 8px;
    margin: 0 4px;
  }

  .two {
    width: 1920px;
    height: 800px;
    background-color: #1f2429;
  }

  .two .twoTitle {
    width: 1440px;
    height: 800px;
    margin: 0 auto;
  }

  .two .twoTitle p {
    font-size: 38px;
    color: #fff;
    line-height: 50px;
    letter-spacing: 2px;
    margin: 150px 0 0 0;
  }

  .two .twoTitle span {
    font-size: 12px;
    color: #818b96;
    line-height: 16px;
    letter-spacing: 1px;
    display: inline-block;
    margin: 20px 0 0 0;
  }

  .two .twoPrice {
    /* background-color: #fff; */
    height: 360px;
    width: 1072px;
    margin: 100px auto 0;
  }

  .two .twoPrice a {
    display: inline-block;
    width: 240px;
    height: 360px;
    background-size: 240px 360px;
    transition: all .5s;
  }

  .two .twoPrice a:hover {
    transform: scale(1.05);
  }

  .three {
    width: 1920px;
    background-color: #1f2429;
  }

  .three .threePlug {
    width: 1490px;
    height: 737px;
    margin: 0 auto;
    background-size: 100% 100%;
  }

  .three .threePlug h2 {
    font-size: 38px;
    line-height: 50px;
    color: #fff;
    letter-spacing: 2px;
    margin: 80px 0 20px 0;
  }

  .three .threePlug p {
    font-size: 15px;
    line-height: 28px;
    color: #fff;
    letter-spacing: 1px;
    margin: 0;
  }

  .three .threePlug .plugTv {
    width: 494px;
    height: 291px;
    margin: 80px 0 0 500px;
    background-size: 100% 100%;
  }

  .three .threePlug .plugTv {
    width: 494px;
    height: 291px;
    margin: 80px 0 0 500px;
    background-size: 100% 100%;
  }

  .three .plugGames {
    width: 1920px;
    height: 500px;
    background-size: 1920px 500px;
  }

  .four {
    width: 1920px;
    background-color: #1f2429;
  }

  .four .NATGames {
    width: 1920px;
    height: 333px;
    background-size: 100%;
  }

  .four .fourBox {
    width: 1440px;
    margin: 0 auto;
  }

  .four .fourBox h2 {
    font-size: 38px;
    line-height: 50px;
    color: #fff;
    letter-spacing: 2px;
  }

  .four .fourBox .fourResults {
    width: 370px;
    height: 86px;
    background: no-repeat;
    background-size: 100%;
    margin: 9px 0 0 535px;
  }

  .four .fourBox .fourPortrait {
    width: 546px;
    height: 244px;
    background-size: 100%;
    margin: 80px 0 0 447px;
  }

  .five {
    width: 1920px;
    height: 800px;
    background-color: #1f2429;
  }

  .five h2 {
    font-size: 38px;
    line-height: 80px;
    color: #fff;
    letter-spacing: 2px;
    margin: 120px 0 0 0;
    font-weight: 400;
  }

  .five .user {
    width: 80px;
    height: 80px;
    background-size: 100%;
    margin: 40px 0 0 920px;
  }

  .five .light {
    width: 528px;
    height: 180px;
    background-size: 100%;
    margin: -40px 0 0 696px;
  }

  .five .pc {
    width: 343px;
    height: 268px;
    background-size: 100%;
    margin-top: -70px;
  }

  .five .box {
    width: 526px;
    height: 113px;
    background-size: 100%;
    margin: -10px 0 0 130px;
  }

  .five .fiveTxt {
    float: left;
    margin: 160px 0 0 -850px;
  }

  .five .fiveTxt .line {
    width: 48px;
    height: 6px;
    background-color: #00dcc8;
  }

  .five .fiveTxt p {
    font-size: 18px;
    line-height: 28px;
    color: #fff;
    text-align: left;
    margin: 8px 0 0 0;
  }

  .five .fiveTxt p span {
    /* display: inline-block; */
    background-image: linear-gradient(215deg, #05c9eb 0, #16dfcd 100%);
    border-radius: 1px 12px;
    font-size: 14px;
    color: #111317;
    padding: 0 8px;
    margin: 0 0 0 10px;
    font-weight: 700;
    line-height: 28px;
    text-shadow: 0 1px 1px rgba(0, 0, 0, .1);
  }

  .five .fiveTxt .ts {
    font-size: 16px;
    color: rgba(255, 255, 255, .6);
    line-height: 28px;
    margin: 5px 0 0 0;
  }

  .five .fiveTxt.txt1 {
    float: left;
    margin: 160px 0 0 -400px;
  }

  .six {
    width: 1920px;
    background-color: #1f2429;
  }

  .six h2 {
    font-size: 38px;
    line-height: 80px;
    color: #fff;
    letter-spacing: 2px;
    margin: 120px 0 0 0;
    font-weight: 400;
  }

  .six p {
    color: #e7e7e7;
    font-size: 16px;
    line-height: 31px;
    letter-spacing: 1px;
    margin: 0 0 0 0;
  }
</style>