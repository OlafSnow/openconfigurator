﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace OpenConfigurator.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult GetPage()
        {
            ViewBag.Message = "Welcome to ASP.NET MVC!";
            return View();
        }
    }
}
