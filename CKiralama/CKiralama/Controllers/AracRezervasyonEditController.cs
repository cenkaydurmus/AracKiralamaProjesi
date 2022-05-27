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
    public class AracRezervasyonEditController : Controller
    {
        private CKiralamaEntities8 db = new CKiralamaEntities8();

        // GET: AracRezervasyonEdit
        public ActionResult Index()
        {
            return View(db.AracRezervasyon.ToList());
        }

        // GET: AracRezervasyonEdit/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            AracRezervasyon aracRezervasyon = db.AracRezervasyon.Find(id);
            if (aracRezervasyon == null)
            {
                return HttpNotFound();
            }
            return View(aracRezervasyon);
        }

        // GET: AracRezervasyonEdit/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: AracRezervasyonEdit/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "rezervasyonID,istasyonAlisYeri,İstasyonTeslimYeri,İstasyonAlisTarihi,istasyonBitisTarihi,rezervasyondurum,KulllanıcıID,aracID,İptalMi,İptalTarihi,Ucret")] AracRezervasyon aracRezervasyon)
        {
            if (ModelState.IsValid)
            {
                db.AracRezervasyon.Add(aracRezervasyon);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(aracRezervasyon);
        }

        // GET: AracRezervasyonEdit/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            AracRezervasyon aracRezervasyon = db.AracRezervasyon.Find(id);
            if (aracRezervasyon == null)
            {
                return HttpNotFound();
            }
            return View(aracRezervasyon);
        }

        // POST: AracRezervasyonEdit/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "rezervasyonID,istasyonAlisYeri,İstasyonTeslimYeri,İstasyonAlisTarihi,istasyonBitisTarihi,rezervasyondurum,KulllanıcıID,aracID,İptalMi,İptalTarihi,Ucret")] AracRezervasyon aracRezervasyon)
        {
            if (ModelState.IsValid)
            {
                db.Entry(aracRezervasyon).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(aracRezervasyon);
        }

        // GET: AracRezervasyonEdit/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            AracRezervasyon aracRezervasyon = db.AracRezervasyon.Find(id);
            if (aracRezervasyon == null)
            {
                return HttpNotFound();
            }
            return View(aracRezervasyon);
        }

        // POST: AracRezervasyonEdit/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            AracRezervasyon aracRezervasyon = db.AracRezervasyon.Find(id);
            db.AracRezervasyon.Remove(aracRezervasyon);
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
