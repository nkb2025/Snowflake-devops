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

resource "snowflake_database" "demo_tfm_db" {
  name    = "DEMO_DB"
  comment = "Dev Database for Snowflake Terraform demo"
}




resource "snowflake_database" "test_tfm_db" {
  name    = "TEST_DB"
  comment = "Test Database for Snowflake Terraform demo"
}


resource "snowflake_database" "prod_tfm_db" {
  name    = "PROD_DB"
  comment = "Prod Database for Snowflake Terraform demo"
}


