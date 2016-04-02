
type Soldier
	name::String
	male::Bool
	age::UInt32
end

type JetFighterClass
	name::string
	linear_accel::UInt32
	rotational_accel::UInt32
	MaxVel::UInt32
	HardPoints::UInt32
end

type WeaponsClass
	name::String
	damage::UInt32 
	damageVar::UInt32
	MaxVel::UInt32
	MaxAccel::Uint32
end

type Missile
	name::MissileName
	WeaponType::WeaponsClass
	Pos::Array(Int64,3)
	Vel::Array(Int64,3)
end	

type Guns
	name::GunName
	WeaponType::WeaponsClass
	Pos::Array(Int64,3)
	Vel::Array(Int64,3)
end	

type JetFighter
	Pilot::Soldier
	PlaneType::JetFighterClass
	Pos::Array(Int64,3)
	Vel::Array(Int64,3)
	Weapons::Array
end

type LandingStrip
	Dimensions::Array(Int64,6);
end


function CreateSoldier(name::String, 


