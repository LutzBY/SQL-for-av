insert into public.vlookup (brand, model, year, mtype, displacement_ccm, cylinders, drive, dry_weight_kg, power_hp, torque_nm, fuel_system, cooling_system)
values
	-- марка, модель, год, тип, объем, кол-во цил., привод, мощность, момент, вес, впрыск, охлаждение
	('bmw', 'r 1200 c', 1996, 'круизер/чоппер', 1170, 2, 'Кардан', 256, 61.0, 98.0, 'Injection', 'Air/Oil'),
	('bmw', 'r 1200 s', 2004, 'спорт', 1170, 2, 'Кардан', 213, 122, 112, 'Injection', 'Air/Oil'),
	('bmw', 'r 1200 rt (gen 3)', 2014, 'туризм', 1170, 2, 'Кардан', 274, 125, 125, 'Injection', 'Air/Liquid'),
	('honda', 'xl 700 v transalp', 2009, 'эндуро', 680, 2, 'Цепь', 214, 60, 60, 'Injection', 'Liquid');



    