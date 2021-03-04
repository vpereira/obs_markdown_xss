namespace :xss do
  desc 'import XSS Vectors'
  task import: :environment do
    Dir.glob(File.join(Rails.root,"xss_vectors","*.txt")).each do |filename|
      File.open(filename) do |f|
        f.each_line do |line|
          XSSVector.create(vector: line)
        end
      end
    end
  end
end
