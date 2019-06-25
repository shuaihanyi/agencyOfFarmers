jQuery.GetUrl = function() {
    var array_url = window.location.pathname.split("/");
//    alert("0:"+array_url[0]+" 1:"+array_url[1]);
    if(array_url[1]=="static" ||
       array_url[1].indexOf("Action") > 0){
        return "/";
    }
	return "/"+array_url[1]+"/";
}