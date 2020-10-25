using AutoMapper;
using Data;
using Domain;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using UseCase.Contracts.Tournament;

namespace UseCase.Modules.Tournament
{
    public class FetchTournament : IFetchTournament
    {
        private HollywoodtestContext hollywoodtestContext { get; set; }

        public FetchTournament(HollywoodtestContext hollywoodtestContext)
        {
            this.hollywoodtestContext = hollywoodtestContext;
        }

        public List<TournamentDTO> getAll()
        {
            var t = hollywoodtestContext.Tournament.ToList();
            var tournament = new List<TournamentDTO>();
            Mapper.Map(t, tournament);
            return tournament;
        }
    }
}
