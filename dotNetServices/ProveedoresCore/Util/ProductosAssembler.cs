﻿using ProveedoresCommon.Util;
using ProveedoresCore.DTO;
using ProveedoresCore.Entities;
using System;
using System.Collections.Generic;
using System.Text;

namespace ProveedoresCore.Util
{
    public class ProductosAssembler : AbstractAssembler<ProductoDTO, ProductoEntity>
    {
        public override ProductoDTO assemblyDTO(ProductoEntity entity)
        {
            ProductoDTO dto = new ProductoDTO();
            dto.Id = entity.Id;
            dto.Nombre = entity.Nombre;
            dto.Precio = entity.Precio;            
            return dto;
        }

        public override ProductoEntity assemblyEntity(ProductoDTO dto)
        {
            ProductoEntity entity = new ProductoEntity();
            entity.Id = dto.Id;
            entity.Nombre = dto.Nombre;
            entity.Precio = dto.Precio;            
            return entity;
        }
    }
}