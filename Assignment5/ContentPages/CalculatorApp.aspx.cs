using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Assignment5.App_Code;

namespace Assignment5.ContentPages
{
    public partial class CalculatorApp : BasePage
    {
        protected void OutputInfo(object sender, EventArgs e)
        {
            Page.Validate();

            if (Page.IsValid)
            {

                double firstValue = Convert.ToDouble(firstNum.Text);
                double secondValue = Convert.ToDouble(secondNum.Text);

                switch (OperatorsList.SelectedItem.Value)
                {
                    case "Addition (+)":
                        OutputBox.Text = Convert.ToString(firstValue + secondValue);
                        break;

                    case "Subtraction (-)":
                        OutputBox.Text = Convert.ToString(firstValue - secondValue);
                        break;

                    case "Multiplication (*)":
                        OutputBox.Text = Convert.ToString(firstValue * secondValue);
                        break;

                    case "Division (/)":
                        OutputBox.Text = Convert.ToString(firstValue / secondValue);
                        break;

                    default:
                        break;
                }

            }
        }

        protected void CancelRequest(object sender, EventArgs e)
        {
            Response.Redirect("CalculatorApp.aspx", true);

        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}