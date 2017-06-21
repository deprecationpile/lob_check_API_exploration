
# https://lob.com/docs/ruby#checks_create
### List of Requests for Check Creation
### Example Request with HTML string
### Example Request with saved HTML template
### Example Request with Remote Files
### Example Request with Local Files
###

# Example Request with Local Files

@lob.checks.create(
  description: "Demo Check",
  bank_account: "bank_8cad8df5354d33f",
  to: "adr_d3489cd64c791ab5",
  to: {
    name: "Harry Zhang",
    address_line1: "123 Test Street",
    address_city: "Mountain View",
    address_state: "CA",
    address_country: "US",
    address_zip: "94041"
  },
  from: "adr_eae4448bb64c07f0",
  amount: 22.50,
  memo: "rent",
  logo: File.new("/path/to/your/logo.png"),
  check_bottom: File.new("/path/to/your/file.pdf")
)

