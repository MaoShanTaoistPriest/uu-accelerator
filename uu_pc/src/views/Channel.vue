<template>
  <div>
    <my-header></my-header>
    <div class="container">
      <div class="topText">
        <h2>UU加速器尊享全网超值价</h2>
        <p>国服免费，外服72小时免费试用，超快感无负担，特惠信息如下：</p>
      </div>
      <div class="topTitle">
        <h4>VIP外服游戏加速</h4>
      </div>
      <!-- 会员类型 -->
      <el-row type="flex" class="rech">
        <el-col :span="2" class="contentTitle">
          <span>会员类型</span>
        </el-col>
        <el-col :span="2" class="contentTitle pointer">
          <a href="javascript:;">高级会员</a>
        </el-col>
      </el-row>
      <!-- 会员时间 -->
      <el-row type="flex" class="rech">
        <el-col :span="2" class="contentTitle">
          <span>会员时间</span>
        </el-col>
        <el-col :span="3" v-for="(item,index) in hysj" :key="index" @click.native="checkTime(index,item.price)">
          <div class="hysj pointer" :class="index==timeActive?'active':''">
            <h5>{{item.renewal}}</h5>
            <p>￥{{item.price.toFixed(2)}}</p>
            <span>每日低至{{item.unit/100}}元</span>
          </div>
        </el-col>
      </el-row>
      <!-- 支付方式 -->
      <el-row type="flex" class="rech">
        <el-col :span="2" class="contentTitle">
          <span>支付方式</span>
        </el-col>
        <el-col :span="3" @click.native="checkPay(0)">
          <div class="zffs pointer" :class="payActive==0?'active':''">
            <span class="wx"></span>
            <span>微信支付</span>
          </div>
        </el-col>
        <el-col :span="3" @click.native="checkPay(1)">
          <div class="zffs pointer" :class="payActive==1?'active':''">
            <span class="zfb"></span>
            <span>支付宝支付</span>
          </div>
        </el-col>
      </el-row>
      <!-- 充值账号 -->
      <el-row type="flex" class="rech">
        <el-col :span="2" class="contentTitle">
          <span>充值账号</span>
        </el-col>
        <el-col :span="4">
          <el-input placeholder="输入手机号" v-model="firstPhone" @blur="checkOne" @focus="phoneOne=0"></el-input>
        </el-col>
        <el-col :span="4">
          <span class="phoneNum" :class="phoneOne==1?'active':''">请输入正确的手机号码</span>
        </el-col>
      </el-row>
      <!-- 再次确认 -->
      <el-row type="flex" class="rech">
        <el-col :span="2" class="contentTitle">
          <span>再次确认</span>
        </el-col>
        <el-col :span="4">
          <el-input placeholder="再次输入手机号" v-model="secondPhone" @blur="checkTwo" @focus="phoneTwo=0"></el-input>
        </el-col>
        <el-col :span="4">
          <span class="phoneNum" :class="phoneTwo==1?'active':''">请输入正确的手机号码</span>
        </el-col>
      </el-row>
      <!-- 充值教程传送门 -->
      <el-row type="flex" class="rech bottomLine">
        <el-col :span="24" class="">
          <p>使用UU加速器客户端支付充值会有更多优惠哦</p>
          <a href="http://uu.baike.163.com/zhinan/126.html" target="_blank"><span class="red">充值教程传送门&gt;&gt;</span></a>
        </el-col>
      </el-row>
      <!-- 支付金额 -->
      <el-row type="flex" class="rech">
        <el-col :span="2" class="zfjeLeft">
          <span>支付金额</span>
        </el-col>
        <el-col :span="2" class="zfjeRight">
          <span>￥{{payPrice.toFixed(2)}}</span>
        </el-col>
      </el-row>
      <!-- 确认支付 -->
      <el-row type="flex" class="rech">
        <el-col :span="3" :offset="2">
          <button class="payButton pointer" :class="isPay==0?'active':''">确认支付</button>
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
        firstPhone: "",
        secondPhone: "",
        timeActive: 0,
        payActive: 0,
        phoneOne: 0,
        phoneTwo: 0,
        payPrice: 283,
        isPay: 1,
        hysj: []
      }
    },
    methods: {
      checkTime(index, price) {
        this.timeActive = index;
        this.payPrice = price;
      },
      checkPay(index) {
        this.payActive = index;
      },
      checkOne() {
        var reg = new RegExp(/^1[3-9][0-9]{9}$/);
        if (reg.test(this.firstPhone)) {
          this.phoneOne = 0;
        } else {
          this.phoneOne = 1;
        }
        if (this.phoneOne == 0 && this.phoneTwo == 0) {
          this.isPay = 0;
        } else {
          this.isPay = 1;
        };
      },
      checkTwo() {
        var reg = new RegExp(/^1[3-9][0-9]{9}$/);
        if (reg.test(this.secondPhone)) {
          if (this.firstPhone == this.secondPhone) {
            this.phoneTwo = 0;
          } else {
            this.phoneTwo = 1;
          }
        } else {
          this.phoneTwo = 1;
        }
        if (this.phoneOne == 0 && this.phoneTwo == 0) {
          this.isPay = 0;
        } else {
          this.isPay = 1;
        };
      }
    },
    created() {
      this.axios.get("channelSj").then(result => {
        if (result.data.code == 1) {
          this.hysj = result.data.data;
          // console.log(result.data.data);
        }
      });
    },
  }
