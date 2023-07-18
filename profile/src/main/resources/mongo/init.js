use ("admin");
db.auth("rootuser", "rootpass");
console.log('*** Authentication with root user ***')

use ("storage");
db.createCollection("profiles");
console.log('*** Collection created ***')

db.profiles.insertMany([
  {
        identity: "1567b3cb857f132473d4907fd3fee2f96e661308826522e823f5f2e6e20b6032",
        firstName: "Petur",
        lastName: "Petrov",
        email: "petur@petur.com",
        aboutMe: "I am a teenager.",
        mobile: "+359 123 123 123",
        city: "Sofia",
        country: "Bulgaria",
        birthDate: "2008-05-17",
        gender: "Male",
        joined: "2020-07-06",
        status: "Single",
        website: "petur.com",
        hobbies: "I like to ride the bike to work, swimming, and working out. I also like reading design magazines, go to museums, and binge watching a good tv show while it’s raining outside."
  },
  {
        identity: "771fda51cc819105d8f3ce802fce2a4f33d23054c5a102f19872fad2a3208551",
        firstName: "Georgi",
        lastName: "Tihomirov",
        email: "georgi@georgi.com",
        aboutMe: "I am a teenager.",
        mobile: "+359 123 123 123",
        city: "Sofia",
        country: "Bulgaria",
        birthDate: "2009-09-21",
        gender: "Male",
        joined: "2021-01-12",
        status: "Single",
        website: "petur.com",
        hobbies: "I like to ride the bike to work, swimming, and working out. I also like reading design magazines, go to museums, and binge watching a good tv show while it’s raining outside."
    },
    {
        identity: "788176f5bb7f654863c2f3aa6bfaa8b49f54d0288019e9d846f772467984b627",
        firstName: "Stoyan",
        lastName: "Dimitrov",
        email: "stoyan@stoyan.com",
        aboutMe: "I am a young person.",
        mobile: "+359 123 123 123",
        city: "Sofia",
        country: "Bulgaria",
        birthDate: "1988-03-01",
        gender: "Male",
        joined: "2018-12-15",
        status: "Married",
        website: "Stoyan.com",
        hobbies: "I like to ride the bike to work, swimming, and working out. I also like reading design magazines, go to museums, and binge watching a good tv show while it’s raining outside."
    },
    {
        identity: "d52ae056d5830fe0a58a7da85465d6561bb0b9aba01706f010c585810b8fd3c8",
        firstName: "Viktoriya",
        lastName: "Ivanova",
        email: "victoriya@victoriya.com",
        aboutMe: "I am a young person.",
        mobile: "+359 123 123 123",
        city: "Plovdiv",
        country: "Bulgaria",
        birthDate: "2001-03-11",
        gender: "Female",
        joined: "2019-06-08",
        status: "Single",
        website: "victoriya.com",
        hobbies: "I like to ride the bike to work, swimming, and working out. I also like reading design magazines, go to museums, and binge watching a good tv show while it’s raining outside."
    },
    {
        identity: "8a27182c66548a4dcdc9b0cbf26227defcc076a464faa6b66e9f1c876590c94f",
        firstName: "Mariya",
        lastName: "Stoyanova",
        email: "mariya@mariya.com",
        aboutMe: "I am a young person.",
        mobile: "+359 123 123 123",
        city: "Varna",
        country: "Bulgaria",
        birthDate: "2005-11-09",
        gender: "Female",
        joined: "2020-06-19",
        status: "Single",
        website: "mariya.com",
        hobbies: "I like to ride the bike to work, swimming, and working out. I also like reading design magazines, go to museums, and binge watching a good tv show while it’s raining outside."
    },
    {
        identity: "c5f825c26e2edad6bedd8c23b5da3006638793c4a38faaa6bd49cfbe4ab6dd85",
        firstName: "Konstantin",
        lastName: "Ventsislavov",
        email: "konstantin@konstantin.com",
        aboutMe: "I am a young person.",
        mobile: "+359 123 123 123",
        city: "Varna",
        country: "Bulgaria",
        birthDate: "1992-04-22",
        gender: "Female",
        joined: "2020-04-22",
        status: "Married",
        website: "konstantin.com",
        hobbies: "I like to ride the bike to work, swimming, and working out. I also like reading design magazines, go to museums, and binge watching a good tv show while it’s raining outside."
    }
]);
console.log('*** Data Imported ***')

