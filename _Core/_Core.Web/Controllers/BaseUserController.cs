using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using _Core.Entity;
using _Core.Web.Model.User;
using _Core.BL;
using Microsoft.AspNetCore.Mvc;

namespace _Core.Web.Controllers
{
    public class BaseUserController : Controller
    {
        User user = new User();

        public ListModel IndexRequest()
        {
            List<UserInfo> list = user.Get();

            ListModel model = PrepareListModel(list);

            return model;
        }

        public FormModel AddRequest()
        {
            FormModel model = new FormModel();
            return model;
        }

        public int SaveRequest(FormModel model)
        {
            UserInfo ent = PrepareEntityFromModel(model);
            int result = user.Add(ent);

            return result;
        }

        public UserInfo PrepareEntityFromModel(FormModel model)
        {
            UserInfo ent = new UserInfo();

            ent.ID = model.ID;
            ent.TypeID = model.TypeID;
            ent.StatusID = model.StatusID;
            ent.Name = model.Name;
            ent.Password = model.Password;
            ent.Email = model.Email;
            ent.Description = model.Description;

            return ent;
        }
        public ListModel PrepareListModel(List<UserInfo> entList)
        {
            ListModel m = new ListModel();
            m.List = new List<ItemModel>();

            foreach (UserInfo ent in entList)
            {
                ItemModel mm = new ItemModel();
                mm.ID = ent.ID;
                mm.TypeID = ent.TypeID;
                mm.StatusID = ent.StatusID;
                mm.Name = ent.Name;
                mm.Password = ent.Password;
                mm.Email = ent.Email;
                mm.Description = ent.Description;
                m.List.Add(mm);
            }

            return m;
        }
    }
}
