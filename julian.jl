
type Soldier
	name::String
	male::Bool
	age::UInt32
end

type JetFighterClass
	name::String
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

type State
	Pos::Array{Int64,1}
	Vel::Array{Int64,1}
end

type Missile
	name::String
	WeaponType::WeaponsClass
	state::State
end	

type bullets
	name::String
	WeaponType::WeaponsClass
	state::State
end	

type JetFighter
	Pilot::Soldier
	PlaneType::JetFighterClass
	state::State
	Missiles::Array{Missile,1}
end

type LandingStrip
	start::Array(Int64,3);
	end::Array(Int64,3);
end

function updatePos(A,delta_t)
	A.Pos += A.Vel.*delta_t
end

function updateVel(A,a,delta_t)
	A.Pos += A.Vel + a.*delta_t
end

function CreatePlane(Airport, FighterClass, Pilot)
	return JetFighter(Pilot,FighterClass, Airport.start, [0,0,0],
