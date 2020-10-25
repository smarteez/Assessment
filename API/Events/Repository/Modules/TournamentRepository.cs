using Domain;
using Repository.Contracts;
using System;
using System.Collections.Generic;
using System.Text;
using UseCase.Contracts.Tournament;

namespace Repository.Modules
{
    public class TournamentRepository : ITournamentRepository
    {
        private ICreateTournament createTournament { get; set; }
        private IUpdateTournament updateTournament { get; set; }
        private IFetchTournament fetchTournament { get; set; }
        private IDeleteTournament deleteTournament { get; set; }

        public TournamentRepository(ICreateTournament createTournament, IUpdateTournament updateTournament, IFetchTournament fetchTournament, IDeleteTournament deleteTournament)
        {
            this.createTournament = createTournament;
            this.updateTournament = updateTournament;
            this.fetchTournament = fetchTournament;
            this.deleteTournament = deleteTournament;
        }

        public void CreateOrUpdate(TournamentDTO tournamentDTO)
        {
            if (tournamentDTO.TournamentId == 0)
                createTournament.Add(tournamentDTO);
            else
                updateTournament.Update(tournamentDTO);
        }

        public void Delete(long tournamentId)
        {
            deleteTournament.Delete(tournamentId);
        }

        public List<TournamentDTO> GetAll()
        {
            return fetchTournament.getAll();
        }
    }
}
