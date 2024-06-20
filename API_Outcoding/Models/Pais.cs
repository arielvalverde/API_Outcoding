using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace API_Outcoding.Models
{
    public class Pais
    {
        public string id { get; set; }
        public string name { get; set; }
        public string isoCode { get; set; }
        public long population { get; set; }
        public List<Hotel> hoteles { get; set; }
        public List<Restaurant> restaurantes { get; set; }

        public Pais(string id, string name, string isoCode, long population)
        {
            this.id = id;
            this.name = name;
            this.isoCode = isoCode;
            this.population = population;
        }
    }
}
