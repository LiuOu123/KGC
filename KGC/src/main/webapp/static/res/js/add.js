//获取后端服务器地址
$(function() {
    $("#getsmscode").addClass("layui-disabled");
    $("#getsmscode").attr("disabled", true);
    $("#phone").keyup(function() {
        let phone = $("#phone").val()
        if (phone != null && phone.trim().length == 11) {
            if (!(/^1[3456789]\d{9}$/.test(phone))) {
                layer.msg('请输入正确的手机号33333');
            } else {
                $("#getsmscode").removeClass("layui-disabled");
                $("#getsmscode").attr("disabled", false);
            }
        } else if (phone != null && phone.trim().length > 11) {
            phone = phone.substring(0, 11);
            $("#phone").val(phone)
        }
    })
    let $url = "";
    $.get('res/serverconfig.json', function(responseText, textStatus, XMLHttpRequest) {
        switch (textStatus) {
            case 'success':
                $url = responseText.protocol + responseText.domain + responseText.port + responseText.context;
                break;
            case 'error':
                // layer.msg('走丢了', {
                //     icon: 2,
                //     shade: 0.01
                // })
                break;
            default:
                break;
        }
    });


    //使用form模块
    layui.use(['form'], function() {
        var form = layui.form
        form.verify({
            //value：表单的值、item：表单的DOM对象
            account: function(value, item) {
                if ("" == value.trim()) {
                    return "账号不能为空"
                }
            },
            password: [
                /^[\S]{6,12}$/, '密码必须6到12位，且不能出现空格'
            ]
        });

        let $res = "";
        var btn = $("#getsmscode");
        btn.click(function() {
            alert("发送")
            $("#getsmscode").addClass("layui-disabled");
            let $phone = document.getElementById('phone').value;
            if (!(/^1[3456789]\d{9}$/.test($phone))) {
                layer.msg('请输入正确的手机号123');
                return false;
            }

            $.ajax({
                url: $url + '/user.action?methodName=reception',
                type: "post",
                dataType: "json",
                data: { 'phone': $phone },
                success: function(responseText) {
                    $res = responseText

                },
                error: function() {
                    alert("发送")
                }
            })

            let countdown = 60; //倒计时总时间，为了演示效果，设为5秒，一般都是60s

            let settime = setInterval(() => {
                // btn.addClass("disabled");
                // btn.attr("disabled", true);
                btn.html("重新发送(" + countdown + ")");;
                if (countdown-- == 0) {
                    clearInterval(settime);
                    btn.attr("disabled", false);
                    btn.html("获取验证码");
                    btn.removeClass("disabled");
                    countdown = 60;
                    $res = "";
                }
            }, 1000);

        })







        //提交
        form.on('submit(submit)', function(obj) {
            var field = obj.field;
            //确认密码
            if (field.password !== field.repass) {
                return layer.msg('两次密码输入不一致');
            }
            if ($res != field.vercode) {
                return layer.msg('验证码错误');
            }

            $.ajax({
                url: $url + '/user.action?methodName=addUser',
                type: "post",
                dataType: "json",
                data: { 'account': field.account, 'phone': field.phone, 'password': field.password },
                success: function(responseText) {
                    switch (responseText.status) {
                        case 'Success':
                            layer.msg('注册成功', {
                                icon: 1,
                                time: 1000,
                            })

                            break;
                        case 'Failed':
                            layer.msg('注册失败', {
                                icon: 2,
                                time: 1000,
                            })
                            break;

                        default:
                            break;
                    }
                }
            })

        });
    });
})