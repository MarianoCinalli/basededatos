INSERT INTO public.mensajes_privados(
	id_mensaje, tema, texto)
	VALUES (1, 'Risin up, back on the street', 'Were leaving together,'),
		    (2, 'Did my time, took my chances', 'But still its farewell'),
			(3, 'Went the distance, now Im back on my feet', 'And maybe well come back'),
			(4, 'Just a man and his will to survive', 'To earth, who can tell?'),
			(5, 'So many times, it happens too fast', 'I guess there is no one to blame'),
			(6, 'You trade your passion for glory', 'Were leaving ground (leaving ground)'),
			(7, 'Dont lose your grip on the dreams of the past', 'Will things ever be the same again?'),
			(8, 'You must fight just to keep them alive', 'Its the final countdown'),
			(9, 'Its the eye of the tiger, its the thrill of the fight', 'The final countdown'),
			(10, 'Risin up to the challenge of our rival', 'Oh'),
			(11, 'And the last known survivor stalks his prey in the night', 'Were heading for Venus (Venus)'),
			(12, 'And hes watchin us all with the eye of the tiger', 'And still we stand tall'),
			(13, 'Face to face, out in the heat', 'Cause maybe theyve seen us (seen us)'),
			(14, 'Hangin tough, stayin hungry', 'And welcome us all, yeah'),
			(15, 'They stack the odds till we take to the street', 'With so many light years to go'),
			(16, 'For the kill with the skill to survive', 'And things to be found (to be found)'),
			(17, 'Its the eye of the tiger, its the dream of the fight', 'Im sure that well all miss her so'),
			(18, 'Risin up to the challenge of our rival', 'Its the final countdown'),
			(19, 'And the last known survivor stalks his prey in the night', 'The final countdown'),
			(20, 'And hes watchin us all with the eye of the tiger', 'The final countdown'),
			(21, 'Risin up, straight to the top', 'The final countdown'),
			(22, 'Had the guts, got the glory', 'Oh'),
			(23, 'Went the distance, now Im not gonna stop', 'The final countdown, oh'),
			(24, 'Just a man and his will to survive', 'Its… '),
			(25, 'Its the eye of the tiger, its the dream of the fight', 'And still we stand tall'),
			(26, 'Risin up to the challenge of our rival', 'And welcome us all, yeah'),
			(27, 'And the last known survivor stalks his prey in the night', 'With so many light years to go'),
			(28, 'And hes watchin us all with the eye of the tiger', 'With so many light years to go'),
			(29, 'The eye of the tiger', 'And things to be found (to be found)'),
			(30, 'The eye of the tiger', 'The final countdown'),
			(31, 'The eye of the tiger', 'I guess there is no one to blame'),
			(32, 'The eye of the tiger', 'To earth, who can tell?');
			
			
INSERT INTO public.subreddits(
	nombre_subreddit, descripcion_subreddit)
	VALUES ('linux', 'linux'),
			('futurama', 'futurama'),
			('GNU', 'GNU'),
			('Openbox', 'Openbox'),
			('doggos', 'doggos'),
			('sql', 'sql stuff'),
			('nice boats', 'nice boats'),
			('cats', 'cats'),
			('do it yourself', 'diy'),
			('technology', 'technology'),
			('asia', 'asia'),
			('astronomy', 'astronomy'),
			('math', 'math'),
			('food', 'food'),
			('history', 'history'),
			('cellphones', 'chellphones'),
			('rice', 'rice'),
			('hot-dog', 'hot-dog'),
			('funny', 'funny'),
			('underwater', 'underwater'),
			('rice fields', 'rice fields'),
			('south', 'south'),
			('economy', 'economy'),
			('culture', 'culture'),
			('video codecs', 'video codecs'),
			('water', 'water'),
			('wines', 'wines'),
			('chocolate', 'chocolate'),
			('transportation', 'tra'),
			('auto', 'auto'),
			('micro', 'micro'),
			('usb', 'usb'),
			('party', 'party'),
			('faces', 'faces');

