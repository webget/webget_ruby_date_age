Gem::Specification.new do |s|

  s.name              = "webget_ruby_date_age"
  s.summary           = "WebGet.com Ruby Date#age method to calculate an age in years"
  s.version           = "1.1.2"
  s.author            = "WebGet"
  s.email             = "webget@webget.com"
  s.homepage          = "http://webget.com/"
  s.signing_key       = '/home/webget/keys/certs/webget.com.rsa.private.key.and.certificate.pem'
  s.cert_chain        = ['/home/webget/keys/certs/webget.pem']

  s.platform          = Gem::Platform::RUBY
  s.require_path      = 'lib'
  s.has_rdoc          = true
  s.files             = ['lib/date_age.rb']
  s.test_files        = ['test/unit/date_age_test.rb']

end
