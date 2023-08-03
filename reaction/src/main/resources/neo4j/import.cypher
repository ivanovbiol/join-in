// Create Users
CREATE (Petur:Profile {name: 'Petur', identity: '1567b3cb857f132473d4907fd3fee2f96e661308826522e823f5f2e6e20b6032'})
CREATE (Georgi:Profile {name: 'Georgi', identity: '771fda51cc819105d8f3ce802fce2a4f33d23054c5a102f19872fad2a3208551'})
CREATE (Stoyan:Profile {name: 'Stoyan', identity: '788176f5bb7f654863c2f3aa6bfaa8b49f54d0288019e9d846f772467984b627'})
CREATE (Viktoriya:Profile {name: 'Viktoriya', identity: 'd52ae056d5830fe0a58a7da85465d6561bb0b9aba01706f010c585810b8fd3c8'})
CREATE (Mariya:Profile {name: 'Mariya', identity: '8a27182c66548a4dcdc9b0cbf26227defcc076a464faa6b66e9f1c876590c94f'})
CREATE (Konstantin:Profile {name: 'Konstantin', identity: 'c5f825c26e2edad6bedd8c23b5da3006638793c4a38faaa6bd49cfbe4ab6dd85'})

// Single Post
// Create post
CREATE (p_79cbd7ac103374bc6f9885eed885fec16c8c51d6d2fae9529361323065ab1c0b7e2af2f8e006622a7e321d4e1bf9e38ad0187f75ca35c0b9d8ca4b9e705484d4:Post {identity: '79cbd7ac103374bc6f9885eed885fec16c8c51d6d2fae9529361323065ab1c0b7e2af2f8e006622a7e321d4e1bf9e38ad0187f75ca35c0b9d8ca4b9e705484d4'})

// Create reactions for the Post
CREATE (Georgi)-[:LIKE]->(p_79cbd7ac103374bc6f9885eed885fec16c8c51d6d2fae9529361323065ab1c0b7e2af2f8e006622a7e321d4e1bf9e38ad0187f75ca35c0b9d8ca4b9e705484d4)
CREATE (Stoyan)-[:LIKE]->(p_79cbd7ac103374bc6f9885eed885fec16c8c51d6d2fae9529361323065ab1c0b7e2af2f8e006622a7e321d4e1bf9e38ad0187f75ca35c0b9d8ca4b9e705484d4)
CREATE (Viktoriya)-[:STAR]->(p_79cbd7ac103374bc6f9885eed885fec16c8c51d6d2fae9529361323065ab1c0b7e2af2f8e006622a7e321d4e1bf9e38ad0187f75ca35c0b9d8ca4b9e705484d4)

// Create comments
CREATE (c_d0b214d649e2abb2259a1d8dc6c79f877dc2e3f04684f47c22674b5d63c752949e36cd588d733d047f714a2395fb310a68893d635ea00839bf849cf652c4dcdd:Comment {identity: 'd0b214d649e2abb2259a1d8dc6c79f877dc2e3f04684f47c22674b5d63c752949e36cd588d733d047f714a2395fb310a68893d635ea00839bf849cf652c4dcdd'})
CREATE (c_7f608f8b9cd3b674fa4549792a26ecef4b9ce3635ed9b5fb1643e29ff47d09f52ec6cfc0b2846cb06f605c15c7daf108c88b2ae41a4e163283980da54142b417:Comment {identity: '7f608f8b9cd3b674fa4549792a26ecef4b9ce3635ed9b5fb1643e29ff47d09f52ec6cfc0b2846cb06f605c15c7daf108c88b2ae41a4e163283980da54142b417'})