INSERT INTO public.multireddits(
	nombre_multireddit, username, fecha_creacion_multireddit)
	VALUES 
	('fav food', 'Philip J. Fry', '2018-01-01 00:00:00+03'),
	('drink and stuff', 'Amy Wong', '2013-01-01 00:00:00+03'),
	('social', 'Zapp Brannigan', '2012-01-01 00:00:00+03'),
	('wet things', 'Boxy', '2015-04-01 00:00:00+03'),
	('asian food', 'Brain Spawn', '2012-01-01 00:00:00+03'),
	('cardinality', 'The Crushinator', '2016-01-01 00:00:00+03'),
	('computer', 'Kif Kroker', '2018-01-01 00:00:00+03'),
	('software', 'Lord Nibbler', '2011-01-01 00:00:00+03'),
	('smiles', 'Hermes Conrad', '2001-01-01 00:00:00+03'),
	('animal', 'Calculon', '2005-01-01 00:00:00+03'),
	('free software', 'Calculon', '2017-01-01 00:00:00+03'),
	('codecs', 'Calculon', '2013-01-01 00:00:00+03');
			
INSERT INTO public.usuarios(
	username, display_name, about, email, coins, karma, cake_day, tipo)
	VALUES 
	('Philip J. Fry', 'Philip', 'some spacial user', 'philip@gmail.com', 100, 23, '2011-01-01 00:00:00+03', 'comun'),
	('Turanga Leela', 'leela', 'some spacial user', 'leela@gmail.com', 123, 11, '2011-02-03 00:00:00+03', 'comun'),
	('Bender', 'Bender', 'some spacial user', 'bender@gmail.com', 3, 99, '2015-01-01 00:00:00+03', 'premium'),
	('Amy Wong', 'Amy', 'some spacial user', 'amy@gmail.com', 187, 33, '2010-01-01 00:00:00+03', 'comun'),
	('Hermes Conrad', 'hermes', 'some spacial user', 'hermes@gmail.com', 87, 22, '2015-01-01 00:00:00+03', 'comun'),
	('Hubert J. Farnsworth', 'Professor', 'some spacial user', 'prof@gmail.com', 33, 22, '2012-01-01 00:00:00+03', 'comun'),
	('John Zoidberg', 'Zoidberg', 'some spacial user', 'zoidberg@gmail.com', 1, 23, '2012-01-01 00:00:00+03', 'comun'),
	('Lord Nibbler', 'lord_nibble', 'some spacial user', 'nibble@gmail.com', 100, 99, '2015-01-01 00:00:00+03', 'comun'),
	('Zapp Brannigan', 'Zapp', 'some spacial user', 'zapp@gmail.com', 1009, 99, '2012-01-01 00:00:00+03', 'premium'),
	('Kif Kroker', 'Kif', 'some spacial user', 'Kif@gmail.com', 120, 0, '2010-01-01 00:00:00+03', 'comun'),
	('Mom', 'Mom', 'some spacial user', 'mom@gmail.com', 999, 999, '2000-01-01 00:00:00+03', 'premium'),
	('Headless Body of Agnew', 'Agnew', 'some spacial user', 'agnew@gmail.com', 1, 2, '2002-01-01 00:00:00+03', 'comun'),
	('Boxy', 'Boxy', 'some spacial user', 'boxy@gmail.com', 100, 2, '2012-01-01 00:00:00+03', 'comun'),
	('Brain Slugs', 'slugs', 'some spacial user', 'slugs@gmail.com', 100, 8, '2011-01-01 00:00:00+03', 'comun'),
	('Brain Spawn', 'spawn', 'some spacial user', 'spawn@gmail.com', 1, 23, '2000-01-01 00:00:00+03', 'comun'),
	('Calculon', 'calculon', 'some spacial user', 'calculon@gmail.com', 1, 3, '2013-01-01 00:00:00+03', 'premium'),
	('Antonio Calculon', 'antonio', 'some spacial user', 'antonio@gmail.com', 12, 32, '2012-01-01 00:00:00+03', 'premium'),
	('The Crushinator', 'calculon', 'Robot daughter of human hydroponic farmer on the Moon', 'crushinator@gmail.com', 18, 32, '2013-01-01 00:00:00+03', 'premium'),
	('Father Changstein-El-Gamal', 'chang', 'some spacial user', 'chang@gmail.com', 22, 22, '2012-01-01 00:00:00+03', 'premium'),
	('Chanukah Zombie', 'chanukah', 'some spacial user', 'chanuka@gmail.com', 99, 88, '2016-01-01 00:00:00+03', 'comun');
	

