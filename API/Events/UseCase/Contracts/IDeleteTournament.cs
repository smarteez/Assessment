using System;
using System.Collections.Generic;
using System.Text;

namespace UseCase.Contracts
{
    public interface IDeleteTournament
    {
        void Delete(long TournamentId);
    }
}
