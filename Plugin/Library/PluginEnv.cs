using System;
using System.Web.UI.WebControls;
using Microsoft.Xrm.Sdk;

namespace Plugin.Library
{
    public class PluginEnv
    {
        public IServiceProvider ServiceProvider { get; }
        public ITracingService TraceService { get; set; }
        public IPluginExecutionContext Context { get; set; }
        public IOrganizationServiceFactory ServiceFactory { get; set; }
        public IOrganizationService Svc { get; set; }
        public Entity TargetEntity { get; set; }
        public Entity PreImageEntity { get; set; }
        public PluginEnv(IServiceProvider serviceProvider)
        {
            // Obtain the execution context from the service provider.
            IPluginExecutionContext context =
                (IPluginExecutionContext)serviceProvider.GetService(typeof(IPluginExecutionContext));

            // Get a reference to the Organization service.
            IOrganizationServiceFactory factory =
                (IOrganizationServiceFactory)serviceProvider.GetService(typeof(IOrganizationServiceFactory));
            IOrganizationService service = 
                factory.CreateOrganizationService(context.UserId);

            // Get reference to tracing service 
            ITracingService trace =
                (ITracingService)serviceProvider.GetService(typeof(ITracingService));

            Context = context;
            Svc = service;
            TraceService = trace;
        }
        public PluginEnv(
            IPluginExecutionContext _context,
            IOrganizationService _service,
            ITracingService _trace)
        {
            Context = _context;
            Svc = _service;
            TraceService = _trace;
        }
        // The InputParameters collection contains all the data passed in the message request.  
        public bool IsValidReq()
        {
            if (Context.InputParameters.Contains("Target") && Context.InputParameters["Target"] is Entity)
            {
                TargetEntity = (Entity)Context.InputParameters["Target"];
                return true;
            }

            Trace("Invalid plugin request.");
            return false;
        }
        public void Trace(string msg)
        {
            TraceService.Trace(msg);
        }
        public Guid Create(Entity e)
        {
            var ID = Svc.Create(e);
            return ID;
        }
        public void Update(Entity e)
        {
            Svc.Update(e);
        }
        public void Delete(string entityName, Guid id)
        {
            Svc.Delete(entityName, id);
        }
        public void SetPreImageEntity(string preImageName)
        {
            if (Context.PreEntityImages.Contains(preImageName) && Context.PreEntityImages[preImageName] is Entity)
            {

                PreImageEntity = (Entity)Context.PreEntityImages[preImageName];
            }
        }
    }
}
