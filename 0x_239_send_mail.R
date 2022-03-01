# send_mail

library(curl)

RFC_message <- "Subject: Howdy from R weekly

Hello R programmer,
Congratulations, you've sent an email."

send_mail(mail_from = "mark@niemannross.com",
          mail_rcpt = "someone@null.com",
          message = RFC_message,
          smtp_server = "smtp://smtp.gmail.com",
          username = readline("Username: "),
          password = readline("Password: ")
          )
