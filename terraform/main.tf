terraform {
  required_providers {
    snowflake = {
      source  = "chanzuckerberg/snowflake"
      version = "0.25.17"
    }
  }

  backend "remote" {
    organization = "nkb"

    workspaces {
      name = "gh-actions-demo"
    }
  }
}

provider "snowflake" {
}

resource "snowflake_database" "DEMO_DB" {
  name    = "DEMO_DB"
  comment = "Dev Database for Snowflake Terraform demo"
}

resource "snowflake_database" "TEST_DB" {
  name    = "TEST_DB"
  comment = "Test Database for Snowflake Terraform demo"
}


resource "snowflake_database" "PROD_DB" {
  name    = "PROD_DB"
  comment = "Prod Database for Snowflake Terraform demo"
}


