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
  <%= stylesheet_link_tag 'dashboard', media: 'all', 'data-turbolinks-track': 'reload' %>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load("current", {packages:["calendar"]});
      google.charts.setOnLoadCallback(drawChart);

   function drawChart() {
       var dataTable = new google.visualization.DataTable();
       dataTable.addColumn({ type: 'date', id: 'Date' });
       dataTable.addColumn({ type: 'number', id: 'Won/Loss' });
       dataTable.addRows([
          [ new Date(2012, 3, 13), 37032 ],
          [ new Date(2012, 3, 14), 38024 ],
          [ new Date(2012, 3, 15), 38024 ],
          [ new Date(2012, 3, 16), 38108 ],
          [ new Date(2012, 3, 17), 38229 ],
          // Many rows omitted for brevity.
          [ new Date(2013, 9, 4), 38177 ],
          [ new Date(2013, 9, 5), 38705 ],
          [ new Date(2013, 9, 12), 38210 ],
          [ new Date(2013, 9, 13), 38029 ],
          [ new Date(2013, 9, 19), 38823 ],
          [ new Date(2013, 9, 23), 38345 ],
          [ new Date(2013, 9, 24), 38436 ],
          [ new Date(2013, 9, 30), 38447 ]
        ]);

       var chart = new google.visualization.Calendar(document.getElementById('calendar_basic'));

       var options = {
         title: "Red Sox Attendance",
         height: 350,
       };

       chart.draw(dataTable, options);
   }
    </script>
    <nav class="navbar">
      
      <h3 class="navbar-title">LOOMS-LEGACY</h3>
      <div class="navbar-icons">
        
        <button class="btn btn-primary" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasRight" aria-controls="offcanvasRight"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" class="dropdown-icon" viewBox="0 0 16 16">
        <path fill-rule="evenodd" d="M2 2.5a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5V3a.5.5 0 0 0-.5-.5zM3 3H2v1h1z"/>
        <path d="M5 3.5a.5.5 0 0 1 .5-.5h9a.5.5 0 0 1 0 1h-9a.5.5 0 0 1-.5-.5M5.5 7a.5.5 0 0 0 0 1h9a.5.5 0 0 0 0-1zm0 4a.5.5 0 0 0 0 1h9a.5.5 0 0 0 0-1z"/>
        <path fill-rule="evenodd" d="M1.5 7a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5H2a.5.5 0 0 1-.5-.5zM2 7h1v1H2zm0 3.5a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm1 .5H2v1h1z"/>
      </svg></button>

<div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasRight" aria-labelledby="offcanvasRightLabel">
  <div class="offcanvas-header">
    <h5 class="offcanvas-title" id="offcanvasRightLabel">Setting</h5>
    <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
  </div>
  <div class="offcanvas-body">
  <button class="btn btn-primary w-100" type="button">Button</button>
  <button class="btn btn-primary w-100" type="button">Button</button>
  
  <!-- Logout button -->
  <%= button_to 'Logout', destroy_${singular_role}_session_path, method: :delete, class: "btn btn-primary w-100" %>
  
  <!-- Edit Profile button styled as a button using link_to -->
  <%= link_to 'Edit Profile', edit_${singular_role}_registration_path, class: "btn btn-primary w-100" %>
  </div>
</div>




<div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasRight" aria-labelledby="offcanvasRightLabel">
  <div class="offcanvas-header">
    <h5 class="offcanvas-title" id="offcanvasRightLabel">Setting</h5>
    <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
  </div>
  <div class="offcanvas-body">
  <button class="btn btn-primary w-100" type="button">Button</button>
  <button class="btn btn-primary w-100" type="button">Button</button>
  
  <!-- Logout button -->
  <%= button_to 'Logout', destroy_ceo_session_path, method: :delete, class: "btn btn-primary w-100" %>
  
  <!-- Edit Profile button styled as a button using link_to -->
  <%= link_to 'Edit Profile', edit_ceo_registration_path, class: "btn btn-primary w-100" %>
  </div>
</div>




