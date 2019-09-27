<template>
  <div>
    <!-- 页头的导航栏 -->
    <my-header></my-header>
    <!-- 页面主体 -->
    <div class="container">
      <div class="game">
        <!-- 页面头部的简单介绍 -->
        <div class="game_top">
          <h2>千款游戏精准覆盖</h2>
          <span>uu加速器目前支持游戏达上千款，部分热门游戏列表如下：</span>
        </div>
        <!-- 客户端游戏区域 -->
        <div class="game_pc">
          <div class="game_title">
            <span>客户端游戏</span>
          </div>
          <div class="game_container">
            <ul>
              <li v-for="(item,index) in pcList" :key="index">
                <a href="javascript:;">{{item.gname}}</a>
              </li>
              <table style="clear: both"></table>
            </ul>
          </div>
        </div>
        <!-- 客户端游戏区域结束 -->
        <!-- 移动端游戏区域 -->
        <div class="game_pc">
          <div class="game_title">
            <span>移动端游戏</span>
          </div>
          <div class="game_container">
            <ul>
              <li v-for="(item,index) in phoneList" :key="index">
                <a href="javascript:;">{{item.gname}}</a>
              </li>
              <table style="clear: both"></table>
            </ul>
          </div>
        </div>
        <!-- 移动端游戏区域结束 -->
        <!-- 主机游戏区域 -->
        <div class="game_pc">
          <div class="game_title">
            <span>主机游戏</span>
          </div>
          <div class="game_container">
            <ul>
              <li v-for="(item,index) in hostList" :key="index">
                <a href="javascript:;">{{item.gname}}</a>
              </li>
              <table style="clear: both"></table>
            </ul>
          </div>
        </div>
        <!-- 主机游戏区域结束 -->
        <!-- 底部图片 -->
        <div class="bottom_img">
          <img :src="`${imgUrl}img/games/game_bot_92f3c00.jpg`">
        </div>
      </div>
    </div>
    <el-backtop target=".page-component__scroll .el-scrollbar__wrap" :bottom="100">
      <div class="poi">
        UP
      </div>
    </el-backtop>
    <my-footer></my-footer>
  </div>
</template>
<script>
  export default {
    data() {
      return {
        imgUrl: this.$imgUrl,
        pcList: [],
        phoneList: [],
        hostList: [],
      }
    },
    methods: {

    },
    created() {
      this.axios.get("gamePc").then(result => {
        if (result.data.code == 1) {
          this.pcList = result.data.data;
          // console.log(result.data.data);
        }
      });
      this.axios.get("gamePhone").then(result => {
        if (result.data.code == 1) {
          this.phoneList = result.data.data;
          // console.log(result.data.data);
        }
      });
      this.axios.get("gameHost").then(result => {
        if (result.data.code == 1) {
          this.hostList = result.data.data;
          // console.log(result.data.data);
        }
      });
    },
  }
</script>
<style scoped>
  .poi{
    height: 100%;width: 100%;background-color: #f2f5f6;box-shadow: 0 0 6px rgba(0,0,0, .12);text-align: center;line-height: 40px;color: #1989fa;
  }
  .container {
    width: 1200px;
    margin: 0 auto 0;
    padding: 30px 0 75px 0px;
  }

  .container>.game {
    margin-left: 20px;
    margin-top: -20px;
  }

  .container>.game>.game_top {
    text-align: left;
    /* padding-left: 50px; */
    color: #24243a;
  }

  .container>.game>.game_top>span {
    font-size: 14px;
  }

  .container .game_title {
    border-left: 4px solid #00dcc8;
    text-align: left;
    padding-left: 10px;
  }

  .container .game_container>ul {
    width: 1200px;
    list-style: none;
    padding: 0;
  }

  .container .game_container>ul>li {
    width: 136px;
    float: left;
    background-color: #f1f1f5;
    margin: 0 14px 8px 0;
    border-radius: 5px;
  }

  .container .game_container>ul>li:hover {
    background-color: #00dcc8;
  }

  .container .game_container>ul>li>a {
    display: block;
    text-decoration: none;
    font-size: 14px;
    color: #24243a;
    line-height: 44px;
    width: 130px;
    cursor: default;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
  }

  .container .game_title>span {
    font-size: 16px;
    color: #24243a;
    font-weight: bolder
  }

  .container>.game>.game_pc {
    padding-top: 50px;
  }

  .container>.game>.bottom_img {
    margin-top: 70px;
  }

  .container>.game>.bottom_img>img {
    width: 1200px;
  }
</style>