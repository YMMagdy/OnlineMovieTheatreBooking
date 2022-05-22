DROP TABLE tickets;
DROP TABLE movies;
DROP TABLE users;

CREATE TABLE movies  (
    movieid INT UNIQUE NOT NULL AUTO_INCREMENT,
    title VARCHAR(75),
    descr VARCHAR(1300),
    starring VARCHAR(255),
    youtubetrailerlink VARCHAR(2024),
    rating FLOAT,
    lang VARCHAR(55),
    runtime VARCHAR(20),
    releasedate VARCHAR(20),
    genre VARCHAR(255),
    imagetype VARCHAR(25) NOT NULL DEFAULT '',
    imagedata VARCHAR(1024) NOT NULL,
    av bool, 
    PRIMARY KEY(movieid),
    CHECK (rating <= 10)
);	

ALTER TABLE movies AUTO_INCREMENT=0;

INSERT INTO movies(title,descr,starring,youtubetrailerlink,rating,lang,runtime,releasedate,genre,imagetype,imagedata,av)
VALUES("HITMAN'S WIFE'S BODYGUARD","The world's most lethal odd couple bodyguard Michael Bryce (Ryan Reynolds) and hitman Darius Kincaid (Samuel L. Jackson) are back on another life-threatening mission. Still unlicensed and under scrutiny, Bryce is forced into action by Darius's even more volatile wife, the infamous international con artist Sonia Kincaid (Salma Hayek). As Bryce is driven over the edge by his two most dangerous protectees, the trio get in over their heads in a global plot and soon find that they are all that stand between Europe and a vengeful and powerful madman (Antonio Banderas). Joining in the fun and deadly mayhem is Morgan Freeman as... well, you'll have to see.","Salma Hayek, Ryan Reynolds, Antonio Banderas, Samuel L. Jackson, Morgan Freeman","<iframe width=\"560\" height=\"315\" src=\"https://www.youtube-nocookie.com/embed/9C0l31YcahQ\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>",6.6,"English","120 mins","17 June 2021","Action",".jpg","https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.imdb.com%2Ftitle%2Ftt8385148%2F&psig=AOvVaw3GNA-5hc7OGTo_G3h8w4v2&ust=1624091501324000&source=images&cd=vfe&ved=0CAcQjRxqFwoTCJCNqLzioPECFQAAAAAdAAAAABAD",TRUE);

INSERT INTO movies(title,descr,starring,youtubetrailerlink,rating,lang,runtime,releasedate,genre,imagetype,imagedata,av)
VALUES("A QUIET PLACE: PART II","Following the events at home, the Abbott family now face the terrors of the outside world. Forced to venture into the unknown, they realize that the creatures that hunt by sound are not the only threats that lurk beyond the sand path.","Emily Blunt, Noah Jupe, Djimon Hounsou, Cillian Murphy","<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/BpdDN9d9Jio\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>",7.8,"English","100 mins","10 June 2021","Horror",".jpg","https://www.google.com/url?sa=i&url=https%3A%2F%2Farabseed.onl%3A2053%2F%25D9%2581%25D9%258A%25D9%2584%25D9%2585-a-quiet-place-part-ii-2021-%25D9%2585%25D8%25AA%25D8%25B1%25D8%25AC%25D9%2585%2F&psig=AOvVaw3fNvhnfZRECOWK15pKTtA4&ust=1624092226420000&source=images&cd=vfe&ved=0CAcQjRxqFwoTCJDh6ZTloPECFQAAAAAdAAAAABAD",TRUE);

INSERT INTO movies(title,descr,starring,youtubetrailerlink,rating,lang,runtime,releasedate,genre,imagetype,imagedata,av)
VALUES("LUCA","On the Italian Riviera, an unlikely but strong friendship grows between a human being and a sea monster disguised as a human","Maya Rudolph, Jacob Tremblay, Jack Dylan Grazer","<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/mYfJxlgR2jw\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>",8.3,"English","95 min","17 June 2021","Animation",".jpg","https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.youm7.com%2Fstory%2F2021%2F2%2F24%2F%25D8%25A7%25D9%2584%25D8%25A8%25D9%2588%25D8%25B3%25D8%25AA%25D8%25B1-%25D8%25A7%25D9%2584%25D8%25A3%25D9%2588%25D9%2584-%25D9%2584%25D9%2581%25D9%258A%25D9%2584%25D9%2585-%25D8%25A7%25D9%2584%25D8%25A3%25D9%2586%25D9%2585%25D9%258A%25D8%25B4%25D9%2586-Luca-%25D8%25A8%25D8%25B9%25D8%25AF-%25D8%25B7%25D9%2588%25D9%2584-%25D8%25A7%25D9%2586%25D8%25AA%25D8%25B8%25D8%25A7%25D8%25B1-%25D8%25B5%25D9%2588%25D8%25B1%25D8%25A9%2F5221579&psig=AOvVaw29jrXBxaboNJUbiRDNgdKg&ust=1624092603038000&source=images&cd=vfe&ved=0CAcQjRxqFwoTCLC42cjmoPECFQAAAAAdAAAAABAD",TRUE);

