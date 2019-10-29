using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Prog4.App_Code
{
    public class SQLDataClass
    {
        private const string ConStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\schultzder\Documents\UWPCS3870.mdf;Integrated Security=True;Connect Timeout=30";
        private static System.Data.SqlClient.SqlDataAdapter ProdAdapter;
        private static System.Data.SqlClient.SqlCommand prodCmd = new System.Data.SqlClient.SqlCommand();
        private static System.Data.SqlClient.SqlConnection con = new System.Data.SqlClient.SqlConnection();
        public static System.Data.DataTable tblProduct = new System.Data.DataTable("Product");

        public static void setupProdAdapter()
        {
            con.ConnectionString = ConStr;
            prodCmd.Connection = con;
            prodCmd.CommandType = System.Data.CommandType.Text;
            prodCmd.CommandText = "Select * from Product order by ProductID";

            ProdAdapter = new System.Data.SqlClient.SqlDataAdapter(prodCmd);

            ProdAdapter.FillSchema(tblProduct, System.Data.SchemaType.Source);

        }

        public static void getAllProducts()
        {
            if (ProdAdapter == null)
                setupProdAdapter();

            prodCmd.CommandText = "Select * from Product order by ProductID";

            try
            {
                if (!(tblProduct == null))
                    tblProduct.Clear();
                ProdAdapter.Fill(tblProduct);
            }
            catch (Exception e)
            {
                throw e;
            }
            finally
            {
                con.Close();
            }
        }
    }
}