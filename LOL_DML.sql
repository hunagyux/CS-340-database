-- These are some Database Manipulation queries for a partially implemented Project Website 
-- using the LOL database.

-- Get all details of all champions for Champion page
	SELECT Champ_id, Name, Role, Species, Lane FROM Champions
-- Get all details of all Spells for Spells page 
	SELECT Spell_id, Q, W, E, R, L FROM Spells
-- Get all details of all Items for Items page
	SELECT * FROM Items
-- Get all details of all Levels for Level page
	SELECT * FROM Level


-- Update a champion based on submission of update champ form for Champion page
	UPDATE Champions SET Champ_id=:Champ_idInput, Name=:NameInput, Role=:RoleInput, Species=:SpeciesInput, Lane=:LaneInput
	WHERE Champ_id=:champ_id_from_update_form
-- Update a spell based on submission of update spell form for Spells page
	UPDATE Spells SET Champ_id=:Champ_idInput, Spell_id=:Spell_idInput, Q=:QInput, W=:WInput, E=:EInput, R=:RInput
	WHERE Spell_id=:spell_id_from_update_form
-- Update an item based on submission of update item form for Items page
	UPDATE Items SET Champ_id=:Champ_idInput, Item_id=:Item_idInput, Defense=:DefenseInput, Attack=:AttackInput, Magic=:MagicInput, Movement=:MovementInput
	WHERE Item_id=:item_id_from_update_form
-- Update a level based on submission of update level form for Level page
	UPDATE Levels SET Champ_id=:Champ_idInput, Level_id=:Level_idInput, Spell_upgrade=:Spell_upgradeInput, Health_upgrade=:Health_upgradeInput, Damage_upgrade=:Damage_upgradeInput
	WHERE Level_id=:level_id_from_update_form


-- Search a champion based on the champion's name in Champion Page
	SELECT Champ_id, Name, Role, Species, Lane FROM Champions WHERE Name=:NameInput
-- Search a Spell based on the Spell's name in Spells Page
	SELECT Spell_id, Q, W, E, R FROM Spells WHERE Q=:SpellInput OR W=:SpellInput OR E=:SpellInput OR R=:SpellInput
-- Search a Item based on the Item's name in Items page
	SELECT Item_name, Defense, Attack, Magic, Movement FROM Items WHERE Item_name=:ItemInput
-- Search a Level based on the Level's id in Level page
	SELECT Level_id, Spell_upgrade, Health_upgrade, Damage_upgrade FROM Levels WHERE Level_id=:LevelInput




-- Delete a champion based on the champions name in champion page
	DELETE FROM Champions where Champ_id =:champ_id_from_delete_champ
-- Delete a spell based on the spell name in spell page
	DELETE FROM Spells WHERE Spell_name =:spell_name_from_delete_spell
-- Delete a item based on the item name in item page
	DELETE FROM Items WHERE Item_name =:item_name_from_delete_item
-- Delete a level based on the level_id in level page
	DELETE FROM Level WHERE level_id =:level_id_from_delete_level



--Insert a new champion based on champion information given
	INSERT INTO Champions (Champ_id,Name,Role,Species,Lane) VALUES (:champ_id_input,:champ_name_input,:role_input,:species_input,:lane_input)
--Insert a new spell based on spell information given
	INSERT INTO Spell (Spell_id,Q,W,E,R) VALUES (:spell_id_input,:q_input,:w_input,:e_input,r_input)
--Insert a new item based on item information given 
	INSERT INTO Items (Item_name,Defense,Attack,Magic,Movement) VALUES (:item_name_input,:defense_input,:attack_input,:magic_input,:movement_input)
--Insert a new level based on level information given
	INSERT INTO Level (Level_id,Spell_upgrade,Health_upgrade,Damage_upgrade) VALUES (:level_id_input,:spell_upgrade_input,:health_upgrade_input,:damage_upgrade_input)










