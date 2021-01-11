using System;
using System.Collections.Generic;
using System.Text;

namespace _Core.Common.Context.Interface
{
    public interface IApplicationContext
    {
        IDataContext DataContext { get; }
        //IUserContext UserContext { get; }
        object GlobalState(object instance);
        //IApplicationContext CreateWithUserContext(IUserContext userContext);
    }
}
