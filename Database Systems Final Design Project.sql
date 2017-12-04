-- Database Systems -- 
-- Final Design Project --
-- Brandon Kline --

-- Move List Table --

CREATE TABLE moveList (
moveid INT NOT NULL UNIQUE, 
genIntroduced TEXT NOT NULL CHECK ( genIntroduced = ‘I’ OR genIntroduced = ‘II’ OR GenIntroduced = ‘III” 
OR genIntroduced = ‘IV’ OR genIntroduced = ‘V’ OR genIntroduced = ‘VI’ OR genIntroduced = ‘VII’),
moveName TEXT NOT NULL UNIQUE,
moveType TEXT NOT NULL,
effect TEXT NOT NULL,
category TEXT NOT NULL CHECK (category = ‘Physical’ OR category = ‘Special’ OR category = ‘Status’),
power INT,
accuracy INT, 
pp INT NOT NULL,
target TEXT NOT NULL, 
PRIMARY KEY (moveid)
);

-- Insert Into Move List --

INSERT INTO moveList(moveid, genIntroduced, moveName, moveType, effect, category, power, accuracy, pp, target)
  VALUES(1, 'I', 'Tackle', 'Normal', 'Deals damage and has no secondary effect.', 'Physical', '40', '100%', 35, 'Any Adjacent Pokemon');
  
INSERT INTO moveList(moveid, genIntroduced, moveName, moveType, effect, category, power, accuracy, pp, target)
  VALUES(2, 'IV', 'Giga Impact', 'Normal', 'The user must recharge next turn.', 'Physical', '150', '90%', 5, 'Any Adjacent Pokemon');
  
INSERT INTO moveList(moveid, genIntroduced, moveName, moveType, effect, category, power, accuracy, pp, target)
  VALUES(3, 'I', 'Swift', 'Normal', 'Does not check accuracy.', 'Special', '60', NULL, 20, 'All Adjacent Pokemon');
  
INSERT INTO moveList(moveid, genIntroduced, moveName, moveType, effect, category, power, accuracy, pp, target)
  VALUES(4, 'II', 'Belly Drum', 'Normal', 'Cuts HP by 50% to max out the user's Attack stat., 'Status', NULL, NULL, 10, 'Self');
  
INSERT INTO moveList(moveid, genIntroduced, moveName, moveType, effect, category, power, accuracy, pp, target)
  VALUES(5, 'IV', 'Brave Bird', 'Flying', 'Has 33% recoil.', 'Physical', '120', '100%', 15, 'Any Pokemon');
  
INSERT INTO moveList(moveid, genIntroduced, moveName, moveType, effect, category, power, accuracy, pp, target)
  VALUES(6, 'IV', 'Ice Shard', 'Ice', 'Has +1 priority.', 'Physical', '40', '100%', 30, 'Any Adjacent Pokemon');
  
INSERT INTO moveList(moveid, genIntroduced, moveName, moveType, effect, category, power, accuracy, pp, target)
  VALUES(7, 'I', 'Night Shade', 'Ghost', 'Deals damage equal to the users level.', 'Special', 'Varies', NULL, 15, 'Any Adjacent Pokemon');
  
INSERT INTO moveList(moveid, genIntroduced, moveName, moveType, effect, category, power, accuracy, pp, target)
  VALUES(8, 'I', 'Toxic', 'Poison', 'Badly poisons the target.', 'Status', NULL, '90%', 10, 'Any Adjacent Pokemon');
  
INSERT INTO moveList(moveid, genIntroduced, moveName, moveType, effect, category, power, accuracy, pp, target)
  VALUES(9, 'II', 'Crunch', 'Dark', 'Has a 20% chance of lowering the targets Defense stat by one stage.', 'Physical', '80', '100%', 15, 'Any Adjacent Pokemon');
  
INSERT INTO moveList(moveid, genIntroduced, moveName, moveType, effect, category, power, accuracy, pp, target)
  VALUES(10, 'II', 'Dynamic Punch', 'Fighting', 'Has a 100% chance to confuse the target.', 'Physical', '100', '50%', 5, 'Any Adjacent Pokemon');
  
INSERT INTO moveList(moveid, genIntroduced, moveName, moveType, effect, category, power, accuracy, pp, target)
  VALUES(11, 'III', 'Muddy Water', 'Water', 'Has a 30% chance of lowering the targets accuracy by one stage.', 'Special', '90', '85%', 10, 'All Adjacent Foes');
  
INSERT INTO moveList(moveid, genIntroduced, moveName, moveType, effect, category, power, accuracy, pp, target)
  VALUES(12, 'VI', 'Draining Kiss', 'Fairy', 'Restores the users HP by 75% of damage dealt.', 'Special', '50', '100%', 10, 'Any Adjacent Pokemon');
  
INSERT INTO moveList(moveid, genIntroduced, moveName, moveType, effect, category, power, accuracy, pp, target)
  VALUES(13, 'I', 'Earthquake', 'Ground', 'Deals double damage is the target is in the semi-invulnerable turn of Dig and deals half damage if Grassy Terrain is in effect.', 'Physical', '100', '100%', 10, 'All Pokemon');
  
