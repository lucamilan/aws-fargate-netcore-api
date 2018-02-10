using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;

namespace basic_web_api.Controllers
{
    [Route("")]
    public class HealthController : Controller
    {
        // GET api/values
        [HttpGet]
        public object Get()
        {
            return new { Status = "UP" };
        }
    }
}
