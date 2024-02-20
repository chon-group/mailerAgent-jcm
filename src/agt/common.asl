-!setEMailConf(Server,Account,Pass) <- .print("Without configurations for ",Server).

+!setEMailConf(Server,Account,Pass): Server = gmx <-
    .print("Setting e-mail configurations for ",Account," in GMX.com!");
    mailer.receivingHost("imap.gmx.com","imaps",993);
    mailer.receivingProperties(false,true,false,null,null);
    mailer.sendingHost("mail.gmx.com","smtp",465);
    mailer.sendingProperties(true,true,false,null,null);
    mailer.credentials(Account,Pass);
.

+!setEMailConf(Server,Account,Pass): Server = fastmail <-
    // To use the FastMail service, you need to configure the APP PASSWORD.
    // See more in https://app.fastmail.com/settings/security/integrations
    .print("Setting e-mail configurations for ",Account," in FastMail.com!");
    mailer.receivingHost("imap.fastmail.com","imaps",993);
    mailer.receivingProperties(false,true,false,null,null);
    mailer.sendingHost("smtp.fastmail.com","smtp",465);
    mailer.sendingProperties(true,true,false,null,null);
    mailer.credentials(Account,Pass);
.

+!setEMailConf(Server,Account,Pass): Server = gmail <-
    // To use the GMail service, you need to configure the APP PASSWORD.
    // See more in https://myaccount.google.com/apppasswords
    // Also you need enable IMAP conection
    // See more in https://mail.google.com/mail/u/0/#settings/fwdandpop
    // Informations in https://support.google.com/accounts/answer/185833
    .print("Setting e-mail configurations for ",Account," in Gmail.com!");
    mailer.receivingHost("imap.gmail.com","imaps",993);
    mailer.receivingProperties(false,true,false,null,null);
    mailer.sendingHost("smtp.gmail.com","smtp",465);
    mailer.sendingProperties(true,true,false,null,null);
    mailer.credentials(Account,Pass);
.

+!setEMailConf(Server,Account,Pass): Server = yahoo <-
    // To use the Yahoo service, you need to configure the APP PASSWORD.
    // Informations in https://help.yahoo.com/kb/SLN15241.html
    // See more in https://login.yahoo.com/myaccount/security/app-password/
    .print("Setting e-mail configurations for ",Account," in Yahoo.com!");
    mailer.receivingHost("imap.mail.yahoo.com","imaps",993);
    mailer.receivingProperties(false,true,false,null,null);
    mailer.sendingHost("smtp.mail.yahoo.com","smtp",465);
    mailer.sendingProperties(true,true,false,null,null);
    mailer.credentials(Account,Pass);
.

