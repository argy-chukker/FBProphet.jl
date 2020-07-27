expected_future_df_tail = Pandas.DataFrame(Dict(:ds => [DateTime("2017-01-15"),
                                                        DateTime("2017-01-16"),
                                                        DateTime("2017-01-17"),
                                                        DateTime("2017-01-18"),
                                                        DateTime("2017-01-19")]),
                                           index=[3265, 3266, 3267, 3268, 3269])

expected_forecast_df_tail = Pandas.DataFrame(Dict(:ds => [DateTime("2017-01-15"),
                                                        DateTime("2017-01-16"),
                                                        DateTime("2017-01-17"),
                                                        DateTime("2017-01-18"),
                                                          DateTime("2017-01-19")],
                                                  :yhat => [8.212942, 8.537993, 8.325428, 8.158059, 8.170046],
                                                  :yhat_lower => [7.463560, 7.790259, 7.52675, 7.433634, 7.431801],
                                                  :yhat_upper => [8.937215, 9.267492, 9.059391, 8.883627, 8.840703]),
                                           index=[3265, 3266, 3267, 3268, 3269])


    
