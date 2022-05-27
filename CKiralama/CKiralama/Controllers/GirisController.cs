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
   
    public class GirisController : Controller
    {
        private readonly CKiralamaEntities8 db = new CKiralamaEntities8();
        // GET: Giris
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Giris()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Giris(Kullanıcı k)

        {
            var bilgiler = db.Kullanıcı.FirstOrDefault(x => x.Email == k.Email && x.Sifre == k.Sifre);


            if (bilgiler != null)
            {

                FormsAuthentication.SetAuthCookie(bilgiler.Email, false);
                if (bilgiler.YetkiID == 2)
                    return RedirectToAction("Rezervasyon","ındex");
              
                if (bilgiler.YetkiID==1)
                    return RedirectToAction("Index", "KullanıcıEdit");

            }

            ViewBag.Data["sonuc"] = ("Kullanıcı Adı veya Şifre Yanlış");
            return View();
        }



        public ActionResult Cikis()
        {
            Session["Email"] = null;
            Session.Abandon();
            return RedirectToAction("Giris", "Giris");
        }

















        //if (bilgiler==0)
        //{
        // ViewBag.Data["sonuc"] = ("Kullanıcı Adı veya Şifre Yanlış");
        //}
        //else
        //{
        //    Session["session_giris"] = true;
        //    Session["session_Email"] = true;
        //    Session["session_Sifre"] = true;
        //    ViewBag.Data["sonuc"] = ("Başarılı Sonuç");

        //}



    }
}