<button class="btn btn-primary" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasTop" aria-controls="offcanvasRight"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-calendar-month" viewBox="0 0 16 16">
<path d="M2.56 11.332 3.1 9.73h1.984l.54 1.602h.718L4.444 6h-.696L1.85 11.332zm1.544-4.527L4.9 9.18H3.284l.8-2.375zm5.746.422h-.676V9.77c0 .652-.414 1.023-1.004 1.023-.539 0-.98-.246-.98-1.012V7.227h-.676v2.746c0 .941.606 1.425 1.453 1.425.656 0 1.043-.28 1.188-.605h.027v.539h.668zm2.258 5.046c-.563 0-.91-.304-.985-.636h-.687c.094.683.625 1.199 1.668 1.199.93 0 1.746-.527 1.746-1.578V7.227h-.649v.578h-.019c-.191-.348-.637-.64-1.195-.64-.965 0-1.64.679-1.64 1.886v.34c0 1.23.683 1.902 1.64 1.902.558 0 1.008-.293 1.172-.648h.02v.605c0 .645-.423 1.023-1.071 1.023m.008-4.53c.648 0 1.062.527 1.062 1.359v.253c0 .848-.39 1.364-1.062 1.364-.692 0-1.098-.512-1.098-1.364v-.253c0-.868.406-1.36 1.098-1.36z"/>
<path d="M3.5 0a.5.5 0 0 1 .5.5V1h8V.5a.5.5 0 0 1 1 0V1h1a2 2 0 0 1 2 2v11a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V3a2 2 0 0 1 2-2h1V.5a.5.5 0 0 1 .5-.5M1 4v10a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V4z"/>
</svg></button>

<div class="offcanvas offcanvas-top" tabindex="-1" id="offcanvasTop" aria-labelledby="offcanvasTopLabel">
<div class="offcanvas-header">
<h5 class="offcanvas-title" id="offcanvasTopLabel">Offcanvas top</h5>
<button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
</div>
<div class="offcanvas-body">
<div class="calendar">
        <div class="header">
            <h2>September 2024</h2>
        </div>
        <div class="days">
            <div class="day">Sun</div>
            <div class="day">Mon</div>
            <div class="day">Tue</div>
            <div class="day">Wed</div>
            <div class="day">Thu</div>
            <div class="day">Fri</div>
            <div class="day">Sat</div>

            <div class="date empty"></div>
            <div class="date">1</div>
            <div class="date">2</div>
            <div class="date">3</div>
            <div class="date">4</div>
            <div class="date">5</div>
            <div class="date">6</div>
            <div class="date">7</div>
            <div class="date">8</div>
            <div class="date">9</div>
            <div class="date">10</div>
            <div class="date">11</div>
            <div class="date">12</div>
            <div class="date">13</div>
            <div class="date">14</div>
            <div class="date" style="background-color:gray;">15</div>
            <div class="date">16</div>
            <div class="date">17</div>
            <div class="date">18</div>
            <div class="date">19</div>
            <div class="date">20</div>
            <div class="date">21</div>
            <div class="date">22</div>
            <div class="date">23</div>
            <div class="date">24</div>
            <div class="date">25</div>
            <div class="date">26</div>
            <div class="date">27</div>
            <div class="date">28</div>
            <div class="date">29</div>
            <div class="date">30</div>
            <div class="date empty"></div>
        </div>
    </div>