INSERT INTO moveList(moveid, genIntroduced, moveName, moveType, effect, category, power, accuracy, pp, target)
  VALUES(14, 'I', 'Thunderbolt', 'Electric', 'Has a 10% chance to paralyze the target.', 'Special', '90', '100%', 15, 'Any Adjacent Pokemon');
  
INSERT INTO moveList(moveid, genIntroduced, moveName, moveType, effect, category, power, accuracy, pp, target)
  VALUES(15, 'III', 'Calm Mind', 'Psychic', 'Raises the users Special Attack and Special Defense stats by one stage each.', 'Status', NULL, NULL, 20, 'Self');
  
INSERT INTO moveList(moveid, genIntroduced, moveName, moveType, effect, category, power, accuracy, pp, target)
  VALUES(16, 'I', 'Barrier', 'Psychic', 'Raises the users Defense stat by two stages.', 'Status', NULL, NULL, 20, 'Self');
  
INSERT INTO moveList(moveid, genIntroduced, moveName, moveType, effect, category, power, accuracy, pp, target)
  VALUES(17, 'IV', 'Dragon Rush', 'Dragon', 'Has a 20% chance to cause the target to flinch.', 'Physical', '100', '75%', 10, 'Any Adjacent Pokemon');
  
INSERT INTO moveList(moveid, genIntroduced, moveName, moveType, effect, category, power, accuracy, pp, target)
  VALUES(18, 'III', 'Shock Wave', 'Electric', 'Does not check accuracy.', 'Special', '60', NULL, 20, 'Any Adjacent Pokemon');
  
INSERT INTO moveList(moveid, genIntroduced, moveName, moveType, effect, category, power, accuracy, pp, target)
  VALUES(19, 'IV', 'Draco Meteor', 'Dragon', 'Lowers the users Special Attack stat by two stages.', 'Special', '130', '90%', 5, 'Any Adjacent Pokemon');
  
INSERT INTO moveList(moveid, genIntroduced, moveName, moveType, effect, category, power, accuracy, pp, target)
  VALUES(20, 'V', 'Telekenesis', 'Psychic', 'The target is immune to Ground-based moves, abilities, and effects for three turns.', 'Status', NULL, NULL, 15, 'Any Adjacent Pokemon');
  
-- Pokemon Table --

CREATE TABLE pokemon (
pkmnid INT NOT NULL UNIQUE,
pokemonName TEXT NOT NULL UNIQUE,
pokemonPrimaryType TEXT NOT NULL, 
pokemonSecondaryType TEXT, 
pokemonPrimaryEggGroup TEXT NOT NULL, 
pokemonSecondaryEggGroup TEXT,
PRIMARY KEY (pkmnid)
); 

-- Insert Into Pokemon --

INSERT INTO pokemon(pkmnid, pokemonName, pokemonPrimaryType, pokemonSecondaryType, pokemonPrimaryEggGroup, pokemonSecondaryEggGroup)
  VALUES(000, 'Alan', 'Electric', 'Steel', 'Field', 'Mineral');

INSERT INTO pokemon(pkmnid, pokemonName, pokemonPrimaryType, pokemonSecondaryType, pokemonPrimaryEggGroup, pokemonSecondaryEggGroup)
  VALUES(001, 'Bulbasaur', 'Grass', 'Poison', 'Monster', 'Grass');
  
INSERT INTO pokemon(pkmnid, pokemonName, pokemonPrimaryType, pokemonSecondaryType, pokemonPrimaryEggGroup, pokemonSecondaryEggGroup)
  VALUES(112, 'Rhydon', 'Rock', 'Ground', 'Monster', 'Field');
  
INSERT INTO pokemon(pkmnid, pokemonName, pokemonPrimaryType, pokemonSecondaryType, pokemonPrimaryEggGroup, pokemonSecondaryEggGroup)
  VALUES(132, 'Ditto', 'Normal', NULL, 'Ditto', NULL);
  
INSERT INTO pokemon(pkmnid, pokemonName, pokemonPrimaryType, pokemonSecondaryType, pokemonPrimaryEggGroup, pokemonSecondaryEggGroup)
  VALUES(145, 'Zapdos', 'Electric', 'Flying', 'Undiscovered', NULL); 

INSERT INTO pokemon(pkmnid, pokemonName, pokemonPrimaryType, pokemonSecondaryType, pokemonPrimaryEggGroup, pokemonSecondaryEggGroup)
  VALUES(245, 'Suicune', 'Water', NULL, 'Undisovered', NULL);
  
INSERT INTO pokemon(pkmnid, pokemonName, pokemonPrimaryType, pokemonSecondaryType, pokemonPrimaryEggGroup, pokemonSecondaryEggGroup)
  VALUES(260, 'Swampert', 'Water', 'Ground', 'Monster', 'Water 1');
  