// Create reactions for the comment
CREATE (Viktoriya)-[:LIKE]->(c_d0b214d649e2abb2259a1d8dc6c79f877dc2e3f04684f47c22674b5d63c752949e36cd588d733d047f714a2395fb310a68893d635ea00839bf849cf652c4dcdd)
CREATE (Stoyan)-[:DISLIKE]->(c_d0b214d649e2abb2259a1d8dc6c79f877dc2e3f04684f47c22674b5d63c752949e36cd588d733d047f714a2395fb310a68893d635ea00839bf849cf652c4dcdd)
CREATE (Viktoriya)-[:LIKE]->(c_7f608f8b9cd3b674fa4549792a26ecef4b9ce3635ed9b5fb1643e29ff47d09f52ec6cfc0b2846cb06f605c15c7daf108c88b2ae41a4e163283980da54142b417)
CREATE (Georgi)-[:DISLIKE]->(c_7f608f8b9cd3b674fa4549792a26ecef4b9ce3635ed9b5fb1643e29ff47d09f52ec6cfc0b2846cb06f605c15c7daf108c88b2ae41a4e163283980da54142b417)
// End of single Post

// Single Post
// Create Post
CREATE (p_cc66a46cad4b32f69a840a0aa29aeb30d6c014c1f09cdd9de446d7da4fcce1c5d97303c201d77a21b8f35ec67c081dd5dd01fe4637782aff360b0b968ad07e97:Post {identity: 'cc66a46cad4b32f69a840a0aa29aeb30d6c014c1f09cdd9de446d7da4fcce1c5d97303c201d77a21b8f35ec67c081dd5dd01fe4637782aff360b0b968ad07e97'})

// Create reactions for the Post
CREATE (Georgi)-[:LIKE]->(p_cc66a46cad4b32f69a840a0aa29aeb30d6c014c1f09cdd9de446d7da4fcce1c5d97303c201d77a21b8f35ec67c081dd5dd01fe4637782aff360b0b968ad07e97)
CREATE (Stoyan)-[:STAR]->(p_cc66a46cad4b32f69a840a0aa29aeb30d6c014c1f09cdd9de446d7da4fcce1c5d97303c201d77a21b8f35ec67c081dd5dd01fe4637782aff360b0b968ad07e97)
CREATE (Viktoriya)-[:DISLIKE]->(p_cc66a46cad4b32f69a840a0aa29aeb30d6c014c1f09cdd9de446d7da4fcce1c5d97303c201d77a21b8f35ec67c081dd5dd01fe4637782aff360b0b968ad07e97)

// Create comments for the post
CREATE (c_38465f25908113103bd172f508506f79e3ff9e882580872b2a362777591627826cd7172f472e0f2ef6b10546a3b39812ba628c0bc5bdcc389a3d25bc805ddc34:Comment {identity: '38465f25908113103bd172f508506f79e3ff9e882580872b2a362777591627826cd7172f472e0f2ef6b10546a3b39812ba628c0bc5bdcc389a3d25bc805ddc34'})
CREATE (c_b581b7eb6c10f4ed6ee519daa1c06ca2edfc3f2c24c663ebb8e425aa878bf8740760b665b787b5ddcf84d1cb35dabffc4d47ab6e37cfdceec2653210c733e3e6:Comment {identity: 'b581b7eb6c10f4ed6ee519daa1c06ca2edfc3f2c24c663ebb8e425aa878bf8740760b665b787b5ddcf84d1cb35dabffc4d47ab6e37cfdceec2653210c733e3e6'})

// Create reactions for the comments
CREATE (Georgi)-[:LIKE]->(c_38465f25908113103bd172f508506f79e3ff9e882580872b2a362777591627826cd7172f472e0f2ef6b10546a3b39812ba628c0bc5bdcc389a3d25bc805ddc34)
CREATE (Viktoriya)-[:LIKE]->(c_38465f25908113103bd172f508506f79e3ff9e882580872b2a362777591627826cd7172f472e0f2ef6b10546a3b39812ba628c0bc5bdcc389a3d25bc805ddc34)
CREATE (Stoyan)-[:DISLIKE]->(c_38465f25908113103bd172f508506f79e3ff9e882580872b2a362777591627826cd7172f472e0f2ef6b10546a3b39812ba628c0bc5bdcc389a3d25bc805ddc34)
CREATE (Georgi)-[:LIKE]->(c_b581b7eb6c10f4ed6ee519daa1c06ca2edfc3f2c24c663ebb8e425aa878bf8740760b665b787b5ddcf84d1cb35dabffc4d47ab6e37cfdceec2653210c733e3e6)
CREATE (Stoyan)-[:DISLIKE]->(c_b581b7eb6c10f4ed6ee519daa1c06ca2edfc3f2c24c663ebb8e425aa878bf8740760b665b787b5ddcf84d1cb35dabffc4d47ab6e37cfdceec2653210c733e3e6)
// End of single Post

