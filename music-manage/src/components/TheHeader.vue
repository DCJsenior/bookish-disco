<template>
  <div class="header">
<!--    折叠菜单栏-->
    <div class="collapse-btn" @click="collapseChange">
      <i class="el-icon-menu"></i>
    </div>

    <div class="logo">music后台管理</div>
    <div class="header-right">
      <div class="btn-fullscreen" @click="handleFullScreen">
        <el-tooltip :content="fullscreen?`取消全屏`:`全屏`" placement="bottom">
          <i class="el-icon-rank"></i>
        </el-tooltip>
      </div>

      <div class="user-avator">
        <img src="../assets/img/2.jpg" v-image-preview>
      </div>

      <el-dropdown class="user-name" trigger="click" @command="handleCommand">
        <span class="el-dropdown-link">
          {{userName}}
          <i class="el-icon-caret-bottom"></i>
        </span>
        <el-dropdown-menu slot="dropdown">
          <el-dropdown-item command="logout">
            退出登录
          </el-dropdown-item>
        </el-dropdown-menu>
      </el-dropdown>
    </div>
  </div>
</template>

<script>
import bus from "../assets/js/bus";
export default {
  data() {
    return {
      collapse: false,
      fullscreen:false
    }
  },
  computed:{
    userName(){
      return localStorage.getItem('userName')
    }
  },
  methods:{
    //侧边栏折叠
    collapseChange(){
      this.collapse = !this.collapse;
      bus.$emit('collapse', this.collapse);
    },
    //全屏事件
    handleFullScreen(){
      if(this.fullscreen){
        if(document.exitFullscreen()){
          document.exitFullscreen();
        }
        else if (document.webkitCancelFullScreen){
        document.webkitCancelFullScreen();
        }
        else if (document.mozCancelFullScreen){
          document.mozCancelFullScreen();
        }
        else if (document.msExitFullScreen){
          document.msExitFullScreen();
        }
      }
      else {
        let element = document.documentElement;
        if (element.requestFullscreen){
          element.requestFullscreen();
        }
        else if(element.webkitRequestFullScreen){
          element.webkitRequestFullScreen();
        }
      }
      this.fullscreen = !this.fullscreen;
    },
    handleCommand(command){
      if (command == "logout"){
        localStorage.removeItem('userName');
        this.$router.push("/");
      }
    }
  }
}
</script>

<style scoped>
.header {
  position: relative;
  background-color: #253041;
  box-sizing: border-box;
  width: 100%;
  height: 70px;
  font-size: 22px;
  color: white;
}

.collapse-btn {
  float: left;
  padding: 0 21px;
  cursor: pointer;
  line-height: 70px;
}

.header .logo {
  float: left;
  line-height: 70px;
}

.header-right {
  float: right;
  padding-right: 50px;
  display: flex;
  height: 70px;
  align-items: center;
}

.header-right .btn-fullscreen {
  margin-right: 5px;
  font-size: 24px;
  transform: rotate(45deg);
}

.user-avator {
  margin-left: 20px;
}

.user-avator >img{
  display: block;
  width: 50px;
  height: 50px;
  border-radius: 50%;
}

.user-name {
  margin-left: 10px;
}

.el-dropdown-link{
  color: white;
  cursor: pointer;
}
</style>
