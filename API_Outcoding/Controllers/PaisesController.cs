using API_Outcoding.Models;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.Json;
using System.Threading.Tasks;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace API_Outcoding.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class PaisesController : ControllerBase
    {
        //Atributo de tipo base de datos
        //Permite una rápida conexion a la base de datos
        private readonly BaseDatos _baseDatosHelper;

        //Constructor de Controlador, incluye el singleton de la base de datos para mejorar la conexión con esta
        public PaisesController(BaseDatos databaseHelper)
        {
            _baseDatosHelper = databaseHelper;
        }

        // GET: api/<PaisesController>
        // Método GET del API para obtener la lista de paises
        [HttpGet]
        public ActionResult<IEnumerable<Pais>> Get(string namePais,string isoCode,string nameHotel, string nameRestaurant, int PageNumber, int rowsPerPage)
        {
            List<Pais> Paises = ObtenerPaises(namePais, isoCode, nameHotel, nameRestaurant, PageNumber, rowsPerPage); //Linea que obtine toda la información de los paises

            if (PageNumber <= 0 || rowsPerPage < 0) //Valida si los datos de numero de pagina y fila por página son valores correctos
            {
                return BadRequest(); //Si viene valores incorrectos se envía a un bad resquest
            }
            else
            {
                HttpContext.Response.Headers.Add("X-Cantidad-Registros", Paises.Count().ToString()); //Si los datos son correctos agregamos el header y enviamosla respuesta
                return Ok(Paises);
            }
        }

        //Método que obtiene la lista de paises y con esta y su respectivo ID se obtiene la lista de restautantes y hoteles de deicho país
        public List<Pais> ObtenerPaises(string namePais, string isoCode, string nameHotel, string nameRestaurant, int PageNumber, int rowsPerPage)
        {
            List<Pais> Paises = _baseDatosHelper.ObtenerPaises(namePais, isoCode, nameHotel, nameRestaurant, PageNumber, rowsPerPage);
            foreach (Pais pais in Paises)
            {
                pais.restaurantes = _baseDatosHelper.ObtenerRestaurantesXPais(pais.id); //Obtiene los datos de los restaurantes del país
                pais.hoteles = _baseDatosHelper.ObtenerHotelesXPais(pais.id); //Obtiene los datos de los hoteles del país
            }

            return Paises;
        }
    }
}
