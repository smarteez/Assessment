using Data;
using Domain;
using System;
using System.Collections.Generic;
using System.Text;
using UseCase.Contracts.Tournament;
using System.Linq;
using System.Linq.Expressions;
using AutoMapper;

namespace UseCase.Modules.Tournament
{
    public class CreateTournament : ICreateTournament
    {
        private  HollywoodtestContext hollywoodtestContext { get; set; }

        public CreateTournament(HollywoodtestContext hollywoodtestContext)
        {
            this.hollywoodtestContext = hollywoodtestContext;
        }

        public void Add(TournamentDTO tournamentDTO)
        {
            var tournament = new Data.Tournament();
            Mapper.Map(tournamentDTO, tournament);
            hollywoodtestContext.Tournament.Add(tournament);
        }
    }
}
