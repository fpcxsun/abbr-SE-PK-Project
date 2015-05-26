using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Web;

/// <summary>
/// DataClass 的摘要说明
/// </summary>

    public class DataClass
    {
        #region
        /// <summary>
        /// 获得某一分类的新闻信息
        /// </summary>
        /// <param name="classID">分类编号</param>
        /// <returns>字符串，包括此分类的所有新闻信息</returns>
        public string GetNews(string classID)
        {
            //获取配置文件中的数据库连接配置
            string myStr = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
            SqlConnection myConn = new SqlConnection(myStr);
            myConn.Open();

            string ReValue = "";
            string sqlStr = "select * from NewsLabel where ClassID=" + classID;
            SqlCommand myCmd = new SqlCommand(sqlStr, myConn);
            SqlDataReader dr = myCmd.ExecuteReader();
            while (dr.Read())
            {
                ReValue += dr[0] + "," + dr[1] + ";";
            }
            dr.Close();

            sqlStr = "select * from News where ClassID=" + classID;
            myCmd.CommandText = sqlStr;
            dr = myCmd.ExecuteReader();
            while (dr.Read())
            {
                ReValue += dr[0] + "," + dr[2] + "," + dr[3] + ";";
            }
            dr.Close();
            myCmd.Dispose();
            myConn.Close();
            return ReValue;
        }
        #endregion

        #region
        /// <summary>
        /// 获得图片信息
        /// </summary>
        /// <returns>字符串，包括所有图片信息</returns>
        public string GetPic()
        {
            //获取配置文件中的数据库连接配置
            string myStr = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
            SqlConnection myConn = new SqlConnection(myStr);
            myConn.Open();

            string ReValue = "";
            string sqlStr = "select * from Picture";    
            SqlCommand myCmd = new SqlCommand(sqlStr, myConn);
            SqlDataReader dr = myCmd.ExecuteReader();
            while (dr.Read())
            {
                ReValue += dr[0] + "," + dr[1] + "," + dr[2] + ";";
            }
            dr.Close();
            myCmd.Dispose();
            myConn.Close();
            return ReValue;
        }
        #endregion
    }
