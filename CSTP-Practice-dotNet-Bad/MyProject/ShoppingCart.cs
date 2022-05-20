using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ShoppingCart
{
    public class ShoppingCart
    {
        // Internal storage for a cart	  
        private Dictionary<int, CartItemInfo> cartItems = new Dictionary<int, CartItemInfo>();
        private decimal gst = 1.07m;

        /// <summary>
        /// Calculate the total for all the cartItems in the Cart
        /// </summary>
        public decimal Total
        {
            get
            {
                decimal total = 0;
                foreach (CartItemInfo item in cartItems.Values)
                {
                    if (item.GstExempted)
                    {
                        total += item.Price * item.Quantity * (1 - item.Discount);
                    }
                    else
                    {
                        total += (item.Price * item.Quantity * (1 - item.Discount)) * gst;
                    }
                }
                return total;
            }
        }

        /// <summary>
        /// Calculate total cartItems in the Cart
        /// </summary>
        public decimal Quantity
        {
            get
            {
                decimal quantity = 0;
                foreach (CartItemInfo item in cartItems.Values)
                {
                    quantity += item.Quantity;
                }

                return quantity;
            }
        }

        /// <summary>
        /// Return the number of unique items in cart
        /// </summary>
        public int Count
        {
            get { return cartItems.Count; }
        }

        /// <summary>
        /// Update the quantity for item that exists in the cart
        /// </summary>
        /// <param name="itemId">Item Id</param>
        /// <param name="qty">Quantity</param>
        public void SetQuantity(int itemId, int qty)
        {
            cartItems[itemId].Quantity = qty;
        }

        /// <summary>
        /// Add an item to the cart.
        /// When ItemId to be added has already existed, this method will update the quantity instead.
        /// </summary>
        /// <param name="item">Item to add</param>
        public void Add(CartItemInfo item)
        {
            CartItemInfo cartItem;
            if (!cartItems.TryGetValue(item.ProductId, out cartItem))
                cartItems.Add(item.ProductId, item);
            else
                cartItem.Quantity += item.Quantity;
        }

        /// <summary>
        /// Remove item from the cart based on itemId
        /// </summary>
        /// <param name="itemId">ItemId of item to remove</param>
        public void Remove(int itemId)
        {
            cartItems.Remove(itemId);
        }

        /// <summary>
        /// Returns all items in the cart. Useful for looping through the cart.
        /// </summary>
        /// <returns>Collection of CartItemInfo</returns>
        public ICollection<CartItemInfo> CartItems
        {
            get { return cartItems.Values; }
        }

        /// <summary>
        /// Clear the cart
        /// </summary>
        public bool Clear()
        {
            try
            {
                cartItems.Clear();
            }
            catch (Exception)
            {
                return false;
            }
            return true;
        }
    }


}