INSERT INTO pokemon(pkmnid, pokemonName, pokemonPrimaryType, pokemonSecondaryType, pokemonPrimaryEggGroup, pokemonSecondaryEggGroup)
  VALUES(286, 'Breloom', 'Grass', 'Fighting', 'Fairy', 'Grass');
  
INSERT INTO pokemon(pkmnid, pokemonName, pokemonPrimaryType, pokemonSecondaryType, pokemonPrimaryEggGroup, pokemonSecondaryEggGroup)
  VALUES(373, 'Salamance', 'Dragon', 'Flying', 'Dragon', NULL);
  
INSERT INTO pokemon(pkmnid, pokemonName, pokemonPrimaryType, pokemonSecondaryType, pokemonPrimaryEggGroup, pokemonSecondaryEggGroup)
  VALUES(399, 'Biddof', 'Normal', NULL, 'Water 1', 'Field');
  
INSERT INTO pokemon(pkmnid, pokemonName, pokemonPrimaryType, pokemonSecondaryType, pokemonPrimaryEggGroup, pokemonSecondaryEggGroup)
  VALUES(461, 'Weavile', 'Dark', 'Ice', 'Field', NULL);
  
INSERT INTO pokemon(pkmnid, pokemonName, pokemonPrimaryType, pokemonSecondaryType, pokemonPrimaryEggGroup, pokemonSecondaryEggGroup)
  VALUES(606, 'Beheeyem', 'Psychic', NULL, 'Human-Like', NULL);
  
INSERT INTO pokemon(pkmnid, pokemonName, pokemonPrimaryType, pokemonSecondaryType, pokemonPrimaryEggGroup, pokemonSecondaryEggGroup)
  VALUES(607, 'Litwick', 'Ghost', 'Fire', 'Amorphous', NULL);
  
INSERT INTO pokemon(pkmnid, pokemonName, pokemonPrimaryType, pokemonSecondaryType, pokemonPrimaryEggGroup, pokemonSecondaryEggGroup)
  VALUES(687, 'Malamar', 'Dark', 'Psychic', 'Water 1', 'Water 2');
  
INSERT INTO pokemon(pkmnid, pokemonName, pokemonPrimaryType, pokemonSecondaryType, pokemonPrimaryEggGroup, pokemonSecondaryEggGroup)
  VALUES(742, 'Cutiefly', 'Bug', 'Fairy', 'Bug', 'Fairy');
  
-- Z-Moves Table --

CREATE TABLE z-moves (
zid INT NOT NULL UNIQUE, 
moveid INT NOT NULL UNIQUE REFERENCES moveList (moveid),
moveName TEXT NOT NULL, REFERENCES moveList (moveName),
moveType TEXT NOT NULL,
z-name TEXT NOT NULL, 
z-power INT, 
signatureZ-power INT, 
z-effect TEXT,
PRIMARY KEY (zid) 
);

-- Insert Into Z-Moves --

INSERT INTO z-moves(zid, moveid, moveName, moveType, z-name, z-power, signatureZ-power, z-effect)
   VALUES(1, 1, 'Tackle', 'Normal', 'Breakneck Blitz', '100', NULL, 'Deals damage and has no secondary effect.');
   
INSERT INTO z-moves(zid, moveid, moveName, moveType, z-name, z-power, signatureZ-power, z-effect)
   VALUES(2, 2, 'Giga Impact', 'Normal', 'Breakneck Blitz', '200', '210', 'Deals damage and has no secondary effect.');

INSERT INTO z-moves(zid, moveid, moveName, moveType, z-name, z-power, signatureZ-power, z-effect)
   VALUES(3, 3, 'Swift', 'Normal', 'Breakneck Blitz', '120', NULL, 'Deals damage and has no secondary effect.');

INSERT INTO z-moves(zid, moveid, moveName, moveType, z-name, z-power, signatureZ-power, z-effect)
   VALUES(4, 4, 'Belly Drum', 'Normal', 'Z-Belly Drum', NULL, NULL, 'Fully restores the users HP.');
   
INSERT INTO z-moves(zid, moveid, moveName, moveType, z-name, z-power, signatureZ-power, z-effect)
   VALUES(5, 5, 'Brave Bird', 'Flying', 'Supersonic Skystrike', '190', NULL, 'Deals damage and has no secondary effect.');
   
INSERT INTO z-moves(zid, moveid, moveName, moveType, z-name, z-power, signatureZ-power, z-effect)
   VALUES(6, 6, 'Ice Shard', 'Ice', 'Subzero Slammer', '100', NULL, 'Deals damage and has no secondary effect.');
   
INSERT INTO z-moves(zid, moveid, moveName, moveType, z-name, z-power, signatureZ-power, z-effect)
   VALUES(7, 7, 'Night Shade', 'Ghost', 'Never-Ending Nightmare', '100', NULL, 'Deals damage and has no secondary effect.');
   
