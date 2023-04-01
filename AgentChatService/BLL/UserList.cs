using AgentChatService.Models;
using Newtonsoft.Json.Linq;
using static System.Net.Mime.MediaTypeNames;
using System.Collections.Generic;
using System.Linq;
using Microsoft.Data.SqlClient;
using System.Data;
using System.Drawing;
using System;
using System.Configuration;
using Microsoft.Extensions.Configuration;
using ConfigurationManager = System.Configuration.ConfigurationManager;
using System.Linq.Expressions;

namespace AgentChatService.BLL
{
    public class BLLUserList
    {
        SqlConnection con = new SqlConnection();
        IConfiguration _configuration;
        public BLLUserList(IConfiguration configuration)
        {
            _configuration = configuration;
            con.ConnectionString = configuration.GetConnectionString("DbConnect").ToString();

        }

        public bool InsertCustomerAgent(string loginname,string agentname)
        {
            bool success = false;
            using (ChatAgentContext context = new ChatAgentContext())
            {
              
                Login obj1 = context.Logins.Where(a => a.UserName == loginname).ToList().FirstOrDefault();
                Login obj2 = context.Logins.Where(a => a.UserName == agentname).ToList().FirstOrDefault();
                context.CustomerAgents.Add(new CustomerAgent() { AgentId = obj2.UserId, CustomerId= obj1.UserId });

                context.SaveChanges();
                success = true;
            }
            return success;

        }
        public List<ListItem> GetUserList()
        {
            List<ListItem> userlist = new List<ListItem>();


            //using (ChatAgentContext context = new ChatAgentContext())
            //{
            //    List<Login> agentList = context.Logins.Where(a => a.UserType == "Agent").ToList();

            //    //CalculateCapacity(agentList);
            //    foreach (Login a in agentList)
            //    {
            //        userlist.Add(new ListItem() { Text = a.UserName, Value = a.UserId.ToString() });
            //    }
            //}

            var obj = GetUserList("");
            foreach (Login a in obj)
            {
                userlist.Add(new ListItem() { Text = a.UserName, Value = a.UserId.ToString() });
            }

            return userlist;
        }

        private int CalculateCapacity(List<Login> userlist)
        {
            List<CustomerAgent> agentList = new List<CustomerAgent>();
            using (ChatAgentContext context = new ChatAgentContext())
            {
                var que = (from l in context.Logins
                           join al in context.CustomerAgents on l.UserId equals al.AgentId
                           group al by al.AgentId into newgroup
                           select new
                           {
                               AgentId = newgroup.FirstOrDefault().AgentId,
                               Count = newgroup.Sum(c => c.AgentId)

                           }).OrderBy(c => c.Count).ToList();

            }

            //Remove the Teamoverflow
            var user = userlist.Where(a => a.TeamName == "TeamOverflow").ToList();
            int juniorCapacity = 4;
            int midlevelCapacity = 6;
            int seniorcCapacity = 8;
            int teamleasCapacity = 5;


            //select the capacity from the CustomerAgent table

            return 1;
        }


        public List<Login> GetUserList(string email)
        {
            List<Login> userLst = new List<Login>();
            try
            {
                string sql = "sp_GetUserList";
                SqlCommand cmd = new SqlCommand(sql, con);
                cmd.CommandType = CommandType.StoredProcedure;

                //SqlParameter email_param = new SqlParameter();
                //email_param = cmd.Parameters.Add("@email", SqlDbType.VarChar);
                //email_param.Value = email;

                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                while (rdr.Read())
                {
                    userLst.Add(new Login()
                    {
                        UserName = rdr["UserName"].ToString(),
                        UserId = Convert.ToInt32(rdr["UserId"].ToString()),
                        UserType = rdr["UserType"].ToString(),
                        TeamName = rdr["TeamName"].ToString()
                    });
                }
            }
            catch (Exception ex)
            {

            }
            finally
            {
                con.Close();
            }
            return userLst;
        }

    }
}
