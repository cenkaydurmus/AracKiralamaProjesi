using CKiralama.Model;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Helpers;
using System.Web.Mvc;


namespace CKiralama.Controllers
{
    public class AuthorAdminController : Controller
    {
        private readonly CKiralamaEntities8 db = new CKiralamaEntities8();

        // GET: AuthorAdmin
        public ActionResult Index()
        {
            return View();
        }


        public ActionResult Create()
        {
            return View();
        }


        [HttpPost]
        public ActionResult Create(Kullanıcı author, HttpPostedFileBase File)
        {
            var authorExist = db.Kullanıcı.Any(m => m.Email == author.Email);

            if (authorExist == false)
            {
                //author.DogumTarihi = DateTime.Now;//session kullanarak yapılacak alan.
                // author.Ad = "";
                //author.Soyad = "";
                if (File != null)
                {
                    FileInfo fileinfo = new FileInfo(File.FileName);
                    WebImage img = new WebImage(File.InputStream);
                    string uzanti = (Guid.NewGuid().ToString() + fileinfo.Extension).ToLower();
                    img.Resize(225, 180, false, false);
                    string tamyol = "~/images/users/" + uzanti;
                    img.Save(Server.MapPath(tamyol));
                    author.Image = "/images/users/" + uzanti;
                }
                db.Kullanıcı.Add(author);
                db.SaveChanges();
            }
            return RedirectToAction("Index", "AuthorAdmin");


            //public ActionResult Delete()
            //{
            //    return View();
            //}


            //public ActionResult Delete(int? Id)
            //{
            //    if (Id == null)
            //    {
            //        return HttpNotFound();
            //    }

            //    Kullanıcı aut = db.Kullanıcı.Find(Id);
            //    db.Kullanıcı.Remove(aut);
            //    db.SaveChanges();
            //    return RedirectToAction("Index", "AuthorAdmin");
            //}


            //public ActionResult Details()
            //{
            //    return View();
            //}

            //public ActionResult Details(int? Id)
            //{
            //    if (Id == null || Id == 0)
            //    {
            //        return HttpNotFound();
            //    }
            //    Kullanıcı aut = db.Kullanıcı.Find(Id);
            //    return PartialView(aut);
            //}


            //public ActionResult Edit(int? Id)
            //{
            //    if (Id == null || Id == 0)
            //    {
            //        return HttpNotFound();
            //    }
            //    Kullanıcı aut = db.Kullanıcı.Find(Id);
            //    return View(aut);
            //}

            //[HttpPost]
            //public ActionResult Edit(Kullanıcı aut, HttpPostedFileBase File)
            //{
            //    if (aut != null)
            //    {
            //        db.Entry(aut).State = System.Data.Entity.EntityState.Modified;
            //        db.Entry(aut).Property(m => m.DogumTarihi).IsModified = false;
            //        db.Entry(aut).Property(m => m.Ad).IsModified = false;
            //        if (File != null)
            //        {
            //            FileInfo fileinfo = new FileInfo(File.FileName);
            //            WebImage img = new WebImage(File.InputStream);
            //            string uzanti = (Guid.NewGuid().ToString() + fileinfo.Extension).ToLower();
            //            img.Resize(225, 180, false, false);
            //            string tamyol = "~/images/users/" + uzanti;
            //            img.Save(Server.MapPath(tamyol));
            //            author.Image = "/images/users/" + uzanti;
            //        }
            //        else
            //        {
            //            db.Entry(aut).Property(m => m.Image).IsModified = false;
            //        }
            //        //author.ModifyBy = "Cenkay Durmuş";
            //        //author.ModifyDate = DateTime.Now;
            //    }
            //    db.SaveChanges();
            //    return RedirectToAction("Index", "AuthorAdmin");

            //Verı tabanı hatası alıyorum çalışmıyor kodlar






        }
    }
}