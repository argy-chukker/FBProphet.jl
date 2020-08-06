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
