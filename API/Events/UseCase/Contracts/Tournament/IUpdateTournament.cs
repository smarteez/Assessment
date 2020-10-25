using Domain;
using System;
using System.Collections.Generic;
using System.Text;

namespace UseCase.Contracts.Tournament
{
    interface IUpdateTournament
    {
        void Update(TournamentDTO tournamentDTO);
    }
}
