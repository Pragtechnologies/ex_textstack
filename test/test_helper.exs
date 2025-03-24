ExVCR.Config.cassette_library_dir("test/cassettes")
ExVCR.Config.filter_sensitive_data("api-key: .*", "api-key: [FILTERED]")
ExVCR.Config.filter_sensitive_data("Bearer .*", "Bearer [FILTERED]")
ExUnit.start()
