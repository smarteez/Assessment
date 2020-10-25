using Domain;
using System;
using System.Collections.Generic;
using System.Text;

namespace UseCase.Contracts.Tournament
{
    public interface ICreateTournament
    {
        void Add(TournamentDTO tournamentDTO);
    }
}
