
using DealerGateway.Controllers;
using DealerGateway.Domain.Entities;
using DealerGateway.Domain.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Activation;
using System.Text;
using System.Threading.Tasks;

namespace DealerGateway.WebUI.Services
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "PartnerGateway" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select PartnerGateway.svc or PartnerGateway.svc.cs at the Solution Explorer and start debugging.
    [AspNetCompatibilityRequirements(RequirementsMode = AspNetCompatibilityRequirementsMode.Allowed)]
    public class PartnerGateway : IPartnerGateway
    {
        public PartnerServiceResponse placePartnerServiceRequest(string PartnerAuthToken, string PartnerPassKey, string DealerID, PartnerServiceRequest Request)
        {
            Logger.Instance.Info(PartnerAuthToken, DealerID, Request.PartnerCallNumber);

            Task<PartnerServiceResponse> placeServiceRequestTask = Task<PartnerServiceResponse>.Factory.StartNew(() =>
                 {
                     try
                     {
                         PartnerServiceCallModel dgwRequest = new PartnerServiceCallModel();
                         dgwRequest.PartnerAuthToken = PartnerAuthToken;
                         dgwRequest.PartnerPassKey = PartnerPassKey;
                         dgwRequest.DealerID = DealerID;

                         DealerGateway.Domain.Models.PartnerServiceRequest domainPartnerServiceRequest = new Domain.Models.PartnerServiceRequest();
                         domainPartnerServiceRequest.PartnerCallNumber = Request.PartnerCallNumber;
                         domainPartnerServiceRequest.PONumber = Request.PONumber;
                         domainPartnerServiceRequest.DealerName = Request.DealerName;
                         domainPartnerServiceRequest.EquipmentMake = Request.EquipmentMake;
                         domainPartnerServiceRequest.EquipmentModel = Request.EquipmentModel;
                         domainPartnerServiceRequest.EquipmentSerialNumber = Request.EquipmentSerialNumber;
                         domainPartnerServiceRequest.CustomerName = Request.CustomerName;
                         domainPartnerServiceRequest.CustomerCaller = Request.CustomerCaller;
                         domainPartnerServiceRequest.CallStatus = Request.CallStatus;
                         domainPartnerServiceRequest.CallCustomerSite = Request.CallCustomerSite;
                         domainPartnerServiceRequest.CallAddress1 = Request.CallAddress1;
                         domainPartnerServiceRequest.CallAddress2 = Request.CallAddress2;
                         domainPartnerServiceRequest.CallCity = Request.CallCity;
                         domainPartnerServiceRequest.CallState = Request.CallState;
                         domainPartnerServiceRequest.CallCountry = Request.CallCountry;
                         domainPartnerServiceRequest.CallZip = Request.CallZip;
                         domainPartnerServiceRequest.Description = Request.Description;
                         domainPartnerServiceRequest.Notes = Request.Notes;
                         domainPartnerServiceRequest.DueDate = Request.DueDate;
                         domainPartnerServiceRequest.CloseDate = Request.CloseDate;
                         domainPartnerServiceRequest.ProblemCode = Request.ProblemCode;
                         dgwRequest.Request = domainPartnerServiceRequest;

                         DealerGateway.Domain.Models.PartnerServiceResponse response;
                         int attempt = 0;

                         do
                         {
                             response = InboundController.ServiceRequest(dgwRequest);
                             attempt++;

                             if (!response.Success)
                             {
                                 Logger.Instance.Error(new Exception(response.ErrorMessage), DealerID, Request.PartnerCallNumber + " Attempt #" + attempt);
                             }
                             else
                             {
                                 break;
                             }
                         } while (attempt < 3);

                         PartnerServiceResponse serviceResponse =
                             new PartnerServiceResponse() { Success = response.Success, DealerCallNumber = response.DealerCallNumber, ErrorMessage = response.ErrorMessage };

                         return serviceResponse;
                     }
                     catch (Exception e)
                     {
                         Logger.Instance.Error(e, DealerID, Request.PartnerCallNumber);

                         return new PartnerServiceResponse() { Success = false, ErrorMessage = "Unable to place service request. " };                         
                     }                    
                 });

            return placeServiceRequestTask.Result;
        }
    }
}
