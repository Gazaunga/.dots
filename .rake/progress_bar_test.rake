namespace :progress_bar_test do

  desc "Testing progress bar"

  task :start => :environment do
      items = (1..1000).to_a
      progress_bar = ProgressBar.new(items.size)
      items.each do |item|
        item.to_s ## Call a real method here, example: `item.update(foo: 'bar')`
        progress_bar.increment
      end
  end
end
