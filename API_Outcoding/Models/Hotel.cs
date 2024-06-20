using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace API_Outcoding.Models
{
    public class Hotel
    {
        public string id { get; set; }
        public string name { get; set; }
        public string starts { get; set; }

        public Hotel(string id, string name, string starts)
        {
            this.id = id;
            this.name = name;
            this.starts = starts;
        }
    }
}