// Single Post
// Create post
CREATE (p_8a1e8ba0f2a44c81fbead8a5a3a6a9cc46bcda95b468c8c039ba2f483e803fa2df38960ccb54351cfe93493b37318477a76be2fdbae67549fd7c9168e0861dde:Post {identity: '8a1e8ba0f2a44c81fbead8a5a3a6a9cc46bcda95b468c8c039ba2f483e803fa2df38960ccb54351cfe93493b37318477a76be2fdbae67549fd7c9168e0861dde'})

// Create reactions for the Post
CREATE (Georgi)-[:LIKE]->(p_8a1e8ba0f2a44c81fbead8a5a3a6a9cc46bcda95b468c8c039ba2f483e803fa2df38960ccb54351cfe93493b37318477a76be2fdbae67549fd7c9168e0861dde)
CREATE (Stoyan)-[:STAR]->(p_8a1e8ba0f2a44c81fbead8a5a3a6a9cc46bcda95b468c8c039ba2f483e803fa2df38960ccb54351cfe93493b37318477a76be2fdbae67549fd7c9168e0861dde)

// Create comments for the post
CREATE (c_473a1502887e431b0ac6233d32deb580f7995c8eede025f8a9d213d905dd71a9d27381488daf2a6923902cfdf3db4e93cba7c1adab2e00915c5b6cddb8cb2a30:Comment {identity: '473a1502887e431b0ac6233d32deb580f7995c8eede025f8a9d213d905dd71a9d27381488daf2a6923902cfdf3db4e93cba7c1adab2e00915c5b6cddb8cb2a30'})
CREATE (c_aabda856785b09a5be40485b194a15295b38947f0b2426118ab24b76939ebce4fb28c3c0652061256e3468e2a8a7d8fb17fb848e67a5005b9c1ec5acb2762aa7:Comment {identity: 'aabda856785b09a5be40485b194a15295b38947f0b2426118ab24b76939ebce4fb28c3c0652061256e3468e2a8a7d8fb17fb848e67a5005b9c1ec5acb2762aa7'})

// Create reactions for the comments
CREATE (Georgi)-[:LIKE]->(c_473a1502887e431b0ac6233d32deb580f7995c8eede025f8a9d213d905dd71a9d27381488daf2a6923902cfdf3db4e93cba7c1adab2e00915c5b6cddb8cb2a30)
CREATE (Viktoriya)-[:LIKE]->(c_473a1502887e431b0ac6233d32deb580f7995c8eede025f8a9d213d905dd71a9d27381488daf2a6923902cfdf3db4e93cba7c1adab2e00915c5b6cddb8cb2a30)
CREATE (Stoyan)-[:LIKE]->(c_473a1502887e431b0ac6233d32deb580f7995c8eede025f8a9d213d905dd71a9d27381488daf2a6923902cfdf3db4e93cba7c1adab2e00915c5b6cddb8cb2a30)
CREATE (Georgi)-[:LIKE]->(c_aabda856785b09a5be40485b194a15295b38947f0b2426118ab24b76939ebce4fb28c3c0652061256e3468e2a8a7d8fb17fb848e67a5005b9c1ec5acb2762aa7)
CREATE (Stoyan)-[:DISLIKE]->(c_aabda856785b09a5be40485b194a15295b38947f0b2426118ab24b76939ebce4fb28c3c0652061256e3468e2a8a7d8fb17fb848e67a5005b9c1ec5acb2762aa7)
// End of single Post

// Single Post
// Create post
CREATE (p_62e0c94e2a0589f47d4f0a14ebf07910fffa8fddea4c3fa696e54d9885d0efacf3ddb91c94758e6a740e81f45277fb5ec8194678446b4ddf83920ce4a3499043:Post {identity: '62e0c94e2a0589f47d4f0a14ebf07910fffa8fddea4c3fa696e54d9885d0efacf3ddb91c94758e6a740e81f45277fb5ec8194678446b4ddf83920ce4a3499043'})

