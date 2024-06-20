using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace API_Outcoding.Models
{
    public class Restaurant
    {
        public string id { get; set; }
        public string name { get; set; }
        public string type { get; set; }

        public Restaurant(string id, string name, string type)
        {
            this.id = id;
            this.name = name;
            this.type = type;
        }
    }
}
