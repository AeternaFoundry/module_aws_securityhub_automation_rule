output "securityhub_automation_rules_id" {
  description = "Map of id values across all securityhub_automation_rules, keyed the same as var.securityhub_automation_rules"
  value       = { for k, v in aws_securityhub_automation_rule.securityhub_automation_rules : k => v.id if v.id != null && length(v.id) > 0 }
}
output "securityhub_automation_rules_actions" {
  description = "Map of actions values across all securityhub_automation_rules, keyed the same as var.securityhub_automation_rules"
  value       = { for k, v in aws_securityhub_automation_rule.securityhub_automation_rules : k => v.actions if v.actions != null && length(v.actions) > 0 }
}
output "securityhub_automation_rules_arn" {
  description = "Map of arn values across all securityhub_automation_rules, keyed the same as var.securityhub_automation_rules"
  value       = { for k, v in aws_securityhub_automation_rule.securityhub_automation_rules : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "securityhub_automation_rules_criteria" {
  description = "Map of criteria values across all securityhub_automation_rules, keyed the same as var.securityhub_automation_rules"
  value       = { for k, v in aws_securityhub_automation_rule.securityhub_automation_rules : k => v.criteria if v.criteria != null && length(v.criteria) > 0 }
}
output "securityhub_automation_rules_description" {
  description = "Map of description values across all securityhub_automation_rules, keyed the same as var.securityhub_automation_rules"
  value       = { for k, v in aws_securityhub_automation_rule.securityhub_automation_rules : k => v.description if v.description != null && length(v.description) > 0 }
}
output "securityhub_automation_rules_is_terminal" {
  description = "Map of is_terminal values across all securityhub_automation_rules, keyed the same as var.securityhub_automation_rules"
  value       = { for k, v in aws_securityhub_automation_rule.securityhub_automation_rules : k => v.is_terminal if v.is_terminal != null }
}
output "securityhub_automation_rules_region" {
  description = "Map of region values across all securityhub_automation_rules, keyed the same as var.securityhub_automation_rules"
  value       = { for k, v in aws_securityhub_automation_rule.securityhub_automation_rules : k => v.region if v.region != null && length(v.region) > 0 }
}
output "securityhub_automation_rules_rule_name" {
  description = "Map of rule_name values across all securityhub_automation_rules, keyed the same as var.securityhub_automation_rules"
  value       = { for k, v in aws_securityhub_automation_rule.securityhub_automation_rules : k => v.rule_name if v.rule_name != null && length(v.rule_name) > 0 }
}
output "securityhub_automation_rules_rule_order" {
  description = "Map of rule_order values across all securityhub_automation_rules, keyed the same as var.securityhub_automation_rules"
  value       = { for k, v in aws_securityhub_automation_rule.securityhub_automation_rules : k => v.rule_order if v.rule_order != null }
}
output "securityhub_automation_rules_rule_status" {
  description = "Map of rule_status values across all securityhub_automation_rules, keyed the same as var.securityhub_automation_rules"
  value       = { for k, v in aws_securityhub_automation_rule.securityhub_automation_rules : k => v.rule_status if v.rule_status != null && length(v.rule_status) > 0 }
}
output "securityhub_automation_rules_tags" {
  description = "Map of tags values across all securityhub_automation_rules, keyed the same as var.securityhub_automation_rules"
  value       = { for k, v in aws_securityhub_automation_rule.securityhub_automation_rules : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "securityhub_automation_rules_tags_all" {
  description = "Map of tags_all values across all securityhub_automation_rules, keyed the same as var.securityhub_automation_rules"
  value       = { for k, v in aws_securityhub_automation_rule.securityhub_automation_rules : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}

