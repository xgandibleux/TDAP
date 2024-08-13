# --------------------------------------------------------------------------- #
# data structure storing information describing a single objective instance

struct Instance

    name::String          # name of the instance
    
    n::Int64              # number of trucks
    m::Int64              # number of docks

    a::Vector{Int64}      # the arrival time of trucks (format: minutes ∈ [00:00;23:59])
    d::Vector{Int64}      # the departure time of trucks (format: minutes ∈ [00:00;23:59])

    t::Matrix{Int64}      # the operational times from dock k to dock l (format: minutes)
    f::Matrix{Int64}      # the number of pallets to transfert from truck i to truck j
    c::Matrix{Int64}      # the transportation cost (€) from dock k to dock l 
    p::Matrix{Int64}      # the penality (€) from truck i to truck j

    C::Int64              # the maximum capacity value of the warehouse (number of pallets)
end