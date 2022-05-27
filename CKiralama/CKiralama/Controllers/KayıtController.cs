using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Security;
using System.Web.Mvc;
using CKiralama.Model;
namespace CKiralama.Controllers
{
    public class KayıtController : Controller

    {
        private readonly CKiralamaEntities8 db = new CKiralamaEntities8();

        // GET: Kayıt
        public ActionResult Index()
        {
            return View();
        }


        [HttpGet]
    public ActionResult Ekle()
    {
        return View();
    }
    


    [HttpPost]
    public ActionResult Ekle(Kullanıcı p1)
        {
           

            db.Kullanıcı.Add(p1);
        db.SaveChanges();
            return RedirectToAction("Giris", "Giris");
        }

    }
}