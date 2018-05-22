/* 导航栏鼠标浮上去显示子菜单*/
let liTags = document.querySelectorAll('.navigation > ul > li')
for(let i=0; i<liTags.length; i++){
  liTags[i].onmouseenter = function(x){
    let li = x.currentTarget
    li.classList.add('active')
  }
  liTags[i].onmouseleave = function(x){
    let li = x.currentTarget
    li.classList.remove('active')
  }
}