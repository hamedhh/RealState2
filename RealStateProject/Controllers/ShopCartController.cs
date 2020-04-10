using DataLayer.DB;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DataLayer.ViewModels;

namespace RealStateProject.Controllers
{
    public class ShopCartController : Controller
    {
        // GET: ShopCart
        RealState_DBEntities _db = new RealState_DBEntities();

        public ActionResult Index()
        {
            List<ShopCartViewModel> list = new List<ShopCartViewModel>();

            if (Session["ShopCart"] != null)
            {
                List<ShopCartItem> cart = Session["ShopCart"] as List<ShopCartItem>;
                foreach (var shopCartItem in cart)
                {
                    var product = _db.HomeProperties.Find(shopCartItem.ProductID);
                    list.Add(new ShopCartViewModel()
                    {
                        ProductID = shopCartItem.ProductID,
                        Count = shopCartItem.Count,
                        Title = product.Title,
                        Price = product.HomePrice??0,
                        Sum = shopCartItem.Count * product.HomePrice??0,
                        ImageName = product.ImageName

                    });
                }
            }

            return View(list);
        }

        public int AddToCart(int id)
        {
            List<ShopCartItem> cart = new List<ShopCartItem>();

            if (Session["ShopCart"] != null)
            {
                cart = Session["ShopCart"] as List<ShopCartItem>;
            }

            if (cart.Any(p => p.ProductID == id))
            {
                int index = cart.FindIndex(p => p.ProductID == id);
                cart[index].Count += 1;
            }
            else
            {
                cart.Add(new ShopCartItem()
                {
                    ProductID = id,
                    Count = 1
                });
            }

            Session["ShopCart"] = cart;

            return cart.Sum(p => p.Count);
        }

        public int ShopCartCount()
        {
            int count = 0;

            if (Session["ShopCart"] != null)
            {
                List<ShopCartItem> cart = Session["ShopCart"] as List<ShopCartItem>;
                count = cart.Sum(p => p.Count);
            }

            return count;
        }

        public ActionResult RemoveFromCart(int id)
        {
            List<ShopCartItem> cart = Session["ShopCart"] as List<ShopCartItem>;
            int index = cart.FindIndex(p => p.ProductID == id);
            cart.RemoveAt(index);
            Session["ShopCart"] = cart;
            return RedirectToAction("Index");
        }
    }
}