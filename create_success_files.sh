# ROLES=(
#   "ceos"
#   "chairmen"
#   "board_members"
#   "directors"
#   "shareholders"
#   "investors"
#   "cfo"
#   "accountants"
#   "financial_analysts"
#   "hr_managers"
#   "recruitment_specialists"
#   "training_and_development_officers"
#   "sales_managers"
#   "marketing_managers"
#   "sales_representatives"
#   "customer_relations_managers"
#   "production_managers"
#   "production_planners"
#   "shift_supervisors"
#   "machine_operators"
#   "quality_control_inspectors"
#   "r_and_d_managers"
#   "textile_technologists"
#   "research_scientists"
#   "textile_designers"
#   "cad_designers"
#   "pattern_makers"
#   "colorists"
#   "it_managers"
#   "systems_administrators"
#   "software_developers"
#   "maintenance_managers"
#   "electrical_engineers"
#   "mechanical_engineers"
#   "maintenance_technicians"
#   "procurement_managers"
#   "supply_chain_coordinators"
#   "purchasing_officers"
#   "logistics_managers"
#   "warehouse_supervisors"
#   "distribution_coordinators"
#   "compliance_managers"
#   "environmental_specialists"
#   "safety_officers"
#   "customer_service_managers"
#   "order_processors"
#   "customer_support_representatives"
#   "inventory_controllers"
#   "demand_planners"
#   "office_managers"
#   "administrative_assistants"
#   "receptionists"
# )

# BASE_DIR="/home/ali-ishaq/LOOM-LEGACY/app/views/dashboards"

# # Function to convert role name to singular form
# singularize() {
#   local role=$1
#   case "$role" in
#     "ceos") echo "ceo" ;;
#     "chairmen") echo "chairman" ;;
#     "board_members") echo "board_member" ;;
#     "directors") echo "director" ;;
#     "shareholders") echo "shareholder" ;;
#     "investors") echo "investor" ;;
#     "accountants") echo "accountant" ;;
#     "financial_analysts") echo "financial_analyst" ;;
#     "hr_managers") echo "hr_manager" ;;
#     "recruitment_specialists") echo "recruitment_specialist" ;;
#     "training_and_development_officers") echo "training_and_development_officer" ;;
#     "sales_managers") echo "sales_manager" ;;
#     "marketing_managers") echo "marketing_manager" ;;
#     "sales_representatives") echo "sales_representative" ;;
#     "customer_relations_managers") echo "customer_relations_manager" ;;
#     "production_managers") echo "production_manager" ;;
#     "production_planners") echo "production_planner" ;;
#     "shift_supervisors") echo "shift_supervisor" ;;
#     "machine_operators") echo "machine_operator" ;;
#     "quality_control_inspectors") echo "quality_control_inspector" ;;
#     "r_and_d_managers") echo "r_and_d_manager" ;;
#     "textile_technologists") echo "textile_technologist" ;;
#     "research_scientists") echo "research_scientist" ;;
#     "textile_designers") echo "textile_designer" ;;
#     "cad_designers") echo "cad_designer" ;;
#     "pattern_makers") echo "pattern_maker" ;;
#     "colorists") echo "colorist" ;;
#     "it_managers") echo "it_manager" ;;
#     "systems_administrators") echo "systems_administrator" ;;
#     "software_developers") echo "software_developer" ;;
#     "maintenance_managers") echo "maintenance_manager" ;;
#     "electrical_engineers") echo "electrical_engineer" ;;
#     "mechanical_engineers") echo "mechanical_engineer" ;;
#     "maintenance_technicians") echo "maintenance_technician" ;;
#     "procurement_managers") echo "procurement_manager" ;;
#     "supply_chain_coordinators") echo "supply_chain_coordinator" ;;
#     "purchasing_officers") echo "purchasing_officer" ;;
#     "logistics_managers") echo "logistics_manager" ;;
#     "warehouse_supervisors") echo "warehouse_supervisor" ;;
#     "distribution_coordinators") echo "distribution_coordinator" ;;
#     "compliance_managers") echo "compliance_manager" ;;
#     "environmental_specialists") echo "environmental_specialist" ;;
#     "safety_officers") echo "safety_officer" ;;
#     "customer_service_managers") echo "customer_service_manager" ;;
#     "order_processors") echo "order_processor" ;;
#     "customer_support_representatives") echo "customer_support_representative" ;;
#     "inventory_controllers") echo "inventory_controller" ;;
#     "demand_planners") echo "demand_planner" ;;
#     "office_managers") echo "office_manager" ;;
#     "administrative_assistants") echo "administrative_assistant" ;;
#     "receptionists") echo "receptionist" ;;
#     *) echo "$role" ;;
#   esac
# }

