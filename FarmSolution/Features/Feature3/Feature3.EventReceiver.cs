using System;
using System.Runtime.InteropServices;
using System.Security.Permissions;
using Microsoft.SharePoint;

namespace FarmSolution.Features.Feature3
{
    /// <summary>
    /// Durch diese Klasse werden Ereignisse behandelt, die während der Aktivierung, Deaktivierung, Installation, Deinstallation und bei Upgrades von Funktionen ausgelöst werden.
    /// </summary>
    /// <remarks>
    /// Die an diese Klasse angefügte GUID kann beim Verpacken verwendet werden und sollte nicht geändert werden.
    /// </remarks>

    [Guid("537d768b-60fc-4c0c-be4b-d34b4fa0686d")]
    public class Feature3EventReceiver : SPFeatureReceiver
    {
        // Auskommentierung der Methode unten aufheben, um das Ereignis zu behandeln, das nach der Aktivierung einer Funktion ausgelöst wird.

        public override void FeatureActivated(SPFeatureReceiverProperties properties)
        {
            SPWeb web = properties.Feature.Parent as SPWeb;
            SPContentType ct = web.ContentTypes["Task_CT"];
            ct.EditFormUrl = "_layouts/15/FarnSolution/MyCustomTaskForm.aspx";
            ct.Update(true);
        }


        // Auskommentierung der Methode unten aufheben, um das Ereignis zu behandeln, das vor der Deaktivierung einer Funktion ausgelöst wird.

        //public override void FeatureDeactivating(SPFeatureReceiverProperties properties)
        //{
        //}


        // Auskommentierung der Methode unten aufheben, um das Ereignis zu behandeln, das nach der Installation einer Funktion ausgelöst wird.

        //public override void FeatureInstalled(SPFeatureReceiverProperties properties)
        //{
        //}


        // Auskommentierung der Methode unten aufheben, um das Ereignis zu behandeln, das vor der Deinstallation einer Funktion ausgelöst wird.

        //public override void FeatureUninstalling(SPFeatureReceiverProperties properties)
        //{
        //}

        // Auskommentierung der Methode unten aufheben, um das Ereignis zu behandeln, das bei der Aktualisierung einer Funktion ausgelöst wird.

        //public override void FeatureUpgrading(SPFeatureReceiverProperties properties, string upgradeActionName, System.Collections.Generic.IDictionary<string, string> parameters)
        //{
        //}
    }
}
