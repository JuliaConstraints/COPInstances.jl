using COPInstances
using Documenter

DocMeta.setdocmeta!(COPInstances, :DocTestSetup, :(using COPInstances); recursive=true)

@info "Makeing documentation..."
makedocs(;
    modules=[COPInstances],
    authors="Jean-Francois Baffier",
    repo="https://github.com/JuliaConstraints/COPInstances.jl/blob/{commit}{path}#{line}",
    sitename="COPInstances.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://JuliaConstraints.github.io/COPInstances.jl",
        assets = ["assets/favicon.ico"; "assets/github_buttons.js"; "assets/custom.css"],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/JuliaConstraints/COPInstances.jl.git",
    devbranch="main",
)
