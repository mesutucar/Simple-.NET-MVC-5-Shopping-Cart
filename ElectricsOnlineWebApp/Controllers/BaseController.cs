using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ElectricsOnlineWebApp.Controllers
{
    public class BaseController : Controller
    {
        protected ElectricsOnlineEntities _ctx = new ElectricsOnlineEntities();

        public BaseController()
        {
            ViewBag.CartTotalPrice = CartTotalPrice;
            ViewBag.Cart = Cart;
            ViewBag.CartUnits = Cart.Count;
        }

        private List<ShoppingCartData> Cart
        {
            get
            {
                try
                {
                    return _ctx.ShoppingCartDatas.ToList();
                }
                catch (Exception e) { }

                return null;
            }
        }

        private decimal CartTotalPrice
        {
            get
            {
                try
                {
                    return Cart.Sum(c => c.Quantity * c.UnitPrice);
                }
                catch (Exception e) { }

                return 0;
            }
        }
    }
}