</div>
</div>


          </ul>
        </div>
      </div>
    </nav>
    <div class="dropdown-center">
    <div class="d-grid gap-2">
      <!-- Dropdown Button -->
      <button class="btn btn-primary" style="background-color: #333;" type="button" data-bs-toggle="dropdown" aria-expanded="false">
        Textile Management Options
      </button>
      <!-- Dropdown Menu -->
      <ul class="dropdown-menu">
        <!-- List Group -->
        <div class="list-group">
          <ul style="list-style: none; padding-left: 0; margin-left: 0;">
            <!-- Card Container -->
            <div class="card mb-3" style="max-width: 540px;">
              <!-- Buttons -->
              <div class="d-grid gap-2">
                <!-- Inventory Management -->
                <a href="#" class="btn btn-primary" type="button">
                  <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-box-seam" viewBox="0 0 16 16">
                    <path d="M4 .5a.5.5 0 0 1 .5-.5h6a.5.5 0 0 1 .5.5v3H4v-3z"/>
                    <path d="M4 4.5h8v5.8l-4 2.4-4-2.4V4.5z"/>
                    <path d="M.5 8.25a.25.25 0 0 1 .25-.25h3.764l4 2.4 4-2.4H15.25a.25.25 0 0 1 .25.25v7.5a.25.25 0 0 1-.25.25H.75a.25.25 0 0 1-.25-.25v-7.5z"/>
                  </svg> Inventory Management
                </a>
                
                <!-- Production Tracking -->
                <a href="#" class="btn btn-primary" type="button">
                  <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-gear" viewBox="0 0 16 16">
                    <path d="M9.405 1.05a.5.5 0 0 0-.81 0L7.093 3.937A3.5 3.5 0 0 0 5.4 3H4.5A2.5 2.5 0 0 0 2 5.5v1a.5.5 0 0 0 .184.385l2.065 1.574-.627 1.875-2.065-1.574A.5.5 0 0 0 1.5 9v1a.5.5 0 0 0 .184.385L4 12.543v2.457h2v-2.457l2.065-1.574A.5.5 0 0 0 8.5 10v-1a.5.5 0 0 0-.184-.385L6.465 7.043l.627-1.875L8.405 8h1a2.5 2.5 0 0 0 2.5-2.5V4.5A2.5 2.5 0 0 0 9.5 2h-1a.5.5 0 0 0-.095-.1l-1-2zm.095 3.9a.5.5 0 0 0-.9 0l-.793 2.381a2 2 0 1 1-.507-.001l-.793-2.38a.5.5 0 1 0-.9 0l-.793 2.38a2 2 0 1 1-.507-.001L3 5.95a.5.5 0 0 0-.9 0L1.657 8.33a.5.5 0 0 0-.757.423v4.494a.5.5 0 0 0 .508.507H14.592a.5.5 0 0 0 .508-.507v-4.494a.5.5 0 0 0-.757-.423l-1.343-2.38a.5.5 0 0 0-.9 0L10 5.95zm0 0 3 3"/>
                  </svg> Production Tracking
                </a>
  
                <!-- Employee Management -->
                <a href="#" class="btn btn-primary" type="button">
                  <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-people" viewBox="0 0 16 16">
                    <path d="M8 1a4 4 0 0 0-4 4v1a5 5 0 0 0 1 3h6a5 5 0 0 0 1-3V5a4 4 0 0 0-4-4zm4 6.03a6 6 0 1 1-8 0V5a4 4 0 1 1 8 0v2.03z"/>
                  </svg> Employee Management
                </a>
  
                <!-- Quality Control -->
                <a href="#" class="btn btn-primary" type="button">
                  <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-check-circle" viewBox="0 0 16 16">
                    <path d="M2.515 10.848a.5.5 0 0 1-.707 0l-1.828-1.828a.5.5 0 0 1 .707-.707L2.515 9.44l4.243-4.243a.5.5 0 0 1 .707.707L2.515 10.848z"/>
                    <path d="M8 16A8 8 0 1 0 8 0a8 8 0 0 0 0 16zm0-1A7 7 0 1 1 8 1a7 7 0 0 1 0 14z"/>
                  </svg> Quality Control
                </a>
  
                <!-- Supplier Management -->
                <a href="#" class="btn btn-primary" type="button">
                  <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-truck" viewBox="0 0 16 16">
                    <path d="M11 1a1 1 0 0 1 1 1v3h3l2 3v5a1 1 0 0 1-1 1H2a1 1 0 0 1-1-1V7a1 1 0 0 1 1-1h2V2a1 1 0 0 1 1-1h6z"/>
                    <path d="M5.5 12a.5.5 0 1 1 0-1h1.01a1 1 0 0 0 1-1v-1H1V7h10v3.5a1 1 0 0 0 1 1h.489l.911 2h-3.9l.91-2h1.05a.5.5 0 0 1 0 1h-1.05L8.1 13H2.4l.11-1H5.5zm0-2h5v1h-5v-1zm0-1h5V7h-5v2zm5.05 4a2.5 2.5 0 1 1-5 0 2.5 2.5 0 0 1 5 0zm-8 0a2.5 2.5 0 1 1 5 0 2.5 2.5 0 0 1-5 0z"/>
                  </svg> Supplier Management
                </a>
              </div>
            </div>
          </ul>
        </div>
      </ul>
    </div>
  </div>
  


    <div class="d-grid gap-2">
      <button class="btn btn-primary" type="button" data-bs-toggle="offcanvas"
        data-bs-target="#offcanvasScrolling" aria-controls="offcanvasScrolling">
        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
          fill="currentColor" class="bi bi-person-plus-fill"
          viewBox="0 0 16 16">
          <path
            d="M1 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6" />
          <path fill-rule="evenodd"
            d="M13.5 5a.5.5 0 0 1 .5.5V7h1.5a.5.5 0 0 1 0 1H14v1.5a.5.5 0 0 1-1 0V8h-1.5a.5.5 0 0 1 0-1H13V5.5a.5.5 0 0 1 .5-.5" />
        </svg> Meetings </button>
    </div>

    <div class="offcanvas offcanvas-start" data-bs-scroll="true"
      data-bs-backdrop="false" tabindex="-1" id="offcanvasScrolling"
      aria-labelledby="offcanvasScrollingLabel">
      <div class="offcanvas-header">
      <%= image_tag 'ali.JPG', alt: 'Ali', width: 70, height: 70, class: 'rounded-circle' %>
        <h3 class="offcanvas-title" id="offcanvasScrollingLabel" style="padding-left:30px;"> ALI ISHAQ</h3>
        
        <div style="border-radius:50%; padding-left:60px;">
    
    </div>
        <button type="button" class="btn-close" data-bs-dismiss="offcanvas"
          aria-label="Close"></button>
      </div>
      
      

      <div class="offcanvas-body" style="background-color:black;">
    
      <div class="list-group">
      <a href="#" class="list-group-item list-group-item-action" style="background-color: black; color: white; border: 1px solid white; border-radius: 15px; padding: 5px 10px; white-space: nowrap; overflow: hidden; text-overflow: ellipsis;">
        <div class="d-flex w-100 justify-content-between">
          <h5 class="mb-1" style="margin: 0;">Product Launch Meeting
            <br><small style="font-size: 15px; color: white;">Ali Ahmad - In 2 days</small>
          </h5>
        </div>
      </a>
    
      <a href="#" class="list-group-item list-group-item-action" style="background-color: black; color: white; border: 1px solid white; border-radius: 15px; padding: 5px 10px; white-space: nowrap; overflow: hidden; text-overflow: ellipsis;">
        <div class="d-flex w-100 justify-content-between">
          <h5 class="mb-1" style="margin: 0;">Fabric Sourcing Strategy
            <br><small style="font-size: 15px; color: white;">Sarah Khan - Tomorrow at 10:00 AM</small>
          </h5>
        </div>
      </a>
    
      <a href="#" class="list-group-item list-group-item-action" style="background-color: black; color: white; border: 1px solid white; border-radius: 15px; padding: 5px 10px; white-space: nowrap; overflow: hidden; text-overflow: ellipsis;">
        <div class="d-flex w-100 justify-content-between">
          <h5 class="mb-1" style="margin: 0;">Quarterly Sales Review
            <br><small style="font-size: 15px; color: white;">Amira Yusuf - Next Monday, 11:00 AM</small>
          </h5>
        </div>
      </a>
    
      <a href="#" class="list-group-item list-group-item-action" style="background-color: black; color: white; border: 1px solid white; border-radius: 15px; padding: 5px 10px; white-space: nowrap; overflow: hidden; text-overflow: ellipsis;">
        <div class="d-flex w-100 justify-content-between">
          <h5 class="mb-1" style="margin: 0;">Logistics Coordination
            <br><small style="font-size: 15px; color: white;">Bilal Malik - Next Tuesday, 2:30 PM</small>
          </h5>
        </div>
      </a>
    
      <a href="#" class="list-group-item list-group-item-action" style="background-color: black; color: white; border: 1px solid white; border-radius: 15px; padding: 5px 10px; white-space: nowrap; overflow: hidden; text-overflow: ellipsis;">
        <div class="d-flex w-100 justify-content-between">
          <h5 class="mb-1" style="margin: 0;">Export Client Negotiation
            <br><small style="font-size: 15px; color: white;">Emily Zhang - In 5 days</small>
          </h5>
        </div>
      </a>
    </div>
    

        
        <div class="row g-0" style="display:flex;">
  
          </ul>
        </div>
      </div>
    </div>














    









    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load("current", {packages:['corechart']});
      google.charts.setOnLoadCallback(drawChart);
    
      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ["Fabric Type", "Production Volume (tons)", { role: "style" }],
          ["Cotton", 500, "#ff9999"],    // Light Red for Cotton
          ["Polyester", 800, "#9999ff"], // Light Blue for Polyester
          ["Silk", 200, "#ffcc99"],      // Light Orange for Silk
          ["Wool", 150, "#cc99ff"],      // Light Purple for Wool
          ["Linen", 100, "#99ffcc"]      // Light Green for Linen
        ]);
    
        var view = new google.visualization.DataView(data);
        view.setColumns([0, 1, 
          { calc: "stringify", sourceColumn: 1, type: "string", role: "annotation" }, 
          2]);
    
        function drawResponsiveChart() {
          var chart = new google.visualization.ColumnChart(document.getElementById("columnchart_values"));
          
          // Set the chart width and height dynamically based on window size
          var chartWidth = Math.min(document.documentElement.clientWidth * 0.9, 700);
          var chartHeight = Math.min(document.documentElement.clientHeight * 0.6, 400);
    
          var options = {
            title: "Fabric Production Volume by Type (in tons)",
            width: chartWidth,
            height: chartHeight,
            bar: {groupWidth: "90%"},
            legend: { position: "none" },
            hAxis: {
              title: 'Fabric Type'
            },
            vAxis: {
              title: 'Production Volume (tons)'
            }
          };
    
          chart.draw(view, options);
        }
    
        // Initial chart draw
        drawResponsiveChart();
    
        // Redraw chart on window resize
        window.addEventListener('resize', drawResponsiveChart);
      }
    </script>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
  google.charts.load("current", {packages:['corechart', 'gauge']});
  google.charts.setOnLoadCallback(drawCharts);
  
  function drawCharts() {
    drawLineChart();
    drawPieChart();
    drawBarChart();
    drawGaugeChart();
    drawStackedColumnChart();
    drawScatterPlot();
    drawBubbleChart();
    drawComboChart();
  }

  window.addEventListener('resize', function(){
    drawCharts(); // Redraw all charts on window resize
  });

  // Line Chart
  function drawLineChart() {
    var data = google.visualization.arrayToDataTable([
      ['Month', 'Cotton', 'Polyester', 'Silk', 'Wool', 'Linen'],
      ['January', 500, 800, 200, 150, 100],
      ['February', 520, 850, 210, 160, 110],
      ['March', 530, 870, 220, 155, 115],
      ['April', 540, 900, 230, 165, 120],
      ['May', 550, 920, 240, 170, 130]
    ]);

    var options = {
      title: 'Fabric Production Over Time',
      curveType: 'function',
      legend: { position: 'bottom' }
    };

    var chart = new google.visualization.LineChart(document.getElementById('line_chart'));
    chart.draw(data, options);
  }

  // Pie Chart
  function drawPieChart() {
    var data = google.visualization.arrayToDataTable([
      ['Fabric Type', 'Market Share'],
      ['Cotton', 45],
      ['Polyester', 35],
      ['Silk', 10],
      ['Wool', 7],
      ['Linen', 3]
    ]);

    var options = { title: 'Market Share by Fabric Type' };
    var chart = new google.visualization.PieChart(document.getElementById('pie_chart'));
    chart.draw(data, options);
  }

  // Bar Chart
  function drawBarChart() {
    var data = google.visualization.arrayToDataTable([
      ['Factory', 'Efficiency (%)', 'Output (tons)'],
      ['Factory A', 90, 120],
      ['Factory B', 85, 110],
      ['Factory C', 88, 115],
      ['Factory D', 92, 130]
    ]);

    var options = {
      title: 'Factory Efficiency and Production Output',
      chartArea: {width: '50%'},
      hAxis: { title: 'Performance', minValue: 0 },
      vAxis: { title: 'Factory' }
    };

    var chart = new google.visualization.BarChart(document.getElementById('bar_chart'));
    chart.draw(data, options);
  }

  // Gauge Chart
  function drawGaugeChart() {
    var data = google.visualization.arrayToDataTable([
      ['Label', 'Value'],
      ['Efficiency', 85]
    ]);

    var options = {
      width: 400, height: 120,
      redFrom: 0, redTo: 50,
      yellowFrom: 50, yellowTo: 75,
      greenFrom: 75, greenTo: 100,
      minorTicks: 5
    };

    var chart = new google.visualization.Gauge(document.getElementById('gauge_chart'));
    chart.draw(data, options);
  }

  // Stacked Column Chart
  function drawStackedColumnChart() {
    var data = google.visualization.arrayToDataTable([
      ['Region', 'Sales', 'Profit'],
      ['North America', 1000, 300],
      ['Europe', 1170, 460],
      ['Asia', 660, 1120],
      ['South America', 1030, 540]
    ]);

    var options = {
      title: 'Sales and Profit by Region',
      isStacked: true,
      hAxis: { title: 'Region' },
      vAxis: { title: 'Value' }
    };

    var chart = new google.visualization.ColumnChart(document.getElementById('stacked_column_chart'));
    chart.draw(data, options);
  }

  // Scatter Plot
  function drawScatterPlot() {
    var data = google.visualization.arrayToDataTable([
      ['Efficiency', 'Quality'],
      [85, 95],
      [80, 92],
      [90, 97],
      [78, 89],
      [92, 96]
    ]);

    var options = {
      title: 'Production Efficiency vs. Quality Control',
      hAxis: {title: 'Efficiency (%)'},
      vAxis: {title: 'Quality Control Pass Rate (%)'},
      legend: 'none'
    };

    var chart = new google.visualization.ScatterChart(document.getElementById('scatter_plot'));
    chart.draw(data, options);
  }

  // Bubble Chart
