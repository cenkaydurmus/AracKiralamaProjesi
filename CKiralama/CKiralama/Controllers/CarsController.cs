using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace CKiralama.Controllers
{
    public class CarsController : Controller
    {
        // GET: Cars
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult EkonomikCars()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }

        public ActionResult LuxsCars()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }

        public ActionResult OrtaCars()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }


    }
}