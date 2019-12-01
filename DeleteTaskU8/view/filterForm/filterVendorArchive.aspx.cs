using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using DeleteTaskU8.DAL.ReferenceForm;
using System.Drawing;

namespace DeleteTaskU8.view.filterForm
{
    public partial class filterVendorArchive : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                DataTable dt = new vendorArchive().getVendorArchive();
                if (dt.Rows.Count > 0)
                {
                    gdvVendor.DataSource = dt;
                    
                    gdvVendor.DataBind();
                }
                else
                {

                    Response.Write("Unable to connect to the database.");
                }

            }

        }

        protected void gdvVendor_SelectedIndexChanged(object sender, EventArgs e)
        {
          
            this.gdvVendor.SelectedRow.BackColor = Color.SkyBlue;
        }

        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            Response.Write(this.gdvVendor.SelectedRow.Cells[2].Text.ToString());
        }

        //protected void gdvVendor_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        //{

        //    this.gdvVendor.SelectedRow.BackColor = Color.SkyBlue;

        //}
    }
    
}