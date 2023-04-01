using AgentChatService.BLL;
using AgentChatService.Models;
using AgentChatService.RabitMQ;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Globalization;
using System.Linq;
using System.Threading.Tasks;

namespace AgentChatService.Controllers
{
    public class ChatSupportController : Controller
    {
        IConfiguration _configuration;
        public ChatSupportController(IConfiguration configuration)
        {
            _configuration = configuration;
        }
        public static string loginname { get; set; }
        public static string agentName { get; set; }
        // GET: ChatSupportController
        public ActionResult Index()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Index(MessageVM messageVM)
        {
            return View(messageVM);
        }

        [HttpGet]
        public JsonResult GetAgentList()
        {
            List<ListItem> userlist = new List<ListItem>();
            int id = 0;

            // Check office hours and then assign agent
            //var currTime = DateTime.Now.TimeOfDay;
            //var startTime = DateTime.ParseExact("08:00:00", "HH:mm:ss", CultureInfo.InvariantCulture).TimeOfDay;
            //var endTime = DateTime.ParseExact("22:00:00", "HH:mm:ss", CultureInfo.InvariantCulture).TimeOfDay;
            //if (currTime < startTime || currTime > endTime)
            //{
            //    userlist.Add(new ListItem
            //    {
            //        Value = "Non Working hours.",
            //        Text = "Non Working hours."

            //    });
            //    return Json(userlist);
            //}
            userlist = new BLLUserList(_configuration).GetUserList();
            return Json(userlist);

        }

        [HttpGet]
        [Route("Pushmessage/{message}/{user}")]
        public JsonResult Pushmessage(string message, string user)
        {
            //messageVM.ChatMessage = messageVM.ChatMessage + " </br> " + loginname + "</br> : " + messageVM.UserName + " <label  class='form - control'>  " + messageVM.ChatMessage + " <label></br>";
            MessageUtility.PushMessage(message, user);
            BLLUserList bll = new BLLUserList(_configuration);
            bll.InsertCustomerAgent(loginname, user);
            return Json(null);
        }

        // GET: ChatSupportController/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: ChatSupportController/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: ChatSupportController/Create
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(IFormCollection collection)
        {
            try
            {
                return RedirectToAction(nameof(Index));
            }
            catch
            {
                return View();
            }
        }

        // GET: ChatSupportController/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: ChatSupportController/Edit/5
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(int id, IFormCollection collection)
        {
            try
            {
                return RedirectToAction(nameof(Index));
            }
            catch
            {
                return View();
            }
        }

        // GET: ChatSupportController/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: ChatSupportController/Delete/5
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Delete(int id, IFormCollection collection)
        {
            try
            {
                return RedirectToAction(nameof(Index));
            }
            catch
            {
                return View();
            }
        }
    }
}
