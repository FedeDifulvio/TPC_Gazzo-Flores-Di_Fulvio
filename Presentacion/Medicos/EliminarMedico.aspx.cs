﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Dominio;
using Negocio; 

namespace Presentacion.Medicos
{
    public partial class EliminarMedico : System.Web.UI.Page
    {
        int id;
        Medico MedicoEliminar = new Medico();
        protected void Page_Load(object sender, EventArgs e)
        {
                

                List<Medico> Lista = (List<Medico>)Session["ListaMedicos"];


                id = int.Parse(Request.QueryString["id"]);

                MedicoEliminar = Lista.Find(x => x.ID == id);

                TextBoxNombre.Text = MedicoEliminar.Nombre;
                TextBoxApellido.Text = MedicoEliminar.Apellido;
                TextBoxLegajo.Text = MedicoEliminar.Legajo;


            
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
             MedicoNegocio negocio = new MedicoNegocio();

            try
            {

                negocio.Eliminar(int.Parse(Request.QueryString["id"]));
              
                Response.Redirect("RegistroMedicos.aspx");

            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}