INSERT INTO public.multireddit_agrupa_subreddit(
	username, nombre_multireddit, nombre_subreddit)
	VALUES ('Philip J. Fry', 'fav food',  'water'),
			('Headless Body of Agnew', 'drink and stuff',  'underwater'),
			('Brain Spawn', 'computer',  'funny'),
			('Philip J. Fry', 'asian food',  'rice fields'),
			('Philip J. Fry', 'social',  'south'),
			('Brain Spawn', 'social',  'economy'),
			('Brain Spawn', 'fav food',  'chocolate'),
			('Philip J. Fry', 'computer',  'usb'),
			('Philip J. Fry', 'social',  'party'),
			('Zapp Brannigan', 'social',  'faces'),
			('Zapp Brannigan', 'drink and stuff',  'funny'),
			('Zapp Brannigan', 'codecs',  'math'),
			('Zapp Brannigan', 'fav food',  'food'),
			('Philip J. Fry', 'codecs',  'water'),
			('Philip J. Fry', 'smiles',  'water'),
			('John Zoidberg', 'animal',  'astronomy'),
			('John Zoidberg', 'fav food',  'asia'),
			('Philip J. Fry', 'cardinality',  'technology'),
			('Philip J. Fry', 'fav food',  'do it yourself'),
			('Mom', 'fav food',  'asia');
			
		
INSERT INTO public.premios(
	nombre_premio, descripcion_premio)
	VALUES 
	('belwether', 'hang out on the new queue and flag carefully'),
	('well-rounded', 'post good links and food comments'),
	('best link', 'submilt a great link'),
	('best comment', 'write a great comment'),
	('combo linker', 'submit lots of good links'),
	('combo commenter', 'post a high percentage of good comments in one day'),
	('inciteful link', 'submit something worthwhile but provocative'),
	('inciteful comment', 'write something interesting but provocative'),
	('shutterbug', 'constribute a photo to the sidebar'),
	('new user', 'join reddit'),
	('verified email address', 'verify your email address'),
	('gilding (tiered)', 'gild a link or comment'),
	('oner-year club', 'keep up the good workd!'),
	('two-year club', ''),
	('three-year club', ''),
	('four-year club', ''),
	('five-year club', '');
	

INSERT INTO public.aporte(
	id_aporte, texto, karma, fecha)
	VALUES 
	(1, 'Sometimes later becomes never. ... ', 6, '2012-01-01 00:00:00+03'), 
	(2, 'Dream it. ... ', 3, '2015-01-01 00:00:00+03'), 
	(3, 'Thats beautiful, oh my God', 8, '2017-01-01 00:00:00+03'), 
	(4, 'God I still can’t believe it’s been 5 years since I read that.', 1, '2014-01-01 00:00:00+03'), 
	(5, 'I had to look this up because I couldn’t believe it', 88, '2017-01-01 00:00:00+03'), 
	(6, 'Being a civil attorney - we almost never go to jury trial and the job can be unbelievably boring.', 22, '2018-01-01 00:00:00+03'), 
	(7, 'Of course, those beans got to be flavored that way by, you guessed it, soaking in syrup.', 6, '2019-01-01 00:00:00+03'), 
	(8, 'More like an oil or extract. Theres not usually sugar added to flavored coffee beans.', 2, '2012-01-01 00:00:00+03'), 
	(9, 'And that right there is why I love infused beans and not a syrup shot. I hate sugar in my coffee.', 6, '2013-01-01 00:00:00+03'), 
	(10, 'no, i didnt guess it, because i actually know that they got that way not by soaking in syrup.',9, '2016-01-01 00:00:00+03'), 
	(11, 'Inferior coffee?', 22, '2017-01-01 00:00:00+03'), 
	(12, 'To be faaaaaaaaaiiiiirrrr', 111, '2012-01-01 00:00:00+03'), 
	(13, 'The best treatment for a child with anxiety is treating their parent’s anxiety.', 555, '2014-01-01 00:00:00+03'), 
	(14, 'Edit: thanks for the awards, kind strangers!', 2, '2011-01-01 00:00:00+03'), 
	(15, 'I feel like I live in a bubble.. my mom created.', 7, '2013-01-01 00:00:00+03'), 
	(16, 'All this is a big part of the reason Im not sure if I should ever have children.', 2, '2016-01-01 00:00:00+03'), 
	(17, 'Office copiers cost upwards of $7,000 some can go for $15,000-20,000 depending on print speed and capacity', 9, '2013-01-01 00:00:00+03'), 
	(18, 'An elevator will go up to the top of the hoist instead of crash to the floor in most catastrophic failures due to the counter weights.', 2, '2017-01-01 00:00:00+03'), 
	(19, 'I dont know if that makes my elevator anxiety better or worse.', 4, '2012-01-01 00:00:00+03'), 
	(20, 'It all depends on whether there is a masked villain sawing at the rope holding the counter-weights.', 6, '2018-01-01 00:00:00+03'), 
	(21, 'twirls mustache', 2, '2012-01-01 00:00:00+03'), 
	(22, 'Huh. Really? You mean tv and movies made this up!?!', 3, '2018-01-01 00:00:00+03'), 
	(23, 'EDIT2: uncertain what happens in the event of a Dracarys, however.', 1, '2014-01-01 00:00:00+03'), 
	(24, 'safer than THE ROCKOON?', 9, '2012-01-01 00:00:00+03'), 
	(25, 'Well now I need this to play out in a movie.', 5, '2019-01-01 00:00:00+03'), 
	(26, 'The toner in your printer is plastic being melted on to the paper.', 0, '2017-01-01 00:00:00+03'), 
	(27, 'To add to this an inkjet printer micro boils the ink in the printhead before transferring it to the page, bubbling just barely. I had no idea about this until last year.', 3, '2014-01-01 00:00:00+03'), 
	(28, 'Neurodegenerative diseases (Alzheimers,Parkinson,...) starts way before the first symptoms appears.', 2, '2012-01-01 00:00:00+03'), 
	(29, 'There is currently no treatment to stop or slow the progression of the disease.', 5, '2015-01-01 00:00:00+03'), 
	(30, 'Im a lifeguard so nothing special, but while training to be one I learned that nearly no drowning victims ever wake back up', 3, '2011-01-01 00:00:00+03'), 
	(31, '    Note: My experience applies to US insurance only', 8, '2016-01-01 00:00:00+03'), 
	(32, 'Important exceptions ... Earthquakes and Floods (floods from the ground up, not from a burst pipe). Both of those require separate coverage.', 2, '2013-01-01 00:00:00+03'), 
	(33, 'I cant believe what you arr saying breh', 3, '2012-01-01 00:00:00+03'), 
	(34, 'What for real? b-but I dont know it yet', 5, '2016-01-01 00:00:00+03');
	
	