INSERT INTO z-moves(zid, moveid, moveName, moveType, z-name, z-power, signatureZ-power, z-effect)
   VALUES(8, 8, 'Toxic', 'Poison', 'Z-Toxic', NULL, NULL, 'Raises the users Defense stat by one stage.');
   
INSERT INTO z-moves(zid, moveid, moveName, moveType, z-name, z-power, signatureZ-power, z-effect)
   VALUES(9, 9, 'Crunch', 'Dark', 'Black Hole Eclipse', '160', NULL, 'Deals damage and has no secondary effect.');
   
INSERT INTO z-moves(zid, moveid, moveName, moveType, z-name, z-power, signatureZ-power, z-effect)
   VALUES(10, 10, 'Dynamic Punch', 'Fighting', 'All-Out Pummeling', '180', NULL, 'Deals damage and has no secondary effect.');
   
INSERT INTO z-moves(zid, moveid, moveName, moveType, z-name, z-power, signatureZ-power, z-effect)
   VALUES(11, 11, 'Muddy Water', 'Water', 'Hydro Vortex', '175', NULL, 'Deals damage and has no secondary effect.');
   
INSERT INTO z-moves(zid, moveid, moveName, moveType, z-name, z-power, signatureZ-power, z-effect)
   VALUES(12, 12, 'Draining Kiss', 'Fairy', 'Twinkle Tackle', '100', NULL, 'Deals damage and has no secondary effect.');
   
INSERT INTO z-moves(zid, moveid, moveName, moveType, z-name, z-power, signatureZ-power, z-effect)
   VALUES(13, 13, 'Earthquake', 'Ground', 'Tectonic Rage', '180', NULL, 'Deals damage and has no secondary effect.');
   
INSERT INTO z-moves(zid, moveid, moveName, moveType, z-name, z-power, signatureZ-power, z-effect)
   VALUES(14, 14, 'Thunderbolt', 'Electric', '10,000,000 Volt Thunderbolt', '175', '195', 'Raises the users critical hit ratio by two stages.');
   
INSERT INTO z-moves(zid, moveid, moveName, moveType, z-name, z-power, signatureZ-power, z-effect)
   VALUES(15, 15, 'Calm Mind', 'Psychic', 'Z-Calm Mind', NULL, NULL, 'Resets all of the users lowered stats.');

INSERT INTO z-moves(zid, moveid, moveName, moveType, z-name, z-power, signatureZ-power, z-effect)
   VALUES(16, 16, 'Barrier', 'Psychic', 'Z-Barrier', NULL, NULL, 'Resets all of the users lowered stats.');

INSERT INTO z-moves(zid, moveid, moveName, moveType, z-name, z-power, signatureZ-power, z-effect)
   VALUES(17, 17, 'Dragon Rush', 'Dragon', 'Devastating Drake', '180', NULL, 'Deals damage and has no secondary effect.');
   
INSERT INTO z-moves(zid, moveid, moveName, moveType, z-name, z-power, signatureZ-power, z-effect)
   VALUES(18, 18, 'Shock Wave', 'Electric', 'Gigavolt Havoc', '120', NULL, 'Deals damage and has no secondary effect.');
   
INSERT INTO z-moves(zid, moveid, moveName, moveType, z-name, z-power, signatureZ-power, z-effect)
   VALUES(19, 19, 'Draco Meteor', 'Dragon', 'Devastating Drake', '195', NULL, 'Deals damage and has no secondary effect.');
   
INSERT INTO z-moves(zid, moveid, moveName, moveType, z-name, z-power, signatureZ-power, z-effect)
   VALUES(20, 20, 'Telekenesis', 'Psychic', 'Z-Telekenesis', NULL, NULL, 'Raises the users Special Attack stat by one stage.');
   
-- TMs Table --

CREATE TABLE tms (
hmid INT NOT NULL UNIQUE, 
tmid INT NOT NULL UNIQUE,
pkmnid INT NOT NULL UNIQUE REFERENCES pokemon (pkmnid), 
pokemonName TEXT NOT NULL UNIQUE REFERENCES pokemon (pokemonName),
moveid INT NOT NULL UNIQUE REFERENCES moveList (moveid),
moveName TEXT NOT NULL UNIQUE REFERENCES moveList (moveName),
PRIMARY KEY (hmid)
);

 -- Insert Into TMs --
 
INSERT INTO tms(hmid, tmid, pkmnid, pokemonName, moveid, moveName)
   VALUES(1, 68, 145, 'Zapdos', 2, 'Giga Impact');
   
INSERT INTO tms(hmid, tmid, pkmnid, pokemonName, moveid, moveName)
   VALUES(2, 68, 260, 'Swampert', 2, 'Giga Impact');
   
INSERT INTO tms(hmid, tmid, pkmnid, pokemonName, moveid, moveName)
   VALUES(3, 68, 461, 'Weavile', 2, 'Giga Impact');
   
INSERT INTO tms(hmid, tmid, pkmnid, pokemonName, moveid, moveName)
   VALUES(4, 68, 606, 'Beheeyem', 2, 'Giga Impact');
   
