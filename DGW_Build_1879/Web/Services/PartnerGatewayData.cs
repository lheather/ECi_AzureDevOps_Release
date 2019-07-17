using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DealerGateway.WebUI.Services
{
    public class PartnerGatewayData
    {
    }

    public class DGWServiceRequest
    {
        public string PartnerAuthToken;
        public string PartnerPassKey;
        public string DealerID;
        public PartnerServiceRequest Request;
    }

    public class PartnerServiceRequest
    {
        public string PartnerCallNumber;
        public string PONumber;
        public string DealerName;
        public string EquipmentMake;
        public string EquipmentModel;
        public string EquipmentSerialNumber;
        public string CustomerName;
        public string CustomerCaller;
        public string CallStatus;
        public string CallCustomerSite;
        public string CallAddress1;
        public string CallAddress2;
        public string CallCity;
        public string CallState;
        public string CallCountry;
        public string CallZip;
        public string Description;
        public string Notes;
        public DateTime DueDate;
        public DateTime CloseDate;
        public string ProblemCode;
    }

    public class PartnerServiceResponse
    {
        public string DealerCallNumber;
        public bool Success;
        public string ErrorMessage;
    }
}