INSERT INTO public.aporte_referencia_link(
	id_aporte, direccion_web)
	VALUES 
	(1, 'www.sql.com'),
	(2, 'www.fsf.com'),
	(3, 'www.reddit.com'),
	(4, 'www.linux.com'),
	(5, 'www.tastyfood.com'),
	(6, 'www.gnulinux.com'),
	(7, 'www.beansandrice.com'),
	(8, 'www.body.com'),
	(9, 'www.guessing.com'),
	(10, 'www.oil.com'),
	(11, 'www.oilextractions.com/oil/us'),
	(12, 'www.foooooood.com'),
	(13, 'www.allflavors.com'),
	(14, 'www.lovebeans.com'),
	(15, 'www.readalot.com'),
	(16, 'www.beautiful.com'),
	(17, 'www.believinginmagic.vom'),
	(18, 'www.fairness.com'),
	(19, 'www.tobeornottobe.com'),
	(20, 'www.awards.com'),
	(21, 'www.reasoning.com'),
	(22, 'www.allreasons.com'),
	(23, 'www.officecopiers.com'),
	(24, 'www.printsandprices.com'),
	(25, 'www.meaningofdreams.com'),
	(26, 'www.tvmovies.com'),
	(27, 'www.rock.on'),
	(28, 'www.printtoners.com'),
	(29, 'www.science.com'),
	(30, 'www.how.ever.com'),
	(31, 'www.insurances.us'),
	(32, 'www.nature.com/earthquackes'),
	(33, 'www.life.com'),
	(34, 'www.chances.com');
	

INSERT INTO public.comments(
	id_comments, id_aporte)
	VALUES (1, 1),
			(2, 2),
			(3, 3),
			(4, 4),
			(5, 5),
			(6, 6),
			(7, 7),
			(8, 8),
			(9, 9),
			(10, 10),
			(11, 11),
			(12, 12),
			(13, 13),
			(14, 14),
			(15, 15),
			(16, 16);

INSERT INTO public.comment_responde_comment(
	id_comentario, id_comentario_respondido)
	VALUES 
	(8, 1),
	(9, 1),
	(10, 1),
	(11, 2),
	(12, 2),
	(13, 3),
	(14, 3),
	(15, 3),
	(16, 4);