# for role in "${ROLES[@]}"; do
#   singular_role=$(singularize "$role")
#   display_role=$(echo "$role" | tr '_' ' ' | sed 's/\b\(.\)/\u\1/g')

#   # Create the show page file
#   cat <<EOF > "${BASE_DIR}/${singular_role}.html.erb"
# <h1> HELLO I AM ${display_role} AND THIS IS A DASHBOARD OF ${display_role}</h1>

# <!DOCTYPE html>
# <html lang="en">
# <head>
#     <meta charset="UTF-8">
#     <meta name="viewport" content="width=device-width, initial-scale=1.0">
#     <title>KPI Dashboard</title>
#     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
#     <link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css" rel="stylesheet">
#     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
#     <style>
    
#     body {
#     font-family: Arial, sans-serif;
#     background-color: #f4f4f4;
#     color: #333;
#     margin: 0;
#     padding: 20px;
#     item-align:center;
    
# }
# .chart {
#     item-align:center;
# }

# .dashboard {
#     width: 100%;
#     margin: 0 auto;
#     background-color: #fff;
#     padding: 20px;
#     box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);

# }

# h1 {
#     text-align: center;
#     color: #4CAF50;
#     margin-bottom: 40px;
# }

# .kpi {
#     margin-bottom: 20px;
#     padding: 20px;
#     border: 1px solid #ddd;
#     border-radius: 5px;
#     background-color: #fafafa;
#     text-align: center;
# }

# .kpi h2 {
#     margin: 0 0 10px;
#     font-size: 24px;
#     color: #333;
# }

# .kpi .value {
#     font-size: 32px;
#     font-weight: bold;
#     color: #4CAF50;
#     margin: 0 0 10px;
# }

# .kpi .description {
#     margin: 0;
#     font-size: 14px;
#     color: #777;
# }

#     </style>
# </head>
# <body>
# <ul class="nav nav-pills nav-fill gap-2 p-1 small bg-primary rounded-5 shadow-sm" id="pillNav2" role="tablist" style="--bs-nav-link-color: var(--bs-white); --bs-nav-pills-link-active-color: var(--bs-primary); --bs-nav-pills-link-active-bg: var(--bs-white);">
#   <li class="nav-item" role="presentation">
#     <button class="nav-link active rounded-5" id="home-tab2" data-bs-toggle="tab" type="button" role="tab" aria-selected="true">Home</button>
#   </li>
#   <li class="nav-item" role="presentation">
#     <button class="nav-link rounded-5" id="profile-tab2" data-bs-toggle="tab" type="button" role="tab" aria-selected="false">Profile</button>
#   </li>
#   <li class="nav-item" role="presentation">
#     <button class="nav-link rounded-5" id="contact-tab2" data-bs-toggle="tab" type="button" role="tab" aria-selected="false">Contact</button>
#   </li>
#   <li class="nav-item" role="presentation">
#     <button class="nav-link active rounded-5" id="home-tab2" data-bs-toggle="tab" type="button" role="tab" aria-selected="true">Home</button>
#   </li>
#   <li class="nav-item" role="presentation">
#     <button class="nav-link rounded-5" id="profile-tab2" data-bs-toggle="tab" type="button" role="tab" aria-selected="false">Profile</button>
#   </li>
#   <li class="nav-item" role="presentation">
#     <button class="nav-link rounded-5" id="contact-tab2" data-bs-toggle="tab" type="button" role="tab" aria-selected="false">Contact</button>
#   </li>
# </ul>
#     <div class="dashboard">
#         <h1>LOOM-LEGACY KPI Dashboard</h1>
#         <div class="kpi">
#             <h2>Total Revenue</h2>
#             <p class="value">PKR 150,000,000</p>
#             <p class="description">Revenue for Q2 2024</p>
#         </div>
#         <div class="kpi">
#             <h2>Net Profit Margin</h2>
#             <p class="value">18%</p>
#             <p class="description">Net profit margin for Q2 2024</p>
#         </div>
#         <div class="kpi">
#             <h2>Production Efficiency</h2>
#             <p class="value">92%</p>
#             <p class="description">Overall efficiency in Q2 2024</p>
#         </div>
#         <div class="kpi">
#             <h2>Employee Retention Rate</h2>
#             <p class="value">95%</p>
#             <p class="description">Retention rate for Q2 2024</p>
#         </div>
#         <div class="kpi">
#             <h2>Market Share</h2>
#             <p class="value">12%</p>
#             <p class="description">Market share in the Pakistani textile market</p>
#         </div>
#     </div>
#     <div class="dashboard">
#         <h1>LOOM-LEGACY KPI Dashboard</h1>
        
#         <div class="kpi">
#             <h2>Total Revenue</h2>
#             <p class="value">PKR 150,000,000</p>
#             <p class="description">Revenue for Q2 2024</p>
#         </div>
        
