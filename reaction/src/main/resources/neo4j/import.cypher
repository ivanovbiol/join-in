CREATE (Petur:Profile {name: 'Petur', identity: '1567b3cb857f132473d4907fd3fee2f96e661308826522e823f5f2e6e20b6032'})
CREATE (Georgi:Profile {name: 'Georgi', identity: '771fda51cc819105d8f3ce802fce2a4f33d23054c5a102f19872fad2a3208551'})
CREATE (Stoyan:Profile {name: 'Stoyan', identity: '788176f5bb7f654863c2f3aa6bfaa8b49f54d0288019e9d846f772467984b627'})
CREATE (Viktoriya:Profile {name: 'Viktoriya', identity: 'd52ae056d5830fe0a58a7da85465d6561bb0b9aba01706f010c585810b8fd3c8'})
CREATE (Mariya:Profile {name: 'Mariya', identity: '8a27182c66548a4dcdc9b0cbf26227defcc076a464faa6b66e9f1c876590c94f'})
CREATE (Konstantin:Profile {name: 'Konstantin', identity: 'c5f825c26e2edad6bedd8c23b5da3006638793c4a38faaa6bd49cfbe4ab6dd85'})

CREATE (c_79cbd7ac103374bc6f9885eed885fec16c8c51d6d2fae9529361323065ab1c0b7e2af2f8e006622a7e321d4e1bf9e38ad0187f75ca35c0b9d8ca4b9e705484d4:Post {identity: '79cbd7ac103374bc6f9885eed885fec16c8c51d6d2fae9529361323065ab1c0b7e2af2f8e006622a7e321d4e1bf9e38ad0187f75ca35c0b9d8ca4b9e705484d4'})
CREATE (c_cc66a46cad4b32f69a840a0aa29aeb30d6c014c1f09cdd9de446d7da4fcce1c5d97303c201d77a21b8f35ec67c081dd5dd01fe4637782aff360b0b968ad07e97:Post {identity: 'cc66a46cad4b32f69a840a0aa29aeb30d6c014c1f09cdd9de446d7da4fcce1c5d97303c201d77a21b8f35ec67c081dd5dd01fe4637782aff360b0b968ad07e97'})

CREATE (Georgi)-[:LIKE]->(c_79cbd7ac103374bc6f9885eed885fec16c8c51d6d2fae9529361323065ab1c0b7e2af2f8e006622a7e321d4e1bf9e38ad0187f75ca35c0b9d8ca4b9e705484d4)
CREATE (Stoyan)-[:LIKE]->(c_79cbd7ac103374bc6f9885eed885fec16c8c51d6d2fae9529361323065ab1c0b7e2af2f8e006622a7e321d4e1bf9e38ad0187f75ca35c0b9d8ca4b9e705484d4)
CREATE (Viktoriya)-[:STAR]->(c_79cbd7ac103374bc6f9885eed885fec16c8c51d6d2fae9529361323065ab1c0b7e2af2f8e006622a7e321d4e1bf9e38ad0187f75ca35c0b9d8ca4b9e705484d4)

CREATE (Georgi)-[:LIKE]->(c_cc66a46cad4b32f69a840a0aa29aeb30d6c014c1f09cdd9de446d7da4fcce1c5d97303c201d77a21b8f35ec67c081dd5dd01fe4637782aff360b0b968ad07e97)
CREATE (Stoyan)-[:STAR]->(c_cc66a46cad4b32f69a840a0aa29aeb30d6c014c1f09cdd9de446d7da4fcce1c5d97303c201d77a21b8f35ec67c081dd5dd01fe4637782aff360b0b968ad07e97)
CREATE (Viktoriya)-[:DISLIKE]->(c_cc66a46cad4b32f69a840a0aa29aeb30d6c014c1f09cdd9de446d7da4fcce1c5d97303c201d77a21b8f35ec67c081dd5dd01fe4637782aff360b0b968ad07e97)