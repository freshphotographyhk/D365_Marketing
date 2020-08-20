using System;

using Microsoft.Xrm.Sdk;

using D365Meta;

namespace Plugin
{
    using Library;
    using Microsoft.Xrm.Sdk.Query;
    using System.Collections.Generic;
    using System.Diagnostics;

    public class Contact_CalculateContactScore : IPlugin
    {
        public decimal ContactScoreTranAmt = 5.00M;
        public decimal ContactScore = 0.00M;
        public PluginEnv Env;
        public List<string> StringFDList = new List<string> 
        { 
            Contact.Email, 
            Contact.EmailAddress2,
            Contact.EmailAddress3,
            Contact.MobilePhone,
            Contact.HomePhone,
            Contact.HomePhone2,
            Contact.Fax,
            Contact.BusinessPhone,
            Contact.JobTitle,
            Contact.FirstName,
            Contact.LastName
        };

        public void Execute(IServiceProvider serviceProvider)
        {
            Env = new PluginEnv(serviceProvider);
            if (Env.IsValidReq())
            {
                var entity = Env.Svc.Retrieve(Contact.EntityName, Env.TargetEntity.Id, new ColumnSet(true));
                try
                {
                    // set pre image entity
                    Env.SetPreImageEntity("PreImage");

                    // get current contact score
                    ContactScore = Env.Context.MessageName == "Create" ? 70.00M : entity.GetAttr<decimal>(Contact.ContactScore);

                    foreach(string fd in StringFDList)
                    {
                        CalculateString_ContactScoreField(fd, entity);
                    }

                    if (ContactScore > 100.00M)
                    {
                        ContactScore = 100.00M;
                    }
                    else if(ContactScore < 0.00M)
                    {
                        ContactScore = 0.00M;
                    }

                    Entity change = new Entity(Contact.EntityName, entity.Id);
                    change[Contact.ContactScore] = ContactScore;
                    Env.Update(change);
                }
                catch (Exception ex)
                {
                    Env.Trace(ex.Message.ToString());
                }
            }
        }

        public void CalculateString_ContactScoreField(string fdName, Entity entity)
        {

            string value = null;
            Console.WriteLine(value.ToString());

            Console.WriteLine("BUG!!!!");

            try
            {
                //ProcessStartInfo pi = new ProcessStartInfo("cmd /c", fdName);
                //Process.Start(pi);

                var postFdValue = entity.GetAttr<string>(fdName);

                if (Env.Context.MessageName == "Create")
                {
                    if (string.IsNullOrWhiteSpace(postFdValue)) ContactScore -= ContactScoreTranAmt;
                    else ContactScore += ContactScoreTranAmt;
                }
                else if (Env.Context.MessageName == "Update")
                {
                    var preFdValue = Env.PreImageEntity.GetAttr<string>(fdName);
                    if (string.IsNullOrWhiteSpace(preFdValue))
                    {
                        if (!string.IsNullOrWhiteSpace(postFdValue)) ContactScore += ContactScoreTranAmt;
                    }
                    else
                    {
                        if (string.IsNullOrWhiteSpace(postFdValue)) ContactScore -= ContactScoreTranAmt;
                    }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.InnerException);
            }
        }
    }
}
