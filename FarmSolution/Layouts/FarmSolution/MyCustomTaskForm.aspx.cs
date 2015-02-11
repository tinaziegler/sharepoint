using System;
using Microsoft.SharePoint;
using Microsoft.SharePoint.WebControls;
using Microsoft.SharePoint.Utilities;

namespace FarmSolution.Layouts.FarmSolution
{
    public partial class MyCustomTaskForm : LayoutsPageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void ApproveButton_Clicked(object sender, EventArgs e)
        {
            CompleteCurrentTask("Approved");
        }

        protected void RejectButton_Clicked(object sender, EventArgs e)
        {
            CompleteCurrentTask("Rejected");
        }

        private void CompleteCurrentTask(string outcome)
        {
            //Completing a task
            var item = SPContext.Current.Item;
            item["TaskOutcome"] = outcome;
            item["PercentComplete"] = "1";
            item["Status"] = "Completed";
            item.Update();

            //Closing the form
            SPUtility.Redirect(string.Empty, SPRedirectFlags.UseSource, Context);
        }
    }
}
