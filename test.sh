I want to create an for making experiments using Django and Python for my company "Lifty". I have `python3` so everything should be done using this alias. Whenever you need to put images, leave it empty but make all images depend on one single image that is empty and I'll make sure to replace the images later. I asked my friends to detail as much as possible how the website should look like so here are the details:

1. Overall Layout:

    Header:
        Displays the "Lifty" logo or title on the left.
        Search bar on the right with a placeholder text "Search".
        Icons for settings or profile details.

    Sidebar Navigation:
        Dark-themed with icons and text.
        Options include: "Getting Started", "Experiments", "Feature Flags", "Metrics", and "Definitions".

    Main Content Area:
        White background with segmented card layouts.
        Display total count of experiments with their status: "Total", "Draft", "Running", "Ready", "Wrap Up", "Concluded".

2. Experiments Section:

    Filters and Sorting:
        Dropdown menus for "Filter by Experiment Name", "Any Status", "All Entities", "All Owners", and "My Starred".
        A section dedicated to the most recent experiment showing critical metrics.

    Experiment Cards:
        Each card displays:
            Experiment name.
            Status (Draft, Running, etc.).
            Experiment target details.
            Primary metric details.
            Owner information with thumbnail avatar.
            Diagnostics status with visual indicators.
            Date range of the experiment.

    Design Elements:
        Use color-coding for experiment status.
        Thumbnails for owners (rounded).
        Icons for diagnostics and related notifications.
        Clearly defined cards for each experiment with shadow effects for elevation.

3. HTML Structure (pseudo-code):

html

<!DOCTYPE html>
<html>
<head>
    <title>LIFTY</title>
    <!-- Link to CSS, JS, and other assets -->
</head>
<body>
    <header>
        <!-- Lifty logo and search bar -->
    </header>
    <aside>
        <!-- Sidebar navigation items -->
    </aside>
    <main>
        <!-- Filters and sorting dropdowns -->
        
        <!-- Loop to display experiment cards -->
        <div class="experiment-card">
            <!-- Individual experiment details -->
        </div>
    </main>
    <footer>
        <!-- Any footer content if needed -->
    </footer>
</body>
</html>

4. Backend and Database:

    Database Schema:

        Experiment Model:
            ID (Primary Key)
            Name
            Status (Choices: Draft, Running, Ready, Wrap Up, Concluded)
            Target Details
            Primary Metric
            Owner (Foreign Key: User Model)
            Diagnostics
            Start Date
            End Date

        User Model (For Owners):
            ID (Primary Key)
            Name
            Avatar (Image Field)

5. Additional Notes:

    Use Django's templating engine to render data.
    For displaying avatars, consider using Django's ImageField.
    Make use of Django's CHOICES for fields like status.
    Utilize CSS frameworks like Bootstrap or TailwindCSS to style the elements and make the page responsive.
    JavaScript can be employed for dynamic elements like the search functionality.



Once you implement all the code, be sure to leave everything that I need to execute in the run.sh file. This involved creating the django project and all necessary steps to make sure that this works on the first try. Be very DETAIL oriented and add everything that is needed. Make a list of everything needed to launch the app and that it works.
