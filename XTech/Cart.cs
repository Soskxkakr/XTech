using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace XTech
{
    public class Cart
    {
        private List<Product> _productList = new List<Product>();

        public void addProduct(Product product)
        {
            _productList.Add(product);
        }

        public List<Product> getProducts()
        {
            return _productList;
        }

        public int size()
        {
            return _productList.Count;
        }
    }
}