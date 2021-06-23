∇ = differentiate(f, [x;y])
H = differentiate(∇, [x;y])

g = ∇ ⋅ ∇
v = [-∇[2]; ∇[1]]
h = v' * H * v
dg = differentiate(g, [x;y])
dh = differentiate(h, [x;y])

∇σ = g .* dh - ((3/2) * h).* dg

F₂ = [v ⋅ ∇σ; f]

curv_result = solve(F₂, start_system = :polyhedral)
