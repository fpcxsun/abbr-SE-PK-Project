<%@ WebHandler Language="C#" Class="SaveNews" %>

using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Web;

/// <summary>
/// 保存新闻信息
/// </summary>
public class SaveNews : IHttpHandler
{
    public void ProcessRequest(HttpContext context)
    {
        context.Response.ContentType = "text/plain";
        //context.Response.Write("Hello World");  
         
        //获得前台post数据
        string name = context.Request.Form["name"];
        string classID = context.Request.Form["classid"];
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
            
            string sqlStr = "";
            SqlCommand myCmd = new SqlCommand(sqlStr, myConn);

            //更新NewsLabel表中分类新闻的标题
            sqlStr = "update NewsLabel set Name='" + name + "' where ClassID=" + classID;
            myCmd.CommandText = sqlStr;
            if (myCmd.ExecuteNonQuery() == 0)
            {
                ReturnValue = "false";
            }

            //先删除News表中相关分类新闻，再重新添加
            sqlStr = "delete from News where ClassID=" + classID;
            myCmd.CommandText = sqlStr;
            if (myCmd.ExecuteNonQuery() == 0)
            {
                ReturnValue = "false";
            }
            for (int i = 0; i < titleArr.Length; i++)
            {
                sqlStr = "insert into News values(" + classID + ",'" + titleArr[i] + "','" + urlArr[i] + "')";
                myCmd.CommandText = sqlStr;
                if (myCmd.ExecuteNonQuery() == 0)
                {
                    ReturnValue = "false";
                }
            }

            myCmd.Dispose();
            myConn.Close();
        }
        if (ReturnValue == "true")
        {
            //返回数据库中此分类的新闻信息
            ReturnValue = new DataClass().GetNews(classID);
        }
        
        context.Response.Write(ReturnValue);
    }

    public bool IsReusable
    {
        get
        {
            return false;
        }
    }

}
