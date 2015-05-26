<%@ WebHandler Language="C#" Class="Login" %>

using System;
using System.Web;
/// <summary>
/// 管理员登录验证
/// </summary>
public class Login : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        context.Response.ContentType = "text/plain";
        //context.Response.Write("Hello World");
        //验证管理员
        string password = context.Request.Form["password"];
        //管理员口令设置
        if (password == "hitwhadmin")
        {
            context.Response.Write("true");
        }
        else
        {
            context.Response.Write("false");
        }
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}