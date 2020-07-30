module FBProphet

using PyCall

export Prophet

import Base:getproperty

const pyfbprophet = PyNULL()
const site = PyNULL()
const plt = PyNULL()

function __init__()
    copy!(pyfbprophet, pyimport("fbprophet"))
    copy!(site, pyimport("site"))
    copy!(plt, pyimport("matplotlib.pyplot"))
end

macro show()
    plt.show()
end

include("prophet_wrap.jl")
include("diagnostics_wrap.jl")
include("pyhelp.jl")

end
