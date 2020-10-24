﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Data
{
    public partial class Tournament
    {
        public Tournament()
        {
            Event = new HashSet<Event>();
        }

        [Key]
        [Column("TournamentID")]
        public long TournamentId { get; set; }
        [Required]
        [StringLength(200)]
        public string TournamentName { get; set; }
        public bool IsDelete { get; set; }

        [InverseProperty("FkTournament")]
        public virtual ICollection<Event> Event { get; set; }
    }
}