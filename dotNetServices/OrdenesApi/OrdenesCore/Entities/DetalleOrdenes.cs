﻿using System;
using System.Collections.Generic;
using System.Text;

namespace OrdenesCore.Entities
{
    public class DetalleOrdenes
    {
        public long Id { get; set; }
        public long ProductoId { get; set; }
        public string CodigoProducto { get; set; }
        public long OrdenId { get; set; }
        public int CantidadOrdenada { get; set; }
        public decimal PrecioUnitario { get; set; }
        public string CodigoProveedor { get; set; }
        public string TipoProveedor { get; set; }
        public string NombreProducto { get; set; }

    }
}