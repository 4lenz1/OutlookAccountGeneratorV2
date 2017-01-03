using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace OutlookAccountGenerator
{
	public partial class List : System.Web.UI.Page
	{
        StringBuilder StrHtmlGenerate = new StringBuilder();
        StringBuilder StrExport = new StringBuilder();

        private string applicantName;
        private int accountAmount;
        private string holdDate;
        private string[] accountName;
        private bool randomPassword;

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
        public void getPostValue()
        {
            List list = new List();
            list.accountAmount= Int32.Parse( Request.Form["amount"]);
            list.applicantName = Request.Form["applicant"];
            list.holdDate = Request.Form["holdDate"];
        }
        public string ApplicantName
        {
            get
            {
                return applicantName;
            }

            set
            {
                applicantName = value;
            }
        }

        public int AccountAmount
        {
            get
            {
                return accountAmount;
            }

            set
            {
                if (Request.Form["amount"] == null)
                {
                    accountAmount = 1;
                }
                else
                {
                    accountAmount = Int32.Parse(Request.Form["amount"]);
                }
             }
        }

        public string HoldDate
        {
            get
            {
                return holdDate;
            }

            set
            {
                holdDate = value;
            }
        }

        public string[] AccountName
        {
            get
            {
                return accountName;
            }

            set 
            {
                accountName = value;
            }
        }

        public bool RandomPassword
        {
            get
            {
                return randomPassword;
            }

            set
            {
                randomPassword = value;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            List list = new List();
            Account account = new Account();


            // get post value from Default.aspx
            //getPostValue();
            list.applicantName = Request.Form["applicant"];

            if (!string.IsNullOrEmpty(Request.Form["amount"]))
            {
                list.accountAmount = Int32.Parse(Request.Form["amount"]);
            }
            list.holdDate = Request.Form["holdDate"];
            //  set true to 1 
            list.randomPassword = Request.Form["checkRandomPassword"]  == "1" ;

            Response.Write("Account Amount" + list.accountAmount + "\n");
            Response.Write("Applicant Name" + list.applicantName + "\n");
            Response.Write("Hold Date" + list.holdDate + "\n");
            Response.Write("Random Password:" + list.randomPassword + "\n");

            int accountRow =list.accountAmount ;
            int accountCell = 4;
           

            // Add rows to the table.
            for (int row = 1; row <= accountRow; row++)
            {
                // new table for each row
                TableRow tableRow = new TableRow();
                for (int cell = 0; cell< accountCell; cell++)
                {
                    // new table for each cell
                    TableCell tableCell = new TableCell();
                    switch (cell)
                    {
                        case 0:
                            // Show Account Index 
                            tableCell.Text = row.ToString() ;

                            break;
                        case 1:
                            tableCell.Text = "MS" + list.holdDate.Replace("-",string.Empty) + row.ToString("000") + "@outlook.com";

                            break;
                        case 2:
                            if (list.randomPassword)
                            {
                                tableCell.Text = RandomString(4) + RandomNumber(4); 
                            }
                            else
                            {
                                tableCell.Text = "MS" + list.holdDate.Replace("-",string.Empty);
                                // tableCell.Controls.Add(new LiteralControl("Password"));
                            }
                            break;
                        case 3:
                            tableCell.Text = list.applicantName;
                            //tableCell.Controls.Add(new LiteralControl(applicant));
                            break;
                    }
                    tableRow.Cells.Add(tableCell);
                }
                tableAccount.Rows.Add(tableRow);
            }
        }
        public override void VerifyRenderingInServerForm(Control control)
        {
            //'XX'型別 必須置於有 runat=server 的表單標記之中
        }
        protected void btnGetExcel_Click(object sender, EventArgs e)
        {

            //Response.Clear();
            //Response.AddHeader("content-disposition", "attachment;filename=myexcel.xls");
            //Response.ContentType = "application/ms-excel";
            //System.IO.StringWriter sw = new System.IO.StringWriter();
            //System.Web.UI.HtmlTextWriter hw = new HtmlTextWriter(sw);
            //tableAccount.RenderControl(hw);
            //Response.Write(sw.ToString());
            //Response.End()

           

            Response.ContentType = "application/x-msexcel";
            Response.AddHeader("Content-Disposition", "attachment;filename = ExcelFile.xls");
            Response.ContentEncoding = Encoding.UTF8;
            StringWriter tw = new StringWriter();
            HtmlTextWriter hw = new HtmlTextWriter(tw);
            tableAccount.RenderControl(hw);
            Response.Write(tw.ToString());
            Response.End();





            //StrExport.Append(@"<html xmlns:o='urn:schemas-microsoft-com:office:office' xmlns:w='urn:schemas-microsoft-com:office:excel' xmlns='http://www.w3.org/TR/REC-html40'><head><title>Time</title>");
            //StrExport.Append(@"<body lang=EN-US style='mso-element:header' id=h1><span style='mso--code:DATE'></span><div class=Section1>");
            //StrExport.Append("<DIV  style='font-size:12px;'>");
            ////StrExport.Append(dvInfo.InnerHtml);
            //StrExport.Append("</div></body></html>");
            //string strFile = "StudentInformations_CODESCRATCHER.xls";
            //string strcontentType = "application/excel";
            //Response.ClearContent();
            //Response.ClearHeaders();
            //Response.BufferOutput = true;
            //Response.ContentType = strcontentType;
            //Response.AddHeader("Content-Disposition", "attachment; filename=" + strFile);
            //Response.Write(StrExport.ToString());
            //Response.Flush();
            //Response.Close();
            //Response.End();
        }




        //Response.ContentType = "application/x-msexcel";
        //    Response.AddHeader("Content-Disposition", "attachment;filename = ExcelFile.xls");
        //    Response.ContentEncoding = Encoding.UTF8;
        //    StringWriter tw = new StringWriter();
        //    HtmlTextWriter hw = new HtmlTextWriter(tw);
        //    tableAccount.RenderControl(hw);
        //    Response.Write(tw.ToString());
        //    Response.End();


        //Response.Clear();
        //Response.AddHeader("content-disposition", "attachment;filename=myexcel.xls");
        //Response.ContentType = "application/ms-excel";
        //System.IO.StringWriter sw = new System.IO.StringWriter();
        //System.Web.UI.HtmlTextWriter hw = new HtmlTextWriter(sw);
        //tableAccount.RenderControl(hw);
        //Response.Write(sw.ToString());
        //Response.End();
        //}
    }
}