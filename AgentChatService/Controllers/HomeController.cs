using AgentChatService.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore.Metadata.Internal;
using Microsoft.Extensions.Logging;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Globalization;
using System.Linq;
using System.Threading.Tasks;

namespace AgentChatService.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;

        public HomeController(ILogger<HomeController> logger)
        {
            _logger = logger;
        }

        public IActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public IActionResult Index(Login login)
        {
            bool returnvalue = false;
            Login objlogin = null;
            if (!ModelState.IsValid)
            {
                using (ChatAgentContext context = new ChatAgentContext())
                {
                    objlogin = context.Logins.Where(a => a.UserName == login.UserName && a.Password == login.Password).FirstOrDefault();
                    returnvalue = objlogin != null ? true : false;
                   if(returnvalue.Equals(true)) {
                        objlogin.LoginTime = DateTime.Now;
                        context.Logins.Update(objlogin);
                        context.SaveChanges();
                    }
                }
                if (returnvalue.Equals(true))
                {

                    TempData["loginname"] = objlogin.UserName;

                    ChatSupportController.loginname = objlogin.UserName;
                    ChatAgentController.loginname = objlogin.UserName;
                    if (objlogin.UserType.Equals("Agent"))
                        return RedirectToAction("Index", "chatAgent");
                    else
                        return RedirectToAction("Index", "chatsupport");
                }
                else
                    ViewBag.error = "Invalid User credentials.";
                return View();
            }
            return View();
        }

       

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
