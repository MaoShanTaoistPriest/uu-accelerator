<template>
  <div>
    <my-header></my-header>
    <div class="container">
      <!-- 头部大标题 -->
      <el-row type="flex">
        <el-col :span="6">
          <h2>诚寻合作，We want you！</h2>
        </el-col>
      </el-row>
      <!-- 客服声明 -->
      <el-row type="flex">
        <el-col :span="2" class="smallTitle">
          <h4>客服声明</h4>
        </el-col>
      </el-row>
      <!-- 客服声明的具体内容 -->
      <el-row type="flex">
        <el-col :span="19" class="sayWorld">
          <p>有任何加速器使用的客服类问题，请通过UU客户端顶部菜单栏耳机按钮联系客服解决，本文下述各类联系方式均属于市场部，无法解决您的客服问题。</p>
        </el-col>
      </el-row>
      <!-- 客服按钮的图片示例 -->
      <el-row type="flex">
        <el-col :span="10">
          <img src="http://127.0.0.1:5050/img/contact/cont_pro1_6f04b76.jpg">
        </el-col>
      </el-row>
      <!-- 合作声明 -->
      <el-row type="flex">
        <el-col :span="2" class="smallTitle">
          <h4>合作声明</h4>
        </el-col>
      </el-row>
      <!-- 合作声明的展示模块 -->
      <el-row :gutter="15">
        <el-col :span="12" v-for="(item,index) in cooperation" :key="index">
          <div class="cooperation">
            <p>{{item.toptitle}}</p>
            <p>{{item.bottomtitle}}</p>
          </div>
        </el-col>
      </el-row>
      <!-- 具体业务联系人 -->
      <el-row type="flex">
        <el-col :span="3" class="smallTitle">
          <h4>具体业务联系人</h4>
        </el-col>
      </el-row>
      <!-- 具体业务联系人的展示模块 -->
      <el-row :gutter="15">
        <el-col :span="12" v-for="(item,index) in contact" :key="index">
          <div class="contact">
            <p>{{item.title}}</p>
            <span>{{item.cname}}</span>
            <h6>{{item.contact}}</h6>
          </div>
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
        cooperation: [],
        contact: []
      }
    },
    methods: {

    },
    created() {
      this.axios.get("/contactCooperation").then(result => {
        this.cooperation = result.data.data;
        // console.log(this.cooperation);
      });
      this.axios.get("/contactContact").then(result => {
        this.contact = result.data.data;
        // console.log(this.contact);
      });
    },
  }
</script>
<style scoped>
  .container {
    width: 1200px;
    margin: 0 auto 0;
    padding: 30px 0 75px 0px;
    color: #24243a;
  }

  .smallTitle {
    border-left: 4px solid #00ddc8;
    margin: 30px 0 0 0;
  }

  .smallTitle h4 {
    margin: 0;
  }

  .sayWorld {
    margin-top: 10px;
  }

  .sayWorld p {
    float: left;
    font-size: 14px;
  }

  .cooperation {
    background-color: #e3f9f7;
    height: 120px;
    margin-top: 20px;
    padding-top: 30px;
    font-size: 18px;
  }

  .contact {
    background-color: #eef3fa;
    height: 180px;
    margin: 30px 0 0 0;
  }

  .contact p {
    font-size: 18px;
    line-height: 70px;
    border-bottom: 1px solid #d5dfee;
    width: 85%;
    margin: 0 auto 20px;
  }

  .contact span {
    font-size: 24px;
    font-weight: 700;
    line-height: 30px;
  }

  .contact h6 {
    font-size: 18px;
    font-weight: 400;
    line-height: 30px;
    margin: 20px 0 0 0;
  }
</style>