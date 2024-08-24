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

BASE_DIR="/home/ali-ishaq/LOOM-LEGACY/app/views/dashboards"

# Function to convert role name to singular form
singularize() {
  local role=$1
  case "$role" in
    "ceos") echo "ceo" ;;
    "chairmen") echo "chairman" ;;
    "board_members") echo "board_member" ;;
    "directors") echo "director" ;;
    "shareholders") echo "shareholder" ;;
    "investors") echo "investor" ;;
    "accountants") echo "accountant" ;;
    "financial_analysts") echo "financial_analyst" ;;
    "hr_managers") echo "hr_manager" ;;
    "recruitment_specialists") echo "recruitment_specialist" ;;
    "training_and_development_officers") echo "training_and_development_officer" ;;
    "sales_managers") echo "sales_manager" ;;
    "marketing_managers") echo "marketing_manager" ;;
    "sales_representatives") echo "sales_representative" ;;
    "customer_relations_managers") echo "customer_relations_manager" ;;
    "production_managers") echo "production_manager" ;;
    "production_planners") echo "production_planner" ;;
    "shift_supervisors") echo "shift_supervisor" ;;
    "machine_operators") echo "machine_operator" ;;
    "quality_control_inspectors") echo "quality_control_inspector" ;;
    "r_and_d_managers") echo "r_and_d_manager" ;;
    "textile_technologists") echo "textile_technologist" ;;
    "research_scientists") echo "research_scientist" ;;
    "textile_designers") echo "textile_designer" ;;
    "cad_designers") echo "cad_designer" ;;
    "pattern_makers") echo "pattern_maker" ;;
    "colorists") echo "colorist" ;;
    "it_managers") echo "it_manager" ;;
    "systems_administrators") echo "systems_administrator" ;;
    "software_developers") echo "software_developer" ;;
    "maintenance_managers") echo "maintenance_manager" ;;
    "electrical_engineers") echo "electrical_engineer" ;;
    "mechanical_engineers") echo "mechanical_engineer" ;;
    "maintenance_technicians") echo "maintenance_technician" ;;
    "procurement_managers") echo "procurement_manager" ;;
    "supply_chain_coordinators") echo "supply_chain_coordinator" ;;
    "purchasing_officers") echo "purchasing_officer" ;;
    "logistics_managers") echo "logistics_manager" ;;
    "warehouse_supervisors") echo "warehouse_supervisor" ;;
    "distribution_coordinators") echo "distribution_coordinator" ;;
    "compliance_managers") echo "compliance_manager" ;;
    "environmental_specialists") echo "environmental_specialist" ;;
    "safety_officers") echo "safety_officer" ;;
    "customer_service_managers") echo "customer_service_manager" ;;
    "order_processors") echo "order_processor" ;;
    "customer_support_representatives") echo "customer_support_representative" ;;
    "inventory_controllers") echo "inventory_controller" ;;
    "demand_planners") echo "demand_planner" ;;
    "office_managers") echo "office_manager" ;;
    "administrative_assistants") echo "administrative_assistant" ;;
    "receptionists") echo "receptionist" ;;
    *) echo "$role" ;;
  esac
}

for role in "${ROLES[@]}"; do
  singular_role=$(singularize "$role")
  display_role=$(echo "$role" | tr '_' ' ' | sed 's/\b\(.\)/\u\1/g')

  # Create the show page file
  cat <<EOF > "${BASE_DIR}/${singular_role}.html.erb"
<!DOCTYPE html>
<html>
<head>
  <title>Asdf</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <%= csrf_meta_tags %>
  <%= csp_meta_tag %>
  <%= stylesheet_link_tag "dashboard", "data-turbo-track": "reload" %>
  <%= javascript_importmap_tags %>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
  <link rel="stylesheet" href="styles.css"> <!-- Link to your CSS file -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
  <style>
  body {
      margin: 0;
      padding: 0;
    
  }

  .background-image {
      position: absolute; /* or relative or fixed */
      top: 0;
      left: 0;
      width: 100%;
      
      z-index: -1; /* Set the z-index to a lower value */
  }

  .content {
      position: relative; /* Ensure it stacks above the image */
      z-index: 1; /* Higher z-index than the image */
      padding: 20px;
      
  }
</style>
</head>
<body>
<nav class="navbar bg-body-tertiary fixed-top">
  <div class="container-fluid">
  <button class="btn btn-primary" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasWithBothOptions" aria-controls="offcanvasWithBothOptions">SideBar</button>
    <a class="navbar-brand" href="#">LOOMS-LEGACY</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel">
      <div class="offcanvas-header">
        <h5 class="offcanvas-title" id="offcanvasNavbarLabel">Offcanvas</h5>
        <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
      </div>
      <div class="offcanvas-body">
        <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="#">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Link</a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              Dropdown
            </a>
            <ul class="dropdown-menu">
              <li><a class="dropdown-item" href="#">Action</a></li>
              <li><a class="dropdown-item" href="#">Another action</a></li>
              <li>
                <hr class="dropdown-divider">
              </li>
              <li><a class="dropdown-item" href="#">Something else here</a></li>
            </ul>
          </li>
        </ul>
        <form class="d-flex mt-3" role="search">
          <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
          <button class="btn btn-outline-success" type="submit">Search</button>
        </form>
      </div>
    </div>
  </div>
</nav>
  






<div class="offcanvas offcanvas-start" data-bs-scroll="true" tabindex="-1" id="offcanvasWithBothOptions" aria-labelledby="offcanvasWithBothOptionsLabel">
  <div class="offcanvas-header">
    <h5 class="offcanvas-title" id="offcanvasWithBothOptionsLabel">Backdrop with scrolling</h5>
    <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
  </div>
  <div class="offcanvas-body">
    <p>Try scrolling the rest of the page to see this option in action.</p>
  </div>
</div>




<h1 class="display-1" style="text-align: center;">Welcome Back ${singular_role}</h1>



<p><%= button_to 'Logout', destroy_${singular_role}_session_path, method: :delete %></p>

</body>
</html>


EOF

  echo "Created show page for ${role} as ${role}.html.erb"
done

echo "All show pages created successfully."