INSERT INTO movies(title,descr,starring,youtubetrailerlink,rating,lang,runtime,releasedate,genre,imagetype,imagedata,av)
VALUES("FAST AND FURIOUS 9","Cypher enlists the help of Jakob, Dom's younger brother to take revenge on Dom and his team.","John Cena, Charlize Theron, Nathalie Emmanuel, Vin Diesel","<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/_qyw6LC5pnE\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>",5.2,"English","145 min","20 May 2021","Action",".jpg","https://www.google.com/url?sa=i&url=https%3A%2F%2Fartofthemovies.co.uk%2Fproducts%2Ffast-and-furious-9-2020&psig=AOvVaw198SZyZJV5J0Ij1RImfXNt&ust=1624092845194000&source=images&cd=vfe&ved=0CAcQjRxqFwoTCPiulr7noPECFQAAAAAdAAAAABAO",TRUE);

INSERT INTO movies(title,descr,starring,youtubetrailerlink,rating,lang,runtime,releasedate,genre,imagetype,imagedata,av)
VALUES("THE CONJURING 3: THE DEVIL MADE ME DO IT","The Conjuring: The Devil Made Me Do It” reveals a chilling story of terror, murder and unknown evil that shocked even experienced real-life paranormal investigators Ed and Lorraine Warren. One of the most sensational cases from their files, it starts with a fight for the soul of a young boy, then takes them beyond anything they’d ever seen before, to mark the first time in U.S. history that a murder suspect would claim demonic possession as a defense","Patrick Wilson, Vera Farmiga, Ruairi O’Connor, Sarah Catherine Hook, Julian Hilliard","<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/h9Q4zZS2v1k\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>",6.4,"English","115 min","26 May 2021","Horror",".jpg","https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.westfield.com%2Fplazabonita%2Fmovie%2FThe-Conjuring_c_-The-Devil-Made-Me-Do-It&psig=AOvVaw3UoCRTTYhs0aGESCrF7jbw&ust=1624093119736000&source=images&cd=vfe&ved=0CAcQjRxqFwoTCLiuor7ooPECFQAAAAAdAAAAABAD",TRUE);

INSERT INTO movies(title,descr,starring,youtubetrailerlink,rating,lang,runtime,releasedate,genre,imagetype,imagedata,av)
VALUES("THE JOURNEY","A tale of historical fantasy from the heart of the Arabian Peninsula. The hero, \"Aws\", has a mysterious past. Together with his peers, face an epic battle to defend their city and their families against a ruthless army general!"," Tôru Furuya, Yûichi Nakamura, Hiroshi Kamiya, Takaya Kuroda, Kotono Mitsuishi","<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/EP6FKs1JsnE\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>",0.0,"Japanese","110 min","17 June 2021","Animation",".jpg","https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.abouther.com%2Fnode%2F36406%2Fentertainment%2Fmusic-film-television%2Ffirst-ever-saudi-japanese-anime-film-releases-trailer&psig=AOvVaw1Iiekwe1-Lq6A1jt6RJttU&ust=1624093452608000&source=images&cd=vfe&ved=0CAcQjRxqFwoTCKCv5d3poPECFQAAAAAdAAAAABAI",FALSE);

