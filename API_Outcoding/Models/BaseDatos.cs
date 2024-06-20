using API_Outcoding.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;

namespace API_Outcoding.Models
{
    public class BaseDatos
    {
        private readonly IConfiguration _configuration; //Configuración del singleton
        private readonly string _connectionString; //String de conexion de la base de datos

        public BaseDatos(IConfiguration configuration)
        {
            _configuration = configuration;
            _connectionString = _configuration.GetConnectionString("DefaultConnection");
        }

        //Método que permite obtener la lista de paises de la base de datos
        //Recibe como parametro el nombre del pais, el código iso, el nombre del hotel, nombre del restaurante y los datos necesarios para la páginación que son el número de página y cantidad de filas
        public List<Pais> ObtenerPaises(string namePais, string isoCode, string nameHotel, string nameRestaurant, int pag, int tampag)
        {
            var Paises = new List<Pais>();

            using (SqlConnection conn = new SqlConnection(_connectionString))
            {
                using (SqlCommand cmd = new SqlCommand("ObtenerPaises", conn))
                {
                    cmd.CommandType = CommandType.StoredProcedure;

                    // Se agregan los parametros nesesarios para la ejecucion del SP Obtener Paises
                    cmd.Parameters.Add(new SqlParameter("@namePais", namePais));
                    cmd.Parameters.Add(new SqlParameter("@isoCode", isoCode));
                    cmd.Parameters.Add(new SqlParameter("@nameHotel", nameHotel));
                    cmd.Parameters.Add(new SqlParameter("@nameRestaurant", nameRestaurant));
                    cmd.Parameters.Add(new SqlParameter("@pag", pag));
                    cmd.Parameters.Add(new SqlParameter("@tampag", tampag));

                    conn.Open();
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                Pais pais = new Pais(reader["id"].ToString(),
                                    reader["name"].ToString(), reader["isoCode"].ToString(), Convert.ToInt64(reader["population"]));
                                Paises.Add(pais);
                            }
                        }
                    }
                }
            }

            return Paises;
        }

        //Método que permite obtener los datos de los hoteles del país (Recibe el identificador del Pais)
        public List<Hotel> ObtenerHotelesXPais(string idPais)
        {
            var Hoteles = new List<Hotel>();

            using (SqlConnection conn = new SqlConnection(_connectionString))
            {
                using (SqlCommand cmd = new SqlCommand("ObtenerHotelesXPais", conn))
                {
                    cmd.CommandType = CommandType.StoredProcedure;

                    // Se agregan los parametros nesesarios para la ejecucion del SP Obtener los datos de los hoteles x País
                    cmd.Parameters.Add(new SqlParameter("@idPais", idPais));

                    conn.Open();
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            Hotel hotel = new Hotel(reader["id"].ToString(),
                                reader["name"].ToString(), reader["starts"].ToString());
                            Hoteles.Add(hotel);
                        }
                    }
                }
            }

            return Hoteles;
        }

        //Método que permite obtener los datos de los restaurantes del país (Recibe el identificador del Pais)
        public List<Restaurant> ObtenerRestaurantesXPais(string idPais)
        {
            var Restaurantes = new List<Restaurant>();

            using (SqlConnection conn = new SqlConnection(_connectionString))
            {
                using (SqlCommand cmd = new SqlCommand("ObtenerRestaurantesXPais", conn))
                {
                    cmd.CommandType = CommandType.StoredProcedure;

                    // Se agregan los parametros nesesarios para la ejecucion del SP Obtener los datos de los restaurantes x País
                    cmd.Parameters.Add(new SqlParameter("@idPais", idPais));

                    conn.Open();
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            Restaurant restaurant = new Restaurant(reader["id"].ToString(),
                                reader["name"].ToString(), reader["type"].ToString());
                            Restaurantes.Add(restaurant);
                        }
                    }
                }
            }

            return Restaurantes;
        }
    }
}
