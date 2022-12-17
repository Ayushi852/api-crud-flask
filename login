User log in
---
tags:
  - Authentication
parameters:
  - name: body
    description: The body should contain the user login credentials
    in: body
    required: true
    schema:
      type: object
      required:
        - "email"
        - "password"
      properties:
        email:
          type: "email"
          example: "user@gmail.com"
        password:
          type: "string"
          format: password
          example: "********"
responses:
  200:
    description: When a user successfully logs in

  400:
    description: Fails to login due to bad request data

  401:
    description: A user supplies incorrect credentials