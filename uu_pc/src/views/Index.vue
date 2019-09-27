<template>
  <div>
    <my-header></my-header>
    <!-- 首页第一个轮播图 -->
    <el-carousel trigger="click" height="889px" style="min-width: 1280px;" class="Carousel" arrow="always"
      :interval="5000">
      <!-- 第一个视频轮播 -->
      <el-carousel-item v-for="(item,index) in topImg1" :key="11">
        <video :src="`${imgUrl}${item.big}`" autoplay="autoplay" loop autobuffer muted>
        </video>
        <div class="bannerTopContent1">
          <el-row>
            <el-col :offset="7" :span="10">
              <router-link to="/index" :style="{backgroundImage:'url(' +imgUrl+item.msg1+ ')'}"
                class="bannerTopSmallLogo">
              </router-link>
            </el-col>
            <el-col :span="24" :style="{backgroundImage:'url(' + imgUrl+item.small+ ')'}" class="bannerTopSmall1">
            </el-col>
            <el-col :span="24">
              <span class="bannerTopSpan">{{item.msg2}}</span>
            </el-col>
            <el-col :offset="6" :span="12" class="bannerTopDown1">
              <a href="https://adl.netease.com/d/g/uu/c/uumac?type=pc" target="_blank"
                :style="{backgroundImage:'url(' + imgUrl+item.down+ ')',width:'200px'}">PC版下载</a>
            </el-col>
          </el-row>
        </div>
      </el-carousel-item>
      <!-- 中间四个介绍轮播 -->
      <el-carousel-item v-for="(item,index) in topImg2" :key="index">
        <div class="bannerTopBig" :style="{backgroundImage:'url(' + imgUrl+item.big+ ')'}">
          <div class="bannerTopContent2">
            <el-row>
              <el-col class="bannerTopSmall2" :style="{backgroundImage:'url(' + imgUrl+item.small+ ')'}" :span="24">
              </el-col>
              <el-col :offset="2" :span="17" class="bannerTopUl">
                <ul>
                  <li>{{item.msg1}}</li>
                  <li>{{item.msg2}}</li>
                </ul>
              </el-col>
              <el-col :offset="3" :span="15" class="bannerTopDown2">
                <a href="https://gad.netease.com/gad/access?project_id=4278004&amp;s=m%2BCQK5VC4%2F1rXAeF3rpPeNrtmsA%3D&amp;code_type=1"
                  target="_blank" :style="{backgroundImage:'url(' + imgUrl+item.down+ ')'}">PC版下载</a>
              </el-col>
            </el-row>
          </div>
        </div>
      </el-carousel-item>
      <!-- 最后一个下载轮播 -->
      <el-carousel-item v-for="(item,index) in topImg3" :key="12">
        <div class="bannerTopBig" :style="{backgroundImage:'url(' + imgUrl+item.big+ ')'}">
          <div class="bannerTopContent3">
            <el-row>
              <el-col class="bannerTopSmall3" :style="{backgroundImage:'url(' + imgUrl+item.small+ ')'}" :span="24">
              </el-col>
              <el-col :offset="1" :span="14" class="bannerTopDown2">
                <a href="https://adl.netease.com/d/g/uu/c/uumac?type=pc" target="_blank"
                  :style="{backgroundImage:'url(' + imgUrl+item.down+ ')',width:'200px'}">macOS版下载</a>
              </el-col>
              <el-col :offset="1" :span="14" class="bannerTopDown3">
                <a href="down/mac/" target="_blank" :style="{backgroundImage:'url(' + imgUrl+item.msg1+ ')'}">版本详情</a>
              </el-col>
            </el-row>
          </div>
        </div>
      </el-carousel-item>
    </el-carousel>
    <!-- 首页第一个轮播图完成(*^▽^*) -->
    <!-- 过度的图片 -->
    <div class="line">
      <img :src="`${imgUrl}img/index/line_1.png`">
    </div>
    <!-- 第二个模块，版本下载 -->
    <el-row>
      <el-col class="tit tit1">版本下载</el-col>
      <el-col class="titSmall1">DOWNLOAD</el-col>
    </el-row>
    <!-- 版本下载的主内容 -->
    <el-row :style="{minWidth: '1920px'
      ,marginTop:'45px'}">
      <el-col :span="4" class="bbxz" :class="0==bbxz?'active':''"></el-col>
      <el-col :span="16" class="bbxz">
        <el-row type="flex" class="bbxzContent">
          <el-col v-for="(item,index) in bbxzContent" :key="index" class="bbxz" :class="index==bbxz?'active':''"
            @mouseenter.native="bbxzHover($event,index,item.hover)" @mouseleave.native="bbxzLeave($event,item.normal)">
            <p>{{item.title}}</p>
            <el-button round>{{item.btn}}</el-button>
            <img :src="`${imgUrl}${item.normal}`" class="bbxzimg">
          </el-col>
        </el-row>
      </el-col>
      <el-col :span="4" class="bbxz" :class="4==bbxz?'active':''"></el-col>
    </el-row>
    <!-- 过度的图片 -->
    <div class="line" :style="{backgroundColor:'#f1f1f5'}">
      <img :src="`${imgUrl}img/index/line_2.png`">
    </div>
    <!-- 第三个模块，热门游戏 -->
    <el-row :style="{backgroundColor:'#24253a'}">
      <el-col class="tit tit2">热门游戏</el-col>
      <el-col class="titSmall2">GAMES</el-col>
    </el-row>
    <!-- 热门游戏的主内容 -->
    <el-carousel :interval="4000" type="card" height="580px">
      <el-carousel-item v-for="item in 6" :key="item">
        <h3 class="medium">{{ item }}</h3>
      </el-carousel-item>
    </el-carousel>
    <my-footer></my-footer>
  </div>