// Create reactions for the Post
CREATE (Georgi)-[:LIKE]->(p_62e0c94e2a0589f47d4f0a14ebf07910fffa8fddea4c3fa696e54d9885d0efacf3ddb91c94758e6a740e81f45277fb5ec8194678446b4ddf83920ce4a3499043)
CREATE (Stoyan)-[:STAR]->(p_62e0c94e2a0589f47d4f0a14ebf07910fffa8fddea4c3fa696e54d9885d0efacf3ddb91c94758e6a740e81f45277fb5ec8194678446b4ddf83920ce4a3499043)

// Create comments for the post
CREATE (c_e659bc8e66fffd9a81573b034106d3adb76888c02b5d21089e37200e82c9950ba98121e67b2c54066eaac7ffc54a400f0e3768ec5e8a9f5fd4e072a378033e8b:Comment {identity: 'e659bc8e66fffd9a81573b034106d3adb76888c02b5d21089e37200e82c9950ba98121e67b2c54066eaac7ffc54a400f0e3768ec5e8a9f5fd4e072a378033e8b'})

// Create reactions for the comments
CREATE (Georgi)-[:LIKE]->(c_e659bc8e66fffd9a81573b034106d3adb76888c02b5d21089e37200e82c9950ba98121e67b2c54066eaac7ffc54a400f0e3768ec5e8a9f5fd4e072a378033e8b)
CREATE (Viktoriya)-[:LIKE]->(c_e659bc8e66fffd9a81573b034106d3adb76888c02b5d21089e37200e82c9950ba98121e67b2c54066eaac7ffc54a400f0e3768ec5e8a9f5fd4e072a378033e8b)
CREATE (Stoyan)-[:LIKE]->(c_e659bc8e66fffd9a81573b034106d3adb76888c02b5d21089e37200e82c9950ba98121e67b2c54066eaac7ffc54a400f0e3768ec5e8a9f5fd4e072a378033e8b)
// End of single Post

// Single Post
// Create post
CREATE (p_5f4183b360dd972469675a768e00d64a0b72bb18850dd7d7445eab6dca9dd612f0684d07926a2b318d6fad7dc734821e150e36ac8db8c25a736dded741e41aa9:Post {identity: '5f4183b360dd972469675a768e00d64a0b72bb18850dd7d7445eab6dca9dd612f0684d07926a2b318d6fad7dc734821e150e36ac8db8c25a736dded741e41aa9'})

// Create reactions for the Post
CREATE (Georgi)-[:LIKE]->(p_5f4183b360dd972469675a768e00d64a0b72bb18850dd7d7445eab6dca9dd612f0684d07926a2b318d6fad7dc734821e150e36ac8db8c25a736dded741e41aa9)
CREATE (Stoyan)-[:STAR]->(p_5f4183b360dd972469675a768e00d64a0b72bb18850dd7d7445eab6dca9dd612f0684d07926a2b318d6fad7dc734821e150e36ac8db8c25a736dded741e41aa9)
CREATE (Viktoriya)-[:DISLIKE]->(p_5f4183b360dd972469675a768e00d64a0b72bb18850dd7d7445eab6dca9dd612f0684d07926a2b318d6fad7dc734821e150e36ac8db8c25a736dded741e41aa9)

