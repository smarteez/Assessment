using Domain;
using System;
using System.Collections.Generic;
using System.Text;

namespace Repository.Contracts
{
    public interface ITournamentRepository
    {
        void CreateOrUpdate(TournamentDTO tournamentDTO);
        void Delete(long TournamentId);
        List<TournamentDTO> GetAll();
    }
}
