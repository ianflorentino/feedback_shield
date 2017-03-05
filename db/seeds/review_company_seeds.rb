REVIEW_SITES = YAML.load_file("#{Rails.root}/config/data/review_sites.yml")

REVIEW_SITES['sites'].each do |rs|
  ReviewCompany.create(name: rs['name'], example: rs['example'])
end