// Create comments for the post
CREATE (c_4ab24b6ef51fd861891a8999f0e04b35856040e74f6762c283953b3a04497e3cb9354c4fd33d77e0d0e6b6c87d354b2e97e1a5dcdb0f59dbf03f478b8c688b04:Comment {identity: '4ab24b6ef51fd861891a8999f0e04b35856040e74f6762c283953b3a04497e3cb9354c4fd33d77e0d0e6b6c87d354b2e97e1a5dcdb0f59dbf03f478b8c688b04'})
CREATE (c_15e49fc7281854c9aaab9c0638bdf3c4aa49072b6d095a7b0ff8674456f8ad277e2fc29e455236c201bee13a097d428e0753da42e9443f2c082ee8872a4cd0eb:Comment {identity: '15e49fc7281854c9aaab9c0638bdf3c4aa49072b6d095a7b0ff8674456f8ad277e2fc29e455236c201bee13a097d428e0753da42e9443f2c082ee8872a4cd0eb'})
CREATE (c_ee2a62d0f0e875823a81c01ddb4374d4eda5fa5ab6855e111d11bde5c241fa2beb8c7413891868931894a7f52cb0f7839292eb83686a2d94f3b6f3d5003ba10e:Comment {identity: 'ee2a62d0f0e875823a81c01ddb4374d4eda5fa5ab6855e111d11bde5c241fa2beb8c7413891868931894a7f52cb0f7839292eb83686a2d94f3b6f3d5003ba10e'})

// Create reactions for the comments
CREATE (Georgi)-[:LIKE]->(c_4ab24b6ef51fd861891a8999f0e04b35856040e74f6762c283953b3a04497e3cb9354c4fd33d77e0d0e6b6c87d354b2e97e1a5dcdb0f59dbf03f478b8c688b04)
CREATE (Viktoriya)-[:LIKE]->(c_15e49fc7281854c9aaab9c0638bdf3c4aa49072b6d095a7b0ff8674456f8ad277e2fc29e455236c201bee13a097d428e0753da42e9443f2c082ee8872a4cd0eb)
CREATE (Stoyan)-[:LIKE]->(c_ee2a62d0f0e875823a81c01ddb4374d4eda5fa5ab6855e111d11bde5c241fa2beb8c7413891868931894a7f52cb0f7839292eb83686a2d94f3b6f3d5003ba10e)
// End of single Post

// Single Post
// Create post
CREATE (p_1212998f8136d1c2fad57bdb5986d0791a75e8d2e05073ae197cb2f8b0ac8e3acfe9126ded2b2625f7cc4496d2b431849041d69b6408518a1db6e937a2e5d712:Post {identity: '1212998f8136d1c2fad57bdb5986d0791a75e8d2e05073ae197cb2f8b0ac8e3acfe9126ded2b2625f7cc4496d2b431849041d69b6408518a1db6e937a2e5d712'})

// Create reactions for the Post
CREATE (Georgi)-[:LIKE]->(p_1212998f8136d1c2fad57bdb5986d0791a75e8d2e05073ae197cb2f8b0ac8e3acfe9126ded2b2625f7cc4496d2b431849041d69b6408518a1db6e937a2e5d712)
CREATE (Stoyan)-[:STAR]->(p_1212998f8136d1c2fad57bdb5986d0791a75e8d2e05073ae197cb2f8b0ac8e3acfe9126ded2b2625f7cc4496d2b431849041d69b6408518a1db6e937a2e5d712)
CREATE (Viktoriya)-[:DISLIKE]->(p_1212998f8136d1c2fad57bdb5986d0791a75e8d2e05073ae197cb2f8b0ac8e3acfe9126ded2b2625f7cc4496d2b431849041d69b6408518a1db6e937a2e5d712)

// Create comments for the post
CREATE (c_5182c1bf3fff3549c4fd993f6cc8263097b1cb73566e032675ea3a85242af3df2b70a4a2e64c3528291b8b234122b194977c45dd3661524a7db0a2ec4dc50089:Comment {identity: '5182c1bf3fff3549c4fd993f6cc8263097b1cb73566e032675ea3a85242af3df2b70a4a2e64c3528291b8b234122b194977c45dd3661524a7db0a2ec4dc50089'})
CREATE (c_c19861c6369004dacf8d04721a8da0997dd1d9e9a64bf57235e3f6d04480ae779a1705fdf50e33f2bfc6600c5f177a621531bbebdfdf2fb848db1a8df3a66953:Comment {identity: 'c19861c6369004dacf8d04721a8da0997dd1d9e9a64bf57235e3f6d04480ae779a1705fdf50e33f2bfc6600c5f177a621531bbebdfdf2fb848db1a8df3a66953'})

