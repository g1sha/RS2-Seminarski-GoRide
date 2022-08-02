using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace GoRide.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class test : ControllerBase
    {
        // GET: api/<test>
        [HttpGet]
        public IEnumerable<string> Get()
        {
            return new string[] { "value1", "value2" };
        }

        // GET api/<test>/5
        string[] lista = { "prvi", "drugi", "treci" };
        [HttpGet("{id}")]
        public string Get(int id)
        {
            return lista[id];
        }

        // POST api/<test>
        [HttpPost]
        public void Post([FromBody] string value)
        {
        }

        // PUT api/<test>/5
        [HttpPut("{id}")]
        public void Put(int id, [FromBody] string value)
        {
        }

        // DELETE api/<test>/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
