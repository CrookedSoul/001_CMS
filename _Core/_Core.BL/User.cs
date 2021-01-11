using _Core.DAL;
using _Core.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _Core.BL
{
    public class User
    {
        UserDAL dal = new UserDAL();

        public List<UserInfo> Get()
        {
            List<UserInfo> result = dal.Get();

            return result;
        }

        public int Add(UserInfo ent)
        {
            int result = dal.Add(ent);

            return result;
        }
    }
}
