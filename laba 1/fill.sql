
insert into characters values(1, 'human', 'Arnold', 'man');
insert into characters values(2, 'lizard', 'Lizard', 'man');


insert into weapons values(1, 'weapon', 'weapon', 1);


insert into body_parts values(1, 'legs', 'human', 1);
insert into body_parts values(2, 'back', 'human', 1);
insert into body_parts values(3, 'chest', 'human', 1);
insert into body_parts values(4, 'mouth', 'human', 1);

insert into body_parts values(5, 'claws', 'lizard', 2);
insert into body_parts values(6, 'mouth', 'lizard', 2);



insert into features 
values	
	(1, 'size', 'huge', 5),
	(2, 'smell', 'stinking', 6);


insert into interactions 
values
	(1, 2, 'self', 'hit'),
	(1, 4, 'self', 'open'),
	(2, 3, 'other', 'press'),
	(1, 5, 'other', 'tear');


insert into behaviour_ch
values
	(1, 'physical', 'look around', 1),
	(2, 'mental', 'understand', 1),
	(3, 'physical', 'stand', 2),
	(4, 'physical', 'scream', 1),
	(5, 'physical', 'breathe', 1),
	(6, 'mental', 'feel', 1);


insert into behaviour_bp
values
	(1, 'physical', 'approach', 4);