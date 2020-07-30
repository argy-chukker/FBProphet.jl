struct Prophet
    pyProphet::PyObject

    function Prophet(
        growth="linear",
        changepoints=nothing,
        n_changepoints=25,
        changepoint_range=0.8,
        yearly_seasonality="auto",
        daily_seasonality="auto",
        holidays=nothing,
        seasonality_mode="additive",
        seasonality_prior_scale=10.0,
        holidays_prior_scale=10.0,
        changepoint_prior_scale=0.05,
        mcmc_samples=0,
        interval_width=0.8,
        uncertainty_samples=1000,
        stan_backend=nothing
    )
        new(
            pyfbprophet.Prophet(
            growth=growth,
            changepoints=changepoints,
            n_changepoints=n_changepoints,
            changepoint_range=changepoint_range,
            yearly_seasonality=yearly_seasonality,
            daily_seasonality=daily_seasonality,
            holidays=holidays,
            seasonality_mode=seasonality_mode,
            seasonality_prior_scale=seasonality_prior_scale,
            holidays_prior_scale=holidays_prior_scale,
            changepoint_prior_scale=changepoint_prior_scale,
            mcmc_samples=mcmc_samples,
            interval_width=interval_width,
            uncertainty_samples=uncertainty_samples,
            stan_backend=stan_backend
            )
        ) 
    end

end

prophet_properties = [:add_country_holidays,
                      :add_group_component,
                      :add_regressor,
                      :add_seasonality,
                      :changepoint_prior_scale,
                      :changepoint_range,
                      :changepoints,
                      :changepoints_t,
                      :component_modes,
                      :construct_holiday_dataframe,
                      :country_holidays,
                      :daily_seasonality,
                      :extra_regressors,
                      :fit,
                      :fit_kwargs,
                      :fourier_series,
                      :growth,
                      :history,
                      :history_dates,
                      :holidays,
                      :holidays_prior_scale,
                      :initialize_scales,
                      :interval_width,
                      :linear_growth_init,
                      :logistic_floor,
                      :logistic_growth_init,
                      :make_all_seasonality_features,
                      :make_future_dataframe,
                      :make_holiday_features,
                      :make_seasonality_features,
                      :mcmc_samples,
                      :n_changepoints,
                      :params,
                      :parse_seasonality_args,
                      :percentile,
                      :piecewise_linear,
                      :piecewise_logistic,
                      :plot,
                      :plot_components,
                      :predict,
                      :predict_seasonal_components,
                      :predict_trend,
                      :predict_uncertainty,
                      :predictive_samples,
                      :regressor_column_matrix,
                      :sample_model,
                      :sample_posterior_predictive,
                      :sample_predictive_trend,
                      :seasonalities,
                      :seasonality_mode,
                      :seasonality_prior_scale,
                      :set_auto_seasonalities,
                      :set_changepoints,
                      :setup_dataframe,
                      :specified_changepoints,
                      :stan_backend,
                      :stan_fit,
                      :start,
                      :t_scale,
                      :train_component_cols,
                      :train_holiday_names,
                      :uncertainty_samples,
                      :validate_column_name,
                      :validate_inputs,
                      :weekly_seasonality,
                      :y_scale,
                      :yearly_seasonality]

pyobject_returning_properties = [:changepoints] # TODO: Set to return julia objects

function Base.getproperty(p::Prophet, s::Symbol)
    if s in prophet_properties
        getproperty(p.pyProphet, s)
    else
        getfield(p, s)
    end
end

function add_country_holidays(m::Prophet, country_name::String)
    m.pyProphet.add_country_holidays(country_name)
end

function add_group_component(m::Prophet, components, name, group)
    m.pyProphet.add_group_component(components, name, group)
end

function add_regressor(m::Prophet, name::String, prior_scale=nothing, standarize="auto", mode=nothing)
    m.pyProphet.add_regressor(name, prior_scale, standarize, mode)
end

function add_seasonality(m::Prophet, name::String, period::Float64, fourier_order::Int, prior_scale=nothing, mode=nothing, condition_name=nothing)
    m.pyProphet.add_seasonality(name, period, fourier_order, prior_scale, mode, condition_name)
