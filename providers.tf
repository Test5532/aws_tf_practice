terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

// = (Equal to) → Specifies an exact version (e.g., = 5.91.0 means only that version will be used).
// ~> (Pessimistic Constraint Operator) → Allows patch and minor updates but restricts major versions like 5.91.1 or 5.92.0 but not 6.0.

