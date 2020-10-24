using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace Domain
{
    public class TournamentDTO
    {
        public long TournamentId { get; set; }
        [Required]
        [StringLength(200)]
        public string TournamentName { get; set; }
        public bool IsDelete { get; set; }
    }
}
