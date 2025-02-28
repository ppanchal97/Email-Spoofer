# EmailSpoofer
## Functionality
- Use the checker to see if a domain can be spoofed. The program checks SPF and DMARC records for weak configurations that allow spoofing. Additionally it will alert if the domain has DMARC configuration that sends mail or HTTP requests on failed SPF/DKIM emails.

- Use the spoofer to send a spoofed email from weak domains. Use the checker to identify which domain can be spoofed first.

## Inspired from:
- BishopFox/spoofcheck
- mikechabot/smtp-email-spoofer-py

---

## Checker Usage:
1. Set the domain to be checked in the main function in `checker.py`. E.g. `domain = "invennt.com"`

2. `cd` into the `checker` directory

3. Run using: `./checker.py`

**Domains are spoofable if any of the following conditions are met:**
- Lack of an SPF or DMARC record
- SPF record never specifies `~all` or `-all`
- DMARC policy is set to `p=none` or is nonexistent


## Dependencies
- `dnspython`
- `colorama`
- `py-emailprotection`
- `tldextract`

---
## Spoofer Usage



1. `cd` into the `spoofer` directory.
2. Use the `wizard` to use the step-by-step wizard by executing `python ./spoof.py wizard`

3. Enter the SMTP server information to establish a connection over TLS:

<img src='https://raw.githubusercontent.com/mikechabot/image-assets/master/email-spoofer-py-tls-session.png' alt='logo' aria-label='https://github.com/mikechabot/email-spoofer-py-tls-session' />

4. Optionally provide credentials to login to the SMTP server:

<img src='https://raw.githubusercontent.com/mikechabot/image-assets/master/email-spoofer-py-auth.png' alt='logo' aria-label='https://github.com/mikechabot/email-spoofer-py-auth' />

5. Compose the forged message:

> Load the HTML message body from a file, or compose it within the shell

<img src='https://raw.githubusercontent.com/mikechabot/image-assets/master/email-spoofer-py-compose-msg.png' alt='logo' aria-label='https://github.com/mikechabot/email-spoofer-py-compose-msg' />

6. Send the message:

<img src='https://raw.githubusercontent.com/mikechabot/image-assets/master/email-spoofer-py-send.png' alt='logo' aria-label='https://github.com/mikechabot/email-spoofer-py-send' />

## Result

<img src='https://raw.githubusercontent.com/mikechabot/image-assets/master/email-spoofer-py-result.png' alt='logo' aria-label='https://github.com/mikechabot/email-spoofer-py-result' />

## Dependencies
- `colorama`
