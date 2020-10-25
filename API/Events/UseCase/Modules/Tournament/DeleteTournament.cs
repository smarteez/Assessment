using Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Text;
using UseCase.Contracts.Tournament;

namespace UseCase.Modules.Tournament
{
    public class DeleteTournament : IDeleteTournament
    {
        private HollywoodtestContext hollywoodtestContext { get; set; }

        public DeleteTournament(HollywoodtestContext hollywoodtestContext)
        {
            this.hollywoodtestContext = hollywoodtestContext;
        }

        public  void Delete(long TournamentId)
        {
            var tournament = hollywoodtestContext.Tournament.FirstOrDefault(x => x.TournamentId == TournamentId);
            tournament.IsDelete = true;

            hollywoodtestContext.Tournament.Update(tournament);
        }
    }
}
