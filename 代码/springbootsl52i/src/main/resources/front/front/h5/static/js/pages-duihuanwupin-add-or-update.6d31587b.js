(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["pages-duihuanwupin-add-or-update"],{"228f":function(e,t,r){"use strict";r.r(t);var i=r("7c84"),n=r.n(i);for(var a in i)"default"!==a&&function(e){r.d(t,e,(function(){return i[e]}))}(a);t["default"]=n.a},"5a59":function(e,t,r){var i=r("d7ed");"string"===typeof i&&(i=[[e.i,i,""]]),i.locals&&(e.exports=i.locals);var n=r("4f06").default;n("ef4ebcf2",i,!0,{sourceMap:!1,shadowMode:!1})},7846:function(e,t,r){"use strict";var i=r("5a59"),n=r.n(i);n.a},"7c84":function(e,t,r){"use strict";var i=r("4ea4");Object.defineProperty(t,"__esModule",{value:!0}),t.default=void 0,r("ac6a"),r("96cf");var n=i(r("3b8d")),a=i(r("e2b1")),o={data:function(){return{ruleForm:{wupinbianhao:"",wupinmingcheng:"",wupinxiangqing:"",jifen:"",wupintupian:""},user:{},ro:{wupinbianhao:!1,wupinmingcheng:!1,wupinxiangqing:!1,jifen:!1,wupintupian:!1}}},components:{wPicker:a.default},computed:{},onLoad:function(){var e=(0,n.default)(regeneratorRuntime.mark((function e(t){var r,i,n,a;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return r=uni.getStorageSync("nowTable"),e.next=3,this.$api.session(r);case 3:if(i=e.sent,this.user=i.data,this.ruleForm.userid=uni.getStorageSync("userid"),t.refid&&(this.ruleForm.refid=t.refid,this.ruleForm.nickname=uni.getStorageSync("nickname")),!t.id){e.next=13;break}return this.ruleForm.id=t.id,e.next=11,this.$api.info("duihuanwupin",this.ruleForm.id);case 11:i=e.sent,this.ruleForm=i.data;case 13:if(!t.cross){e.next=40;break}n=uni.getStorageSync("crossObj"),e.t0=regeneratorRuntime.keys(n);case 16:if((e.t1=e.t0()).done){e.next=40;break}if(a=e.t1.value,"wupinbianhao"!=a){e.next=22;break}return this.ruleForm.wupinbianhao=n[a],this.ro.wupinbianhao=!0,e.abrupt("continue",16);case 22:if("wupinmingcheng"!=a){e.next=26;break}return this.ruleForm.wupinmingcheng=n[a],this.ro.wupinmingcheng=!0,e.abrupt("continue",16);case 26:if("wupinxiangqing"!=a){e.next=30;break}return this.ruleForm.wupinxiangqing=n[a],this.ro.wupinxiangqing=!0,e.abrupt("continue",16);case 30:if("jifen"!=a){e.next=34;break}return this.ruleForm.jifen=n[a],this.ro.jifen=!0,e.abrupt("continue",16);case 34:if("wupintupian"!=a){e.next=38;break}return this.ruleForm.wupintupian=n[a],this.ro.wupintupian=!0,e.abrupt("continue",16);case 38:e.next=16;break;case 40:this.styleChange();case 41:case"end":return e.stop()}}),e,this)})));function t(t){return e.apply(this,arguments)}return t}(),methods:{styleChange:function(){this.$nextTick((function(){}))},wupintupianTap:function(){var e=this;this.$api.upload((function(t){e.ruleForm.wupintupian=e.$base.url+"upload/"+t.file,e.$forceUpdate(),e.$nextTick((function(){e.styleChange()}))}))},getUUID:function(){return(new Date).getTime()},onSubmitTap:function(){var e=(0,n.default)(regeneratorRuntime.mark((function e(){return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:if(!this.ruleForm.id){e.next=5;break}return e.next=3,this.$api.update("duihuanwupin",this.ruleForm);case 3:e.next=7;break;case 5:return e.next=7,this.$api.add("duihuanwupin",this.ruleForm);case 7:this.$utils.msgBack("提交成功");case 8:case"end":return e.stop()}}),e,this)})));function t(){return e.apply(this,arguments)}return t}(),optionsChange:function(e){this.index=e.target.value},bindDateChange:function(e){this.date=e.target.value},getDate:function(e){var t=new Date,r=t.getFullYear(),i=t.getMonth()+1,n=t.getDate();return"start"===e?r-=60:"end"===e&&(r+=2),i=i>9?i:"0"+i,n=n>9?n:"0"+n,"".concat(r,"-").concat(i,"-").concat(n)},toggleTab:function(e){this.$refs[e].show()}}};t.default=o},bfd3:function(e,t,r){"use strict";r.r(t);var i=r("e452"),n=r("228f");for(var a in n)"default"!==a&&function(e){r.d(t,e,(function(){return n[e]}))}(a);r("7846");var o,u=r("f0c5"),s=Object(u["a"])(n["default"],i["b"],i["c"],!1,null,"30ed1f10",null,!1,i["a"],o);t["default"]=s.exports},d7ed:function(e,t,r){var i=r("24fb");t=i(!1),t.push([e.i,'@charset "UTF-8";\n/**\r\n * 这里是uni-app内置的常用样式变量\r\n *\r\n * uni-app 官方扩展插件及插件市场（https://ext.dcloud.net.cn）上很多三方插件均使用了这些样式变量\r\n * 如果你是插件开发者，建议你使用scss预处理，并在插件代码中直接使用这些变量（无需 import 这个文件），方便用户通过搭积木的方式开发整体风格一致的App\r\n *\r\n */\n/**\r\n * 如果你是App开发者（插件使用者），你可以通过修改这些变量来定制自己的插件主题，实现自定义主题功能\r\n *\r\n * 如果你的项目同样使用了scss预处理，你也可以直接在你的 scss 代码中使用如下变量，同时无需 import 这个文件\r\n */\n/* 颜色变量 */\n/* 行为相关颜色 */\n/* 文字基本颜色 */\n/* 背景颜色 */\n/* 边框颜色 */\n/* 尺寸变量 */\n/* 文字尺寸 */\n/* 图片尺寸 */\n/* Border Radius */\n/* 水平间距 */\n/* 垂直间距 */\n/* 透明度 */\n/* 文章场景相关 */.container[data-v-30ed1f10]{padding:%?20?%}.content[data-v-30ed1f10]:after{position:fixed;top:0;right:0;left:0;bottom:0;content:"";background-attachment:fixed;background-size:cover;background-position:50%}uni-textarea[data-v-30ed1f10]{border:%?1?% solid #eee;border-radius:%?20?%;padding:%?20?%}.title[data-v-30ed1f10]{width:%?180?%}.avator[data-v-30ed1f10]{width:%?150?%;height:%?60?%}.right-input[data-v-30ed1f10]{-webkit-box-flex:1;-webkit-flex:1;flex:1;text-align:left;padding:0 %?24?%}.cu-form-group.active[data-v-30ed1f10]{-webkit-box-pack:justify;-webkit-justify-content:space-between;justify-content:space-between}.btn[data-v-30ed1f10]{display:-webkit-box;display:-webkit-flex;display:flex;-webkit-box-align:center;-webkit-align-items:center;align-items:center;-webkit-box-pack:center;-webkit-justify-content:center;justify-content:center;-webkit-flex-wrap:wrap;flex-wrap:wrap;padding:%?20?% 0}.cu-form-group[data-v-30ed1f10]{padding:0 %?24?%;background-color:initial;min-height:inherit}.cu-form-group + .cu-form-group[data-v-30ed1f10]{border:0}.cu-form-group uni-input[data-v-30ed1f10]{padding:0 %?30?%}.uni-input[data-v-30ed1f10]{padding:0 %?30?%}.cu-form-group uni-textarea[data-v-30ed1f10]{padding:%?30?%;margin:0}.cu-form-group uni-picker[data-v-30ed1f10]::after{line-height:%?88?%}.select .uni-input[data-v-30ed1f10]{line-height:%?88?%}.input .right-input[data-v-30ed1f10]{line-height:%?88?%}',""]),e.exports=t},e452:function(e,t,r){"use strict";var i,n=function(){var e=this,t=e.$createElement,r=e._self._c||t;return r("v-uni-view",{staticClass:"content"},[r("v-uni-form",{staticClass:"app-update-pv"},[r("v-uni-view",{staticClass:"cu-form-group",style:{boxShadow:"",backgroundColor:"rgba(255, 255, 255, 0.56)",borderColor:"#ccc",margin:"",borderWidth:"0",borderStyle:"solid",height:"108rpx"}},[r("v-uni-view",{staticClass:"title",style:{width:"160rpx",fontSize:"28rpx",color:"rgba(41, 40, 40, 1)",textAlign:"left"}},[e._v("物品编号")]),r("v-uni-input",{style:{boxShadow:"0 0 16rpx rgba(0,0,0,.6) inset",backgroundColor:"rgba(255, 255, 255, 0.56)",borderColor:"rgba(0,0,0,.6)",borderRadius:"16rpx",color:"rgba(40, 38, 38, 1)",textAlign:"left",borderWidth:"2rpx",fontSize:"28rpx",borderStyle:"solid",height:"88rpx"},attrs:{disabled:e.ro.wupinbianhao,placeholder:"物品编号"},model:{value:e.ruleForm.wupinbianhao,callback:function(t){e.$set(e.ruleForm,"wupinbianhao",t)},expression:"ruleForm.wupinbianhao"}})],1),r("v-uni-view",{staticClass:"cu-form-group",style:{boxShadow:"",backgroundColor:"rgba(255, 255, 255, 0.56)",borderColor:"#ccc",margin:"",borderWidth:"0",borderStyle:"solid",height:"108rpx"}},[r("v-uni-view",{staticClass:"title",style:{width:"160rpx",fontSize:"28rpx",color:"rgba(41, 40, 40, 1)",textAlign:"left"}},[e._v("物品名称")]),r("v-uni-input",{style:{boxShadow:"0 0 16rpx rgba(0,0,0,.6) inset",backgroundColor:"rgba(255, 255, 255, 0.56)",borderColor:"rgba(0,0,0,.6)",borderRadius:"16rpx",color:"rgba(40, 38, 38, 1)",textAlign:"left",borderWidth:"2rpx",fontSize:"28rpx",borderStyle:"solid",height:"88rpx"},attrs:{disabled:e.ro.wupinmingcheng,placeholder:"物品名称"},model:{value:e.ruleForm.wupinmingcheng,callback:function(t){e.$set(e.ruleForm,"wupinmingcheng",t)},expression:"ruleForm.wupinmingcheng"}})],1),r("v-uni-view",{staticClass:"cu-form-group",style:{boxShadow:"",backgroundColor:"rgba(255, 255, 255, 0.56)",borderColor:"#ccc",margin:"",borderWidth:"0",borderStyle:"solid",height:"108rpx"}},[r("v-uni-view",{staticClass:"title",style:{width:"160rpx",fontSize:"28rpx",color:"rgba(41, 40, 40, 1)",textAlign:"left"}},[e._v("物品详情")]),r("v-uni-input",{style:{boxShadow:"0 0 16rpx rgba(0,0,0,.6) inset",backgroundColor:"rgba(255, 255, 255, 0.56)",borderColor:"rgba(0,0,0,.6)",borderRadius:"16rpx",color:"rgba(40, 38, 38, 1)",textAlign:"left",borderWidth:"2rpx",fontSize:"28rpx",borderStyle:"solid",height:"88rpx"},attrs:{disabled:e.ro.wupinxiangqing,placeholder:"物品详情"},model:{value:e.ruleForm.wupinxiangqing,callback:function(t){e.$set(e.ruleForm,"wupinxiangqing",t)},expression:"ruleForm.wupinxiangqing"}})],1),r("v-uni-view",{staticClass:"cu-form-group",style:{boxShadow:"",backgroundColor:"rgba(255, 255, 255, 0.56)",borderColor:"#ccc",margin:"",borderWidth:"0",borderStyle:"solid",height:"108rpx"}},[r("v-uni-view",{staticClass:"title",style:{width:"160rpx",fontSize:"28rpx",color:"rgba(41, 40, 40, 1)",textAlign:"left"}},[e._v("积分")]),r("v-uni-input",{style:{boxShadow:"0 0 16rpx rgba(0,0,0,.6) inset",backgroundColor:"rgba(255, 255, 255, 0.56)",borderColor:"rgba(0,0,0,.6)",borderRadius:"16rpx",color:"rgba(40, 38, 38, 1)",textAlign:"left",borderWidth:"2rpx",fontSize:"28rpx",borderStyle:"solid",height:"88rpx"},attrs:{disabled:e.ro.jifen,placeholder:"积分"},model:{value:e.ruleForm.jifen,callback:function(t){e.$set(e.ruleForm,"jifen",t)},expression:"ruleForm.jifen"}})],1),r("v-uni-view",{staticClass:"cu-form-group",class:"left"==e.left?"":"active",style:{boxShadow:"",backgroundColor:"rgba(255, 255, 255, 0.56)",borderColor:"#ccc",margin:"",borderWidth:"0",borderStyle:"solid",height:"108rpx"},on:{click:function(t){arguments[0]=t=e.$handleEvent(t),e.wupintupianTap.apply(void 0,arguments)}}},[r("v-uni-view",{staticClass:"title",style:{width:"160rpx",fontSize:"28rpx",color:"rgba(23, 22, 22, 1)",textAlign:"left"}},[e._v("物品图片")]),r("v-uni-view",{staticClass:"right-input",staticStyle:{padding:"0"},style:{textAlign:"left"}},[e.ruleForm.wupintupian?r("v-uni-image",{staticClass:"avator",style:{width:"88rpx",boxShadow:"0 0 16rpx rgba(0,0,0,.3)",borderRadius:"100%",textAlign:"left",height:"88rpx"},attrs:{src:e.ruleForm.wupintupian,mode:"aspectFill"}}):r("v-uni-image",{staticClass:"avator",style:{width:"88rpx",boxShadow:"0 0 16rpx rgba(0,0,0,.3)",borderRadius:"100%",textAlign:"left",height:"88rpx"},attrs:{src:"../../static/gen/upload.png",mode:"aspectFill"}})],1)],1),r("v-uni-view",{staticClass:"btn"},[r("v-uni-button",{staticClass:"bg-red",style:{boxShadow:"0 0 16rpx rgba(0,0,0,0) inset",backgroundColor:"#409EFF",borderColor:"#409EFF",borderRadius:"40rpx",color:"#fff",borderWidth:"1",width:"80%",fontSize:"28rpx",borderStyle:"solid",height:"80rpx"},on:{click:function(t){arguments[0]=t=e.$handleEvent(t),e.onSubmitTap.apply(void 0,arguments)}}},[e._v("提交")])],1)],1)],1)},a=[];r.d(t,"b",(function(){return n})),r.d(t,"c",(function(){return a})),r.d(t,"a",(function(){return i}))}}]);