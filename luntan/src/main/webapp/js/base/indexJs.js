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
        $(this).css("background",'#FFF48C');
    })
    $("#username").blur(function () {
        var val=this.value=='用户名'?'用户名':this.value;
        if(val=='用户名'||val==''){
            $("#username").val('用户名');
            $("#username").attr("style",'color:gray');
        }
        $(this).css("background",'white');
    })

    $("#password").focus(function () {
        var val=this.value=='请输入密码'?'':this.value;
        if(val==''){
            $("#password").val(val);
            $("#password").attr("style",'color:black');
        }
        $(this).css("background",'#FFF48C');
    })
    $("#password").blur(function () {
        var val=this.value=='......'?'请输入密码':this.value;
        if(val=='用户名'||val==''){
            $("#password").val('请输入密码');
            $("#password").attr("style",'color:gray');
        }
        $(this).css("background",'white');
    })
}