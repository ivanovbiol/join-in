use ("admin");
db.auth("rootuser", "rootpass");
console.log('*** Authentication with root user ***')

use ("storage");
db.createCollection("online_users");
console.log('*** Collection created ***')

db.online_users.insertMany (
    [
        {
            identity: "1567b3cb857f132473d4907fd3fee2f96e661308826522e823f5f2e6e20b6032",
            online: true
        },
        {
            identity: "771fda51cc819105d8f3ce802fce2a4f33d23054c5a102f19872fad2a3208551",
            online: true
        },
        {
            identity: "788176f5bb7f654863c2f3aa6bfaa8b49f54d0288019e9d846f772467984b627",
            online: true
        },
        {
            identity: "d52ae056d5830fe0a58a7da85465d6561bb0b9aba01706f010c585810b8fd3c8",
            online: true
        },
        {
            identity: "8a27182c66548a4dcdc9b0cbf26227defcc076a464faa6b66e9f1c876590c94f",
            online: true
        },
        {
           identity: "c5f825c26e2edad6bedd8c23b5da3006638793c4a38faaa6bd49cfbe4ab6dd85",
           online: true
        },
        {
           identity: "519ba91a5a5b4afb9dc66f8805ce8c442b6576316c19c6896af2fa9bda6aff71",
           online: true
        },
        {
           identity: "a4fe133a6f4bc82ab1e102ba5bdc6aaa66b3e69bbfd6e64ac30ebf7708e8bff6",
           online: true
        },
        {
           identity: "31cae906048ac3f9dcd9525d0db54d766ffeca05e3c6f87e92f96306b8122d93",
           online: true
        },
        {
           identity: "67c80c58573c12562067629782b72c455fbd8ab06bbf8dfbd4bc20331d1cbedf",
           online: true
        },
        {
           identity: "41d52bee906b4347466558329fb7a6cbc24b5ab0a5f6c58e2e614decc764fab3",
           online: true
        },
        {
           identity: "cda07e665379ec023b0577605bfd6f91770fe997d72b4e7d3b90e17c29a1ad9e",
           online: true
        }
    ]);

db.createCollection("chat_identities");
console.log('*** Collection created ***')

db.chat_identities.insertMany (
    [
        {
            userIdentity: "1567b3cb857f132473d4907fd3fee2f96e661308826522e823f5f2e6e20b6032",
            chatIdentities:
            [
                // Georgi
                "01f34eec06beb9d15b9d4272b72b91d80dec0abf608e53e8ba91417d559b23b84ced411d9c161172f320c80df9322298cf7d7b7cebdff213aa06e647a1c67c40",
                // Stoyan
                "a3db6886e9585fca38e22c4e4988e7d08173ffb5a86a9206fd5c09061dae4cf35ea9fc1db20f7dfe1e42ee6d3cb6736ce680cb3342bc567f5052a9b742621ea0",
                // Viktoriya
                "104765ce63f6e95212b0638559d7e75811b68ed59ff061352fb613ee701d661fd5427860cf510e8aeee2579e90890f3904b9e53e1262a50e9a161dacdf176caa",
                // Group chat
                "f234338ff7d069dea0e9fa1f7d172426d25c1c44524b30be61d288e5b0562e7bcfdf7d7e17d7b597c114066b58c8041f03c25c2deabe2fe33441fd3567c7d829"
            ]
        },

    ]);

console.log('*** Data Imported ***')