INSERT INTO tms(hmid, tmid, pkmnid, pokemonName, moveid, moveName)
   VALUES(5, 68, 373, 'Salamance', 2, 'Giga Impact');
   
INSERT INTO tms(hmid, tmid, pkmnid, pokemonName, moveid, moveName)
   VALUES(6, 68, 112, 'Rhydon', 2, 'Giga Impact');
   
INSERT INTO tms(hmid, tmid, pkmnid, pokemonName, moveid, moveName)
   VALUES(7, 68, 286, 'Breloom', 2, 'Giga Impact');
   
INSERT INTO tms(hmid, tmid, pkmnid, pokemonName, moveid, moveName)
   VALUES(8, 68, 245, 'Suicune', 2, 'Giga Impact');
   
INSERT INTO tms(hmid, tmid, pkmnid, pokemonName, moveid, moveName)
   VALUES(9, 68, 687, 'Malamar', 2, 'Giga Impact');
   
INSERT INTO tms(hmid, tmid, pkmnid, pokemonName, moveid, moveName)
   VALUES(10, 6, 000, 'Alan', 8, 'Toxic');
   
INSERT INTO tms(hmid, tmid, pkmnid, pokemonName, moveid, moveName)
   VALUES(11, 6, 001, 'Bulbasaur', 8, 'Toxic');
   
INSERT INTO tms(hmid, tmid, pkmnid, pokemonName, moveid, moveName)
   VALUES(12, 6, 145, 'Zapdos', 8, 'Toxic');
   
INSERT INTO tms(hmid, tmid, pkmnid, pokemonName, moveid, moveName)
   VALUES(13, 6, 260, 'Swampert', 8, 'Toxic');
   
INSERT INTO tms(hmid, tmid, pkmnid, pokemonName, moveid, moveName)
   VALUES(14, 6, 399, 'Bidoof', 8, 'Toxic');
   
INSERT INTO tms(hmid, tmid, pkmnid, pokemonName, moveid, moveName)
   VALUES(15, 6, 461, 'Weavile', 8, 'Toxic');
   
INSERT INTO tms(hmid, tmid, pkmnid, pokemonName, moveid, moveName)
   VALUES(16, 6, 606, 'Beheeyem', 8, 'Toxic');
   
INSERT INTO tms(hmid, tmid, pkmnid, pokemonName, moveid, moveName)
   VALUES(17, 6, 373, 'Salamance', 8, 'Toxic');
   
INSERT INTO tms(hmid, tmid, pkmnid, pokemonName, moveid, moveName)
   VALUES(18, 6, 742, 'Cutiefly', 8, 'Toxic');
   
INSERT INTO tms(hmid, tmid, pkmnid, pokemonName, moveid, moveName)
   VALUES(19, 6, 112, 'Rhydon', 8, 'Toxic');
   
INSERT INTO tms(hmid, tmid, pkmnid, pokemonName, moveid, moveName)
   VALUES(20, 6, 607, 'Litwick', 8, 'Toxic');
   
INSERT INTO tms(hmid, tmid, pkmnid, pokemonName, moveid, moveName)
   VALUES(21, 6, 286, 'Breloom', 8, 'Toxic');
   
INSERT INTO tms(hmid, tmid, pkmnid, pokemonName, moveid, moveName)
   VALUES(22, 6, 245, 'Suicune', 8, 'Toxic');
   
INSERT INTO tms(hmid, tmid, pkmnid, pokemonName, moveid, moveName)
   VALUES(23, 6, 687, 'Malamar', , 'Toxic');
   
INSERT INTO tms(hmid, tmid, pkmnid, pokemonName, moveid, moveName)
   VALUES(24, 26, 260, 'Swampert', 13, 'Earthquake');
   
INSERT INTO tms(hmid, tmid, pkmnid, pokemonName, moveid, moveName)
   VALUES(25, 26, 373, 'Salamance', 13, 'Earthquake');
   
INSERT INTO tms(hmid, tmid, pkmnid, pokemonName, moveid, moveName)
   VALUES(26, 26, 112, 'Rhydon', 13, 'Earthquake');
   
INSERT INTO tms(hmid, tmid, pkmnid, pokemonName, moveid, moveName)
   VALUES(27, 24, 000, 'Alan', 14, 'Thunderbolt');
   
INSERT INTO tms(hmid, tmid, pkmnid, pokemonName, moveid, moveName)
   VALUES(28, 24, 145, 'Zapdos', 14, 'Thunderbolt');
   
INSERT INTO tms(hmid, tmid, pkmnid, pokemonName, moveid, moveName)
   VALUES(29, 24, 399, 'Bidoof', 14, 'Thunderbolt');
   
INSERT INTO tms(hmid, tmid, pkmnid, pokemonName, moveid, moveName)
   VALUES(30, 24, 606, 'Beheeyem', 14, 'Thunderbolt');
   
INSERT INTO tms(hmid, tmid, pkmnid, pokemonName, moveid, moveName)
   VALUES(31, 24, 112, 'Rhydon', 14, 'Thunderbolt');
   
