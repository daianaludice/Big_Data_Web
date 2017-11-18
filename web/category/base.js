$('#text1').hover(function(){
  $('#box1').css('background-color','rgb(219, 255, 224)');
});
$('#text2').hover(function(){
  $('#box1').css('background-color','rgb(252, 217, 253)');
});
$('#text3').hover(function(){
  $('#box1').css('background-color','rgb(252, 255, 209)');
});
$('#text4').hover(function(){
  $('#box1').css('background-color','rgb(217, 235, 253)');
});
$('#text5').hover(function(){
  $('#box1').css('background-color','rgb(255,234,246)');
});
$('#image6').hover(function(){
  $(this).attr("src","img/f1.png");
});
$(document).ready(function(){
  $("#image8").click(function(){
    $("#box3").toggle("fast");
    $("#box").animate({top: '-=80px'},300);
    $("#image8").animate({top: '-=80px'},300);
    $(this).attr("src","img/menu.png");
  });
});
$(document).ready(function(){
  $("#image6").click(function(){
    $("#content").toggle("fast");
    $("#box2").animate({left: '+=100px'},300);
    $("#image6").animate({left: '+=100px'},300);
    $(this).attr("src","img/f2.png");
  });
});