using ProveedoresCore.Interfaces;
using ProveedoresCore.Services;
using ProveedoresInfraestructure.Repositories;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Microsoft.Extensions.Configuration;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using ProveedoresInfraestructure.Data;
using Microsoft.EntityFrameworkCore;
using TraslatorJSLT;
using TraslatorXSLT;
using ProveedoresCore.Util;

namespace ProveedoresApi
{
    public class Startup
    {
        public Startup(IConfiguration configuration)
        {
            Configuration = configuration;
        }

        public IConfiguration Configuration { get; }
        // This method gets called by the runtime. Use this method to add services to the container.
        // For more information on how to configure your application, visit https://go.microsoft.com/fwlink/?LinkID=398940
        public void ConfigureServices(IServiceCollection services)
        {
            services.AddControllers();
            
            services.AddScoped<IConvertJsonToDto, ConvertJsonToDto>();
            services.AddScoped<IConvertXmlToDto, ConvertXmlToDto>();
            services.AddScoped<IProveedoresApiRepository, ProveedoresApiRepository>();
            services.AddScoped<IProveedoresRepository, ProveedoresRepository>();
            services.AddScoped<IProveedoresServices, ProveedoresServices>();
            services.AddDbContext<ProvidersContext>(options => options.UseSqlServer(Configuration.GetConnectionString("DefaultConnection")));            
        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IWebHostEnvironment env)
        {
            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
            }

            app.UseRouting();

            app.UseAuthorization();

            app.UseEndpoints(endpoints =>
            {
                endpoints.MapControllers();
            });
        }
    }
}
