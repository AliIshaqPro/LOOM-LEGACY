#!/bin/bash

# List of roles
ROLES=(
  "ceos"
  "chairmen"
  "board_members"
  "directors"
  "shareholders"
  "investors"
  "cfo"
  "accountants"
  "financial_analysts"
  "hr_managers"
  "recruitment_specialists"
  "training_and_development_officers"
  "sales_managers"
  "marketing_managers"
  "sales_representatives"
  "customer_relations_managers"
  "production_managers"
  "production_planners"
  "shift_supervisors"
  "machine_operators"
  "quality_control_inspectors"
  "r_and_d_managers"
  "textile_technologists"
  "research_scientists"
  "textile_designers"
  "cad_designers"
  "pattern_makers"
  "colorists"
  "it_managers"
  "systems_administrators"
  "software_developers"
  "maintenance_managers"
  "electrical_engineers"
  "mechanical_engineers"
  "maintenance_technicians"
  "procurement_managers"
  "supply_chain_coordinators"
  "purchasing_officers"
  "logistics_managers"
  "warehouse_supervisors"
  "distribution_coordinators"
  "compliance_managers"
  "environmental_specialists"
  "safety_officers"
  "customer_service_managers"
  "order_processors"
  "customer_support_representatives"
  "inventory_controllers"
  "demand_planners"
  "office_managers"
  "administrative_assistants"
  "receptionists"
)

OUTPUT_FILE="routes.txt"

# Create or clear the output file
> $OUTPUT_FILE

# Add routes to the output file
{
  

  for role in "${ROLES[@]}"; do
    echo "  get '${role}/success', to: 'success#show', as: '${role}_success'"
  done

    after_action :expire_user_session
} >> $OUTPUT_FILE

echo "Routes have been written to $OUTPUT_FILE"
