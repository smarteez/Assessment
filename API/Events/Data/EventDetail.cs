﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Data
{
    public partial class EventDetail
    {
        [Key]
        [Column("EventDetailID")]
        public long EventDetailId { get; set; }
        [Column("FK_EventID")]
        public long FkEventId { get; set; }
        [Column("FK_EventDetailStatusID")]
        public short FkEventDetailStatusId { get; set; }
        [Required]
        [StringLength(50)]
        public string EventDetailName { get; set; }
        public short EventDetailNumber { get; set; }
        [Column(TypeName = "decimal(18, 7)")]
        public decimal EventDetailOdd { get; set; }
        public short FinishingPosition { get; set; }
        public bool FirstTimer { get; set; }
        public bool IsDelete { get; set; }

        [ForeignKey(nameof(FkEventId))]
        [InverseProperty(nameof(Event.EventDetail))]
        public virtual Event FkEvent { get; set; }
        [ForeignKey(nameof(FkEventDetailStatusId))]
        [InverseProperty(nameof(EventDetailStatus.EventDetail))]
        public virtual EventDetailStatus FkEventDetailStatus { get; set; }
    }
}