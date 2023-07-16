CREATE (Petur:Profile {name: 'Petur', identity: '1567b3cb857f132473d4907fd3fee2f96e661308826522e823f5f2e6e20b6032'})
CREATE (Georgi:Profile {name: 'Georgi', identity: '771fda51cc819105d8f3ce802fce2a4f33d23054c5a102f19872fad2a3208551'})
CREATE (Stoyan:Profile {name: 'Stoyan', identity: '788176f5bb7f654863c2f3aa6bfaa8b49f54d0288019e9d846f772467984b627'})
CREATE (Viktoriya:Profile {name: 'Viktoriya', identity: 'd52ae056d5830fe0a58a7da85465d6561bb0b9aba01706f010c585810b8fd3c8'})

CREATE (Petur)-[:FRIEND]->(Georgi),
(Georgi)-[:FRIEND]->(Petur)

CREATE (Petur)-[:FRIEND]->(Stoyan),
(Stoyan)-[:FRIEND]->(Petur)

CREATE (Petur)-[:FRIEND]->(Viktoriya),
(Viktoriya)-[:FRIEND]->(Petur)

CREATE (Georgi)-[:FRIEND]->(Stoyan),
(Stoyan)-[:FRIEND]->(Georgi)

CREATE (Georgi)-[:FRIEND]->(Viktoriya),
(Viktoriya)-[:FRIEND]->(Georgi)

CREATE (Stoyan)-[:FRIEND]->(Viktoriya),
(Viktoriya)-[:FRIEND]->(Stoyan)

CREATE (Mariya:Profile {name: 'Mariya', identity: '8a27182c66548a4dcdc9b0cbf26227defcc076a464faa6b66e9f1c876590c94f'})
CREATE (Konstantin:Profile {name: 'Konstantin', identity: 'c5f825c26e2edad6bedd8c23b5da3006638793c4a38faaa6bd49cfbe4ab6dd85'})

CREATE (Mariya)-[:FRIEND]->(Konstantin),
(Konstantin)-[:FRIEND]->(Mariya)
