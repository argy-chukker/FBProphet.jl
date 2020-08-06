# FBProphet.jl
A Julia wrapper around Facebook's Prophet python implementation.

# Installation

FBProphet is currently not included a registered package. You can install it via:

```julia
pkg> add https://github.com/korowjev/FBProphet.jl
```

Please, refer to [Pkg documentation](https://docs.julialang.org/en/v1/stdlib/Pkg/) for further advice.

# Usage

## Basic Usage

Since FBProphet wraps python's `fbprophet` package, for instructions about the library's usage you should check [the project's site](https://facebook.github.io/prophet/). It's python API should be replicated by this package. Specifically, `FBProphet.Prophet` wraps `fbprophet.Prophet` class, and given one of its methods (for example, `m.fit(df)`) it's wrapped in the following fashion: `fit(m, df)`.

As an example, this snippet mimics the beggining of its quickstart guide:

```julia
using Pandas
using FBProphet

include("data/quickstart_fixtures.jl")
df = Pandas.read_csv("{PATH_TO}/example_wp_log_peyton_manning.csv")

m = FBProphet.Prophet()
FBProphet.fit(m, df)

future = FBProphet.make_future_dataframe(m, 365)
forecast = FBProphet.predict(m, future)
```
# Pyhelp

For easier usage, `FBProphet` wraps some Prophet's [python help system](https://docs.python.org/3/library/functions.html#help). This method is only defined to be called with one of the module's defined methods/structs and points to its mappings help. For example `julia> pyhelp(FBProphet.Prophet())` is a call to `>>> help(fbprophet.Prophet())`.

# Data Frames

Currently, if a wrapped method returns a Data Frame, the return value is a `PyObject` pointer to an underlying `pandas.DataFrame`.

On the other hand for argument passing, it is supported either of these three types:
 - Julia's wrapper `Pandas.DataFrame` type.
 - A pointer `PyObject` to a `pandas.DataFrame`

```julia
using PyCall
using Pandas

using Dates

df_1 = Pandas.DataFrame(Dict(:ds => [Dates.Date(2020,1,1), Dates.Date(2020,1,2), Dates.Date(2020,1,3)], :y => rand(3)))

pd = PyCall.pyimport("pandas")
df_2 = pd.DataFrame(Dict(:ds => [Dates.Date(2020,1,1), Dates.Date(2020,1,2), Dates.Date(2020,1,3)], :y => rand(3)))

m = FBProphet.Prophet()
# Now, every one of these calls is a valid statement:
# FBProphet.fit(m, df_1)
# FBProphet.fit(m, df_2)
```