INSERT INTO tms(hmid, tmid, pkmnid, pokemonName, moveid, moveName)
   VALUES(32, 24, 687, 'Malamar', 14, 'Thunderbolt');
   
INSERT INTO tms(hmid, tmid, pkmnid, pokemonName, moveid, moveName)
   VALUES(33, 3, 000, 'Alan', 15, 'Calm Mind');
   
INSERT INTO tms(hmid, tmid, pkmnid, pokemonName, moveid, moveName)
   VALUES(34, 3, 461, 'Weavile', 15, 'Calm Mind');
   
INSERT INTO tms(hmid, tmid, pkmnid, pokemonName, moveid, moveName)
   VALUES(35, 3, 606, 'Beheeyem', 15, 'Calm Mind');
   
INSERT INTO tms(hmid, tmid, pkmnid, pokemonName, moveid, moveName)
   VALUES(36, 3, 742, 'Cutiefly', 15, 'Calm Mind');
   
INSERT INTO tms(hmid, tmid, pkmnid, pokemonName, moveid, moveName)
   VALUES(37, 3, 607, 'Litwick', 15, 'Calm Mind');
   
INSERT INTO tms(hmid, tmid, pkmnid, pokemonName, moveid, moveName)
   VALUES(38, 3, 215, 'Suicune', 15, 'Calm Mind');
   
INSERT INTO tms(hmid, tmid, pkmnid, pokemonName, moveid, moveName)
   VALUES(33, 3, 687, 'Malamar', 15, 'Calm Mind');
   
-- Level Up Table --

CREATE TABLE levelUp (
lvlid INT NOT NULL UNIQUE, 
levelLearned INT NOT NULL,
pkmnid INT NOT NULL UNIQUE REFERENCES pokemon (pkmnid),0
pokemonName TEXT NOT NULL UNIQUE REFERENCES pokemon (pokemonName),
moveid INT NOT NULL UNIQUE REFERENCES moveList (moveid),
moveName TEXT NOT NULL UNIQUE REFERENCES moveList (moveName),
PRIMARY KEY (lvlid) 
);

-- Insert Into Level Up --

INSERT INTO levelUp(lvlid, levelLearned, pkmnid, pokemonName, moveid, moveName)
   VALUES(1, 1, 001, 'Bulbasaur', 1, 'Tackle');
   
INSERT INTO levelUp(lvlid, levelLearned, pkmnid, pokemonName, moveid, moveName)
   VALUES(2, 1, 260, 'Swampert', 1, 'Tackle');
   
INSERT INTO levelUp(lvlid, levelLearned, pkmnid, pokemonName, moveid, moveName)
   VALUES(3, 1, 286, 'Breloom', 1, 'Tackle');
   
INSERT INTO levelUp(lvlid, levelLearned, pkmnid, pokemonName, moveid, moveName)
   VALUES(4, 1, 399, 'Bidoof', 1, 'Tackle'); 
   
INSERT INTO levelUp(lvlid, levelLearned, pkmnid, pokemonName, moveid, moveName)
   VALUES(5, 1, 687, 'Malamar', 1, 'Tackle');
   
INSERT INTO levelUp(lvlid, levelLearned, pkmnid, pokemonName, moveid, moveName)
   VALUES(6, 13, 606, 'Litwick', 7, 'Night Shade');
   
INSERT INTO levelUp(lvlid, levelLearned, pkmnid, pokemonName, moveid, moveName)
   VALUES(7, 25, 373, 'Salamance', 9, 'Crunch');
   
INSERT INTO levelUp(lvlid, levelLearned, pkmnid, pokemonName, moveid, moveName)
   VALUES(8, 25, 399, 'Bidoof', 9, 'Crunch');
   
INSERT INTO levelUp(lvlid, levelLearned, pkmnid, pokemonName, moveid, moveName)
   VALUES(9, 50, 286, 'Breloom', 10, 'Dynamic Punch');
   
INSERT INTO levelUp(lvlid, levelLearned, pkmnid, pokemonName, moveid, moveName)
   VALUES(10, 39, 260, 'Swampert', 11, 'Muddy Water');
   
INSERT INTO levelUp(lvlid, levelLearned, pkmnid, pokemonName, moveid, moveName)
   VALUES(11, 16, 742, 'Cutiefly', 12, 'Draining Kiss');
   
INSERT INTO levelUp(lvlid, levelLearned, pkmnid, pokemonName, moveid, moveName)
   VALUES(12, 48, 112, 'Rhydon', 13, 'Earthquake');
   
INSERT INTO levelUp(lvlid, levelLearned, pkmnid, pokemonName, moveid, moveName)
   VALUES(13, 51, 260, 'Swampert', 13, 'Earthquake');
   
INSERT INTO levelUp(lvlid, levelLearned, pkmnid, pokemonName, moveid, moveName)
   VALUES(14, 42, 000, 'Alan', 14, 'Thunderbolt');
   
