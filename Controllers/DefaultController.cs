using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;

namespace basic_web_api.Controllers
{
    [Route("api")]
    public class DefaultController : Controller
    {
        // GET api/values
        [HttpGet]
        public IEnumerable<string> Get()
        {
            return new string[] { "Api", "is", "up", "and", "running", DateTime.UtcNow.ToLongDateString() };
        }
    }
}