function drawBubbleChart() {
  var data = google.visualization.arrayToDataTable([
    ['ID', 'Hours Worked', 'Output (tons)', 'Quality (score)', 'Employee'],
    ['E1',  100, 120, 97, 1],  // Use a numeric value for quality
    ['E2',  80, 110, 90, 2],
    ['E3',  90, 115, 93, 3],
    ['E4',  70, 100, 89, 4]
  ]);

  var options = {
    title: 'Employee Productivity Analysis',
    hAxis: {title: 'Hours Worked'},
    vAxis: {title: 'Output (tons)'},
    bubble: {textStyle: {fontSize: 11}},
    tooltip: {isHtml: true}
  };

  var chart = new google.visualization.BubbleChart(document.getElementById('bubble_chart'));
  chart.draw(data, options);
}


  // Combo Chart
  function drawComboChart() {
    var data = google.visualization.arrayToDataTable([
      ['Month', 'Materials', 'Labor', 'Overheads', 'Total'],
      ['January',  1000, 400, 200, 1600],
      ['February',  1170, 460, 250, 1880],
      ['March',  660, 1120, 300, 2080],
      ['April',  1030, 540, 350, 1920]
    ]);

    var options = {
      title: 'Expenses Breakdown (Materials, Labor, Overheads)',
      seriesType: 'bars',
      series: {3: {type: 'line'}}
    };

    var chart = new google.visualization.ComboChart(document.getElementById('combo_chart'));
    chart.draw(data, options);
  }
