using _Core.Common.Context.Interface;
using _Core.CommonDal;
using _Core.Entity;
using System.Collections.Generic;

namespace _Core.DAL
{
	public class UserDAL
	{
		#region User

		private const string SQL_SELECT = @"
			SELECT core_User.ID,
			       core_User.TypeID,
			       core_User.StatusID,
                   core_User.Name,
			       core_User.Description,
			       core_User.Email,
			       core_UserStatus.Name AS StatusName
			  FROM core_User
              JOIN core_UserStatus ON core_User.StatusID = core_UserStatus.ID";

		public List<UserInfo> Get()
        {
			return SqlDataAccess.LoadData<UserInfo>(SQL_SELECT);
        }

		private const string SQL_INSERT = @"
			INSERT INTO core_User(TypeID, StatusID, Name, Description, Email)
						VALUES (@TypeID, @StatusID, @Name, @Description, @Email)";

		public int Add(UserInfo ent) 
		{
			return SqlDataAccess.SaveData(SQL_INSERT, ent);
		}

        #endregion
    }
}
