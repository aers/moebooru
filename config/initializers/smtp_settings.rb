ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
    address:              "127.0.0.1",
    port:                 587,
    user_name:            "booru-mailer@sakugabooru.com",
    password:             "FILLME",
    domain:               "sakugabooru.com",
    authentication:       :login,
    enable_starttls_auto: true
}