</script>

<center>
<div id="line_chart" style="width: 100vw; height: auto; display:block; padding-bottom:50px;"></div>
<div id="pie_chart" style="width: 100vw; height: auto; display:block; padding-bottom:50px;"></div>
<div id="bar_chart" style="width: 100vw; height: auto; display:block; padding-bottom:50px;"></div>
<div id="gauge_chart" style="width: 100vw; height: auto; display:block; padding-bottom:50px;"></div>
<div id="stacked_column_chart" style="width: 100vw; height: auto; display:block; padding-bottom:50px;"></div>
<div id="scatter_plot" style="width: 100vw; height: auto; display:block; padding-bottom:50px;"></div>
<div id="bubble_chart" style="width: 100vw; height: auto; display:block; padding-bottom:50px;"></div>
<div id="combo_chart" style="width: 100vw; height: auto; display:block; padding-bottom:50px;"></div>
</center>

<section id="dashboard" style="paddin-bottom:50px;" class="container">
  
  <div class="dashboard-grid">
    
    <div class="dashboard-item">
      <h3>Key Performance Indicators (KPIs)</h3>
      <p><strong>Total Revenue:</strong> $1,000,000</p>
      <p><strong>Profit Margin:</strong> 25%</p>
      <p><strong>Year-over-Year Growth:</strong> 15%</p>
      <p><strong>Customer Acquisition Cost (CAC):</strong> $50</p>
      <p><strong>Return on Investment (ROI):</strong> 150%</p>
      <p><strong>Net Promoter Score (NPS):</strong> 70</p>
    </div>
    
    <div class="dashboard-item">
      <h3>Financial Overview</h3>
      <p><strong>Revenue:</strong> $1,000,000</p>
      <p><strong>Expenses:</strong> $750,000</p>
      <p><strong>Cash Flow:</strong> $250,000</p>
      <p><strong>Net Income:</strong> $250,000</p>
      <p><strong>Gross Profit:</strong> $500,000</p>
      <p><strong>Debt-to-Equity Ratio:</strong> 1.5</p>
      <p><strong>EBITDA:</strong> $300,000</p>
    </div>
    
    <div class="dashboard-item">
      <h3>Strategic Goals</h3>
      <p><strong>Goal 1:</strong> Expand market share by 10% this year.</p>
      <p><strong>Progress:</strong> 8% achieved</p>
      <p><strong>Goal 2:</strong> Launch new product line by Q3.</p>
      <p><strong>Status:</strong> On Track (Development Phase)</p>
      <p><strong>Goal 3:</strong> Reduce production costs by 5%.</p>
      <p><strong>Progress:</strong> 3% cost reduction achieved</p>
    </div>
    
    <div class="dashboard-item">
      <h3>Market Analysis</h3>
      <p><strong>Competitor Performance:</strong> ABC Corp is gaining traction, with a 5% increase in market share this quarter.</p>
      <p><strong>Industry Trend:</strong> Increased demand for sustainable fabrics, with a 20% rise in consumer interest.</p>
      <p><strong>Consumer Behavior:</strong> Shift towards eco-friendly products, with 40% of customers prioritizing sustainability.</p>
      <p><strong>Supply Chain Risks:</strong> Potential disruptions due to global shipping delays.</p>
    </div>
    
    <div class="dashboard-item">
      <h3>Operational Insights</h3>
      <p><strong>Production Efficiency:</strong> 85%</p>
      <p><strong>Quality Control Pass Rate:</strong> 95%</p>
      <p><strong>Average Production Time per Unit:</strong> 1.5 hours</p>
      <p><strong>Downtime:</strong> 5% (due to machine maintenance)</p>
      <p><strong>Supply Chain Reliability:</strong> 98%</p>
      <p><strong>Waste Reduction Initiatives:</strong> 10% decrease in material waste.</p>
    </div>
    
    <div class="dashboard-item" style="padding-bottom:100px;">
      <h3>Customer Insights</h3>
      <p><strong>Customer Satisfaction Score:</strong> 90%</p>
      <p><strong>Retention Rate:</strong> 85%</p>
      <p><strong>Average Order Value (AOV):</strong> $150</p>
      <p><strong>Repeat Purchase Rate:</strong> 75%</p>
      <p><strong>Feedback:</strong> Customers love our organic cotton line, with 95% of reviews mentioning product quality.</p>
      <p><strong>Top Customer Segment:</strong> Eco-conscious millennials, making up 60% of the customer base.</p>
    </div>

  </div>
