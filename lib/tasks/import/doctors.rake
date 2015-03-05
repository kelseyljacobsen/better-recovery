namespace :import do

  desc "Import doctors"
  task :doctors => :environment do
    puts "Import doctors..."  

    DOCTORS = [

      # SPINE DOCTORS

      { name: 'William M. Costigan, M.D.',
        group: 'Congress Medical Associates',
        specialty: 'spine/back',
        address: '800 S. Raymond Ave.',
        city: 'Pasadena, CA',
        zip: '91105',
        phone: '626-795-8051',
        web: 'www.congressmedical.com'
      },

      { name: 'Terrence T. Kim, M.D.',
        group: 'Cedars Sinai Medical Center',
        specialty: 'spine/back',
        address: '444 S. San Vicente Blvd., Suite 800',
        city: 'Los Angeles, CA',
        zip: '90048',
        phone: '310-423-9716',
        web: 'www.cedars-sinai.edu'
      },

      { name: 'Michael A. Kropf, M.D.',
        group: 'Cedars Sinai Medical Center',
        specialty: 'spine/back',
        address: '444 S. San Vicente Blvd., Suite 901',
        city: 'Los Angeles, CA',
        zip: '90048',
        phone: '310-248-7351',
        web: 'www.cedars-sinai.edu' 
      },

      { name: 'Joe Y.B. Lee, M.D.',
        group: 'Congress Medical Associates',
        specialty: 'spine/back',
        address: '289 W. Huntington Dr., Suite 103',
        city: 'Arcadia, CA',
        zip: '91007',
        phone: '626-821-0707',
        web: 'www.congressmedical.com'
      },

      { name: 'Hooman M. Melamed, M.D.',
        group: nil,
        specialty: 'spine/back',
        address: '3160 Mindanao Way, Suite 300',
        city: 'Marina del Rey, CA',
        zip: '90292',
        phone: '310-574-0405',
        web: 'www.thespinepro.com'
      },

      { name: 'K. Rad Payman, M.D.',
        group: nil,
        specialty: 'spine/back',
        address: '5363 Balboa Blvd., Suite 445A',
        city: 'Encino, CA',
        zip: '91316',
        phone: '818-501-2001',
        web: 'www.thespinemd.com'
      },

      { name: 'Brian R. Perri, D.O.',
        group: 'Cedars Sinai Medical Center',
        specialty: 'spine/back',
        address: '444 S. San Vicente Blvd., Suite 800',
        city: 'Los Angeles, CA',
        zip: '90048',
        phone: '310-423-9780',
        web: 'www.cedars-sinai.edu'
      },

      { name: 'Alexandre Rasouli, M.D.',
        group: 'Cedars Sinai Medical Center',
        specialty: 'spine/back',
        address: '444 S. San Vicente Blvd., Suite 901',
        city: 'Los Angeles, CA',
        zip: '90048',
        phone: '310-248-7330',
        web: 'www.cedars-sinai.edu'
      },

      { name: 'David E. Rogers, M.D.',
        group: nil,
        specialty: 'spine/back',
        address: '222 W. Eulalia St., Suite 309',
        city: 'Glendale, CA',
        zip: '91204',
        phone: '818-243-0499',
        web: 'www.cervicalspinesurgeon.com'
      },

      { name: 'Kourosh K. Shamlou, M.D.',
        group: 'RMS Medical Group',
        specialty: 'spine/back',
        address: '5211 E. Washington Blvd.',
        city: 'Commerce, CA',
        zip: '90040',
        phone: '323-980-9002',
        web: 'www.rmsmedicalgroup.com'
      },

      # KNEE DOCTORS

      { name: 'Todd B. Dietrick, M.D.',
        group: 'Congress Medical Associates',
        specialty: 'knee',
        address: '800 S. Raymond Ave.',
        city: 'Pasadena, CA',
        zip: '91105',
        phone: '626-795-8051',
        web: 'www.congressmedical.com'
      },

      { name: 'Michael P. Hall, M.D.',
        group: 'Kaiser Permanente',
        specialty: 'knee',
        address: '4760 Sunset Blvd.',
        city: 'Los Angeles, CA',
        zip: '90027',
        phone: '323-783-4011',
        web: 'kp.kaiserpermanente.org'
      },

      { name: 'Ronald S. Kvitne, M.D.',
        group: 'Kerlan-Jobe Orthopaedic Clinic',
        specialty: 'knee',
        address: '6801 Park Terrace, Suite 400',
        city: 'Los Angeles, CA',
        zip: '90045',
        phone: '424-256-9022',
        web: 'drkvitne.com'
      },

      { name: 'Stephen J. Lombardo, M.D.',
        group: 'Kerlan-Jobe Orthopaedic Clinic',
        specialty: 'knee',
        address: '6801 Park Terrace, Suite 400',
        city: 'Los Angeles, CA',
        zip: '90045',
        phone: '310-665-7200',
        web: 'www.kerlanjobe.com'
      },

      { name: 'William T. Long, M.D.',
        group: nil,
        specialty: 'knee',
        address: '637 S. Lucas Ave., Suite 101',
        city: 'Los Angeles, CA',
        zip: '90017',
        phone: '213-977-2280',
        web: 'www.orthocsi.com'
      },

      { name: 'Edward J. McPherson, M.D.',
        group: nil,
        specialty: 'knee',
        address: '201 S. Alvarado Street, Suite 501',
        city: 'Los Angeles, CA',
        zip: '90057',
        phone: '213-207-5660',
        web: 'https://laoi.org'
      },

      { name: 'Eric S. Millstein, M.D.',
        group: nil,
        specialty: 'knee',
        address: '2080 Century Park East, Suite 1204',
        city: 'Los Angeles, CA',
        zip: '90067',
        phone: '310-595-1030',
        web: 'millsteinorthopedics.com'
      },

      { name: 'Frederic G. Nicola, M.D.',
        group: nil,
        specialty: 'knee',
        address: '13160 Mindanao Way, Suite 300',
        city: 'Marina del Rey, CA',
        zip: '90292',
        phone: '310-574-0400',
        web: 'nicolamd.com'
       },

      { name: 'Daniel A. Oakes, M.D.',
        group: nil,
        specialty: 'knee',
        address: '1520 San Pablo Street, Suite 2000',
        city: 'Los Angeles, CA',
        zip: '90033',
        phone: '323-442-5860',
        web: 'ortho.keckmedicine.org'
      },

      { name: 'Brad L. Penenberg, M.D.',
        group: nil,
        specialty: 'knee',
        address: '120 S. Spalding Drive',
        city: 'Beverly Hills, CA',
        zip: '90212',
        phone: '310-860-3470',
        web: 'www.hipkneemis.com'
      },
        
      { name: 'Andrew I. Spitzer, M.D.',
        group: 'Cedars Sinai Medical Center',
        specialty: 'knee',
        address: '444 S. San Vicente Blvd., Suite 603',
        city: 'Los Angeles, CA',
        zip: '90048',
        phone: '310-423-4566',
        web: 'www.cedars-sinai.edu'
      },

      # SHOULDER DOCTORS

      { name: 'Greg J. Adamson, M.D.',
        group: 'Congress Medical Associates',
        specialty: 'shoulder',
        address: '800 S. Raymond Ave.',
        city: 'Pasadena, CA',
        zip: '91105',
        phone: '626-795-8051',
        web: 'www.congressmedical.com'
      },

      { name: 'Neal S. ElAttrache, M.D.',
        group: 'Kerlan-Jobe Orthopaedic Clinic',
        specialty: 'shoulder',
        address: '6801 Park Terrace, Suite 400',
        city: 'Los Angeles, CA',
        zip: '90045',
        phone: '310-665-7151',
        web: 'www.kerlanjobe.com' 
      },

      { name: 'Rishi Garg, M.D.',
        group: 'Congress Medical Associates',
        specialty: 'shoulder',
        address: '289 W. Huntington Dr., Suite 103',
        city: 'Arcadia, CA',
        zip: '91007',
        phone: '626-821-0707',
        web: 'www.congressmedical.com'
      },

      { name: 'Michael P. Hall, M.D.',
        group: 'Kaiser Permanente',
        specialty: 'shoulder',
        address: '4760 Sunset Blvd.',
        city: 'Los Angeles, CA',
        zip: '90027',
        phone: '323-783-4011',
        web: 'kp.kaiserpermanente.org'
      },

      { name: 'John M. Itamura, M.D.',
        group: 'Kerlan-Jobe Orthopaedic Clinic',
        specialty: 'shoulder',
        address: '1700 E. Cesar E Chavez Ave., Suite 140',
        city: 'Los Angeles, CA',
        zip: '90033',
        phone: '323-307-8913',
        web: 'www.kerlanjobe.com'
      }, 

      { name: 'Ronald S. Kvitne, M.D.',
        group: 'Kerlan-Jobe Orthopaedic Clinic',
        specialty: 'shoulder',
        address: '6801 Park Terrace, Suite 400',
        city: 'Los Angeles, CA',
        zip: '90045',
        phone: '424-256-9022',
        web: 'drkvitne.com'
      },

      { name: 'Stephen J. Lombardo, M.D.',
        group: 'Kerlan-Jobe Orthopaedic Clinic',
        specialty: 'shoulder',
        address: '6801 Park Terrace, Suite 400',
        city: 'Los Angeles, CA',
        zip: '90045',
        phone: '310-665-7200',
        web: 'www.kerlanjobe.com' 
      },

      { name: 'Edward J. McPherson, M.D.',
        group: nil,
        specialty: 'shoulder',
        address: '201 S. Alvarado Street, Suite 501',
        city: 'Los Angeles, CA',
        zip: '90057',
        phone: '213-207-5660',
        web: 'https://laoi.org'
      },
        
      { name: 'Eric S. Millstein, M.D.',
        group: nil,
        specialty: 'shoulder',
        address: '2080 Century Park East, Suite 1204',
        city: 'Los Angeles, CA',
        zip: '90067',
        phone: '310-595-1030',
        web: 'millsteinorthopedics.com'
      },

      { name: 'Marc A. Samson, M.D.',
        group: 'Los Angeles Orthopaedic Center',
        specialty: 'shoulder',
        address: '1245 Wilshire Blvd., Suite 400',
        city: 'Los Angeles, CA',
        zip: '90017',
        phone: '213-482-2992',
        web: 'laorthocenter.com'
      },

      { name: 'Kourosh K. Shamlou, M.D.',
        group: 'RMS Medical Group',
        specialty: 'shoulder',
        address: '5211 E. Washington Blvd.',
        city: 'Commerce, CA',
        zip: '90040',
        phone: '323-980-9002',
        web: 'www.rmsmedicalgroup.com'
      },

      # HIP DOCTORS

      { name: 'Harlan C. Amstutz, M.D.',
        group: 'Joint Replacement Institute',
        specialty: 'hip',
        address: '2200 W. Third Street, Suite 400',
        city: 'Los Angeles, CA',
        zip: '90057',
        phone: '888-574-3627',
        web: 'www.jri-docs.com'
      },

      { name: 'Robert E. Klenck, M.D.',
        group: 'Hip & Pelvis Institute',
        specialty: 'hip',
        address: '2001 Santa Monica Blvd., Suite 760',
        city: 'Santa Monica, CA',
        zip: '90404',
        phone: '310-582-7475',
        web: 'www.hipandpelvis.com'
      },

      { name: 'William T. Long, M.D.',
        group: nil,
        specialty: 'hip',
        address: '637 S. Lucas Ave., Suite 101',
        city: 'Los Angeles, CA',
        zip: '90017',
        phone: '213-977-2280',
        web: 'www.orthocsi.com'
      },

      { name: 'Joel M. Matta, M.D.',
        group: 'Hip & Pelvis Institute',
        specialty: 'hip',
        address: '2001 Santa Monica Blvd., Suite 760',
        city: 'Santa Monica, CA',
        zip: '90404',
        phone: '310-582-7475',
        web: 'www.hipandpelvis.com'
      },
        
      { name: 'Edward J. McPherson, M.D.',
        group: nil,
        specialty: 'hip',
        address: '201 S. Alvarado Street, Suite 501',
        city: 'Los Angeles, CA',
        zip: '90057',
        phone: '213-207-5660',
        web: 'https://laoi.org'
      },

      { name: 'John R. Moreland, M.D.',
        group: nil,
        specialty: 'hip',
        address: '2001 Santa Monica Blvd., Suite 1280W',
        city: 'Santa Monica, CA',
        zip: '90404',
        phone: '310-453-1911',
        web: 'orthodoc.aaos.org/johnmorelandmd'
      },

      { name: 'Frederic G. Nicola, M.D.',
        group: nil,
        specialty: 'hip',
        address: '13160 Mindanao Way, Suite 300',
        city: 'Marina del Rey, CA',
        zip: '90292',
        phone: '310-574-0400',
        web: 'nicolamd.com'
      },

      { name: 'Daniel A. Oakes, M.D.',
        group: nil,
        specialty: 'hip',
        address: '1520 San Pablo Street, Suite 2000',
        city: 'Los Angeles, CA',
        zip: '90033',
        phone: '323-442-5860',
        web: 'ortho.keckmedicine.org'
      },

      { name: 'Brad L. Penenberg, M.D.',
        group: nil,
        specialty: 'hip',
        address: '120 S. Spalding Drive',
        city: 'Beverly Hills, CA',
        zip: '90212',
        phone: '310-860-3470',
        web: 'www.hipkneemis.com'
      },

      { name: 'Andrew I. Spitzer, M.D.',
        group: 'Cedars Sinai Medical Center',
        specialty: 'hip',
        address: '444 S. San Vicente Blvd., Suite 603',
        city: 'Los Angeles, CA',
        zip: '90048',
        phone: '310-423-4566',
        web: 'www.cedars-sinai.edu'
      },

      { name: 'Bert J. Thomas, M.D.',
        group: nil,
        specialty: 'hip',
        address: '1250 16th Street, Suite 2100',
        city: 'Santa Monica, CA',
        zip: '90404',
        phone: '424-259-9882',
        web: 'www.bertjthomasmd.com'
      },

      { name: 'Erik N. Zeegan, M.D.',
        group: nil,
        specialty: 'hip',
        address: '5525 Etiwanda Ave., Suite 324',
        city: 'Tarzana, CA',
        zip: '91356',
        phone: '818-708-9090',
        web: 'www.anteriorhipreplacementlosangeles.com'
      },
      
      # FOOT/ANKLE DOCTORS

      { name: 'Timothy P. Charlton, M.D.',
        group: 'Cedars Sinai Medical Center',
        specialty: 'foot/ankle',
        address: '444 S. San Vicente Blvd.',
        city: 'Los Angeles, CA',
        zip: '90048',
        phone: '310-423-9998',
        web: 'www.timothycharlton.com' 
      }, 

      { name: 'Richard D. Ferkel, M.D.',
        group: 'Southern California Orthopedic Institute',
        specialty: 'foot/ankle',
        address: '6815 Noble Ave.',
        city: 'Van Nuys, CA',
        zip: '91405',
        phone: '818-901-6600',
        web: 'www.scoi.com' 
      },

      { name: 'Thomas L. Harris, M.D.',
        group: 'Congress Medical Associates',
        specialty: 'foot/ankle',
        address: '800 S. Raymond Ave.',
        city: 'Pasadena, CA',
        zip: '91105',
        phone: '626-795-8051',
        web: 'www.congressmedical.com'
      },

      { name: 'Kenneth S. Jung, M.D.',
        group: 'Kerlan-Jobe Orthopaedic Clinic',
        specialty: 'shoulder',
        address: '2400 E. Katella Ave., Suite 400',
        city: 'Anaheim, CA',
        zip: '92806',
        phone: '714-937-1338',
        web: 'www.kerlanjobe.com' 
      },
      
      { name: 'Robert M. Kay, M.D.',
        group: 'Children’s Orthopaedic Center',
        specialty: 'foot/ankle',
        address: '4650 W. Sunset Blvd., Suite 69',
        city: 'Los Angeles, CA',
        zip: '90027',
        phone: '323-361-2142',
        web: 'www.chla.org'
      },

      { name: 'Phillip K. Kwong, M.D.',
        group: 'Kerlan-Jobe Orthopaedic Clinic',
        specialty: 'foot/ankle',
        address: '2400 E. Katella Ave., Suite 400',
        city: 'Anaheim, CA',
        zip: '92806',
        phone: '714-937-1338',
        web: 'www.kerlanjobe.com' 
      },
      
      { name: 'Pamela C. Luk, M.D.',
        group: 'Congress Medical Associates',
        specialty: 'foot/ankle',
        address: '289 W. Huntington Dr., Suite 103',
        city: 'Arcadia, CA',
        zip: '91007',
        phone: '626-821-0707',
        web: 'www.congressmedical.com'
      },

      { name: 'Glenn B. Pfeffer, M.D.',
        group: 'Cedars Sinai Medical Center',
        specialty: 'foot/ankle',
        address: '444 S. San Vicente Blvd., Suite 603',
        city: 'Los Angeles, CA',
        zip: '90048',
        phone: '310-423-9736',
        web: 'www.cedars-sinai.edu'
      },

      { name: 'Nelson F. Soohoo, M.D.',
        group: 'UCLA Orthopaedic Surgery',
        specialty: 'foot/ankle',
        address: '1250 16th Street, Suite 2100',
        city: 'Santa Monica, CA',
        zip: '90404',
        phone: '310-319-1234',
        web: 'ortho.ucla.edu' 
      },

      { name: 'David B. Thordarson, M.D.',
        group: 'Cedars Sinai Medical Center',
        specialty: 'foot/ankle',
        address: '444 S. San Vicente Blvd., Suite 603',
        city: 'Los Angeles, CA',
        zip: '90048',
        phone: '310-423-9211',
        web: 'www.cedars-sinai.edu'
      },

      # HAND/WRIST DOCTORS

      { name: 'Annette Billings, M.D.',
        group: 'Los Angeles Orthopaedic Center',
        specialty: 'hand/wrist',
        address: '1245 Wilshire Blvd., Suite 400',
        city: 'Los Angeles, CA',
        zip: '90017',
        phone: '213-482-2992',
        web: 'laorthocenter.com'
      },

      { name: 'Glenn D. Cohen, M.D.',
        group: nil,
        specialty: 'hand/wrist',
        address: '696 Hampshire Road, Suite 180',
        city: 'Westlake Village, CA',
        zip: '91361',
        phone: '805-370-6877',
        web: 'www.handsurgeon.org'
      },

      { name: 'Myles J. Cohen, M.D.',
        group: 'Cedars Sinai Medical Center',
        specialty: 'hand/wrist',
        address: '8653 W. Third Street, Suite 990',
        city: 'Los Angeles, CA',
        zip: '90048',
        phone: '310-423-5900',
        web: 'www.cedars-sinai.edu'
      }, 
        
      { name: 'David C. Hay, M.D.',
        group: 'Kerlan-Jobe Orthopaedic Clinic',
        specialty: 'hand/wrist',
        address: '2400 E. Katella Ave., Suite 400',
        city: 'Anaheim, CA',
        zip: '92806',
        phone: '714-937-1338',
        web: 'kerlanjobe.com'
      },

      { name: 'John T. Knight, M.D.',
        group: nil,
        specialty: 'hand/wrist',
        address: '8929 Wilshire Blvd., Suite 320',
        city: 'Beverly Hills, CA',
        zip: '90211',
        phone: '310-432-9363',
        web: 'www.handandwristinstitute.com'
      },

      { name: 'Steven D. Lin, M.D.',
        group: 'Congress Medical Associates',
        specialty: 'hand/wrist',
        address: '289 W. Hunt,ngton Dr., Suite 103',
        city: 'Arcadia, CA',
        zip: '91007',
        phone: '626-821-0707',
        web: 'www.congressmedical.com'
      },

      { name: 'Roy A. Meals, M.D.',
        group: nil,
        specialty: 'hand/wrist',
        address: '1033 Gayley Ave, Suite 104',
        city: 'Los Angeles, CA',
        zip: '90024',
        phone: '310-824-1262',
        web: 'www.drmeals.com'
      },

      { name: 'Amir H. Mostofi, M.D.',
        group: 'Risser Orthopaedic Group',
        specialty: 'hand/wrist',
        address: '2627 E. Washington Blvd.',
        city: 'Pasadena, CA',
        zip: '91107',
        phone: '626-797-2002',
        web: 'www.risserortho.com'
      },

      { name: 'Raymond B. Raven III, M.D.',
        group: nil,
        specialty: 'hand/wrist',
        address: '2625 W. Alameda Ave., Suite 116',
        city: 'Burbank, CA',
        zip: '91505',
        phone: '818-841-3936',
        web: 'www.rayravenmd.com'
      },

      { name: 'Michael P. Rubinstein, M.D.',
        group: nil,
        specialty: 'hand/wrist',
        address: '101 Laguna Road, Suite A',
        city: 'Fullerton, CA',
        zip: '92835',
        phone: '714-879-0050',
        web: 'www.fullertonorthopaedic.com'
      },

      { name: 'Steven S. Shin, M.D.',
        group: 'Kerlan-Jobe Orthopaedic Clinic',
        specialty: 'hand/wrist',
        address: '6801 Park Terrace, Suite 400',
        city: 'Los Angeles, CA',
        zip: '90045',
        phone: '310-665-7200',
        web: 'www.kerlanjobe.com'
      },

      # ELBOW DOCTORS

      { name: 'Greg J. Adamson, M.D.',
        group: 'Congress Medical Associates',
        specialty: 'elbow',
        address: '800 S. Raymond Ave.',
        city: 'Pasadena, CA',
        zip: '91105',
        phone: '626-795-8051',
        web: 'www.congressmedical.com' 
      },

      { name: 'Neal S. ElAttrache, M.D.',
        group: 'Kerlan-Jobe Orthopaedic Clinic',
        specialty: 'elbow',
        address: '6801 Park Terrace, Suite 400',
        city: 'Los Angeles, CA',
        zip: '90045',
        phone: '310-665-7151',
        web: 'www.kerlanjobe.com' 
      },

      { name: 'Rishi Garg, M.D.',
        group: 'Congress Medical Associates',
        specialty: 'elbow',
        address: '289 W. Huntington Dr., Suite 103',
        city: 'Arcadia, CA',
        zip: '91007',
        phone: '626-821-0707',
        web: 'www.congressmedical.com',
      },
        
      { name: 'John M. Itamura, M.D.',
        group: 'Kerlan-Jobe Orthopaedic Clinic',
        specialty: 'elbow',
        address: '1700 E. Cesar E Chavez Ave., Suite 140',
        city: 'Los Angeles, CA',
        zip: '90033',
        phone: '323-307-8913',
        web: 'www.kerlanjobe.com'
      },

      { name: 'Stephen J. Lombardo, M.D.',
        group: 'Kerlan-Jobe Orthopaedic Clinic',
        specialty: 'elbow',
        address: '6801 Park Terrace, Suite 400',
        city: 'Los Angeles, CA',
        zip: '90045',
        phone: '310-665-7200',
        web: 'www.kerlanjobe.com'    
      },

      { name: 'Raffy Mirzayan, M.D.',
        group: 'Kaiser Permanente',
        specialty: 'elbow',
        address: '1011 Baldwin Park Blvd.',
        city: 'Baldwin Park, CA',
        zip: '91706',
        phone: '626-851-1011',
        web: 'kp.kaiserpermanente.org'
      },

      { name: 'Michael L. Pearl, M.D.',
        group: 'Kaiser Permanente',
        specialty: 'elbow',
        address: '4760 W. Sunset Blvd.',
        city: 'Los Angeles, CA',
        zip: '90027',
        phone: '323-783-4011',
        web: 'kp.kaiserpermanente.org'
      },

      { name: 'Raymond B. Raven III, M.D.',
        group: nil,
        specialty: 'elbow',
        address: '2625 W. Alameda Ave., Suite 116',
        city: 'Burbank, CA',
        zip: '91505',
        phone: '818-841-3936',
        web: 'www.rayravenmd.com'
      },
        
      { name: 'James A. Shankwiler, M.D.',
        group: 'Congress Medical Associates',
        specialty: 'elbow',
        address: '800 S. Raymond Ave.',
        city: 'Pasadena, CA',
        zip: '91105',
        phone: '626-795-8051',
        web: 'www.congressmedical.com'
      },

      { name: 'Michael F. Shepard, M.D.',
        group: nil,
        specialty: 'elbow',
        address: '280 S. Main Street',
        city: 'Orange, CA',
        zip: '92868',
        phone: '714-937-2148',
        web: 'www.elbowsurgeon.net'
      }

    ]




    Doctor.delete_all

    DOCTORS.each do |d|
      Doctor.create(d)
    end 
  end 
end 