using FBProphet
using Pandas
using Test

include("data/quickstart_fixtures.jl")

df = Pandas.read_csv(dirname(@__FILE__) * "/data/example_wp_log_peyton_manning.csv")
m = FBProphet.Prophet()

FBProphet.fit(m, df)

future = FBProphet.make_future_dataframe(m, 365)
# TODO: Return Pandas.jl object instead of PyObject

# should match data/quickstart_fixtures.jl#L2
@test all(Pandas.DataFrame(future.tail())["ds"] .== expected_future_df_tail["ds"])
@test all(index(Pandas.DataFrame(future.tail())) .== index(expected_future_df_tail))
@test all(columns(Pandas.DataFrame(future.tail())) .== columns(expected_future_df_tail))

forecast = FBProphet.predict(m, future)
# TODO: Return Pandas.jl object instead of PyObject
@test all(Pandas.DataFrame(forecast.tail())["ds"] .== expected_forecast_df_tail["ds"])
@test all(isapprox.(Pandas.DataFrame(forecast.tail())["yhat"], expected_forecast_df_tail["yhat"]; atol=0.25, rtol=0))
@test all(isapprox.(Pandas.DataFrame(forecast.tail())["yhat_lower"], expected_forecast_df_tail["yhat_lower"]; atol=0.25, rtol=0))
@test all(isapprox.(Pandas.DataFrame(forecast.tail())["yhat_upper"], expected_forecast_df_tail["yhat_upper"]; atol=0.25, rtol=0))


@test all(index(Pandas.DataFrame(forecast.tail())) .== index(expected_forecast_df_tail))
@test issubset(columns(expected_forecast_df_tail), columns(Pandas.DataFrame(forecast.tail())))

@test_nowarn FBProphet.plot(m, forecast)
@test_nowarn FBProphet.plot_components(m, forecast)