INSERT INTO movies(title,descr,starring,youtubetrailerlink,rating,lang,runtime,releasedate,genre,imagetype,imagedata,av)
VALUES("THOSE WHO WISH ME DEAD","From New Line Cinema comes the thriller “Those Who Wish Me Dead,” starring Angelina Jolie and directed by Taylor Sheridan. Oscar winner Jolie (“Girl, Interrupted,” the “Maleficent” films) stars as Hannah, a smoke jumper still reeling from the loss of three lives she failed to save from a fire when she comes across a traumatized 12-year-old boy with nowhere else to turn.","Angelina Jolie, Nicholas Hoult, Finn Little","<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/sV6VNNjBkcE\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>",6.0,"English","100 min"," 06 May 2021","Action",".jpg","https://www.google.com/url?sa=i&url=https%3A%2F%2Fflare.cima8.com%2F%25D9%2581%25D9%258A%25D9%2584%25D9%2585-those-who-wish-me-dead-2021-%25D9%2585%25D8%25AA%25D8%25B1%25D8%25AC%25D9%2585%2F&psig=AOvVaw12QlNyZZ4YnWn_LHjmsd6y&ust=1624093864295000&source=images&cd=vfe&ved=0CAcQjRxqFwoTCPj126HroPECFQAAAAAdAAAAABAJ",TRUE);

INSERT INTO movies(title,descr,starring,youtubetrailerlink,rating,lang,runtime,releasedate,genre,imagetype,imagedata,av)
VALUES("CRUELLA","A live-action prequel feature film following a young Cruella de Vil.","Emma Stone, Mark Strong, Emma Thompson","<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/gmRKv7n2If8\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>",7.4,"English","135 min","26 May 2021","Action",".jpg","https://www.google.com/url?sa=i&url=https%3A%2F%2Fetbilarabi.com%2F%25D8%25A3%25D9%2581%25D9%2584%25D8%25A7%25D9%2585%2F%25D8%25A5%25D9%258A%25D9%2585%25D8%25A7-%25D8%25B3%25D8%25AA%25D9%2588%25D9%2586-%25D8%25AA%25D8%25AA%25D8%25AD%25D9%2588%25D9%2584-%25D8%25A5%25D9%2584%25D9%2589-%25D8%25B4%25D8%25B1%25D9%258A%25D8%25B1%25D8%25A9-%25D8%25AF%25D9%258A%25D8%25B2%25D9%2586%25D9%258A-cruella&psig=AOvVaw3FoGRvvd0pG5KB1STYmtTz&ust=1624094910333000&source=images&cd=vfe&ved=0CAcQjRxqFwoTCJD6xZvvoPECFQAAAAAdAAAAABAD",TRUE);

INSERT INTO movies(title,descr,starring,youtubetrailerlink,rating,lang,runtime,releasedate,genre,imagetype,imagedata,av)
VALUES("BLACK WIDOW","A film about Natasha Romanoff in her quests between the films Civil War and Infinity War."," Scarlett Johansson, Robert Downey Jnr, Florence Pugh","<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Fp9pNPdNwjI\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>",0.0,"English","N/A"," 08 July 2021","Action",".jpg","https://www.google.com/url?sa=i&url=https%3A%2F%2Fmarvelcinematicuniverse.fandom.com%2Fwiki%2FBlack_Widow_(film)&psig=AOvVaw3hGcjIN-0wc35-NPtTNbdW&ust=1624095918724000&source=images&cd=vfe&ved=0CAcQjRxqFwoTCNDzrfXyoPECFQAAAAAdAAAAABAD",FALSE);

INSERT INTO movies(title,descr,starring,youtubetrailerlink,rating,lang,runtime,releasedate,genre,imagetype,imagedata,av)
VALUES("SPACE JAM:A NEW LEGACY","Welcome to the Jam! NBA champion and global icon LeBron James goes on an epic adventure alongside timeless Tune Bugs Bunny with the animated/live-action event “Space Jam: A New Legacy,” from director Malcolm D. Lee and an innovative filmmaking team including Ryan Coogler and Maverick Carter. This transformational journey is a manic mashup of two worlds that reveals just how far some parents will go to connect with their kids. When LeBron and his young son Dom are trapped in a digital space by a rogue A.I., LeBron must get them home safe by leading Bugs, Lola Bunny and the whole gang of notoriously undisciplined Looney Tunes to victory over the A.I.’s digitized champions on the court: a powered-up roster of professional basketball stars as you’ve never seen them before. It’s Tunes versus Goons in the highest-stakes challenge of his life, that will redefine LeBron’s bond with his son and shine a light on the power of being yourself. The ready-for-action Tunes destroy convention, supercharge their unique talents and surprise even “King” James by playing the game their own way.","Don Cheadle, LeBron James, Khris Davis, Sonequa Martin-Green, Cedric Joe, Jeff Bergman, Eric Bauza, Zendaya ","<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/RCsEKvz2mxs\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>",0.0,"English","N/A"," 15 July 2021","Animation",".jpg","https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.youm7.com%2Fstory%2F2021%2F3%2F31%2F%25D8%25A7%25D9%2584%25D8%25B4%25D8%25B1%25D9%2583%25D8%25A9-%25D8%25A7%25D9%2584%25D9%2585%25D9%2586%25D8%25AA%25D8%25AC%25D8%25A9-%25D9%2584%25D9%2581%25D9%258A%25D9%2584%25D9%2585-Space-Jam-A-New-Legacy-%25D8%25AA%25D8%25B7%25D8%25B1%25D8%25AD-%25D8%25A7%25D9%2584%25D8%25A8%25D9%2588%25D8%25B3%25D8%25AA%25D8%25B1%25D8%25A7%25D8%25AA%2F5263198&psig=AOvVaw2tTWSRrH4hmhKpm6hGSooq&ust=1624096278070000&source=images&cd=vfe&ved=0CAcQjRxqFwoTCLDOmaP0oPECFQAAAAAdAAAAABAD",FALSE);

