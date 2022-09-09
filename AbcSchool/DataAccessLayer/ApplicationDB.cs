using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using AbcSchool.Models;

namespace AbcSchool.DataAccessLayer
{
    public class ApplicationDB
    {
        string connect = "Data Source=(localdb)\\MSSqlLocalDB;Initial Catalog=OAF_DB;Integrated Security=true;";
        SqlConnection con = null;
        SqlCommand cmd = null;
        SqlDataReader r = null;
       
        public int InsertApplication(ApplicationModel am)
        {
            try
            {
                con = new SqlConnection(connect);
                con.Open();
                cmd = new SqlCommand("sp_InsertApplication", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@bid", am.BranchId);
                cmd.Parameters.AddWithValue("@cid", am.ClassId);
                cmd.Parameters.AddWithValue("@name", am.Name);
                cmd.Parameters.AddWithValue("@age", am.Age);
                cmd.Parameters.AddWithValue("@dob", am.DOB);
                cmd.Parameters.AddWithValue("@add", am.Address);
                SqlParameter aid = new SqlParameter("@aid", SqlDbType.Int);
                aid.Direction = ParameterDirection.Output;
                cmd.Parameters.Add(aid);
                var res = cmd.ExecuteNonQuery();
                if (res == 1)

                    return (int)aid.Value;
            }
            catch
            {
                throw;
            }
            finally
            {
                con.Close();
            }
            return 0;
        }
        public string CheckStatus(int appid)
        {
            try
            {
                con = new SqlConnection(connect);
                con.Open();
                cmd = new SqlCommand("sp_CheckStatus", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@appid", appid);
                r = cmd.ExecuteReader();
                string result = "";
                if (r.Read())
                    if (int.Parse(r[1].ToString()) == 0)
                        result = "Application is not processed";
                    else if (int.Parse(r[1].ToString()) == 1)
                        result = "Your Application is processed, Kindly contact: " + r[0].ToString() + " for further process";
                    else
                        result = "No application found, enter correct application number";
                else
                    result = "No application found, enter correct application number";
                return result;
            }
            catch
            {
                throw;
            }
            finally
            {
                con.Close();
            }
            return "";
        }

        public string UpdateReport()
        {
            try
            {
                con = new SqlConnection(connect);
                con.Open();
                cmd = new SqlCommand("sp_UpdateReport", con);
                cmd.CommandType = CommandType.StoredProcedure;
                r = cmd.ExecuteReader();
                string result = "";
                if (r.Read())
                    result = r[0].ToString()+" "+r[1].ToString();
                else
                    result = "No records found";
                return result;
            }
            catch
            {
                throw;
            }
            finally
            {
                con.Close();
            }
            return "";
        }
        public string Login(int id, string password)
        {
            try
            {
                con = new SqlConnection(connect);
                con.Open();
                cmd = new SqlCommand("sp_LoginAdmin", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@id", id);
                cmd.Parameters.AddWithValue("@pass", password);

                r = cmd.ExecuteReader();
                string result = "";
                if (r.Read())
                    result = "Success";
                else
                    result = "Invalid Credentials";

                return result;

            }

            catch
            {
                throw;
            }
            finally
            {
                con.Close();
            }

            return "";
        }

        public int UpdateApplication(ProcessApplicationModel pm)
        {
            try
            {
                con = new SqlConnection(connect);
                con.Open();
                cmd = new SqlCommand("sp_UpdateApplication", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@appid", pm.appid);
                cmd.Parameters.AddWithValue("@adminId", pm.admid);
                cmd.Parameters.AddWithValue("@classId", pm.classid);
                cmd.Parameters.AddWithValue("@comment", pm.comment);
                SqlParameter pid = new SqlParameter("@pid", SqlDbType.Int);
                pid.Direction = ParameterDirection.Output;
                cmd.Parameters.Add(pid);
                var res = cmd.ExecuteNonQuery();
                if (res > 0)
                    return int.Parse(pid.Value.ToString());

            }
            catch
            {
                throw;
            }
            finally
            {
                con.Close();
            }
            return 0;
        }

    }
}