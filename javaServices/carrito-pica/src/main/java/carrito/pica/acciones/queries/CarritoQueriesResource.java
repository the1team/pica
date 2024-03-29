package carrito.pica.acciones.queries;

import carrito.pica.servicios.*;
import carrito.pica.repositorios.*;
import carrito.pica.dominio.*;

import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.Consumes;
import javax.ws.rs.PathParam;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;

import org.jboss.resteasy.annotations.Body;

import java.util.Collections;
import java.util.List;
import java.util.Optional;
import java.util.concurrent.TimeUnit;
import java.util.logging.Logger;

import javax.inject.Inject;

@Path("/carrito")
public class CarritoQueriesResource {

    @Inject
    CarritoService carritoService;

    @Path("/get/all")
    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public List<Carrito> getAll() {
        return carritoService.fetchAll();
    }

    @Path("/obtener/{usuario}/{pais}")
    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public Carrito Obtener( @PathParam("usuario") String usuario , @PathParam("pais") String pais ) {
        return carritoService.Obtener(usuario,pais);
    }

    @Path("/productos/consultar/{id}")
    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public List<ProductoDto> ConsultarProductos( @PathParam("id") int id) {
        return carritoService.ObtenerProductosDto(id);
    }

    @Path("/orden/cotizar")
    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    public CotizacionDto CotizarOrden( CotizacionRequest request ) {
        return carritoService.CotizarOrden(request);
    }

    @Path("/productos/disponibilidad/{id}")
    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public List<ProductoDto> Disponibilidad(@PathParam("id") int id) {
        return carritoService.Disponibilidad(id);
    }

}