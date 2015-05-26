<%@ WebHandler Language="C#" Class="SavePic" %>

using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Web;
/// <summary>
/// 保存图片信息
/// </summary>
public class SavePic : IHttpHandler {

    public void ProcessRequest(HttpContext context)
    {
        context.Response.ContentType = "text/plain";
        //context.Response.Write("Hello World");

        //获得前台post数据
        string name = context.Request.Form["name"];
        string ReturnValue = "true";
        if (name != "null")
        {
            //获取配置文件中的数据库连接配置
            string myStr = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
            SqlConnection myConn = new SqlConnection(myStr);
            myConn.Open();
            
            //获得前台post数据
            string[] titleArr = context.Request.Form["title"].Split(',');
            string[] urlArr = context.Request.Form["url"].Split(',');
            string ID = context.Request.Form["id"];

            string sqlStr = "";
            SqlCommand myCmd = new SqlCommand(sqlStr, myConn);

            if (ID == "0")
            {
                //更新Picture表中的顶部图片信息
                sqlStr = "update Picture set Title='" + titleArr[0] + "',Url='" + urlArr[0] + "' where ID=" + ID;
                myCmd.CommandText = sqlStr;
                if (myCmd.ExecuteNonQuery() == 0)
                {
                    ReturnValue = "false";
                }
            }
            else
            {
                //先删除Picture表中的中部图片信息，再重新添加
                sqlStr = "delete from Picture where ID<>0";
                myCmd.CommandText = sqlStr;
                if (myCmd.ExecuteNonQuery() == 0)
                {
                    ReturnValue = "false";
                }
                for (int i = 0; i < titleArr.Length; i++)
                {
                    sqlStr = "insert into Picture values('" + titleArr[i] + "','" + urlArr[i] + "')";
                    myCmd.CommandText = sqlStr;
                    if (myCmd.ExecuteNonQuery() == 0)
                    {
                        ReturnValue = "false";
                    }
                }
            }
            myCmd.Dispose();
            myConn.Close();
        }
        if (ReturnValue == "true")
        {
            //返回数据库中所有图片的信息
            ReturnValue = new DataClass().GetPic();
        }
        
        context.Response.Write(ReturnValue);
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}