// Create reactions for the comments
CREATE (Georgi)-[:LIKE]->(c_5182c1bf3fff3549c4fd993f6cc8263097b1cb73566e032675ea3a85242af3df2b70a4a2e64c3528291b8b234122b194977c45dd3661524a7db0a2ec4dc50089)
CREATE (Viktoriya)-[:LIKE]->(c_c19861c6369004dacf8d04721a8da0997dd1d9e9a64bf57235e3f6d04480ae779a1705fdf50e33f2bfc6600c5f177a621531bbebdfdf2fb848db1a8df3a66953)
CREATE (Stoyan)-[:LIKE]->(c_c19861c6369004dacf8d04721a8da0997dd1d9e9a64bf57235e3f6d04480ae779a1705fdf50e33f2bfc6600c5f177a621531bbebdfdf2fb848db1a8df3a66953)
// End of single Post

// Single Post
// Create post
CREATE (p_13a81b6c121c9835eeb780a7a145d4cc7345d173ab2e217c4721447bc79aedf50cf292b6b51b4808b067bb34ae2f3f9538a109146b51aa06b9ad65d56178e8c0:Post {identity: '13a81b6c121c9835eeb780a7a145d4cc7345d173ab2e217c4721447bc79aedf50cf292b6b51b4808b067bb34ae2f3f9538a109146b51aa06b9ad65d56178e8c0'})

// Create reactions for the Post
CREATE (Georgi)-[:LIKE]->(p_13a81b6c121c9835eeb780a7a145d4cc7345d173ab2e217c4721447bc79aedf50cf292b6b51b4808b067bb34ae2f3f9538a109146b51aa06b9ad65d56178e8c0)
CREATE (Stoyan)-[:STAR]->(p_13a81b6c121c9835eeb780a7a145d4cc7345d173ab2e217c4721447bc79aedf50cf292b6b51b4808b067bb34ae2f3f9538a109146b51aa06b9ad65d56178e8c0)

// Create comments for the post
CREATE (c_78a1306ae6628f8ca87000c28b169afb69090638d5ded079deb9be523f37c0a2f0d35d60282edfa0efeea409d28a6b271dfda47b899811125c913597f7d2ffc7:Comment {identity: '78a1306ae6628f8ca87000c28b169afb69090638d5ded079deb9be523f37c0a2f0d35d60282edfa0efeea409d28a6b271dfda47b899811125c913597f7d2ffc7'})
CREATE (c_73282d5fa9d7549721fa024dd486d383a3f93daf188e97e183a053c5b27a85a3bce7508036e23d390cb53e6dd1b8dcec6ebe64241beca7f45d1e1e13d072bb0b:Comment {identity: '73282d5fa9d7549721fa024dd486d383a3f93daf188e97e183a053c5b27a85a3bce7508036e23d390cb53e6dd1b8dcec6ebe64241beca7f45d1e1e13d072bb0b'})
CREATE (c_076c5f6e849c83d0e1f3ce78fb85e88e7c9e6b9b38f3f029faee0022545969e755a5730f739644f3ec43c9dc2e629b4a12e806119ef0def5ce41120473f47470:Comment {identity: '076c5f6e849c83d0e1f3ce78fb85e88e7c9e6b9b38f3f029faee0022545969e755a5730f739644f3ec43c9dc2e629b4a12e806119ef0def5ce41120473f47470'})

// Create reactions for the comments
CREATE (Georgi)-[:LIKE]->(c_78a1306ae6628f8ca87000c28b169afb69090638d5ded079deb9be523f37c0a2f0d35d60282edfa0efeea409d28a6b271dfda47b899811125c913597f7d2ffc7)
CREATE (Viktoriya)-[:LIKE]->(c_73282d5fa9d7549721fa024dd486d383a3f93daf188e97e183a053c5b27a85a3bce7508036e23d390cb53e6dd1b8dcec6ebe64241beca7f45d1e1e13d072bb0b)
CREATE (Stoyan)-[:LIKE]->(c_076c5f6e849c83d0e1f3ce78fb85e88e7c9e6b9b38f3f029faee0022545969e755a5730f739644f3ec43c9dc2e629b4a12e806119ef0def5ce41120473f47470)
// End of single Post