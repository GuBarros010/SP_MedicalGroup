using System;
using System.Collections.Generic;

#nullable disable

namespace senai.SpMedGroup.webAPI.Domains
{
    public partial class Usuario
    {
        public Usuario()
        {
            Pacientes = new HashSet<Paciente>();
        }

        public int IdUsuario { get; set; }
        public int? IdTipoUsuario { get; set; }
        public string Email { get; set; }
        public string Senha { get; set; }

        public virtual TipoUsuario IdTipoUsuarioNavigation { get; set; }
        public virtual ICollection<Paciente> Pacientes { get; set; }
    }
}
