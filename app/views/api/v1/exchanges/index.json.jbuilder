  json.projects @projects, partial: 'api/v1/projects/show', as: :project
  json.total_count @projects.respond_to?(:total_entries) ?
  @projects.total_entries : @projects.to_a.count
