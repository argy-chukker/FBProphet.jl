function coverage(df, w)
    pyfbprophet.diagnostics.coverage(df, w)
end

function cross_validation(m::Prophet, horizon, period=nothing, initial=nothing)
    pyfbprophet.diagnostics.cross_validation(m.pyProphet, horizon, period, initial)
end

function generate_cutoffs(df, horizon, initial, period)
    pyfbprophet.diagnostics.generate_cutoffs(m.pyProphet, horizon, period, initial)
end

function mae(df, w)
    pyfbprophet.diagnostics.mae(df, w)
end

function mape(df, w)
    pyfbprophet.diagnostics.mape(df, w)
end

function mdape(df, w)
    pyfbprophet.diagnostics.mdape(df, w)
end

function mse(df, w)
    pyfbprophet.diagnostics.mse(df, w)
end

function performance_metrics(df, metrics=nothing, rolling_window=0.1)
    pyfbprophet.diagnostics.performance_metrics(df, metrics, rolling_window)
end

function rmse(df, w)
    pyfbprophet.diagnostics.rmse(df, w)
end

function rolling_mean_by_h(x, h, w, name)
    pyfbprophet.diagnostics.rolling_mean_by_h(x, h, w, name)
end

function rolling_median_by_h(x, h, w, name)
    pyfbprophet.diagnostics.rolling_median_by_h(x, h, w, name)
end

function smape(df, w)
    pyfbprophet.diagnostics.smape(df, w)
end
