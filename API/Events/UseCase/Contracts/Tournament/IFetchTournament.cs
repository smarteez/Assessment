using Domain;
using System;
using System.Collections.Generic;
using System.Text;

namespace UseCase.Contracts.Tournament
{
    public interface IFetchTournament
    {
        List<TournamentDTO> getAll();
    }
}