#         <div class="kpi">
#             <h2>Net Profit Margin</h2>
#             <p class="value">18%</p>
#             <p class="description">Net profit margin for Q2 2024</p>
#         </div>
        
#         <div class="chart">
#             <h2>Sales Trends</h2>
#             <svg width="500" height="300">
#                 <line x1="50" y1="250" x2="450" y2="250" stroke="black"/>
#                 <line x1="50" y1="250" x2="50" y2="50" stroke="black"/>
#                 <!-- Monthly sales data -->
#                 <circle cx="100" cy="220" r="5" fill="blue"/>
#                 <circle cx="150" cy="200" r="5" fill="blue"/>
#                 <circle cx="200" cy="180" r="5" fill="blue"/>
#                 <circle cx="250" cy="150" r="5" fill="blue"/>
#                 <circle cx="300" cy="170" r="5" fill="blue"/>
#                 <circle cx="350" cy="140" r="5" fill="blue"/>
#                 <circle cx="400" cy="120" r="5" fill="blue"/>
#                 <!-- Lines connecting the data points -->
#                 <line x1="100" y1="220" x2="150" y2="200" stroke="blue"/>
#                 <line x1="150" y1="200" x2="200" y2="180" stroke="blue"/>
#                 <line x1="200" y1="180" x2="250" y2="150" stroke="blue"/>
#                 <line x1="250" y1="150" x2="300" y2="170" stroke="blue"/>
#                 <line x1="300" y1="170" x2="350" y2="140" stroke="blue"/>
#                 <line x1="350" y1="140" x2="400" y2="120" stroke="blue"/>
#             </svg>
#         </div>
        
#         <div class="chart">
#             <h2>Financial Performance</h2>
#             <svg width="500" height="300">
#                 <line x1="50" y1="250" x2="450" y2="250" stroke="black"/>
#                 <line x1="50" y1="250" x2="50" y2="50" stroke="black"/>
#                 <!-- Quarterly profit data -->
#                 <rect x="100" y="200" width="50" height="50" fill="green"/>
#                 <rect x="200" y="150" width="50" height="100" fill="green"/>
#                 <rect x="300" y="100" width="50" height="150" fill="green"/>
#                 <rect x="400" y="50" width="50" height="200" fill="green"/>
#             </svg>
#         </div>
        
#         <div class="chart">
#             <h2>Operational Efficiency</h2>
#             <svg width="500" height="300">
#                 <line x1="50" y1="250" x2="450" y2="250" stroke="black"/>
#                 <line x1="50" y1="250" x2="50" y2="50" stroke="black"/>
#                 <!-- Efficiency percentages -->
#                 <rect x="100" y="150" width="50" height="100" fill="orange"/>
#                 <rect x="200" y="130" width="50" height="120" fill="orange"/>
#                 <rect x="300" y="100" width="50" height="150" fill="orange"/>
#                 <rect x="400" y="80" width="50" height="170" fill="orange"/>
#             </svg>
#         </div>
#     </div>
#     <div class="chart">
#             <h2>Market Trends</h2>
#             <svg width="500" height="300">
#                 <line x1="50" y1="250" x2="450" y2="250" stroke="black"/>
#                 <line x1="50" y1="250" x2="50" y2="50" stroke="black"/>
#                 <!-- Market trend data -->
#                 <circle cx="100" cy="220" r="5" fill="red"/>
#                 <circle cx="150" cy="200" r="5" fill="red"/>
#                 <circle cx="200" cy="180" r="5" fill="red"/>
#                 <circle cx="250" cy="160" r="5" fill="red"/>
#                 <circle cx="300" cy="140" r="5" fill="red"/>
#                 <circle cx="350" cy="120" r="5" fill="red"/>
#                 <circle cx="400" cy="100" r="5" fill="red"/>
#                 <!-- Lines connecting the data points -->
#                 <line x1="100" y1="220" x2="150" y2="200" stroke="red"/>
#                 <line x1="150" y1="200" x2="200" y2="180" stroke="red"/>
#                 <line x1="200" y1="180" x2="250" y2="160" stroke="red"/>
#                 <line x1="250" y1="160" x2="300" y2="140" stroke="red"/>
#                 <line x1="300" y1="140" x2="350" y2="120" stroke="red"/>
#                 <line x1="350" y1="120" x2="400" y2="100" stroke="red"/>
#             </svg>
#         </div>
        
