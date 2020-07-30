function pyhelp(m::Prophet)
    site.builtins.help(pyfbprophet.Prophet)
end

function pyhelp(f::Function)
    if f == FBProphet.add_country_holidays
        site.builtins.help(pyfbprophet.Prophet.add_country_holidays)
    elseif f == FBProphet.add_group_component
        site.builtins.help(pyfbprophet.Prophet.add_group_component)
    elseif f == FBProphet.add_regressor
        site.builtins.help(pyfbprophet.Prophet.add_regressor)
    elseif f == FBProphet.add_seasonality
        site.builtins.help(pyfbprophet.Prophet.add_seasonality)
    elseif f == FBProphet.construct_holiday_dataframe
        site.builtins.help(pyfbprophet.Prophet.construct_holiday_dataframe)
    elseif f == FBProphet.fit
        site.builtins.help(pyfbprophet.Prophet.fit)
    elseif f == FBProphet.initialize_scales
        site.builtins.help(pyfbprophet.Prophet.initialize_scales)
    elseif f == FBProphet.make_all_seasonality_features
        site.builtins.help(pyfbprophet.Prophet.make_all_seasonality_features)
    elseif f == FBProphet.make_future_dataframe
	site.builtins.help(pyfbprophet.Prophet.make_future_dataframe)
    elseif f == FBProphet.make_holiday_features
	site.builtins.help(pyfbprophet.Prophet.make_holiday_features)
    elseif f == FBProphet.parse_seasonality_args
	site.builtins.help(pyfbprophet.Prophet.parse_seasonality_args)
    elseif f == FBProphet.predict
	site.builtins.help(pyfbprophet.Prophet.predict)
    elseif f == FBProphet.predict_seasonal_components
	site.builtins.help(pyfbprophet.Prophet.predict_seasonal_components)
    elseif f == FBProphet.predict_trend
	site.builtins.help(pyfbprophet.Prophet.predict_trend)
    elseif f == FBProphet.predict_uncertainty
	site.builtins.help(pyfbprophet.Prophet.predict_uncertainty)
    elseif f == FBProphet.predictive_samples
	site.builtins.help(pyfbprophet.Prophet.predictive_samples)
    elseif f == FBProphet.regressor_column_matrix
	site.builtins.help(pyfbprophet.Prophet.regressor_column_matrix)
    elseif f == FBProphet.sample_model
	site.builtins.help(pyfbprophet.Prophet.sample_model)
    elseif f == FBProphet.sample_posterior_predictive
	site.builtins.help(pyfbprophet.Prophet.sample_posterior_predictive)
    elseif f == FBProphet.set_auto_seasonalities
	site.builtins.help(pyfbprophet.Prophet.set_auto_seasonalities)
    elseif f == FBProphet.set_changepoints
	site.builtins.help(pyfbprophet.Prophet.set_changepoints)
    elseif f == FBProphet.setup_dataframe
	site.builtins.help(pyfbprophet.Prophet.setup_dataframe)
    elseif f == FBProphet.validate_column_name
	site.builtins.help(pyfbprophet.Prophet.validate_column_name)
    elseif f == FBProphet.validate_inputs
	site.builtins.help(pyfbprophet.Prophet.validate_inputs)
    elseif f == FBProphet.make_seasonality_features
	site.builtins.help(pyfbprophet.Prophet.make_seasonality_features)
    elseif f == FBProphet.fourier_series
	site.builtins.help(pyfbprophet.Prophet.fourier_series)
    elseif f == FBProphet.linear_growth_init
	site.builtins.help(pyfbprophet.Prophet.linear_growth_init)
    elseif f == FBProphet.logistic_growth_init
	site.builtins.help(pyfbprophet.Prophet.logistic_growth_init)
    elseif f == FBProphet.piecewise_linear
	site.builtins.help(pyfbprophet.Prophet.piecewise_linear)
    elseif f == FBProphet.piecewise_logistic
	site.builtins.help(pyfbprophet.Prophet.piecewise_logistic)
    elseif f == FBProphet.coverage
	site.builtins.help(pyfbprophet.Prophet.coverage)
    elseif f == FBProphet.cross_validation
	site.builtins.help(pyfbprophet.diagnostics.cross_validation)
    elseif f == FBProphet.generate_cutoffs
	site.builtins.help(pyfbprophet.diagnostics.generate_cutoffs)
    elseif f == FBProphet.mae
	site.builtins.help(pyfbprophet.diagnostics.mae)
    elseif f == FBProphet.mape
	site.builtins.help(pyfbprophet.diagnostics.mape)
    elseif f == FBProphet.mdape
	site.builtins.help(pyfbprophet.diagnostics.mdape)
    elseif f == FBProphet.mse
	site.builtins.help(pyfbprophet.diagnostics.mse)
    elseif f == FBProphet.performance_metrics
	site.builtins.help(pyfbprophet.diagnostics.performance_metrics)
    elseif f == FBProphet.rmse
        site.builtins.help(pyfbprophet.diagnostics.rmse)
    elseif f == FBProphet.rolling_mean_by_h
	site.builtins.help(pyfbprophet.diagnostics.rolling_mean_by_h)
    elseif f == FBProphet.rolling_median_by_h
	site.builtins.help(pyfbprophet.diagnostics.rolling_median_by_h)
    elseif f == FBProphet.smape
        site.builtins.help(pyfbprophet.diagnostics.smape)
    end
end