</template>
<script>
  export default {
    data() {
      return {
        imgUrl: this.$imgUrl,
        topImg1: [],
        topImg2: [],
        topImg3: [],
        bbxz: -1,
        bbxzContent: []
      }
    },
    methods: {
      bbxzHover(e, index, hover) {
        this.bbxz = index;
        e.target.getElementsByTagName("IMG")[0].src = this.imgUrl + hover;
      },
      bbxzLeave(e, normal) {
        this.bbxz = -1;
        e.target.getElementsByTagName("IMG")[0].src = this.imgUrl + normal;
      },
    },
    created() {
      this.axios.get("indexTopBanner").then(result => {
        var data = result.data.data;
        this.topImg1.push(data[0]);
        this.topImg2 = data.slice(1, 5);
        this.topImg3.push(data[5]);
      });
      this.axios.get("indexBbxz").then(result => {
        this.bbxzContent = result.data.data;
        // console.log(this.bbxzContent);
      });
    },
  }
</script>
<style>
  .line {
    height: 22px;
    background-color: #020305;
  }

  .line img {
    width: 100%;
    min-width: 1280px;
    height: 22px;
  }

  .bannerTopBig {
    width: 100%;
    height: 889px;
    background-size: cover;
  }

  .bannerTopContent1 {
    width: 887px;
    height: 650px;
    position: absolute;
    top: 130px;
    left: 516px;
  }

  .bannerTopContent2 {
    width: 484px;
    height: 290px;
    position: absolute;
    top: 300px;
    left: 1120px;
  }

  .bannerTopContent3 {
    width: 541px;
    height: 360px;
    position: absolute;
    top: 270px;
    left: 1120px;
  }

  .bannerTopSmallLogo {
    width: 339px;
    height: 73px;
    background: no-repeat;
    background-size: 339px 73px;
    float: left;
    margin: 0 0 100px 0;
  }

  .bannerTopSpan {
    font-size: 40px;
    font-weight: 700;
    font-style: italic;
    color: #fff;
    line-height: 80px;
  }

  .bannerTopSmall1 {
    width: 887px;
    height: 157px;
    background-size: 887px 157px;
    float: left;
  }

  .bannerTopSmall2 {
    width: 484px;
    height: 44px;
    background-size: 484px 44px;
    float: left;
  }

  .bannerTopSmall3 {
    width: 541px;
    height: 116px;
    background-size: 541px 116px;
    float: left;
  }

  .bannerTopUl {
    margin-top: 10px;
    border-top: 2px solid #0b7b82;
    border-bottom: 2px solid #0b7b82;
  }

  .bannerTopUl ul {
    margin: 10px 0 10px;
  }

  .bannerTopUl ul li {
    list-style: disc;
    color: #00dcc8;
    font-size: 20px;
    line-height: 40px;
    text-align: left;
  }

  .bannerTopDown1 {
    margin: 160px 0 0;
    height: 100px;
    background-color: #02d3c1;
    border-radius: 50px;
  }

  .bannerTopDown2 {
    margin: 30px 0 0;
    height: 75px;
    background-color: #02d3c1;
    border-radius: 50px;
  }

  .bannerTopDown3 {
    margin: 30px 0 0;
    height: 75px;
    background-color: transparent;
    border-radius: 50px;
    border: 2px solid #02d3c1;
  }

  .bannerTopDown1:hover {
    background-color: #13ead6;
  }

  .bannerTopDown2:hover {
    background-color: #13ead6;
  }

  .bannerTopDown3:hover {
    border-color: #13ead6;
  }

  .bannerTopDown1>a {
    display: block;
    line-height: 45px;
    width: 234px;
    text-decoration: none;
    font-size: 38px;
    color: #fff;
    background: no-repeat;
    padding-left: 60px;
    margin: 30px auto 0;
  }

  .bannerTopDown2>a {
    display: block;
    width: 169px;
    text-decoration: none;
    font-size: 28px;
    color: #fff;
    background: no-repeat;
    padding-left: 44px;
    margin: 20px auto 0;
  }

  .bannerTopDown3>a {
    display: block;
    width: 169px;
    text-decoration: none;
    font-size: 28px;
    color: #01dcc8;
    background: no-repeat;
    padding-left: 44px;
    margin: 20px auto 0;
  }

  .Carousel .el-carousel__button {
    opacity: 1;
    width: 14px;
    height: 14px;
    border: 2px solid #fff;
    background: transparent;
    border-radius: 50%;
  }

  .Carousel .el-carousel__indicator.is-active button {
    border: 2px solid #01dcc7;
    background: #01dcc7;
  }

  .bbxzContent {
    background-color: #fff;
  }

  .bbxzContent .bbxz p {
    width: 100%;
    font-size: 16px;
    color: #24253a;
    position: absolute;
    top: 75px;
    transition: all .2s;
  }

  .bbxzContent .bbxz.active p {
    top: 50px;
  }

  .bbxzContent .bbxz button {
    position: absolute;
    top: 75px;
    left: 63px;
    width: 130px;
    opacity: 0;
    transition: all .2s;
  }

  .bbxzContent .bbxz.active button {
    top: 95px;
    opacity: 1;
  }

  .bbxzContent .bbxz img {
    position: absolute;
    top: 160px;
    left: 100px;
  }

  .bbxz {
    height: 282px;
    background-color: #f1f1f5;
    position: relative;
  }


  .bbxz.active {
    background-color: #00dcc8;
  }

  .tit {
    height: 40px;
    font-size: 28px;
    font-weight: 700;
    line-height: 40px;
    min-width: 1280px;
  }

  .titSmall1 {
    font-size: 22px;
    min-width: 1280px;
  }

  .tit1 {
    background: url('http://127.0.0.1:5050/img/index/index_tit1.png') center no-repeat;
    color: #24253a;
    margin: 10px 0 0 0;
  }

  .tit2 {
    background: url('http://127.0.0.1:5050/img/index/index_tit2.png') center no-repeat;
    color: #ffffff;
    margin: 10px 0 0 0;
  }

  .titSmall2 {
    font-size: 22px;
    min-width: 1280px;
    color: #ffffff;
  }
</style>