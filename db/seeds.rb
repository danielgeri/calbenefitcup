# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')

home = Page.create!(title: 'Home',
                    permalink: 'home',
                    content: 'This is the homepage',
                    menu_index: 0,
                    is_displayed: true)


register = Page.create!(title: 'Register',
                            permalink: 'registration',
                            content: 'This is the registration page',
                            menu_index: 1,
                            is_displayed: true)

meet_info = Page.create!(title: 'Meet Info',
                         permalink: 'meet_info',
                         content: 'This is the meet info page',
                         menu_index: 2,
                         is_displayed: true)

staff = Page.create!(title: 'Staff',
                     permalink: 'staff',
                     content: '<p style="text-align: center;"><strong>Meet Director</strong><br /> Brett McClure<br /> University of California<br /> 378 Simpson Center (SAHPC)<br /> Berkeley, CA 94720-4422<br /> <a href="mailto:bmcclure@berkeley.edu">bmcclure@berkeley.edu</a></p> <p style="text-align: center;"><strong>Assistant Meet Director</strong><br /> JT Okada<br /> University of California<br /> 379 Simpson Center (SAHPC)<br /> Berkeley, CA 94720-4422<br /> <a href="mailto:jto@berkeley.edu">jto@berkeley.edu</a></p> <p style="text-align: center;"><strong>Volunteer Assistant Coach</strong><br /> Jonathan Charter<br /> University of California<br /> 379 Simpson Center (SAHPC)<br /> Berkeley, CA 94720-4422<br /> <a href="mailto:jcharter@berkeley.edu">jcharter@berkeley.edu</a></p> <p style="text-align: center;"><strong>Media Relations</strong><br /> Jordan Stepp<br /> Assistant Athletic Communications<br /> University of California<br /> 349 Haas Pavilion<br /> Berkeley, CA 94720-4422<br /> (510) 643-5846<br /> (510) 643-7778 fax<br /> <a href="mailto:aowheeler@berkeley.edu">aowheeler@berkeley.edu</a></p> <p style="text-align: center;"><strong>Event Management</strong><br /> Jaime Santoyo<br /> Event Manager<br /> University of California<br /> 77E Haas Pavilion<br /> Berkeley, CA 94720-4422<br /> (510) 642-5454<br /> (510) 604-8132 cell<br /> (510) 643-1551 fax<br /> <a href="mailto:jsantoyo@berkeley.edu">jsantoyo@berkeley.edu</a></p> <p style="text-align: center;"><strong>Facility Management</strong><br /> Mike Huff<br /> Asst Athletic Director of Facilities<br /> 75 Haas Pavilion<br /> Berkeley, CA 94720-4422<br /> (510) 643-9759<br /> (510) 642-9262 fax<br /> <a href="mailto:mhuff@berkeley.edu">mhuff@berkeley.edu</a></p>',
                     parent_page_id: meet_info.id,
                     menu_index: 0,
                     is_displayed: true)

admission = Page.create!(title: 'Admission',
                          permalink: 'admission',
                          content: '<table border="1" cellpadding="1" cellspacing="1"> <tbody> <tr> <td><strong>Adults (Ages 13-64)</strong></td> <td><strong>Price</strong></td> </tr> <tr> <td>All Session Pass (Including Level 10 Finals)</td> <td>$25</td> </tr> <tr> <td>JO Sessions (L4 &ndash; 10)</td> <td>$10/session</td> </tr> <tr> <td>Level 10 Finals</td> <td>$15</td> </tr> <tr> <td><strong>Children (Ages 4&ndash;12) &amp; Seniors (Ages 65+)</strong></td> <td>&nbsp;</td> </tr> <tr> <td>All Session Pass (Including Level 10 Finals)</td> <td>$10</td> </tr> <tr> <td>JO Sessions (Level 4 &ndash; 10)</td> <td>$5/session</td> </tr> <tr> <td>Level 10 Finals</td> <td>$5</td> </tr> <tr> <td><strong>College Students with ID</strong></td> <td>$5</td> </tr> <tr> <td><strong>Program</strong></td> <td>$5</td> </tr> </tbody> </table> <p>&nbsp;</p>',
                          parent_page_id: meet_info.id,
                          menu_index: 1,
                          is_displayed: true)

schedule = Page.create!(title: 'Schedule',
                        permalink: 'schedule',
                        content: 'This is the schedule page',
                        parent_page_id: meet_info.id,
                        menu_index: 2,
                        is_displayed: true)

haas_pavilion = Page.create!(title: 'Haas Pavilion',
                              permalink: 'haas_pavilion',
                              content: 'This is the haas pavilion page',
                              parent_page_id: meet_info.id,
                              menu_index: 3,
                              is_displayed: true)

accommodations = Page.create!(title: 'Accommodations',
                              permalink: 'accommodations',
                              content: 'This is the accommodations page',
                              parent_page_id: meet_info.id,
                              menu_index: 4,
                              is_displayed: true)

restaurants = Page.create!(title: 'Restaurants',
                           permalink: 'restaurants',
                           content: 'This is the restaurants page',
                           parent_page_id: meet_info.id,
                           menu_index: 5,
                           is_displayed: true)

travel = Page.create!(title: 'Travel',
                      permalink: 'travel',
                      content: 'This is the travel page',
                      parent_page_id: meet_info.id,
                      menu_index: 6,
                      is_displayed: true)

parking = Page.create!(title: 'Parking',
                       permalink: 'parking',
                       content: 'This is the parking page',
                       parent_page_id: meet_info.id,
                       menu_index: 7,
                       is_displayed: true)

sponsors = Page.create!(title: 'Sponsors',
                        permalink: 'sponsors',
                        content: 'This is the sponsors page',
                        menu_index: 3,
                        is_displayed: true)

about_us = Page.create!(title: 'About',
                        permalink: 'about',
                        content: '<p>For over 100 years, Cal Men&rsquo;s Gymnastics has provided opportunities for young men to develop their academic pursuits, gymnastics abilities and career pathways. With a proud tradition of achieving excellence through discipline, Cal Gymnastics has consistently been and will continue to be a top ranked NCAA team and train gymnasts for national and international competitions. It is the purpose of the Cal Benefit Cup to provide a quality meet in which:</p> <ul> <li>Junior athletes can enjoy the excitement of competing on a college campus</li> <li>We can raise awareness of the value of colligate men&rsquo;s gymnastics competition</li> <li>We are thrilled to announce that we are donating 100% of the proceeds to the Cal Men&rsquo;s Gymnastics Program!</li> </ul> <p>With this mission, we hope you will join our efforts to secure and further develop these opportunities for young gymnasts, the Cal team, and men&rsquo;s gymnastics as a whole.</p> <p class="text-center"><a class="button large center" href="http://www.calbears.com/ViewArticle.dbml?DB_OEM_ID=30100&amp;ATCLID=209272691">Annual Fund</a></p> <p>Annual fundraising is vital to the continued presence of men&rsquo;s gymnastics on the Berkeley campus. Annual fund dollars provide the necessary support men&rsquo;s gymnastics scholar-athletes need to succeed academically, athletically and personally.</p>',
                        menu_index: 4,
                        is_displayed: true)