INSERT INTO levelUp(lvlid, levelLearned, pkmnid, pokemonName, moveid, moveName)
   VALUES(15, 23, 000, 'Alan', 7, 'Night Shade');
   
INSERT INTO levelUp(lvlid, levelLearned, pkmnid, pokemonName, moveid, moveName)
   VALUES(16, 78, 245, 'Suicune', 15, 'Calm Mind');
   
INSERT INTO levelUp(lvlid, levelLearned, pkmnid, pokemonName, moveid, moveName)
   VALUES(17, 45, 606, 'Beheeyem', 15, 'Calm Mind');
   
-- Breeding Table --

CREATE TABLE breeding (
eggMoveid INT NOT NULL UNIQUE, 
pkmnid INT NOT NULL UNIQUE REFERENCES pokemon (pkmnid),
pokemonName TEXT NOT NULL UNIQUE REFERENCES pokemon (pokemonName),
moveid INT NOT NULL UNIQUE REFERENCES moveList (moveid),
moveName TEXT NOT NULL UNIQUE REFERENCES moveList (moveName),
chainBreed TEXT NOT NULL,
PRIMARY KEY (eggMoveid) 
);

-- Insert Into Breeding --

INSERT INTO breeding(eggmoveid, pkmnid, pokemonName, moveid, moveName, chainBreed)
   VALUES(1, 461, 'Weavile', 6, 'Ice Shard', 'No');
   
INSERT INTO breeding(eggmoveid, pkmnid, pokemonName, moveid, moveName, chainBreed)
   VALUES(2, 112, 'Rhydon', 9, 'Crunch', 'No');
   
INSERT INTO breeding(eggmoveid, pkmnid, pokemonName, moveid, moveName, chainBreed)
   VALUES(3, 260, 'Swampert', 16, 'Barrier', 'Yes');
   
INSERT INTO breeding(eggmoveid, pkmnid, pokemonName, moveid, moveName, chainBreed)
   VALUES(4, 606, 'Beheeyem', 16, 'Barrier', 'No');
   
INSERT INTO breeding(eggmoveid, pkmnid, pokemonName, moveid, moveName, chainBreed)
   VALUES(5, 373, 'Salamance', 17, 'Dragon Rush', 'No');
   
INSERT INTO breeding(eggmoveid, pkmnid, pokemonName, moveid, moveName, chainBreed)
   VALUES(6, 000, 'Alan', 16, 'Barrier', 'No');
   
-- Move Tutors Table --

CREATE TABLE moveTutors (
tutorid INT NOT NULL UNIQUE, 
bp INT NOT NULL,
game TEXT NOT NULL, 
pkmnid INT NOT NULL UNIQUE REFERENCES pokemon (pkmnid),
pokemonName TEXT NOT NULL UNIQUE REFERENCES pokemon (pokemonName),
moveid INT NOT NULL UNIQUE REFERENCES moveList (moveid),
moveName TEXT NOT NULL UNIQUE REFERENCES moveList (moveName),
PRIMARY KEY (tutorid) 
);

-- Insert Into Move Tutors --

INSERT INTO moveTutors(tutorid, bp, game, pkmnid, pokemonName, moveid, moveName)
   VALUES(1, 000, 'Alan', 18, 'Shock Wave', 4, 'Ultra Sun and Ultra Moon');
   
INSERT INTO moveTutors(tutorid, bp, game, pkmnid, pokemonName, moveid, moveName)
   VALUES(2, 112, 'Rhydon', 18, 'Shock Wave', 4, 'Ultra Sun and Ultra Moon');
   
INSERT INTO moveTutors(tutorid, bp, game, pkmnid, pokemonName, moveid, moveName)
   VALUES(3, 145, 'Alan', 18, 'Shock Wave', 4, 'Ultra Sun and Ultra Moon');
   
INSERT INTO moveTutors(tutorid, bp, game, pkmnid, pokemonName, moveid, moveName)
   VALUES(4, 399, 'Bidoof', 18, 'Shock Wave', 4, 'Ultra Sun and Ultra Moon');
   
INSERT INTO moveTutors(tutorid, bp, game, pkmnid, pokemonName, moveid, moveName)
   VALUES(5, 606, 'Beheeyem', 18, 'Shock Wave', 4, 'Ultra Sun and Ultra Moon');
   
INSERT INTO moveTutors(tutorid, bp, game, pkmnid, pokemonName, moveid, moveName)
   VALUES(6, 607, 'Litwick', 18, 'Shock Wave', 4, 'Ultra Sun and Ultra Moon');
   
INSERT INTO moveTutors(tutorid, bp, game, pkmnid, pokemonName, moveid, moveName)
   VALUES(7, 373, 'Salamance', 19, 'Draco Meteor', NULL, 'All Games');
   
INSERT INTO moveTutors(tutorid, bp, game, pkmnid, pokemonName, moveid, moveName)
   VALUES(8, 000, 'Alan', 20, 'Telekenesis', 8, 'Ultra Sun and Ultra Moon');
   
