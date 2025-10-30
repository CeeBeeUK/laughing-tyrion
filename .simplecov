SimpleCov.start 'rails' do
  add_filter 'app/mailers'
  add_filter 'app/helpers'
  add_filter 'app/jobs'

  enable_coverage :branch
  minimum_coverage line: 100, branch: 100
  refuse_coverage_drop :line, :branch
end
