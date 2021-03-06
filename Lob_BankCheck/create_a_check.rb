
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

# Example Response
#
#
# {
#   "id": "chk_534f10783683daa0",
#   "description": "Demo Check",
#   "metadata": {},
#   "check_number": 10062,
#   "memo": "rent",
#   "amount": 22.50,
#   "message": null,
#   "url": "https://s3-us-west-2.amazonaws.com/assets.lob.com/chk_534f10783683daa0.pdf?AWSAccessKeyId=AKIAJVT3IPSNH662QU6A&Expires=1449430428&Signature=j%2FTzUuHJkrlbAJZGNpCm3xfxgmE%3D",
#   "check_bottom_template_id": null,
#   "attachment_template_id": null,
#   "check_bottom_template_version_id": null,
#   "attachment_template_version_id": null,
#   "to": {
#     "id": "adr_f3fa41cd6cb2a875",
#     "description": null,
#     "name": "Harry Zhang",
#     "company": null,
#     "phone": null,
#     "email": null,
#     "address_line1": "123 Test Street",
#     "address_line2": null,
#     "address_city": "Mountain View",
#     "address_state": "CA",
#     "address_zip": "94041",
#     "address_country": "United States",
#     "metadata": {},
#     "date_created": "2015-11-06T19:33:47.916Z",
#     "date_modified": "2015-11-06T19:33:47.916Z",
#     "deleted": true,
#     "object": "address"
#   },
#   "from": {
#     "id": "adr_eae4448bb64c07f0",
#     "description": null,
#     "name": "LEORE AVIDAR",
#     "company": null,
#     "phone": null,
#     "email": null,
#     "address_line1": "123 TEST STREET.",
#     "address_line2": "APT 155",
#     "address_city": "SUNNYVALE",
#     "address_state": "CA",
#     "address_zip": "94085",
#     "address_country": "United States",
#     "metadata": {},
#     "date_created": "2013-10-06T01:03:56.000Z",
