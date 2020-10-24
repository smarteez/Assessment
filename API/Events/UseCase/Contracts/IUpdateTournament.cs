using Domain;
using System;
using System.Collections.Generic;
using System.Text;

namespace UseCase.Contracts
{
    interface IUpdateTournament
    {
        void Update(TournamentDTO tournamentDTO);
    }
}
