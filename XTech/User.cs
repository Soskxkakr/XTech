using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace XTech
{
    public class User
    {
        private int _userId;
        private string _userName;
        private string _email;
        private string _gender;
        private string _country;
        private string _userType;

        public int id
        {
            get
            {
                return _userId;
            } 
            set
            {
                _userId = value;
            }
        }
        public string username
        {
            get
            {
                return _userName;
            }
            set
            {
                _userName = value;
            }
        }
        public string email
        {
            get
            {
                return _email;
            }
            set
            {
                _email = value;
            }
        }
        public string gender
        {
            get
            {
                return _gender;
            }
            set
            {
                _gender = value;
            }
        }

        public string country
        {
            get
            {
                return _country;
            }
            set
            {
                _country = value;
            }
        }

        public string userType
        {
            get
            {
                return _userType;
            }
            set
            {
                _userType = value;
            }
        }
    }
}