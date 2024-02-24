/* Sample Plans */

/* GMXMail 
*/
+!gmxMail<-
    mailer.credentials("jasonagent@gmx.com","myPassw0rd");
    mailer.eMailService(["imap.gmx.com",imaps],["mail.gmx.com",smtpOverTLS]).

/* GMail
    To use the GMail service, you need to configure the APP PASSWORD.
    See more in https://myaccount.google.com/apppasswords
    Also you need enable IMAP conection
    See more in https://mail.google.com/mail/u/0/#settings/fwdandpop
    Informations in https://support.google.com/accounts/answer/185833
*/
+!googleMail <-
    mailer.credentials("AGENT-EMAIL@gmail.com","APP PASSWORD");
    mailer.eMailService(["imap.gmail.com",imaps],["smtp.gmail.com",smtpOverTLS]).

/* YahooMail
    To use the Yahoo service, you need to configure the APP PASSWORD.
    Informations in https://help.yahoo.com/kb/SLN15241.html
    See more in https://login.yahoo.com/myaccount/security/app-password/
*/
+!yahooMail <-
    mailer.credentials("AGENT-EMAIL@gmail.com","APP PASSWORD");
    mailer.eMailService(["imap.mail.yahoo.com",imaps],["smtp.mail.yahoo.com",smtpOverTLS]).

/* FastMail
    To use the FastMail service, you need to configure the APP PASSWORD.
    See more in https://app.fastmail.com/settings/security/integrations
*/
+!fastMail<-
    mailer.credentials("AGENT-EMAIL@fastmail.com","APP PASSWORD");
    mailer.receivingHost("imap.fastmail.com","imaps",993);
    mailer.receivingProperties(false,true,false,null,null);
    mailer.sendingHost("smtp.fastmail.com","smtp",465);
    mailer.sendingProperties(true,true,false,null,null).