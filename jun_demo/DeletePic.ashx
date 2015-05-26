<%@ WebHandler Language="C#" Class="DeletePic" %>

using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Web;

public class DeletePic : IHttpHandler {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            //context.Response.Write("Hello World");
            
            //获取配置文件中的数据库连接配置
            string myStr = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
            SqlConnection myConn = new SqlConnection(myStr);
            myConn.Open();
            string ReturnValue = "true";
            //获得前台post数据
            string[] IDArr = context.Request.Form["id"].Split(',');
            
            string sqlStr = "";
            SqlCommand myCmd = new SqlCommand(sqlStr, myConn);
            //删除Picture表中对应ID的行
            for (int i = 0; i < IDArr.Length; i++)
            {
                if (IDArr[i] != "")
                {
                    sqlStr = "delete from Picture where ID=" + IDArr[i];
                    myCmd.CommandText = sqlStr;
                    if (myCmd.ExecuteNonQuery() == 0)
                    {
                        ReturnValue = "false";
                    }
                }
            }
            myCmd.Dispose();
            myConn.Close();
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