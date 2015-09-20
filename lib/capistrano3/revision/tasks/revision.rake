namespace :load do
  task :defaults do
    set :revision_roles, -> { :app }
    set :revision_file, -> { "config/settings.local.yml" }
  end
end

namespace :revision do
  desc 'Write yaml current revision'
  task :write_yml do
    on roles(fetch(:revision_roles)) do
      within release_path do
        execute :echo, "'revision: #{fetch :current_revision}' > #{fetch(:revision_roles)}"
      end
    end
  end

  before 'deploy:updated', 'revision:write_yml'
end
