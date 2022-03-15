# send_mail

library(curl)

RFC_message <- "Subject: Howdy from R weekly

Hello R programmer,
Congratulations, you've sent an email."

myUserName <- rstudioapi::askForSecret("Username: ")
myPassword <- rstudioapi::askForSecret("Password: ")

send_mail(mail_from = "mark@niemannross.com",
          mail_rcpt = "someone@null.com",
          message = RFC_message,
          smtp_server = "smtp://mail.niemannross.com",
          username = myUserName,
          password = myPassword,
          use_ssl = "try"
          )

