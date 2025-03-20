terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }
  }
}

# Configure the random provider
provider "random" {}

# Generate a random pet name
resource "random_pet" "pet" {
  length = 2  # This will generate a name with two words
}

# Output the generated pet name
output "pet_name" {
  value = random_pet.pet.id
  description = "The generated pet name"
} 