end

function construct_holiday_dataframe(m::Prophet, dates)
    m.pyProphet.construct_holiday_dataframe(dates)
end

function fit(m::Prophet, df; kwargs...)
    m.pyProphet.fit(df; kwargs...)
end

function initialize_scales(m::Prophet, initialize_scales, df)
    m.pyProphet.initialize_scales(intialize_scales, df)
end

function make_all_seasonality_features(m::Prophet, df)
    m.pyProphet.make_all_seasonality_features(df)
end

function make_future_dataframe(m::Prophet, periods::Int, freq::String="d", include_history::Bool=true)
    m.pyProphet.make_future_dataframe(periods=periods, freq=freq, include_history=include_history)
end

function make_holiday_features(m::Prophet, dates, holidays)
    m.pyProphet.make_holida_features(dates, holidays)
end

function parse_seasonality_args(m::Prophet, name, arg, auto_disable, default_order)
    m.pyProphet.parse_seasonality_args(name, arg, auto_disable, default_order)
end

function plot(m::Prophet, fcst, ax=nothing, uncertainty=true, plot_cap=true, xlabel="ds", ylabel="y", figsize=(10, 6))
    m.pyProphet.plot(fcst, ax, uncertainty, plot_cap, xlabel, ylabel, figsize)
end

function plot_components(m::Prophet, fcst, uncertainty=true, plot_cap=true, weekly_start=0, yearly_start=0, figsize=nothing)
    m.pyProphet.plot_components(fcst, uncertainty, plot_cap, weekly_start, yearly_start, figsize)
end

function predict(m::Prophet, df=nothing)
    m.pyProphet.predict(df)
end

function predict_seasonal_components(m::Prophet, df=nothing)
    m.pyProphet.predict_seasonal_components(df)
end

function predict_trend(m::Prophet, df=nothing)
    m.pyProphet.predict_trend(df)
end

function predict_uncertainty(m::Prophet, df=nothing)
    m.pyProphet.predict_uncertainty(df)
end

function predictive_samples(m::Prophet, df)
    m.pyProphet.predictive_samples(df)
end

function regressor_column_matrix(m::Prophet, seasonal_features, modes)
    m.pyProphet.regressor_column_matrix(seasonal_features, modes)
end

function sample_model(m::Prophet, df, seasonal_features, iteration, s_a, s_m)
    m.pyProphet.sample_model(df, seasonal_features, iteration, s_a, s_m)
end

function sample_posterior_predictive(m::Prophet, df)
    m.pyProphet.sample_posterior_predictive(df)
end

function set_auto_seasonalities(m::Prophet)
    m.pyProphet.set_auto_seasonalities()
end

function set_changepoints(m::Prophet)
    m.pyProphet.set_changepoints()
end

function setup_dataframe(m::Prophet, df, initialize_scales=false)
    m.pyProphet.setup_dataframe(df, initialize_scales)
end

function validate_column_name(m::Prophet, name, check_holidays=true, check_seasonalities=true, check_regressors=true)
    m.pyProphet.validate_column_name(df, name, check_holidays, check_seasonalities, check_regressors)
end

function validate_inputs(m::Prophet)
    m.pyProphet.validate_inputs()
end

function make_seasonality_features(dates, period, series_order, prefix)
    pyfbprophet.Prophet.make_seasonality_features(dates, period, series_order, prefix)
end

function fourier_series(dates, period, series_order)
    pyfbprophet.Prophet.fourier_series(dates, period, series_order)
end

function linear_growth_init(df)
    pyfbprophet.Prophet.linear_growth_init(df)
end

function logistic_growth_init(df)
    pyfbprophet.Prophet.logistic_growth_init(df)
end

function piecewise_linear(t, deltas, k, m, changepoint_ts)
    pyfbprophet.Prophet.piecewise_linear(t, deltas, k, m, changepoint_ts)
end

function piecewise_logistic(t, cap, deltas, k, m, changepoint_ts)
    pyfbprophet.Prophet.piecewise_logistic(t, cap, deltas, k, m, changepoint_ts)
end
