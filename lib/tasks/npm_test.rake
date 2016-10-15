namespace :npm do
  desc 'Run npm test'
  task :test do
    puts `npm test`
  end
end

Rake::Task[:default].enhance do
  Rake::Task['npm:test'].invoke
end
