using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;

namespace LAB_CSA_2017_2018
{
    public partial class addbook : System.Web.UI.Page
    {
        protected void btnadd_Click(object sender, EventArgs e)
        {
            OleDbConnection cn = new OleDbConnection(@"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:\db\library1.mdb");
            if(cn.State!=ConnectionState.Open)
            {
                cn.Open();
            }
            OleDbCommand cmd = new OleDbCommand("insert into Book Values(" + txtid.Text + ",'" + txttitle.Text + "' ,'" + txttype.Text + "' ," + txtprice.Text + ", '" + DropDownList1.SelectedValue + "')", cn);
            cmd.ExecuteNonQuery();
            cn.Close();
            Response.Redirect("listofbooks.aspx");
        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            OleDbConnection cn = new OleDbConnection(@"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:\db\library1.mdb");
            if (cn.State != ConnectionState.Open)
            {
                cn.Open();
            }
            OleDbCommand cmd = new OleDbCommand("Update Book set Title='"+txttitle.Text+"',Type='"+txttype.Text+"',Price="+txtprice.Text+",Author='"+DropDownList1.SelectedValue+"' where ID="+txtid.Text, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
            Response.Redirect("listofbooks.aspx");
        }
    }
}