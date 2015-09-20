namespace :load do
  task :defaults do
    set :revision_roles, -> { :app }
    set :revision_yaml_file, -> { "config/settings.local.yml" }
  end
end

namespace :revision do
  desc 'Write current revision to yaml'
  task :write_yaml do
    on roles(fetch(:revision_roles)) do
      within release_path do
        execute :echo, "'revision: #{fetch :current_revision}' > #{fetch(:revision_yaml_file)}"
      end
    end
  end

  before 'deploy:updated', 'revision:write_yaml'
end