#         <div class="chart">
#             <h2>Competitor Analysis</h2>
#             <svg width="500" height="300">
#                 <line x1="50" y1="250" x2="450" y2="250" stroke="black"/>
#                 <line x1="50" y1="250" x2="50" y2="50" stroke="black"/>
#                 <!-- Competitor performance data -->
#                 <rect x="100" y="180" width="40" height="70" fill="blue"/>
#                 <rect x="160" y="140" width="40" height="110" fill="blue"/>
#                 <rect x="220" y="160" width="40" height="90" fill="blue"/>
#                 <rect x="280" y="120" width="40" height="130" fill="blue"/>
#                 <rect x="340" y="100" width="40" height="150" fill="blue"/>
#                 <rect x="400" y="130" width="40" height="120" fill="blue"/>
#             </svg>
#         </div>
#         <div class="chart">
#     <h2>HR Metrics</h2>
#     <svg width="500" height="300">
#         <line x1="50" y1="250" x2="450" y2="250" stroke="black"/>
#         <line x1="50" y1="250" x2="50" y2="50" stroke="black"/>
        
#         <!-- Employee Productivity -->
#         <rect x="100" y="120" width="50" height="130" fill="purple"/>
#         <text x="110" y="270" font-size="12" fill="black">Productivity</text>
        
#         <!-- Retention Rate -->
#         <rect x="200" y="80" width="50" height="170" fill="orange"/>
#         <text x="210" y="270" font-size="12" fill="black">Retention</text>
        
#         <!-- Talent Management -->
#         <rect x="300" y="100" width="50" height="150" fill="green"/>
#         <text x="305" y="270" font-size="12" fill="black">Talent Mgmt</text>
#     </svg>
# </div>
# <div class="accordion" id="accordionExample">
#   <div class="accordion-item">
#     <h2 class="accordion-header">
#       <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
#         Accordion Item #1
#       </button>
#     </h2>
#     <div id="collapseOne" class="accordion-collapse collapse show" data-bs-parent="#accordionExample">
#       <div class="accordion-body">
#         <strong>This is the first item's accordion body.</strong> It is shown by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It's also worth noting that just about any HTML can go within the <code>.accordion-body</code>, though the transition does limit overflow.
#       </div>
#     </div>
#   </div>
#   <div class="accordion-item">
#     <h2 class="accordion-header">
#       <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
#         Accordion Item #2
#       </button>
#     </h2>
#     <div id="collapseTwo" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
#       <div class="accordion-body">
#         <strong>This is the second item's accordion body.</strong> It is hidden by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It's also worth noting that just about any HTML can go within the <code>.accordion-body</code>, though the transition does limit overflow.
#       </div>
#     </div>
#   </div>
#   <div class="accordion-item">
#     <h2 class="accordion-header">
#       <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
#         Accordion Item #3
#       </button>
#     </h2>
#     <div id="collapseThree" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
#       <div class="accordion-body">
#         <strong>This is the third item's accordion body.</strong> It is hidden by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It's also worth noting that just about any HTML can go within the <code>.accordion-body</code>, though the transition does limit overflow.
#       </div>
#     </div>
#   </div>
# </div>
# </body>
# </html>
# <p><%= button_to 'Logout', destroy_${singular_role}_session_path, method: :delete %></p>

# EOF

#   echo "Created show page for ${role} as ${role}.html.erb"
# done

# echo "All show pages created successfully."
#!/bin/bash

# List of roles
#!/bin/bash

ROLES=(
  "ceo"
  "chairman"
  "board_member"
  "director"
  "shareholder"
  "investor"
  "cfo"
  "accountant"
  "financial_analyst"
  "hr_manager"
  "recruitment_specialist"
  "training_and_development_officer"
  "sales_manager"
  "marketing_manager"
  "sales_representative"
  "customer_relations_manager"
  "production_manager"
  "production_planner"
  "shift_supervisor"
  "machine_operator"
  "quality_control_inspector"
  "r_and_d_manager"
  "textile_technologist"
  "research_scientist"
  "textile_designer"
  "cad_designer"
  "pattern_maker"
  "colorist"
  "it_manager"
  "systems_administrator"
  "software_developer"
  "maintenance_manager"
  "electrical_engineer"
  "mechanical_engineer"
  "maintenance_technician"
  "procurement_manager"
  "supply_chain_coordinator"
  "purchasing_officer"
  "logistics_manager"
  "warehouse_supervisor"
  "distribution_coordinator"
  "compliance_manager"
  "environmental_specialist"
  "safety_officer"
  "customer_service_manager"
  "order_processor"
  "customer_support_representative"
  "inventory_controller"
  "demand_planner"
  "office_manager"
  "administrative_assistant"
  "receptionist"
)

# Initialize an empty string to store the content
CONTROLLER_CONTENT=""

for role in "${ROLES[@]}"; do
  CONTROLLER_CONTENT+=$(cat <<EOF

class ${role^}Controller < ApplicationController
  
  after_action :expire_user_session

  private

  def expire_user_session
    if user_signed_out?
      reset_session
    end
  end
end

EOF
)
done

# Write content to controller.txt
echo "$CONTROLLER_CONTENT" > controller.txt

echo "controller.txt has been created with the required content."