INSERT INTO public.posts(
	id_posts, id_aporte, titulo)
	VALUES (1, 17, 'how to avoid everything'),
			(2, 18, 'Lets talk about dogs, reddit'),
			(3, 19, 'Anyone knows the thing?'),
			(4, 20, 'How do you do it?'),
			(5, 21, 'Is there any hope?'),
			(6, 22, 'What do you think?'),
			(7, 23, 'Look at this'),
			(8, 24, 'You wont believe this'),
			(9, 25, 'Cant wait'),
			(10, 26, 'Link inside'),
			(11, 27, 'Remember this?'),
			(12, 28, 'A discovery about the use this tool'),
			(13, 29, 'Do you ever think I wil never be that good?'),
			(14, 30, 'What is with the lack of cursing?'),
			(15, 31, 'Tips on avoiding as'),
			(16, 32, 'Some ideas'),
			(17, 33, 'Just a reminder for newer redditors'),
			(18, 34, 'Saturday morning, post it!');
			
			
			
INSERT INTO public.reglas(
	id_regla, nombre_subreddit, descripcion_regla)
	VALUES (1, 'linux', 'Adhere to the same standards of behavior online that you follow in real life.'),
		    (2, 'linux', 'use linux'),
			(3, 'cats', 'dont curse'),
			(4, 'cats', 'dont get too angry'),
			(5, 'cats', 'dont feed the trolls'),
			(6, 'food', 'dont post garbage'),
			(7, 'funny', 'dont post sad pictures'),
			(8, 'funny', 'dont advertise'),
			(9, 'math', 'dont post your homework'),
			(10, 'culture', 'respect other cultures'),
			(11, 'economy', 'always post your source of information.'),
			(12, 'south', 'south only'),
			(13, 'sql', 'be respectful'),
			(14, 'food', 'be open-minded'),
			(15, 'video codecs', 'dont advertise');
			
INSERT INTO public.subreddit_contiene_post(
	nombre_subreddit, id_post)
	VALUES ('linux', 1),
		    ('sql', 2),
			('GNU', 3),
			('cats', 4),
			('doggos', 5),
			('rice', 6),
			('linux', 7),
			('linux', 8),
			('linux', 9),
			('cellphones', 10),
			('economy', 11),
			('economy', 12),
			('funny', 13),
			('funny', 14),
			('funny', 15),
			('funny', 16),
			('funny', 17),
			('funny', 18);
			
			
			
INSERT INTO public.subreddit_recomienda_subreddit(
	nombre_subreddit, nombre_subreddit_recomendado)
	VALUES ('linux', 'sql'),
	        ('linux','GNU' ),
			('GNU', 'cats'),
			('doggos', 'cats'),
			('funny', 'wines'),
			('technology', 'linux'),
			('technology', 'GNU'),
			('technology', 'sql'),
			('technology', 'usb'),
			('party', 'funny'),
			('food', 'wines'),
			('food', 'water'),
			('food', 'chocolate'),
			('food', 'rice'),
			('rice', 'rice fields'),
			('history', 'asia'),
			('futurama', 'funny'),
			('funny', 'futurama'),
			('chocolate', 'food'),
			('asia', 'technology'),
			('transportation', 'auto'),
			('party', 'faces'),
			('economy', 'south'),
			('history', 'south'),
			('south', 'wines'),
			('GNU', 'video codecs'),
			('food', 'hot-dog'),
			('do it yourself', 'technology'),
			('economy', 'culture'),
			('culture', 'economy'),
			('micro', 'sql');   
			
			
INSERT INTO public.subreddit_regulador_por_regla(
	nombre_subreddit, id_regla)
	VALUES ('linux', 1 ),
		    ('linux', 2),
			('cats', 3),
			('cats', 4),
			('cats', 5),
			('food', 6),
			('funny', 7),
			('funny', 8),
			('math', 9),
			('culture', 10),
			('economy', 11),
			('south' , 12),
			('sql', 13),
			('food', 14),
			('video codecs', 15);
			
INSERT INTO public.usuario_bloquea_usuario(
	username, username_bloqueado)
	VALUES 
	('Philip J. Fry', 'Lord Nibbler'),
	('Lord Nibbler', 'Turanga Leela'),
	('Headless Body of Agnew', 'Boxy'),
	('Brain Slugs', 'Hermes Conrad'),
	('The Crushinator', 'Father Changstein-El-Gamal'),
	('Chanukah Zombie', 'John Zoidberg'),
	('Lord Nibbler', 'Brain Slugs'),
	('Amy Wong', 'Antonio Calculon'),
	('Antonio Calculon', 'Kif Kroker'),
	('Lord Nibbler', 'Antonio Calculon');
	
