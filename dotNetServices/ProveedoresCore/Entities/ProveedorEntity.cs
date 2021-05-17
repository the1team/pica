﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace ProveedoresCore.Entities
{
    [Serializable]
    public class ProveedorEntity
    {
        public ProveedorEntity()
        {

        }

        [Key]
        public long IdProveedor { get; set; }
        public string Nombre { get; set; }
        public string Direccion { get; set; }
        public string Nit { get; set; }
        public string Telefono { get; set; }
        public string UrlServicio { get; internal set; }
        public string TipoApi { get; set; }
        public string MetodoApi { get; set; }
        public string TransformacionProductos { get; set; }
        public string TransformacionOrdenes { get; set; }
    }
}
