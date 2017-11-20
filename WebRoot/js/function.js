$(function () {


    var floor = 777;
    $("#release").click(function () {
        var d = new Date();
        var year = d.getFullYear();
        var month = d.getMonth() + 1;
        var day = d.getDate();
        var hours = d.getHours();
        var minutes = d.getMinutes();
        /* var seconds = d.getSeconds();  */
        var time = year + "年" + month + "月" + day + "日" + hours + ":"
            + minutes;
        floor++;
        $("#count").text(floor);
        $("#article").prepend("<h6><span class='red'>" + $("#nickname").val() + "</span> " + time
            + "<span id='floor'> " + floor + "</span>楼</h6><p class='red'>"
            + $("#commentContent").val() + "</p>");
    });

    //product-view.jsp
    $("#add").click(function () {
        var $goodsCount = parseInt($("#quantity").val());
        $goodsCount = $goodsCount + 1;

        $("#quantity").val($goodsCount);
    });

    $("#dec").click(function () {
        var $goodsCount = parseInt($("#quantity").val());
        $goodsCount = $goodsCount - 1;
        $("#quantity").val($goodsCount);
        if ($goodsCount == 0) {
            $("#quantity").val("1");
        }
    });

    $("#quantity").bind("input", function () {
        if ($("#quantity").val() == "") {
            $("#quantity").val("1");
        }
    });

    $(".add2Cart").click(function () {
        location.href = "shoppingcart.jsp";

    });


    $(".productComment").click(function () {
        var material = document.getElementsByClassName("material");
        var comment = document.getElementsByClassName("comment");
        for (var i = 0; i < material.length; i++) {
            material[i].style.display = "none";
            comment[i].style.display = "inline-block";
        }
        ;

        var productDetial = document.getElementsByClassName("productDetial");
        productDetial[0].style.border = 0;
        var productComment = document.getElementsByClassName("productComment");
        productComment[0].style.borderTopRightRadius = "5px";
        productComment[0].style.borderTopLeftRadius = "5px";
        productComment[0].style.borderTop = "1px solid black";
        productComment[0].style.borderLeft = "1px solid black";
        productComment[0].style.borderRight = "1px solid black";

    });

    $(".productDetial").click(function () {
        var comment = document.getElementsByClassName("comment");
        var material = document.getElementsByClassName("material");
        for (var i = 0; i < comment.length; i++) {
            comment[i].style.display = "none";
            material[i].style.display = "inline-block";
        }

        var productComment = document.getElementsByClassName("productComment");
        productComment[0].style.border = 0;
        var productDetial = document.getElementsByClassName("productDetial");
        productDetial[0].style.borderTopRightRadius = "5px";
        productDetial[0].style.borderTopLeftRadius = "5px";
        productDetial[0].style.borderTop = "1px solid black";
        productDetial[0].style.borderLeft = "1px solid black";
        productDetial[0].style.borderRight = "1px solid black";

    });

    //register.jsp cancel tip
    $("#inputPassword").focus(function(){
    	//$("#tip").css("display","none");
    
    });
    
    
    
    //login.jsp
    
    
    $("input[name='username']").focus(function () {
        $("span[name='errorMsg']").css("display","none");
    });
    
//    $("#isReg").bind("input propertychange", function () {
//    	alert(123);
//    	console.debug($("#isReg").val());
//       if($("this").val() == true){
//    	   alert(123);
//       }
//    });

    //shoppingcart.jsp
    // $(".custom-checkbox").bind("click",function () {
    //     $("this").css("backgroundColor","red").toggle();
    // });
//    $("#choseAll").toggle(function () {
//        $("this").css("background-image", "url('../img/checkbox.png')");
//    },function () {
//       $("this").css("background","url('../img/checkbox.png')");
//    });


});







//购物车全选
function allSelect() {
    if ($(":checkbox").attr("checked") != "checked") {
        $(":checkbox").attr("checked", "checked");
    }else {
        $(":checkbox").removeAttr("checked");
    }
}


//验证码
function changeRandomCode(){
    //alert(1);
    document.getElementById("randomCodeImg").src="/dangdang/randomCode?"+new Date().getTime();//idea 不用写上下文

}


//检查账号是否存在
function checkUsername() {
	var username = $("#usernameId").val();
	console.debug(username);
	
	
	 $.post("/dangdang/ajax_register",
			    {
		 			"username":username
			       
			    },
			        function(data,status){
			        //alert("数据: \n" + data + "\n状态: " + status);
			        $("#tip").text(data);
			    });
	
	
//	//1.创建Ajax对象
//	var ajax = createAjax();
//	
//	ajax.open("get","/dangdang/ajax_register?username="+username);
//	
//	
//	//获取请求状态  异步  回调函数
//	ajax.onreadystatechange = function() {
//		if(ajax.readyState == 4 && ajax.status == 200){//接收响应数据
//			var text =  ajax.responseText;
//			
//			document.getElementById("tip").innerHTML = text;
//		}
//	};
//	
//	//3.发送请求
//	ajax.send();

	
	
	
	
	
	
	
	
}


//创建Ajax对象
//function createAjax() {
//	var ajax;
//	try {
//		ajax = new XMLHttpRequest();
//		
//	} catch (e) {
//		// : handle exception
//		ajax = new ActiveXObject();
//		
//	}
//	return ajax;
//}



function p(data) {
    console.debug(data);

}


/* register.jsp  */
function register() {
    /* location.href = "register.jsp"; */
    window.open("register.jsp");

}

// var isReg = document.getElementById("isReg").value();
// p(isReg);
// if(isReg.trim()==1){
//     alert("Register successfully,Please login!");
// }

function formCheck() {
    // if (document.checkform.username.value == "" && document.checkform.password.value == "") {
    //     alert("please input data!");
    //     document.checkform.username.focus();
    //     return false;
    // }
        // else if (document.checkform.username.value == "admin" && document.checkform.password.value == "123") {
        // alert("Loin successfully！" + navigator.appName);
        //
        // var win = window.open("about:blank", "_self");
        // win.close();
        // window.open("index.jsp");
   // }
   // else {       //信息不正确
        //alert("data incorrect!");
   // }

}

/*  register.jsp form submit */
function registerCheck() {
    var username = document.checkform.username.value;
    var password = document.checkform.password.value;
    var checkpassword = document.checkform.checkpassword.value;
    var phone = document.checkform.phone.value;

    //p(username + "," + password + "," + checkpassword + "," + phone);


    if( password!=checkpassword) {
        alert("The passwords you entered must be the same!");
    } else {
        if(isNaN(phone)){  //is not a number
            alert("phone must be numbers!");
            return false;
        } else {
            var phone_reg=/^1[3|4|5|7|8]\d{9}$/;
            if(phone_reg.test(phone)){
               // alert("phone number is valid.");
                return true;
            }else{
                alert("Invalid phone number.");
                return false;
            }
        }
        

    }
    // else {
    //     alert("Register successfully,Please Login!");
    //
    //     window.location.href="about:blank";
    //     window.close();
    //     window.open("register.jsp");
    //
    // }
}