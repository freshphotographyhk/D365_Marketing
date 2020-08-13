﻿using System;

using Microsoft.Xrm.Sdk;

using D365Meta;

namespace Plugin
{
    using Library;
    using System.Collections.Generic;

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
                var entity = Env.TargetEntity;
                try
                {
                    // set pre image entity
                    Env.SetPreImageEntity("PreImage");

                    // get current contact score
                    ContactScore = Env.Context.MessageName == "Create" ? 70.00M : entity.GetAttr<decimal>(Contact.ContactScore);

                    foreach(string fd in StringFDList)
                    {
                        CalculateString_ContactScoreField(fd);
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

        public void CalculateString_ContactScoreField(string fdName)
        {
            var postFdValue = Env.TargetEntity.GetAttr<string>(fdName);

            if (Env.Context.MessageName == "Create")
            {
                if (string.IsNullOrWhiteSpace(postFdValue)) ContactScore -= ContactScoreTranAmt;
                else ContactScore += ContactScoreTranAmt;
            }
            else if(Env.Context.MessageName == "Update")
            {
                var preFdValue = Env.PreImageEntity.GetAttr<string>(fdName);
                if(string.IsNullOrWhiteSpace(preFdValue))
                {
                    if (string.IsNullOrWhiteSpace(postFdValue)) ContactScore -= ContactScoreTranAmt;
                }
                else
                {
                    if (!string.IsNullOrWhiteSpace(postFdValue)) ContactScore += ContactScoreTranAmt;
                }
            }
        }
    }
}
