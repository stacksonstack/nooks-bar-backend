class UserSerializer < ActiveModel::Serializer
    include Rails.application.routes.url_helpers
  
    attributes :id, :name, :email, :password, :age, :wins, :losses
    has_many :user_beers
    has_many :beers, through: :user_beers
   
    
  
end

# setLoss=()=>{
#     fetch(`http://localhost:3000/api/v1/users/${this.state.currentUserId}`, {
#         method: "PATCH",
#         headers: {
#           "Content-Type": "application/json",
#           Accepts: "application/json",
#         },
#         body: JSON.stringify({ losses: this.state.totalLosses + 1 }),
#       })
#         .then((resp) => resp.json())
#         .then((data) => {
#           this.setState({ losses: data.losses });
#         });
#   }

#   setWin = () => {
#       fetch(`http://localhost:3000/api/v1/users/${this.state.currentUserId}`, {
#         method: "PATCH",
#         headers: {
#           "Content-Type": "application/json",
#           Accepts: "application/json",
#         },
#         body: JSON.stringify({ wins: this.state.totalWins + 1 }),
#       })
#         .then((resp) => resp.json())
#         .then((data) => {
#           this.setState({ wins: data.wins });
#         });
#   };


# <Route
#             path="/cardGame"
#             render={() => (
#               <CardGame
#                 user={this.state.currentUserId}
#                 totalWins={this.state.totalWins}
#                 totalLosses={this.state.totalLosses}
#                 goBack={this.goBackToBar}
#                 setWin={this.setWin}
#                 setLoss={this.setLoss}
#               />
#             )}
#           />


# const gameOver = () => {
#     if (counter === 0) {
      
#       <h1>Game Over</h1>;
#       props.setLoss();
      
#       console.log("GAME OVER");
      
#     } else if (solved.length >= 15) {
    
#       <h1>YOU WON</h1>;
     
#       setCounter(0);
       
#       props.setWin();
      
    
#     } else {
#       console.log("Keep going!");
#     }
#   };