using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using ClosedXML.Excel;
using System.Data;
namespace OutlookAccountGenerator
{
    public partial class List : System.Web.UI.Page
    {
        AccountInfo accountinfo = new AccountInfo();


        public void CreateHTMLTable()
        {

        }

        private static Random random = new Random();
        public static string RandomString(int length)
        {
            const string chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
            return new string(Enumerable.Repeat(chars, length)
              .Select(s => s[random.Next(s.Length)]).ToArray());
        }
        public static string RandomNumber(int length)
        {
            const string chars = "0123456789";
            return new string(Enumerable.Repeat(chars, length)
              .Select(s => s[random.Next(s.Length)]).ToArray());
        }
       
        protected void Page_Load(object sender, EventArgs e)
        {

            accountinfo.AccountAmount = Int32.Parse(Request.QueryString["amount"]);
            accountinfo.ApplicantName = Request.QueryString["applicant"];
            accountinfo.HoldDate = Request.QueryString["holdDate"];
            accountinfo.RandomPassword = accountinfo.RandomPassword = Request.QueryString["checkRandomPassword"] == "1";


            int accountRow = accountinfo.AccountAmount;
            int accountCell = 4;


            // Add rows to the table.
            for (int row = 1; row <= accountRow; row++)
            {
                // new table for each row
                TableRow tableRow = new TableRow();
                for (int cell = 0; cell < accountCell; cell++)
                {
                    // new table for each cell
                    TableCell tableCell = new TableCell();
                    switch (cell)
                    {
                        case 0:
                            // Show Account Index 
                            tableCell.Text = row.ToString();

                            break;
                        case 1:
                            tableCell.Text = "MS" + accountinfo.HoldDate.Replace("-", string.Empty) + row.ToString("000") + "@outlook.com";

                            break;
                        case 2:
                            if (accountinfo.RandomPassword)
                            {
                                tableCell.Text = RandomString(4) + RandomNumber(4);
                            }
                            else
                            {
                                tableCell.Text = "MS" + accountinfo.HoldDate.Replace("-", string.Empty);
                                // tableCell.Controls.Add(new LiteralControl("Password"));
                            }
                            break;
                        case 3:
                            tableCell.Text = accountinfo.ApplicantName;
                            //tableCell.Controls.Add(new LiteralControl(applicant));
                            break;
                    }
                    tableRow.Cells.Add(tableCell);
                }
                tableAccount.Rows.Add(tableRow);
            }
        } //end page_load

        public override void VerifyRenderingInServerForm(Control control)
        {
            //'XX'型別 必須置於有 runat=server 的表單標記之中
        }
        protected void btnGetExcel_Click(object sender, EventArgs e)
        {
            var wb = new XLWorkbook();
            var ws = wb.Worksheets.Add("Account");

            ws.Cell("A1").Value = "Index";
            ws.Cell("B1").Value = "Account";
            ws.Cell("C1").Value = "Password";
            ws.Cell("D1").Value = "Applicant";

            for (int index = 0; index < accountinfo.AccountAmount; index++)
            {
                //Index 
                ws.Cell($"A{(index + 2).ToString()}").Value = (index + 1).ToString();
                //ws.Cell("B" + index).Value = "MS" + list.holdDate.Replace("-", string.Empty) + index.ToString("000") + "@outlook.com";
                ws.Cell($"B" + (index + 2).ToString()).Value = "MS" + accountinfo.HoldDate.Replace("-", string.Empty) + (index + 1).ToString("000") + "@outlook.com"; ;

                ws.Cell($"C" + (index + 2).ToString()).Value =
                (accountinfo.RandomPassword) ? RandomString(4) + RandomNumber(4)
                : "MS" + accountinfo.HoldDate.Replace("-", string.Empty);
                //applicant
                ws.Cell($"D" + (index + 2).ToString()).Value = accountinfo.ApplicantName;


            }

            // Prepare the response
            HttpResponse httpResponse = Response;
            httpResponse.Clear();
            httpResponse.ContentType = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet";
            httpResponse.AddHeader("content-disposition", "attachment;filename=\"HelloWorld.xlsx\"");

            // Flush the workbook to the Response.OutputStream
            using (MemoryStream memoryStream = new MemoryStream())
            {
                wb.SaveAs(memoryStream);
                //workbook.SaveAs(memoryStream);
                memoryStream.WriteTo(httpResponse.OutputStream);
                memoryStream.Close();
            }

            httpResponse.End();
        } // end of btnclicked
        } // end of class
        public class AccountInfo
        {
        private string applicantName;
        private int accountAmount;
        private string holdDate;
        private bool randomPassword;
            public string ApplicantName { get { return applicantName; } set { applicantName = value; } }
           public int AccountAmount { get { return accountAmount; } set { accountAmount= value; } }
            public string HoldDate { get {return holdDate; } set {holdDate= value; } }
            public bool RandomPassword { get {return randomPassword; } set {randomPassword = value; } }

    }

}