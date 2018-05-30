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

// manager页面使用bootstrap的js
$('#myTabs a').click(function (e) {
  e.preventDefault()
  $(this).tab('show')
})
$('#myTabs a[href="#profile"]').tab('show') // Select tab by name
$('#myTabs a:first').tab('show') // Select first tab
$('#myTabs a:last').tab('show') // Select last tab
$('#myTabs li:eq(2) a').tab('show') // Select third tab (0-indexed)