INSERT INTO moveTutors(tutorid, bp, game, pkmnid, pokemonName, moveid, moveName)
   VALUES(9, 606, 'Beheeyem', 20, 'Telekenesis', 8, 'Ultra Sun and Ultra Moon');
   
INSERT INTO moveTutors(tutorid, bp, game, pkmnid, pokemonName, moveid, moveName)
   VALUES(10, 607, 'Litwick', 20, 'Telekenesis', 8, 'Ultra Sun and Ultra Moon');
   
INSERT INTO moveTutors(tutorid, bp, game, pkmnid, pokemonName, moveid, moveName)
   VALUES(11, 687, 'Malamar', 20, 'Telekenesis', 8, 'Ultra Sun and Ultra Moon');
   
INSERT INTO moveTutors(tutorid, bp, game, pkmnid, pokemonName, moveid, moveName)
   VALUES(12, 742, 'Cutiefly', 20, 'Telekenesis', 8, 'Ultra Sun and Ultra Moon');
   
-- Learned By Table --

CREATE TABLE learnedBy (
moveid INT NOT NULL UNIQUE REFERENCES moveList (moveid),
moveName TEXT NOT NULL UNIQUE REFERENCES moveList (moveName),
pkmnid INT NOT NULL UNIQUE REFERENCES pokemon (pkmnid),
pokemonName TEXT NOT NULL UNIQUE REFERENCES pokemon (pokemonName),
eggMoveid INT NOT NULL UNIQUE REFERENCES breeding (eggMoveid),
hmid INT NOT NULL UNIQUE REFERENCES tms (hmid),
tutorid INT NOT NULL UNIQUE REFERENCES moveTutors (tutorid),
lvlid INT NOT NULL UNIQUE REFERENCES levelUp (lvlid),
);


-- Breeding Reference View --

CREATE VIEW Breedref AS
SELECT breeding.pkmnid,
    breeding."pokemonName",
    pokemon."pokemonPrimaryEggGroup",
    pokemon."pokemonSecondaryEggGroup",
    breeding."moveName",
    breeding."chainBreed"
   FROM breeding
   JOIN pokemon ON breeding.pkmnid = pokemon.pkmnid;

-- Explain Move Tutors View --

CREATE OR REPLACE VIEW explainMoveTutors
SELECT pkmnid, moveTutors."pokemonName", moveTutors."moveName", bp, moveList."moveType", effect, category, accuracy, pp, target, power
FROM moveTutors
RIGHT OUTER JOIN moveList
ON moveTutors.tutorid = moveList.moveid
WHERE pkmnid IS NOT NULL
ORDER BY pkmnid ASC;

-- Find Pokemon Function --

CREATE OR REPLACE FUNCTION findPokemon (TEXT)
RETURNS TABLE (pkmnid INT, pokemonName TEXT, pokemonPrimaryType TEXT, pokemonSecondaryType TEXT, pokemonPrimaryEggGroup TEXT, pokemonSecondaryEggGroup TEXT) AS
$$
DECLARE
desiredPokemon TEXT := 1;
BEGIN
RETURN QUERY
SELECT pokemon.pkmnid, pokemon.pokemonName, pokemon.pokemonPrimaryType, pokemon.pokemonSecondaryType, pokemon.pokemonPrimaryEggGroup, pokemon.pokemonSecondaryEggGroup
FROM pokemon
WHERE pokemon.pokemonName = desiredPokemon
ORDER BY pkmnid ASC;
END;
$$ LANGUAGE plpgsql;

-- TM Search Function --

CREATE OR REPLACE FUNCTION tmsearch (INT)
RETURNS TABLE (tmid INT, moveName TEXT, moveType TEXT, effect TEXT, category TEXT, accuracy TEXT, pp TEXT, target TEXT, power TEXT) AS
$$
DECLARE
tmnum INT := 1;
BEGIN
RETURN QUERY
SELECT tms.tmid, tms.moveName, moveList."moveType", moveList.effect, moveList.category, moveList.accuracy, moveList.pp, moveList.target, moveList.power
FROM tms, moveList
WHERE tms.tmid = tmnum AND moveList.moveid = tms.moveid
ORDER BY tmid ASC;
END;
$$ LANGUAGE plpgsql;

-- Breeding and Z-Moves Report --

SELECT z-power."moveName", z-moves."moveType", z-power, z-moves."signatureZ-power", z-effect, z-name, pkmnid, breeding."pokemonName", breeding."chainBreed"
FROM z-moves 
LEFT OUTER JOIN breeding
ON z-moves."moveid" = breeding."moveid"
WHERE z-moves."moveName" = breeding."moveName";


-- Level Up Report --

SELECT levelUp."levelLearned", pkmnid, levelUp."pokemonName", moveList."moveName", moveList."genIntroduced", moveList."moveType", effect, category, power, accuracy, pp, target
FROM levelUp 
RIGHT OUTER JOIN moveList
ON levelUp."moveName" = moveList."moveName"
WHERE levelUp."pokemonName" = 'Breloom’;