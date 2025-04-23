insert into public.vlookup (brand, model, year, mtype, displacement_ccm, enginecylinder, cylinders, drive, dry_weight_kg, power_hp, torque_nm, fuel_system, cooling_system)
values
	-- марка, модель, год, тип, объем, кол-во цил., привод, мощность, момент, вес, впрыск, охлаждение
	-- "Single cylinder", "V2", "Twin", "In-line four", "Electric", "Two cylinder boxer", "In-line three", "V4", "In-line six"
	('honda', 'xl 750 transalp', 2022, 'эндуро', 755, 'Twin', 2, 'Цепь', 208, 92, 75, 'Injection', 'Liquid'),
	('honda', 'xl 750 transalp', 2023, 'эндуро', 755, 'Twin', 2, 'Цепь', 208, 92, 75, 'Injection', 'Liquid'),
	('honda', 'xl 750 transalp', 2024, 'эндуро', 755, 'Twin', 2, 'Цепь', 208, 92, 75, 'Injection', 'Liquid'),
	('honda', 'xl 750 transalp', 2025, 'эндуро', 755, 'Twin', 2, 'Цепь', 208, 92, 75, 'Injection', 'Liquid');



    