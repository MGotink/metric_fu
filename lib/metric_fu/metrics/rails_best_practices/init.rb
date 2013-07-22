module MetricFu
  class MetricRailsBestPractices < Metric

    def metric_name
      :rails_best_practices
    end

    def run_options
      {}
    end

    def has_graph?
      true
    end

    def enable
      if MetricFu.configuration.supports_ripper?
        super if MetricFu.configuration.rails?
      else
        MetricFu.configuration.mf_debug("Rails Best Practices is only available in MRI. It requires ripper")
      end
    end

  end
end
