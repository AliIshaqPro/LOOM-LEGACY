# frozen_string_literal: true

namespace :app do
  desc "Update configs and some other initially generated files (or use just update:configs or update:bin)"
  task update: [ "update:configs", "update:bin", "update:active_storage", "update:upgrade_guide_info" ]

  desc "Apply the template supplied by LOCATION=(/path/to/template) or URL"
  task template: :environment do
    template = ENV["LOCATION"]
    raise "No LOCATION value given. Please set LOCATION either as path to a file or a URL" if template.blank?
    require "rails/generators"
    require "rails/generators/rails/app/app_generator"
    Rails::Generators::AppGenerator.apply_rails_template(template, Rails.root)
  end

  namespace :templates do
    # desc "Copy all the templates from rails to the application directory for customization. Already existing local copies will be overwritten"
    task :copy do
      generators_lib = File.expand_path("../generators", __dir__)
      project_templates = "#{Rails.root}/lib/templates"

      default_templates = { "erb"   => %w{controller mailer scaffold},
                            "rails" => %w{controller helper scaffold_controller} }

      default_templates.each do |type, names|
        local_template_type_dir = File.join(project_templates, type)
        mkdir_p local_template_type_dir, verbose: false

        names.each do |name|
          dst_name = File.join(local_template_type_dir, name)
          src_name = File.join(generators_lib, type, name, "templates")
          cp_r src_name, dst_name, verbose: false
        end
      end
    end
  end

  namespace :update do
    require "rails/app_updater"

    # desc "Update config files from your current rails install"
    task :configs do
      Rails::AppUpdater.invoke_from_app_generator :create_boot_file
      Rails::AppUpdater.invoke_from_app_generator :update_config_files
    end

    # desc "Add new executables to the application bin/ directory"
    task :bin do
      Rails::AppUpdater.invoke_from_app_generator :update_bin_files
    end

    task :active_storage do
      Rails::AppUpdater.invoke_from_app_generator :update_active_storage
    end

    task :upgrade_guide_info do
      Rails::AppUpdater.invoke_from_app_generator :display_upgrade_guide_info
    end
  end
end