</section>



    <footer class="footer">
      <div class="footer-icons">
        <a href="https://example.com/facebook" target="_blank"
          aria-label="Facebook">
          <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-clipboard2-data" viewBox="0 0 16 16">
  <path d="M9.5 0a.5.5 0 0 1 .5.5.5.5 0 0 0 .5.5.5.5 0 0 1 .5.5V2a.5.5 0 0 1-.5.5h-5A.5.5 0 0 1 5 2v-.5a.5.5 0 0 1 .5-.5.5.5 0 0 0 .5-.5.5.5 0 0 1 .5-.5z"/>
  <path d="M3 2.5a.5.5 0 0 1 .5-.5H4a.5.5 0 0 0 0-1h-.5A1.5 1.5 0 0 0 2 2.5v12A1.5 1.5 0 0 0 3.5 16h9a1.5 1.5 0 0 0 1.5-1.5v-12A1.5 1.5 0 0 0 12.5 1H12a.5.5 0 0 0 0 1h.5a.5.5 0 0 1 .5.5v12a.5.5 0 0 1-.5.5h-9a.5.5 0 0 1-.5-.5z"/>
  <path d="M10 7a1 1 0 1 1 2 0v5a1 1 0 1 1-2 0zm-6 4a1 1 0 1 1 2 0v1a1 1 0 1 1-2 0zm4-3a1 1 0 0 0-1 1v3a1 1 0 1 0 2 0V9a1 1 0 0 0-1-1"/>
