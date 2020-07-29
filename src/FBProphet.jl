module FBProphet

using PyCall

export Prophet

import Base:getproperty

pyfbprophet = pyimport("fbprophet")
site = pyimport("site")
plt = pyimport("matplotlib.pyplot")

macro show()
    plt.show()
end

include("prophet_wrap.jl")
include("diagnostics_wrap.jl")
include("pyhelp.jl")

end
