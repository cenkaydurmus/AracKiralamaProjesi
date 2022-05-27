using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using CKiralama.Model;



namespace CKiralama.Controllers
{
    public class AracYonetController : Controller
    {
            CKiralamaEntities8 db = new CKiralamaEntities8();
        // GET: AracYonet

        public ActionResult Index()
        {
            return View(db.AracBilgisi.ToList());

        }

        public ActionResult Details(int? id)
        {

            AracBilgisi aracverisi = db.AracBilgisi.Find(id);
            return View(aracverisi);
        }
        
        [HttpGet]

        public ActionResult Rezervation(int? id)
        {
            AracBilgisi aracverisi = db.AracBilgisi.Find(id);
            ViewData ["Marka"] = aracverisi.aracMarka;
            ViewData ["Model"] = aracverisi.aracModel;
            ViewData ["Fiyat"] = aracverisi.aracFiyat;
            return View();

        }

        [HttpPost]

        public ActionResult Rezervation([Bind(Include = "rezervasyonID,aracID,,İstasyonAlisTarihi,istasyonBitisTarihi,istasyonAlisYeri,İstasyonTeslimYeri,Ucret")] AracRezervasyon rezervasyon)
        { 
        
        if(ModelState.IsValid)
            {

                AracRezervasyon aracRezervasyon = db.AracRezervasyon.Add(rezervasyon);
                NewMethod();

            }
            ViewBag.Message = "Tebrikler Rezervasyon işleminiz Başrıyla Gerçekleşti.";
            return View();

            void NewMethod()
            {
                db.SaveChanges();
            }
        }   

    }
}