</svg>
          
        </a>
        <a href="https://example.com/facebook" target="_blank"
          aria-label="Facebook">
          <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-currency-dollar" viewBox="0 0 16 16">
  <path d="M4 10.781c.148 1.667 1.513 2.85 3.591 3.003V15h1.043v-1.216c2.27-.179 3.678-1.438 3.678-3.3 0-1.59-.947-2.51-2.956-3.028l-.722-.187V3.467c1.122.11 1.879.714 2.07 1.616h1.47c-.166-1.6-1.54-2.748-3.54-2.875V1H7.591v1.233c-1.939.23-3.27 1.472-3.27 3.156 0 1.454.966 2.483 2.661 2.917l.61.162v4.031c-1.149-.17-1.94-.8-2.131-1.718zm3.391-3.836c-1.043-.263-1.6-.825-1.6-1.616 0-.944.704-1.641 1.8-1.828v3.495l-.2-.05zm1.591 1.872c1.287.323 1.852.859 1.852 1.769 0 1.097-.826 1.828-2.2 1.939V8.73z"/>
</svg>
          
        </a>
        <a href="https://example.com/facebook" target="_blank"
          aria-label="Facebook">
          <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-list-task" viewBox="0 0 16 16">
  <path fill-rule="evenodd" d="M2 2.5a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5V3a.5.5 0 0 0-.5-.5zM3 3H2v1h1z"/>
  <path d="M5 3.5a.5.5 0 0 1 .5-.5h9a.5.5 0 0 1 0 1h-9a.5.5 0 0 1-.5-.5M5.5 7a.5.5 0 0 0 0 1h9a.5.5 0 0 0 0-1zm0 4a.5.5 0 0 0 0 1h9a.5.5 0 0 0 0-1z"/>
  <path fill-rule="evenodd" d="M1.5 7a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5H2a.5.5 0 0 1-.5-.5zM2 7h1v1H2zm0 3.5a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm1 .5H2v1h1z"/>
