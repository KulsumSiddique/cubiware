namespace :data do
  desc "generates sample data"
  task generate_sample: :environment do
    message 'generating sample data '
    SampleDataGenerator.new.generate do
      message "."
    end
    message " done\n"
  end

  private

  def message(msg)
    print msg unless ENV['QUIET'].present?
  end
end
