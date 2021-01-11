using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _Core.Web.Model.User
{
    public class ItemModel
    {
        public int ID { get; set; }
        public int TypeID { get; set; }
        public int StatusID { get; set; }
        public string Name { get; set; }
        public string Password { get; set; }
        public string Email { get; set; }
        public string Description { get; set; }
    }
}
