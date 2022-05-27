using CKiralama.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace CKiralama.Controllers
{
    public class RezervasyonController : Controller
    {
        private readonly CKiralamaEntities8 db = new CKiralamaEntities8();
        // GET: Rezervasyon
        public ActionResult Index()
        {

            if(Session["Session_giris"] != null    )
            {

                String Email = Session["session_email"].ToString();
                return View(db.Kullanıcı.Where(x => x.Email == Email).ToList());


            }
            else
            {

                return RedirectToAction("Index", "Rezervasyon");
            }
           
        }
    }
}