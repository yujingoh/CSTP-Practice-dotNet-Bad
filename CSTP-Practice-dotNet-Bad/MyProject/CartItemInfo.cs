using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ShoppingCart
{
    public class CartItemInfo
    {
        // Internal member variables
        private int productId;
        private int quantity = 1;
        private string productName;
        private decimal price;
        private decimal discount;
        private bool gstExempted = true;

        /// <summary>
        /// Default constructor
        /// </summary>
        public CartItemInfo() { }

        /// <summary>
        /// Constructor with specified initial values
        /// </summary>
        /// <param name="itemId">Id of item to add to cart</param></param>
        /// <param name="name">Name of item</param>
        /// <param name="qty">Quantity to purchase</param>
        /// <param name="price">Price of item</param>
        /// <param name="discount">Discount for the item. Eg. 0.2 - represents 20% discount</param>
        /// <param name="gstExempted">Item is gst exempted?</param>
        public CartItemInfo(int productId, string productName, int qty, decimal price, decimal discount, bool gstExempted)
        {
            this.productId = productId;
            this.productName = productName;
            this.quantity = qty;
            this.price = price;
            this.discount = discount;
            this.gstExempted = gstExempted;
        }

        // Properties
        public int ProductId
        {
            get { return productId; }
            set { productId = value; }
        }

        public int Quantity
        {
            get { return quantity; }
            set { quantity = value; }
        }

        public decimal Subtotal
        {
            get { return (decimal)(this.quantity * this.price); }
        }


        public string ProductName
        {
            get { return productName; }
            set { productName = value; }
        }

        public decimal Discount
        {
            get { return discount; }
            set { discount = value; }
        }
        public decimal Price
        {
            get { return price; }
            set { price = value; }
        }
        public bool GstExempted
        {
            get { return gstExempted; }
            set { gstExempted = value; }
        }

    }
}
