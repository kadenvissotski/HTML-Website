using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment5.MasterPages
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                HttpCookie preferredTheme = Request.Cookies.Get("preferredTheme");
                if (preferredTheme == null) 
                {
                    LinkButton14px.Style["font-size"] = "22px";
                    LinkButton14px.Style["font-weight"] = "bold";
                }
                else if (preferredTheme.Value.CompareTo("16px") == 0)
                {
                    LinkButton16px.Style["font-size"] = "22px";
                    LinkButton16px.Style["font-weight"] = "bold";
                }
                else
                {
                    LinkButton18px.Style["font-size"] = "22px";
                    LinkButton18px.Style["font-weight"] = "bold";
                }

            }
        }

        protected void LinkButton14px_Click(object sender, EventArgs e)
        {
            HttpCookie preferredTheme = Request.Cookies.Get("preferredTheme");
            if (preferredTheme != null) 
            { 
                preferredTheme.Expires = DateTime.Now.AddDays(-1);
                Response.Cookies.Add(preferredTheme);
                Response.Redirect(Request.Url.ToString());
            }
        }

        protected void LinkButton16px_Click(object sender, EventArgs e)
        {
            HttpCookie preferredTheme = new HttpCookie("preferredTheme");
            preferredTheme.Expires = DateTime.Now.AddMonths(3);
            preferredTheme.Value = "16px";
            Response.Cookies.Add(preferredTheme);
            Response.Redirect(Request.Url.ToString());

        }

        protected void LinkButton18px_Click(object sender, EventArgs e)
        {
            HttpCookie preferredTheme = new HttpCookie("preferredTheme");
            preferredTheme.Expires = DateTime.Now.AddMonths(3);
            preferredTheme.Value = "18px";
            Response.Cookies.Add(preferredTheme);
            Response.Redirect(Request.Url.ToString());

        }
    }
}