</script>
<style>
  .container {
    width: 1200px;
    margin: 0 auto 0;
    padding: 30px 0 75px 0px;
  }

  .container>.topText {
    width: 100%;
    text-align: left;
    margin: 20px 0 0 0;
  }

  .container>.topText h2 {
    margin: 0;
  }

  .container>.topText p {
    font-size: 14px;
    margin: 6px 0;
  }

  .container>.topTitle {
    width: 100%;
    text-align: left;
    margin: 50px 0 0 0;
    border-left: 4px solid #02d3c1;
    padding: 0 0 0 10px;
  }

  .rech {
    margin-top: 40px;
    color: #24243a;
  }

  .pointer {
    cursor: pointer;
  }

  .rech a {
    text-decoration: none;
    color: #24243a;
  }

  .contentTitle {
    font-size: 18px;
    font-weight: 400;
    text-align: left;
    color: #24243a;
    padding-top: 10px;
  }

  .hysj {
    width: 137px;
    height: 115px;
    background-color: #fff;
    border: 1px solid #04c8b4;
    border-radius: 5px;
    transition: all .5s;
  }

  .hysj:hover,
  .hysj.active {
    background-color: #00dcc8;
  }

  .hysj>h5 {
    font-size: 34px;
    line-height: 50px;
    margin: 0;
    color: #6e6e7e;
    border-bottom: 1px dashed #848484;
  }

  .hysj:hover>h5,
  .hysj.active>h5 {
    color: #fff;
  }

  .hysj>p {
    font-size: 30px;
    line-height: 20px;
    margin: 10px 0 10px 0;
    color: #333450;
  }

  .hysj:hover>p,
  .hysj.active>p {
    color: #005d55;
  }

  .hysj>span {
    font-size: 14px;
    line-height: 20px;
    color: #333450;
  }

  .hysj:hover>span,
  .hysj.active>span {
    color: #005d55;
  }

  .zffs {
    width: 137px;
    height: 44px;
    background-color: #fff;
    border: 1px solid #04c8b4;
    border-radius: 5px;
    transition: all .5s;
  }

  .zffs:hover,
  .zffs.active {
    background-color: #00dcc8;
    color: #fff;
  }

  .zffs span {
    display: inline-block;
    position: relative;
  }

  .zffs .zfb {
    top: 8px;
    right: 6px;
    background-repeat: no-repeat;
    background-position: center center;
    background-size: 100%;
    width: 28px;
    height: 28px;
    background-image: url("http://127.0.0.1:5050/img/channel/zfbzf_a21c1eb.png");
  }

  .zffs:hover .zfb,
  .zffs.active .zfb {
    background-image: url("http://127.0.0.1:5050/img/channel/zfbzf_hov_1a2e96c.png");
  }


  .zffs .wx {
    top: 8px;
    right: 6px;
    background-repeat: no-repeat;
    background-position: center center;
    background-size: 100%;
    width: 28px;
    height: 28px;
    background-image: url("http://127.0.0.1:5050/img/channel/wxzf_cce4a55.png");
  }

  .zffs:hover .wx,
  .zffs.active .wx {
    background-image: url("http://127.0.0.1:5050/img/channel/wxzf_hov_975d8e3.png");
  }

  .rech input.el-input__inner {
    border-color: #00dcc8;
    outline: 0;
    font-size: 18px;
    color: #323451;
    padding-left: 5px;
  }

  .rech input.el-input__inner:focus {
    border-color: #000;
  }

  .phoneNum {
    color: #f50000;
    line-height: 40px;
    margin-left: 40px;
    display: none;
  }

  .phoneNum::before {
    content: '';
    position: absolute;
    top: 50%;
    transform: translate(-150%, -50%);
    height: 15px;
    width: 15px;
    background: url('http://127.0.0.1:5050/img/channel/error_17716f4.png') center no-repeat;
    background-size: 100% 100%;
  }

  .phoneNum.active {
    display: block;
  }

  .bottomLine {
    border-bottom: 1px solid #ccc;
    font-size: 16px;
    line-height: 60px;
    margin: 0;
  }

  .bottomLine p {
    float: left;
    margin: 0;
  }

  .bottomLine a {
    float: left;
    margin: 0 0 0 15px;
    color: #ff0000;
  }

  .zfjeRight {
    color: #ff0000;
    font-size: 24px;
    font-weight: 700;
    line-height: 46px;
  }

  .zfjeLeft {
    font-size: 18px;
    font-weight: 400;
    text-align: left;
    color: #24243a;
    line-height: 46px;
  }

  .payButton {
    width: 175px;
    height: 50px;
    background-color: #6e6e7e;
    font-size: 21px;
    border: 0;
    border-radius: 50px;
    color: #fff;
    font-weight: 700;
  }

  .payButton.active {
    background-color: #00ddc8;
  }
</style>