INSERT INTO public.usuario_califica_comment(
	username, id_comment, voto)
	VALUES 
	('Philip J. Fry', 1, 1),
	('Brain Slugs', 1, 1),
	('Philip J. Fry', 2, 1),
	('Brain Slugs', 2, 1),
	('Antonio Calculon', 2, 1),
	('Philip J. Fry', 3, -1),
	('Antonio Calculon', 3, -1),
	('Philip J. Fry', 7, -1),
	('Antonio Calculon', 5, 1),
	('Brain Slugs', 6, -1),
	('Brain Slugs', 8, 1);
	
INSERT INTO public.usuario_califica_post(
	username, id_post, voto)
	VALUES
	('Philip J. Fry', 1, -1),
	('Brain Slugs', 1, -1),
	('Philip J. Fry', 2, -1),
	('Brain Slugs', 2, 1),
	('Antonio Calculon', 2, -1),
	('Philip J. Fry', 3, -1),
	('Antonio Calculon', 3, -1),
	('Philip J. Fry', 7, -1),
	('Antonio Calculon', 5, -1),
	('Brain Slugs', 6, -1),
	('Brain Slugs', 8, 1);
	
INSERT INTO public.transferencias(
	id_transferencia, cant_monedas)
	VALUES (1, 100),
			(2, 200),
			(3, 300),
			(4, 400),
			(5, 500),
			(6, 600),
			(7, 700),
			(8, 800),
			(9, 900),
			(10, 1000),
			(11, 1100),
			(12, 1200);
			
INSERT INTO public.usuario_emite_transferencia(
	username, id_transferencia)
	VALUES ('Philip J. Fry', 1),
		    ('The Crushinator', 2),
			('The Crushinator', 3),
			('Philip J. Fry', 4),
			('The Crushinator', 5),
			('Philip J. Fry', 6),
			('Kif Kroker', 7),
			('Bender', 8),
			('Kif Kroker', 9),
			('Bender', 10),
			('Kif Kroker', 11),
			('Bender', 12);
			
INSERT INTO public.usuario_envia_mensaje_privado(
	username, id_mensaje)
	VALUES ('Philip J. Fry', 1),
			('Philip J. Fry', 2),
			('Philip J. Fry', 3),
			('The Crushinator', 4),
			('The Crushinator', 5),
			('The Crushinator', 6),
			('The Crushinator', 7),
			('The Crushinator', 8),
			('The Crushinator', 9),
			('Bender', 10),
			('Bender', 11),
			('Bender', 12),
			('Bender', 13),
			('Bender', 14),
			('Bender', 15),
			('Turanga Leela', 16),
			('Turanga Leela', 17),
			('Turanga Leela' , 18),
			('Turanga Leela', 19),
			('Turanga Leela', 20),
			('Amy Wong', 21),
			('Amy Wong', 22),
			('Amy Wong', 23),
			('Amy Wong', 24),
			('Amy Wong', 25),
			('Amy Wong', 26),
			('Amy Wong', 27),
			('Amy Wong', 28),
			('Zapp Brannigan', 29),
			('Zapp Brannigan', 30),
			('Zapp Brannigan', 31),
			('Zapp Brannigan', 32);
			
INSERT INTO public.usuario_esta_bloqueado_subreddit(
	username, nombre_subreddit)
	VALUES ('Philip J. Fry', 'linux'),
			('Philip J. Fry', 'food'),
			('Bender', 'technology'),
			('Bender', 'culture'),
			('Bender', 'wines'),
			('Bender', 'water'),
			('Bender', 'party');
			
INSERT INTO public.usuario_establece_subreddit(
	username, nombre_subreddit)
	VALUES ('Amy Wong', 'linux'),
			('Amy Wong', 'futurama'),
			('Amy Wong', 'GNU'),
			('Amy Wong', 'Openbox'),
			('Hubert J. Farnsworth', 'doggos'),
			('Hubert J. Farnsworth', 'sql'),
			('Hubert J. Farnsworth', 'nice boats'),
			('Hubert J. Farnsworth', 'cats'),
			('Hubert J. Farnsworth', 'do it yourself'),
			('Hubert J. Farnsworth', 'technology'),
			('Zapp Brannigan', 'asia'),
			('Zapp Brannigan', 'astronomy'),
			('Zapp Brannigan', 'math'),
			('Zapp Brannigan', 'food'),
			('Zapp Brannigan', 'history'),
			('Zapp Brannigan', 'cellphones'),
			('Zapp Brannigan', 'rice'),
			('Calculon', 'hot-dog'),
			('Calculon', 'funny'),
			('Calculon', 'underwater'),
			('Calculon', 'rice fields'),
			('Calculon', 'south'),
			('Calculon', 'economy'),
			('Calculon', 'culture'),
			('Calculon', 'video codecs'),
			('Bender', 'water'),
			('Bender', 'wines'),
			('Bender', 'chocolate'),
			('Bender', 'transportation'),
			('Bender', 'auto'),
			('Bender', 'micro'),
			('Kif Kroker', 'usb'),
			('Kif Kroker', 'party'),
			('Kif Kroker', 'faces');
			
			
