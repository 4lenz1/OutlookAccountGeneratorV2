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
        private string applicantName;
        private int accountAmount;
        private string holdDate;
        private string[] accountName;

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

        protected void Page_Load(object sender, EventArgs e)
        {
            List list = new List();
            Account account = new Account();

            // get post value from Default.aspx
            //getPostValue();
            list.applicantName = Request.Form["applicant"];
            list.accountAmount = Int32.Parse(Request.Form["amount"]);
            list.holdDate = Request.Form["holdDate"];

            Response.Write("Account Amount" + list.accountAmount + "\n");
            Response.Write("Applicant Name" + list.applicantName + "\n");
            Response.Write("Hold Date" + list.holdDate + "\n");

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
                            tableCell.Text = list.holdDate.Replace("-", string.Empty);
                           // tableCell.Controls.Add(new LiteralControl("Password"));
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

        protected void btnGetExcel_Click(object sender, EventArgs e)
        {
            Response.ContentType = "application/x-msexcel";
            Response.AddHeader("Content-Disposition", "attachment;filename = ExcelFile.xls");
            Response.ContentEncoding = Encoding.UTF8;
            StringWriter tw = new StringWriter();
            HtmlTextWriter hw = new HtmlTextWriter(tw);
            tableAccount.RenderControl(hw);
            Response.Write(tw.ToString());
            Response.End();
        }
    }
}