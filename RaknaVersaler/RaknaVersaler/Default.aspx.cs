using RaknaVersaler.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RaknaVersaler
{
    public partial class Default : System.Web.UI.Page
    {
        
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CountButton_Click(object sender, EventArgs e)
        {
            
            if (MainTextBox.Enabled == false)
            {

                MainTextBox.Text = "";
                MainTextBox.Enabled = true;
                CountButton.Text = "Räkna versaler";
                
            }
            
            else
            { 
                var NumCapitals = new TextAnalyzer
                {
                    StringToCount = MainTextBox.Text

                };

                Resultat.Text = NumCapitals.GetNumberOfCapitals().ToString();
                MainTextBox.Enabled = false;
                CountButton.Text = "Clear";
                

            }
        }
    }
}