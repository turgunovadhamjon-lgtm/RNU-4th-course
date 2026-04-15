$ErrorActionPreference = "Stop"

$students = @(
    "Abbosjonov_Alhamjon",
    "Abdumansurov_Ulugbek",
    "Abduraimov_Rahimjon",
    "Abduvaxobov_Rustamjon",
    "Ergashaliyeva_Marjonaxon",
    "Jaloliddinova_Dilnoza",
    "Kurbanov_Azimjon",
    "Muzrabov_Farruxsho",
    "Nishanov_Jahongirjon",
    "Sadirova_Madinabonu",
    "Sadullayev_Xikmatullo",
    "Soipjonova_Habibaxon",
    "Turgunov_Adxamjon",
    "Xolmatov_Akbarali",
    "Xomidova_Farzona",
    "Zokirov_Edgor"
)

foreach ($student in $students) {
    # Create application folders
    New-Item -ItemType Directory -Path "application\$student" -Force | Out-Null
    New-Item -ItemType File -Path "application\$student\.gitkeep" -Value " " -Force | Out-Null
    
    # Create diploma_work folders
    New-Item -ItemType Directory -Path "diploma_work\$student" -Force | Out-Null
    New-Item -ItemType File -Path "diploma_work\$student\.gitkeep" -Value " " -Force | Out-Null
}

Write-Host "Student folders created successfully!"

git add .
git commit -m "feat: Add personalized submission folders for each student"
git push origin main

Write-Host "Folders pushed to GitHub."