</svg>
          
        </a>
        <a href="https://example.com/facebook" target="_blank"
          aria-label="Facebook">
          <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-bell-fill" viewBox="0 0 16 16">
  <path d="M8 16a2 2 0 0 0 2-2H6a2 2 0 0 0 2 2m.995-14.901a1 1 0 1 0-1.99 0A5 5 0 0 0 3 6c0 1.098-.5 6-2 7h14c-1.5-1-2-5.902-2-7 0-2.42-1.72-4.44-4.005-4.901"/>
</svg>
         
        </a>
      </div>
    </footer>
    <script
      src="https://stackpath.bootstrapcdn.com/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
    <script>
document.addEventListener('DOMContentLoaded', function() {
  const dropdownToggle = document.getElementById('dropdownToggle');
  const dropdownMenu = document.getElementById('dropdownMenu');

  dropdownToggle.addEventListener('click', function(event) {
    event.stopPropagation(); // Prevent click event from closing the dropdown immediately
    const isVisible = dropdownMenu.style.display === 'block';
    dropdownMenu.style.display = isVisible ? 'none' : 'block';
    adjustDropdownPosition();
  });

  document.addEventListener('click', function(event) {
    if (!dropdownToggle.contains(event.target) && !dropdownMenu.contains(event.target)) {
      dropdownMenu.style.display = 'none';
    }
  });

  function adjustDropdownPosition() {
    const rect = dropdownMenu.getBoundingClientRect();
    const isOverflowingLeft = rect.left < 0;
    const isOverflowingRight = rect.right > window.innerWidth;
    
    if (isOverflowingLeft) {
      dropdownMenu.style.left = '0'; // Reset position to keep it within screen
      dropdownMenu.style.right = '0'; // Align to the right edge of the dropdown container
    } else if (isOverflowingRight) {
      dropdownMenu.style.left = 'auto';
      dropdownMenu.style.right = '0'; // Ensure it stays within the right edge of the viewport
    } else {
      dropdownMenu.style.left = '0'; // Default positioning
      dropdownMenu.style.right = 'auto';
    }
  }
});
function openCamera() {
  navigator.mediaDevices.getUserMedia({ video: true })
    .then(function(stream) {
      const video = document.getElementById('camera-stream');
      const closeButton = document.getElementById('close-btn');
      video.style.display = 'block'; // Show the video element
      closeButton.style.display = 'block'; // Show the close button
      video.srcObject = stream; // Display the camera stream
    })
    .catch(function(err) {
      console.error("Error: " + err);
    });
}

function closeCamera() {
  const video = document.getElementById('camera-stream');
  const closeButton = document.getElementById('close-btn');
  const stream = video.srcObject;
  if (stream) {
    const tracks = stream.getTracks();
    tracks.forEach(track => track.stop());
    video.srcObject = null;
    video.style.display = 'none'; // Hide the video element
    closeButton.style.display = 'none'; // Hide the close button
  }
}

</script>


EOF

  echo "Created show page for ${role} as ${role}.html.erb"
done

echo "All show pages created successfully."

