using System;
using System.Collections.Generic;
using System.Text;

namespace UseCase.Contracts.Tournament
{
    public interface IDeleteTournament
    {
        void Delete(long TournamentId);
    }
}
