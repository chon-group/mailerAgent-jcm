-!mailerEMailConf(Server,Account,Pass) <- 
    .print("Sorry! I don't have pre-configurations for ",Server,"  ---  Try using Mailer Agent INTERNAL ACTIONS! \n        See more in: https://github.com/chon-group/mailerAgent-jcm/tree/main/doc#readme");
.

// To use the FastMail service, you need to configure the APP PASSWORD.
// See more in https://app.fastmail.com/settings/security/integrations
+!mailerEMailConf(Server,Account,Pass): Server = "fastmail.com" <-
    mailer.receivingHost("imap.fastmail.com","imaps",993);
    mailer.receivingProperties(false,true,false,null,null);
    mailer.sendingHost("smtp.fastmail.com","smtp",465);
    mailer.sendingProperties(true,true,false,null,null);
    !mailerSetCredentials(Server,Account,Pass).

// To use the GMail service, you need to configure the APP PASSWORD.
// See more in https://myaccount.google.com/apppasswords
// Also you need enable IMAP conection
// See more in https://mail.google.com/mail/u/0/#settings/fwdandpop
// Informations in https://support.google.com/accounts/answer/185833
+!mailerEMailConf(Server,Account,Pass): Server = "gmail.com" <-
    mailer.receivingHost("imap.gmail.com","imaps",993);
    mailer.receivingProperties(false,true,false,null,null);
    mailer.sendingHost("smtp.gmail.com","smtp",465);
    mailer.sendingProperties(true,true,false,null,null);
    !mailerSetCredentials(Server,Account,Pass).


+!mailerEMailConf(Server,Account,Pass): Server = "gmx.com" <-
    mailer.receivingHost("imap.gmx.com","imaps",993);
    mailer.receivingProperties(false,true,false,null,null);
    mailer.sendingHost("mail.gmx.com","smtp",465);
    mailer.sendingProperties(true,true,false,null,null);
    !mailerSetCredentials(Server,Account,Pass).


// To use the Yahoo service, you need to configure the APP PASSWORD.
// Informations in https://help.yahoo.com/kb/SLN15241.html
// See more in https://login.yahoo.com/myaccount/security/app-password/
+!mailerEMailConf(Server,Account,Pass): Server = "yahoo.com" <-
    mailer.receivingHost("imap.mail.yahoo.com","imaps",993);
    mailer.receivingProperties(false,true,false,null,null);
    mailer.sendingHost("smtp.mail.yahoo.com","smtp",465);
    mailer.sendingProperties(true,true,false,null,null);
    !mailerSetCredentials(Server,Account,Pass).

+!mailerSetCredentials(Server,Account,Pass) <-
    .concat(Account,"@",Server,Email);
    .print("Setting e-mail configurations for ",Email,"!");
    mailer.credentials(Email,Pass).