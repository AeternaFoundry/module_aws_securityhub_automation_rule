variable "securityhub_automation_rules" {
  description = <<EOT
Map of securityhub_automation_rules, attributes below
Required:
    - description
    - rule_name
    - rule_order
Optional:
    - is_terminal
    - region
    - rule_status
    - tags
    - actions (block):
        - finding_fields_update (optional, block):
            - confidence (optional)
            - criticality (optional)
            - note (optional, block):
                - text (required)
                - updated_by (required)
            - related_findings (optional, block):
                - id (required)
                - product_arn (required)
            - severity (optional, block):
                - label (optional)
                - product (optional)
            - types (optional)
            - user_defined_fields (optional)
            - verification_state (optional)
            - workflow (optional, block):
                - status (optional)
        - type (optional)
    - criteria (block):
        - aws_account_id (optional, block):
            - comparison (required)
            - value (required)
        - aws_account_name (optional, block):
            - comparison (required)
            - value (required)
        - company_name (optional, block):
            - comparison (required)
            - value (required)
        - compliance_associated_standards_id (optional, block):
            - comparison (required)
            - value (required)
        - compliance_security_control_id (optional, block):
            - comparison (required)
            - value (required)
        - compliance_status (optional, block):
            - comparison (required)
            - value (required)
        - confidence (optional, block):
            - eq (optional)
            - gt (optional)
            - gte (optional)
            - lt (optional)
            - lte (optional)
        - created_at (optional, block):
            - date_range (optional, block):
                - unit (required)
                - value (required)
            - end (optional)
            - start (optional)
        - criticality (optional, block):
            - eq (optional)
            - gt (optional)
            - gte (optional)
            - lt (optional)
            - lte (optional)
        - description (optional, block):
            - comparison (required)
            - value (required)
        - first_observed_at (optional, block):
            - date_range (optional, block):
                - unit (required)
                - value (required)
            - end (optional)
            - start (optional)
        - generator_id (optional, block):
            - comparison (required)
            - value (required)
        - id (optional, block):
            - comparison (required)
            - value (required)
        - last_observed_at (optional, block):
            - date_range (optional, block):
                - unit (required)
                - value (required)
            - end (optional)
            - start (optional)
        - note_text (optional, block):
            - comparison (required)
            - value (required)
        - note_updated_at (optional, block):
            - date_range (optional, block):
                - unit (required)
                - value (required)
            - end (optional)
            - start (optional)
        - note_updated_by (optional, block):
            - comparison (required)
            - value (required)
        - product_arn (optional, block):
            - comparison (required)
            - value (required)
        - product_name (optional, block):
            - comparison (required)
            - value (required)
        - record_state (optional, block):
            - comparison (required)
            - value (required)
        - related_findings_id (optional, block):
            - comparison (required)
            - value (required)
        - related_findings_product_arn (optional, block):
            - comparison (required)
            - value (required)
        - resource_application_arn (optional, block):
            - comparison (required)
            - value (required)
        - resource_application_name (optional, block):
            - comparison (required)
            - value (required)
        - resource_details_other (optional, block):
            - comparison (required)
            - key (required)
            - value (required)
        - resource_id (optional, block):
            - comparison (required)
            - value (required)
        - resource_partition (optional, block):
            - comparison (required)
            - value (required)
        - resource_region (optional, block):
            - comparison (required)
            - value (required)
        - resource_tags (optional, block):
            - comparison (required)
            - key (required)
            - value (required)
        - resource_type (optional, block):
            - comparison (required)
            - value (required)
        - severity_label (optional, block):
            - comparison (required)
            - value (required)
        - source_url (optional, block):
            - comparison (required)
            - value (required)
        - title (optional, block):
            - comparison (required)
            - value (required)
        - type (optional, block):
            - comparison (required)
            - value (required)
        - updated_at (optional, block):
            - date_range (optional, block):
                - unit (required)
                - value (required)
            - end (optional)
            - start (optional)
        - user_defined_fields (optional, block):
            - comparison (required)
            - key (required)
            - value (required)
        - verification_state (optional, block):
            - comparison (required)
            - value (required)
        - workflow_status (optional, block):
            - comparison (required)
            - value (required)
EOT

  type = map(object({
    description = string
    rule_name   = string
    rule_order  = number
    is_terminal = optional(bool)
    region      = optional(string)
    rule_status = optional(string)
    tags        = optional(map(string))
    actions = optional(list(object({
      finding_fields_update = optional(list(object({
        confidence  = optional(number)
        criticality = optional(number)
        note = optional(list(object({
          text       = string
          updated_by = string
        })))
        related_findings = optional(list(object({
          id          = string
          product_arn = string
        })))
        severity = optional(list(object({
          label   = optional(string)
          product = optional(number)
        })))
        types               = optional(list(string))
        user_defined_fields = optional(map(string))
        verification_state  = optional(string)
        workflow = optional(list(object({
          status = optional(string)
        })))
      })))
      type = optional(string)
    })))
    criteria = optional(list(object({
      aws_account_id = optional(list(object({
        comparison = string
        value      = string
      })))
      aws_account_name = optional(list(object({
        comparison = string
        value      = string
      })))
      company_name = optional(list(object({
        comparison = string
        value      = string
      })))
      compliance_associated_standards_id = optional(list(object({
        comparison = string
        value      = string
      })))
      compliance_security_control_id = optional(list(object({
        comparison = string
        value      = string
      })))
      compliance_status = optional(list(object({
        comparison = string
        value      = string
      })))
      confidence = optional(list(object({
        eq  = optional(number)
        gt  = optional(number)
        gte = optional(number)
        lt  = optional(number)
        lte = optional(number)
      })))
      created_at = optional(list(object({
        date_range = optional(list(object({
          unit  = string
          value = number
        })))
        end   = optional(string)
        start = optional(string)
      })))
      criticality = optional(list(object({
        eq  = optional(number)
        gt  = optional(number)
        gte = optional(number)
        lt  = optional(number)
        lte = optional(number)
      })))
      description = optional(list(object({
        comparison = string
        value      = string
      })))
      first_observed_at = optional(list(object({
        date_range = optional(list(object({
          unit  = string
          value = number
        })))
        end   = optional(string)
        start = optional(string)
      })))
      generator_id = optional(list(object({
        comparison = string
        value      = string
      })))
      id = optional(list(object({
        comparison = string
        value      = string
      })))
      last_observed_at = optional(list(object({
        date_range = optional(list(object({
          unit  = string
          value = number
        })))
        end   = optional(string)
        start = optional(string)
      })))
      note_text = optional(list(object({
        comparison = string
        value      = string
      })))
      note_updated_at = optional(list(object({
        date_range = optional(list(object({
          unit  = string
          value = number
        })))
        end   = optional(string)
        start = optional(string)
      })))
      note_updated_by = optional(list(object({
        comparison = string
        value      = string
      })))
      product_arn = optional(list(object({
        comparison = string
        value      = string
      })))
      product_name = optional(list(object({
        comparison = string
        value      = string
      })))
      record_state = optional(list(object({
        comparison = string
        value      = string
      })))
      related_findings_id = optional(list(object({
        comparison = string
        value      = string
      })))
      related_findings_product_arn = optional(list(object({
        comparison = string
        value      = string
      })))
      resource_application_arn = optional(list(object({
        comparison = string
        value      = string
      })))
      resource_application_name = optional(list(object({
        comparison = string
        value      = string
      })))
      resource_details_other = optional(list(object({
        comparison = string
        key        = string
        value      = string
      })))
      resource_id = optional(list(object({
        comparison = string
        value      = string
      })))
      resource_partition = optional(list(object({
        comparison = string
        value      = string
      })))
      resource_region = optional(list(object({
        comparison = string
        value      = string
      })))
      resource_tags = optional(list(object({
        comparison = string
        key        = string
        value      = string
      })))
      resource_type = optional(list(object({
        comparison = string
        value      = string
      })))
      severity_label = optional(list(object({
        comparison = string
        value      = string
      })))
      source_url = optional(list(object({
        comparison = string
        value      = string
      })))
      title = optional(list(object({
        comparison = string
        value      = string
      })))
      type = optional(list(object({
        comparison = string
        value      = string
      })))
      updated_at = optional(list(object({
        date_range = optional(list(object({
          unit  = string
          value = number
        })))
        end   = optional(string)
        start = optional(string)
      })))
      user_defined_fields = optional(list(object({
        comparison = string
        key        = string
        value      = string
      })))
      verification_state = optional(list(object({
        comparison = string
        value      = string
      })))
      workflow_status = optional(list(object({
        comparison = string
        value      = string
      })))
    })))
  }))
}

