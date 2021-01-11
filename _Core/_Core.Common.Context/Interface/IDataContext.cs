using System;
using System.Collections.Generic;
using System.Text;

namespace _Core.Common.Context.Interface
{
    public interface IDataContext
    {
        string ConnectionString { get; }
    }
}