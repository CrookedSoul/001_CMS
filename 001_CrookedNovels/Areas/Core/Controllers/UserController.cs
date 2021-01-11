using _Core.Web.Controllers;
using Microsoft.AspNetCore.Mvc;
using _Core.Web.Model.User;

namespace _001_CrookedNovels.Areas.Core.Controllers
{
    public class UserController : BaseUserController
    {
        [HttpGet]
        [Route("CMS/[controller]/[action]")]

        public IActionResult Index()
        {
            ViewBag.Message = "this is an index";
            ListModel model = this.IndexRequest();
            return View("~/Areas/Core/Views/User/Index.cshtml", model);
        }

        public IActionResult Add()
        {
            
            return View();
        }
    }
}
