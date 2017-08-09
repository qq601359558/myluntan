/**
 * Created by ThinkPad on 2017/7/20.
 */
function inputStyle() {
    $("#username").focus(function () {
        var val=this.value=='用户名'?'':this.value;
        if(val==''){
            $("#username").val(val);
            $("#username").attr("style",'color:black');
        }
        $(this).css("background-color",'#FFF48C');
    })
    $("#username").blur(function () {
        var val=this.value=='用户名'?'用户名':this.value;
        if(val=='用户名'||val==''){
            $("#username").val('用户名');
            $("#username").attr("style",'color:gray');
        }
        $(this).css("background",'none');
    })

    $("#password").focus(function () {
        var val=this.value=='请输入密码'?'':this.value;
        if(val==''){
            $("#password").val(val);
            $("#password").attr("style",'color:black');
        }
        $(this).css("background-color",'#FFF48C');
    })
    $("#password").blur(function () {
        var val=this.value=='......'?'请输入密码':this.value;
        if(val=='用户名'||val==''){
            $("#password").val('请输入密码');
            $("#password").attr("style",'color:gray');
        }
        $(this).css("background",'none');
    })
}
function changeBg(){
    var  i = Math.round(Math.random()*10);
    switch (i) {
        case 1:
            $('body').css("background-image", "url('img/background/1.jpg')");
            break;
        case 2:
            $('body').css("background-image", "url('img/background/2.jpg')");
            break;
        case 3:
            $('body').css("background-image", "url('img/background/3.jpg')");
            break;
        case 4:
            $('body').css("background-image", "url('img/background/4.jpg')");
            break;
        case 5:
            $('body').css("background-image", "url('img/background/5.jpg')");
            break;
        case 6:
            $('body').css("background-image", "url('img/background/6.jpg')");
            break;
        case 7:
            $('body').css("background-image", "url('img/background/7.jpg')");
            break;
        case 8:
            $('body').css("background-image", "url('img/background/8.jpg')");
            break;
        case 9:
            $('body').css("background-image", "url('img/background/9.jpg')");
            break;
        case 10:
            $('body').css("background-image", "url('img/background/10.jpg')");
            break;
        default:
            $('body').css("background-image", "url('img/background/d.jpg')");
            break;
    }
    $('body').css("background-repeat","no-repeat");
    $('body').css("background-size","cover");
}