INSERT INTO public.usuario_gana_premio(
	username, nombre_premio)
	VALUES ('Chanukah Zombie', 'belwether'),
			('Chanukah Zombie', 'well-rounded'),
			('Chanukah Zombie', 'best link'),
			('Antonio Calculon', 'best comment'),
			('Antonio Calculon', 'combo linker'),
			('Antonio Calculon', 'combo commenter');
			
INSERT INTO public.usuario_genera_comment(
	username, id_comment)
	VALUES ('Philip J. Fry', 1),
			('Philip J. Fry', 2),
			('Philip J. Fry', 3),
			('Philip J. Fry', 4),
			('Philip J. Fry', 5),
			('Turanga Leela', 6),
			('Turanga Leela', 7),
			('Turanga Leela', 8),
			('Turanga Leela', 9),
			('Turanga Leela', 10),
			('Zapp Brannigan', 11),
			('Zapp Brannigan', 12),
			('Zapp Brannigan', 13),
			('Zapp Brannigan', 14),
			('Kif Kroker', 15),
			('Kif Kroker', 16);		

INSERT INTO public.usuario_genera_post(
	username, id_post)
	VALUES ('Philip J. Fry', 1),
			('Antonio Calculon', 2),
			('Antonio Calculon', 3),
			('Amy Wong', 4),
			('Philip J. Fry', 5),
			('Antonio Calculon', 6),
			('Turanga Leela', 7),
			('Bender', 8),
			('Bender', 9),
			('Turanga Leela', 10),
			('Zapp Brannigan', 11),
			('Hubert J. Farnsworth', 12),
			('Zapp Brannigan', 13),
			('Hubert J. Farnsworth', 14),
			('Kif Kroker', 15),
			('Bender', 16),
			('Kif Kroker', 17),
			('Kif Kroker', 18);
			
INSERT INTO public.usuario_guarda_comment(
	username, id_comment)
	VALUES ('Lord Nibbler', 5),
			('Zapp Brannigan', 9),
			('Zapp Brannigan', 1),
			('John Zoidberg', 3),
			('John Zoidberg', 13);
			
INSERT INTO public.usuario_guarda_post(
	username, id_post)
	VALUES ('Lord Nibbler', 11),
			('Zapp Brannigan', 12),
			('Zapp Brannigan', 13),
			('John Zoidberg', 8),
			('John Zoidberg', 3);
			
			
INSERT INTO public.usuario_modera_subreddit(
	username, nombre_subreddit)
	VALUES ('Amy Wong', 'linux'),
			('Amy Wong', 'futurama'),
			('Amy Wong', 'GNU'),
			('Hermes Conrad', 'Openbox'),
			('Boxy', 'Openbox'),
			('Amy Wong', 'Openbox'),
			('Philip J. Fry', 'Openbox'),
			('Hubert J. Farnsworth', 'doggos'),
			('Hubert J. Farnsworth', 'sql'),
			('Hubert J. Farnsworth', 'nice boats'),
			('Hermes Conrad', 'cats'),
			('Hubert J. Farnsworth', 'cats'),
			('Boxy', 'cats'),
			('Philip J. Fry', 'cats'),
			('Hubert J. Farnsworth', 'do it yourself'),
			('Hubert J. Farnsworth', 'technology'),
			('Zapp Brannigan', 'asia'),
			('Zapp Brannigan', 'astronomy'),
			('Zapp Brannigan', 'math'),
			('Zapp Brannigan', 'food'),
			('Boxy', 'food'),
			('Hermes Conrad', 'food'),
			('Philip J. Fry', 'food'),
			('Zapp Brannigan', 'history'),
			('Zapp Brannigan', 'cellphones'),
			('Zapp Brannigan', 'rice'),
			('Calculon', 'hot-dog'),
			('Calculon', 'funny'),
			('Hermes Conrad', 'funny'),
			('Philip J. Fry', 'funny'),
			('Turanga Leela', 'funny'),
			('Calculon', 'underwater'),
			('Calculon', 'rice fields'),
			('Calculon', 'south'),
			('Calculon', 'economy'),
			('Calculon', 'culture'),
			('Calculon', 'video codecs'),
			('Bender', 'water'),
			('Hermes Conrad', 'wines'),
			('Bender', 'wines'),
			('Boxy', 'wines'),
			('Bender', 'chocolate'),
			('Bender', 'transportation'),
			('Bender', 'auto'),
			('Bender', 'micro'),
			('Kif Kroker', 'usb'),
			('Hermes Conrad', 'party'),
			('Kif Kroker', 'party'),
			('Philip J. Fry', 'party'),
			('Turanga Leela', 'faces');
			
