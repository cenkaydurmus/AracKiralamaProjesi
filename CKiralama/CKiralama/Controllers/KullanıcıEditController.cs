using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using CKiralama.Model;

namespace CKiralama.Controllers
{
    public class KullanıcıEditController : Controller
    {
        private CKiralamaEntities8 db = new CKiralamaEntities8();

        // GET: KullanıcıEdit
        public ActionResult Index()
        {
            var kullanıcı = db.Kullanıcı.Include(k => k.Yetki);
            return View(kullanıcı.ToList());
        }

        // GET: KullanıcıEdit/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Kullanıcı kullanıcı = db.Kullanıcı.Find(id);
            if (kullanıcı == null)
            {
                return HttpNotFound();
            }
            return View(kullanıcı);
        }

        // GET: KullanıcıEdit/Create
        public ActionResult Create()
        {
            ViewBag.YetkiID = new SelectList(db.Yetki, "YetkiID", "ad");
            return View();
        }

        // POST: KullanıcıEdit/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "KullanıcıID,Ad,Soyad,Email,Sifre,Adres,Telefon,DogumTarihi,KanGrup,EhliyetSinifi,YetkiID,Image")] Kullanıcı kullanıcı)
        {
            if (ModelState.IsValid)
            {
                db.Kullanıcı.Add(kullanıcı);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.YetkiID = new SelectList(db.Yetki, "YetkiID", "ad", kullanıcı.YetkiID);
            return View(kullanıcı);
        }

        // GET: KullanıcıEdit/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Kullanıcı kullanıcı = db.Kullanıcı.Find(id);
            if (kullanıcı == null)
            {
                return HttpNotFound();
            }
            ViewBag.YetkiID = new SelectList(db.Yetki, "YetkiID", "ad", kullanıcı.YetkiID);
            return View(kullanıcı);
        }

        // POST: KullanıcıEdit/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "KullanıcıID,Ad,Soyad,Email,Sifre,Adres,Telefon,DogumTarihi,KanGrup,EhliyetSinifi,YetkiID,Image")] Kullanıcı kullanıcı)
        {
            if (ModelState.IsValid)
            {
                db.Entry(kullanıcı).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.YetkiID = new SelectList(db.Yetki, "YetkiID", "ad", kullanıcı.YetkiID);
            return View(kullanıcı);
        }

        // GET: KullanıcıEdit/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Kullanıcı kullanıcı = db.Kullanıcı.Find(id);
            if (kullanıcı == null)
            {
                return HttpNotFound();
            }
            return View(kullanıcı);
        }

        // POST: KullanıcıEdit/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Kullanıcı kullanıcı = db.Kullanıcı.Find(id);
            db.Kullanıcı.Remove(kullanıcı);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
