using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using System.Drawing;

namespace Infinite.Test.Dt18
{
    public partial class PositionDetails : System.Web.UI.Page
    {
        private SqlConnection ConObj = null;
        private SqlCommand CmdObj = null;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnAdd_Click(object sender, EventArgs e)
        {
            using (ConObj = new SqlConnection(ConfigurationManager.ConnectionStrings["HRCon"].ConnectionString))
            {
                using (CmdObj = new SqlCommand("Insert_Position_Detail", ConObj))
                {
                    CmdObj.Parameters.AddWithValue("@PositionCode", TxtPosition.Text);
                    CmdObj.Parameters.AddWithValue("@Description", TxtDescription.Text);
                    CmdObj.Parameters.AddWithValue("@Year", DropDownList1.SelectedValue);
                    CmdObj.Parameters.AddWithValue("@BudgetStrength", TxtBudgetedStrength.Text);
                    CmdObj.Parameters.AddWithValue("CurrentStrength", TxtStrength.Text); if (ConObj.State == ConnectionState.Closed)
                    {
                        ConObj.Open();
                    }
                    int res = CmdObj.ExecuteNonQuery();
                    if (res > 0)
                    {
                        LblMessage.Text = "Position Added";
                    }
                    else
                    {
                        LblMessage.Text = "Error";
                    }
                    CmdObj.Dispose();
                    ConObj.Close();
                }
            }
        }

        protected void BtnReset_Click(object sender, EventArgs e)
        {
            
        }
    }
}