

# Example check Request with Local Files
#
# @lob.checks.create(
#   description: "Demo Check",
#   bank_account: "bank_8cad8df5354d33f",


#create
@lob.bank_accounts.create(
  description: "Test Bank Account",
  routing_number: "322271627",
  account_number: "123456789",
  signatory: "John Doe",
  account_type: "company"
)

# retrieve
@lob.bank_accounts.find("bank_8cad8df5354d33f")

# delete
@lob.bank_accounts.destroy("bank_3e64d9904356b20")

# verify
@lob.bank_accounts.verify("bank_dfceb4a2a05b57e", amounts: [25, 63])

# list all
@lob.bank_accounts.list(limit: 2, offset: 0)