INSERT INTO movies(title,descr,starring,youtubetrailerlink,rating,lang,runtime,releasedate,genre,imagetype,imagedata,av)
VALUES("JUNGLE CRUISE","Based on Disneyland's theme park ride where a small riverboat takes a group of travelers through a jungle filled with dangerous animals and reptiles but with a supernatural element.","Emily Blunt, Dwayne Johnson, Edgar Ramírez","<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/hJZ82pwwJqA\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>",0.0,"English","N/A","22 July 2021","Action",".jpg","https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.cinemablend.com%2Ftitle%2F2550113%2Fjungle-cruise&psig=AOvVaw0c5-8wCbgqnkxotbF1hHQh&ust=1624097020966000&source=images&cd=vfe&ved=0CAcQjRxqFwoTCKDQ8IL3oPECFQAAAAAdAAAAABAD",FALSE);


INSERT INTO movies(title,descr,starring,youtubetrailerlink,rating,lang,runtime,releasedate,genre,imagetype,imagedata,av)
VALUES("AVENGERS: END GAME","After the devastating events of Avengers: Infinity War (2018), the universe is in ruins. With the help of remaining allies, the Avengers assemble once more in order to reverse Thanos' actions and restore balance to the universe.","Robert Downey Jr,Chris Evans,Mark Ruffalo","<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/TcMBFSGVi1c\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>",8.4,"English","181 mins","26 April 2019","Action",".jpg","https://www.imdb.com/title/tt4154796/mediaviewer/rm2775147008/?ref_=tt_ov_i",TRUE);

INSERT INTO movies(title,descr,starring,youtubetrailerlink,rating,lang,runtime,releasedate,genre,imagetype,imagedata,av)
VALUES("THE TOMORROW WAR","A family man is drafted to fight in a future war where the fate of humanity relies on his ability to confront the past.","Chris Pratt,Yvonne Strahovski,J.K. Simmons","<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/RQjEbkV-9ZM\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>",0,"English","140 mins","2 July 2021","Action, Sci-Fi",".jpg","https://www.imdb.com/title/tt4154796/mediaviewer/rm2775147008/?ref_=tt_ov_i",FALSE);

INSERT INTO movies(title,descr,starring,youtubetrailerlink,rating,lang,runtime,releasedate,genre,imagetype,imagedata,av)
VALUES("WRATH OF A MAN","The plot follows H, a cold and mysterious character working at a cash truck company responsible for moving hundreds of millions of dollars around Los Angeles each week.","Jason Statham,Holt McCallany,Josh Hartnett","<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/EFYEni2gsK0\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>",7.2,"English","119 mins","10 June 2021","Action",".jpg","https://www.imdb.com/title/tt4154796/mediaviewer/rm2775147008/?ref_=tt_ov_i",TRUE);


CREATE TABLE users  (
    
    firstname VARCHAR(25),
    lastname VARCHAR(25),
    email VARCHAR(255)UNIQUE ,
    pwhash CHAR(60) NOT NULL,
    creditcardnumber CHAR(60) DEFAULT '',
    creditcardpin CHAR(60) DEFAULT '',
    PRIMARY KEY(email)
);


CREATE TABLE tickets  (
    movieid INT NOT NULL,
    ticketid INT UNIQUE NOT NULL AUTO_INCREMENT,
    t VARCHAR(7),
    seat VARCHAR(3),
    email VARCHAR(255),
    PRIMARY KEY(ticketid)
);




ALTER TABLE tickets AUTO_INCREMENT=0;