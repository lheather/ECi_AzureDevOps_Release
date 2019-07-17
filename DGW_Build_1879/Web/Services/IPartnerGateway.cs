using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace DealerGateway.WebUI.Services
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IPartnerGateway" in both code and config file together.
    [ServiceContract]
    public interface IPartnerGateway
    {
        [OperationContract]
        PartnerServiceResponse placePartnerServiceRequest(string PartnerAuthToken, string PartnerPassKey, string DealerID, PartnerServiceRequest Request);
    }
}