INSERT INTO public.usuario_percibe_transferencia(
	username, id_transferencia)
	VALUES ('Headless Body of Agnew', 1),
		    ('Headless Body of Agnew', 2),
			('Headless Body of Agnew', 3),
			('Headless Body of Agnew', 4),
			('John Zoidberg', 5),
			('John Zoidberg', 6),
			('John Zoidberg', 7),
			('John Zoidberg', 8),
			('Brain Spawn', 9),
			('Brain Spawn', 10),
			('Brain Spawn', 11),
			('Brain Spawn', 12);
			
INSERT INTO public.usuario_recibe_mensaje_privado(
	username, id_mensaje)
	VALUES ('Hermes Conrad', 1),
			('Hermes Conrad', 2),
			('Hermes Conrad', 3),
			('Hermes Conrad', 4),
			('Hermes Conrad', 5),
			('Kif Kroker', 6),
			('Kif Kroker', 7),
			('Kif Kroker', 8),
			('Chanukah Zombie', 9),
			('Chanukah Zombie', 10),
			('Chanukah Zombie', 11),
			('Chanukah Zombie', 12),
			('Father Changstein-El-Gamal', 13),
			('Father Changstein-El-Gamal', 14),
			('Father Changstein-El-Gamal', 15),
			('Father Changstein-El-Gamal', 16),
			('Father Changstein-El-Gamal', 17),
			('John Zoidberg' , 18),
			('John Zoidberg', 19),
			('John Zoidberg', 20),
			('John Zoidberg', 21),
			('John Zoidberg', 22),
			('Bender', 23),
			('Bender', 24),
			('Bender', 25),
			('Headless Body of Agnew', 26),
			('Headless Body of Agnew', 27),
			('Headless Body of Agnew', 28),
			('Headless Body of Agnew', 29),
			('Headless Body of Agnew', 30),
			('Headless Body of Agnew', 31),
			('Headless Body of Agnew', 32);
			
INSERT INTO public.usuario_reporta_comment_segun_regla(
	username, id_comment, id_regla)
	VALUES ('Philip J. Fry', 1, 1),
			('Philip J. Fry', 2, 1),
			('Philip J. Fry', 3, 2),
			('Philip J. Fry', 4, 3),
			('Amy Wong', 1, 4),
			('Amy Wong', 2, 2),
			('Amy Wong', 3, 2);
			
INSERT INTO public.usuario_reporta_post_segun_regla(
	username, id_post, id_regla)
	VALUES ('Bender', 1, 3),
			('John Zoidberg', 2, 4),
			('Bender', 3, 5),
			('Philip J. Fry', 4, 3),
			('John Zoidberg', 1, 4),
			('Amy Wong', 2, 2),
			('Bender', 3, 1);
			
INSERT INTO public.usuario_sigue_usuario(
	username, username_seguido)
	VALUES ('Chanukah Zombie', 'Kif Kroker'),
			('Chanukah Zombie', 'Calculon'),
			('Boxy', 'Chanukah Zombie'),
			('Lord Nibbler', 'Chanukah Zombie'),
			('Kif Kroker', 'Calculon'),
			('Chanukah Zombie', 'Lord Nibbler' ),
			('Father Changstein-El-Gamal', 'Chanukah Zombie'),
			('Kif Kroker', 'Boxy');
			
INSERT INTO public.usuario_suscrito_subreddit(
	username, nombre_subreddit)
	VALUES ('Philip J. Fry', 'linux'),
			('Philip J. Fry', 'GNU'),
			('Philip J. Fry', 'food'),
			('Philip J. Fry', 'funny'),
			('Antonio Calculon', 'culture'),
			('Antonio Calculon', 'history'),
			('Antonio Calculon', 'asia'),
			('Antonio Calculon', 'hot-dog'),
			('Bender', 'wines'),
			('Bender', 'party'),
			('Bender', 'funny');
