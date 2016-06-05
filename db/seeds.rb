# coding: utf-8
AdminUser.create!(email: 'admin@example.com', password: 'asdfasdf', password_confirmation: 'asdfasdf')

womens_meet = Meet.create!(name: 'Women\'s Invitational 2016',
                           starts_on: '2016-10-01',
                           ends_on: '2016-10-03',
                           gender: 'female',
                           is_current: true)

home = Page.create!(title: 'Home',
                    permalink: 'home',
                    content: '',
                    menu_index: 0,
                    is_displayed: true)

previous = Page.create!(title: 'Previous Meets',
                        permalink: 'previous-meets',
                        content: 'Something about previous meets',
                        menu_index: '3',
                        is_displayed: false)

home.headlines.create!(announcement: '<p>Welcome to the new Cal Benefit Cup website!</p>',
                       published_on: '2016-05-06')

home.headlines.create!(announcement: '<p>Registration for the October event will open soon.</p>',
                       published_on: '2016-05-05')

meet_info = Page.create!(title: 'Women\'s Invitational 2016',
                         permalink: 'womens-invitational-2016',
                         content: 'This is the women\'s meet info page',
                         menu_index: 2,
                         is_displayed: true,
                         meet_id: womens_meet.id)

register = Page.create!(title: 'Registration',
                        permalink: 'registration',
                        content: '<h3><u>How to Register</u></h3> <ol> <li>Fill and mail in the REGISTRATION FORM to the address listed on the form OR Email your Excel roster to calbenefitcup@gmail.com. To be complete, registration must include: <ul> <li>Club Name, USAG #, Address, Telephone &amp; Email</li> <li>Coach Name(s), USAG # &amp; Safety Certification Expiration Date</li> <li>Athlete Name, USAG #, Level, Birthdate &amp; T-shirt Size</li> </ul> </li> <li>Make check payable to Cal Gymnastics Boosters (Minimum $100.00 non-refundable deposit)</li> <li>Mail check to:</li> </ol> <p>Brett McClure<br /> 378 Simpson Center (SAHPC)<br /> 2227 Piedmont Ave., Berkeley, CA 94720</p> <p>&nbsp;</p> <h3><u>2016 Competitive Entry Fees</u></h3> <table border="1" cellpadding="1" cellspacing="1"> <tbody> <tr> <td><strong>Compulsory Levels 4-7</strong></td> <td>$15</td> </tr> <tr> <td><strong>Optionals Levels 8-10 and Elite</strong></td> <td>$115</td> </tr> <tr> <td><strong>Team Fee*</strong></td> <td>$65</td> </tr> </tbody> </table> <p>* A team is comprised of 3 athletes in the same level.</p> <p>A Cal Benefit Cup grip bag and other materials are included with all entries.</p> <p>&nbsp;</p> <h3><u>Important Registration Policies</u></h3> <ul> <li>It is your responsibility to provide coach and gymnast information at registration. No coach can be allowed on the floor during the meet if USAG and safety certification information is not submitted AND current. No gymnast can be allowed to compete if USAG information is not submitted AND current.</li> <li>Registration for each session will close when the session is full</li> <li>Available slots are allotted on a first-come, first served basis</li> <li>Slots are only guaranteed after corresponding registration fees have been received</li> <li>All eligible teams will be registered, unless you specifically opt out of team competition</li> <li>A non-refundable registration deposit ($100) is due upon application</li> <li>Make check payable to Cal Gymnastics Boosters</li> <li>Full balance due by Dec 12, 2015</li> </ul> <h3><u>Refunds</u></h3> <ul> <li>Requests for refunds must be received before Dec 12, 2015</li> <li>After Dec 12, 2015 refund requests must be accompanied by a doctor&rsquo;s note</li> <li>No refunds for requests made after Jan 2, 2016</li> <li>All refunds will be processed after the meet</li> </ul>',
                        parent_page_id: meet_info.id,
                        menu_index: 1,
                        is_displayed: true)

schedule = Page.create!(title: 'Schedule',
                        permalink: 'schedule',
                        content: 'This is the schedule page',
                        parent_page_id: meet_info.id,
                        menu_index: 0,
                        is_displayed: true)

admission = Page.create!(title: 'Admission',
                         permalink: 'admission',
                         content: '<table border="1" cellpadding="1" cellspacing="1"> <tbody> <tr> <td><strong>Adults (Ages 13-64)</strong></td> <td><strong>Price</strong></td> </tr> <tr> <td>All Session Pass (Including Level 10 Finals)</td> <td>$25</td> </tr> <tr> <td>JO Sessions (L4 &ndash; 10)</td> <td>$10/session</td> </tr> <tr> <td>Level 10 Finals</td> <td>$15</td> </tr> <tr> <td><strong>Children (Ages 4&ndash;12) &amp; Seniors (Ages 65+)</strong></td> <td>&nbsp;</td> </tr> <tr> <td>All Session Pass (Including Level 10 Finals)</td> <td>$10</td> </tr> <tr> <td>JO Sessions (Level 4 &ndash; 10)</td> <td>$5/session</td> </tr> <tr> <td>Level 10 Finals</td> <td>$5</td> </tr> <tr> <td><strong>College Students with ID</strong></td> <td>$5</td> </tr> <tr> <td><strong>Program</strong></td> <td>$5</td> </tr> </tbody> </table> <p>&nbsp;</p>',
                         parent_page_id: meet_info.id,
                         menu_index: 1,
                         is_displayed: true)

haas_pavilion = Page.create!(title: 'Haas Pavilion',
                             permalink: 'haas-pavilion',
                             content: 'This is the haas pavilion page',
                             parent_page_id: meet_info.id,
                             menu_index: 2,
                             is_displayed: true)

accommodations = Page.create!(title: 'Accommodations',
                              permalink: 'accommodations',
                              content: '<h4><u>Host Hotel</u></h4> <p><strong>Marriot Courtyard Oakland Emeryville</strong><br /> 5555 Shellmound St,<br /> Emeryville, CA 94608<br /> 510-652-8777</p> <p>For discounted rate please call (800) 828-4720 and ask for the <strong>Cal Benefit Club</strong> room block at the <strong>Courtyard by Marriott Oakland Emeryville</strong>. Or make online reservations:</p> <p class="text-center"><a class="button large center" href="http://www.marriott.com/meeting-event-hotels/group-corporate-travel/groupCorp.mi?resLinkData=Cal%20Benefit%20Cup%20%5EOAKMV%60CALCALA%7CCALCALB%60139.00-149%60USD%60false%604%601/14/16%601/18/16%6012/18/15&amp;app=resvlink&amp;stop_mobi=yes">Book Your Group Rate for Cal Benefit Cup</a></p> <p><strong>Room Rates of $139.00 for a king bed and $149.00 for two queen beds with an overnight parking rate of $9.00 per vehicle apply daily.</strong></p> <p>Please make reservations before the cutoff date of <strong>Friday December 18th, 2015</strong> to receive the group rate.</p> <p><strong>Seeking sponsors and/or donations for hospitality, concessions, apparel, misc.</strong></p> <hr /> <h4><u>Hotel Information</u></h4> <table border="1" cellpadding="1" cellspacing="1"> <tbody> </tbody> <colgroup> <col width="50%" /> <col width="50%" /> </colgroup> <tbody> <tr width="50%"> <td>Bancroft Hotel<br /> 2680 Bancroft Way,<br /> Berkeley, CA 94704<br /> 510-549-1000</td> <td>Marriot Courtyard Oakland Emeryville<br /> 5555 Shellmound St,<br /> Emeryville, CA 94608<br /> 510-652-8777</td> </tr> <tr width="50%"> <td>Hotel Durant<br /> 2600 Durant Ave,<br /> Berkeley, CA 94704<br /> 800-238-7268</td> <td>Four Points by Sheraton<br /> 1603 Powell St,<br /> Emeryville, CA 94608<br /> 510-547-7888</td> </tr> <tr> <td>Hotel Shattuck Plaza Berkeley<br /> 2086 Allston Way,<br /> Berkeley, CA 94704<br /> 510-845-7300</td> <td>Hilton Garden Inn<br /> 1800 Powell St,<br /> Emeryville, CA 94608<br /> 510-658-9300</td> </tr> <tr> <td>The Berkeley City Club<br /> 2315 Durant Ave<br /> Berkeley, CA 94704<br /> 510-848-7800</td> <td>Double Tree by Hilton<br /> 200 Marina Blvd,<br /> Berkeley, CA 94710<br /> 510-548-7920</td> </tr> <tr> <td>Holiday Inn Express &amp; Suites<br /> 1175 University Ave,<br /> Berkeley, CA 94702<br /> 510-548-1700</td> <td>&nbsp;</td> </tr> </tbody> </table> <h4><u>Restaurants</u></h4> <table border="1" cellpadding="1" cellspacing="1"> <tbody> </tbody> <colgroup> <col width="50%" /> <col width="50%" /> </colgroup> <tbody> <tr> <td><a href="http://paragonrestaurant.com/home.berkeley">Paragon 41</a><br /> Tunnel Road<br /> Berkeley, CA 94705<br /> (510) 549-8585</td> <td><a href="http://www.extremepizza.com">Extreme Pizza</a><br /> 2352 Shattuck Avenue<br /> Berkeley, CA<br /> (510) 486-0770</td> </tr> <tr> <td><a href="http://www.berkeleyfacultyclub.com">Faculty Club</a><br /> 1 Faculty Club<br /> Berkeley, CA 94720<br /> (510) 540-5678</td> <td><a href="http://barbacoaorinda.com">Barbacoa</a><br /> 2 Theater Square #145<br /> Orinda, CA 94563<br /> (925) 254-1183</td> </tr> <tr> <td><a href="http://www.five-berkeley.com">FIVE at The Hotel Shattuck</a><br /> 2086 Allston Way<br /> Berkeley, CA 94704<br /> (510) 845-7300</td> <td><a href="http://www.theforgepizza.com">Forge Pizza Restaurant &amp; Bar</a><br /> 66 Franklin Street<br /> Oakland, CA 94607<br /> (510) 268-3200</td> </tr> <tr> <td><a href="http://www.peets.com">Peet&rsquo;s Coffee &amp; Tea</a><br /> 2501 Telegraph Avenue<br /> Berkeley, CA<br /> (510) 225-7700</td> <td><a href="http://kingfishpubandcafe.com">Kingfish Pub &amp; Caf&eacute;</a><br /> 5227 Claremont Avenue<br /> Oakland, CA 94618<br /> (510) 655-7373</td> </tr> <tr> <td><a href="http://www.pyramidbrew.com/alehouses/berkeley">Pyramid Brewery</a><br /> 901 Gilman Street<br /> Berkeley, CA 94710<br /> (510) 528-9880</td> <td>&nbsp;</td> </tr> </tbody> </table>',
                              parent_page_id: meet_info.id,
                              menu_index: 3,
                              is_displayed: true)

staff = Page.create!(title: 'Staff',
                     permalink: 'staff',
                     content: '<p style="text-align: center;"><strong>Meet Director</strong><br /> Brett McClure<br /> University of California<br /> 378 Simpson Center (SAHPC)<br /> Berkeley, CA 94720-4422<br /> <a href="mailto:bmcclure@berkeley.edu">bmcclure@berkeley.edu</a></p> <p style="text-align: center;"><strong>Assistant Meet Director</strong><br /> JT Okada<br /> University of California<br /> 379 Simpson Center (SAHPC)<br /> Berkeley, CA 94720-4422<br /> <a href="mailto:jto@berkeley.edu">jto@berkeley.edu</a></p> <p style="text-align: center;"><strong>Volunteer Assistant Coach</strong><br /> Jonathan Charter<br /> University of California<br /> 379 Simpson Center (SAHPC)<br /> Berkeley, CA 94720-4422<br /> <a href="mailto:jcharter@berkeley.edu">jcharter@berkeley.edu</a></p> <p style="text-align: center;"><strong>Media Relations</strong><br /> Jordan Stepp<br /> Assistant Athletic Communications<br /> University of California<br /> 349 Haas Pavilion<br /> Berkeley, CA 94720-4422<br /> (510) 643-5846<br /> (510) 643-7778 fax<br /> <a href="mailto:aowheeler@berkeley.edu">aowheeler@berkeley.edu</a></p> <p style="text-align: center;"><strong>Event Management</strong><br /> Jaime Santoyo<br /> Event Manager<br /> University of California<br /> 77E Haas Pavilion<br /> Berkeley, CA 94720-4422<br /> (510) 642-5454<br /> (510) 604-8132 cell<br /> (510) 643-1551 fax<br /> <a href="mailto:jsantoyo@berkeley.edu">jsantoyo@berkeley.edu</a></p> <p style="text-align: center;"><strong>Facility Management</strong><br /> Mike Huff<br /> Asst Athletic Director of Facilities<br /> 75 Haas Pavilion<br /> Berkeley, CA 94720-4422<br /> (510) 643-9759<br /> (510) 642-9262 fax<br /> <a href="mailto:mhuff@berkeley.edu">mhuff@berkeley.edu</a></p>',
                     parent_page_id: meet_info.id,
                     menu_index: 4,
                     is_displayed: true)

sponsors = Page.create!(title: 'Sponsors',
                        permalink: 'sponsors',
                        content: 'This is the sponsors page',
                        parent_page_id: meet_info.id,
                        menu_index: 3,
                        is_displayed: true)

about_us = Page.create!(title: 'About',
                        permalink: 'about',
                        content: '<h4><u>Our History</u></h4> <p>For over 100 years, Cal Men&rsquo;s Gymnastics has provided opportunities for young men to develop their academic pursuits, gymnastics abilities and career pathways. With a proud tradition of achieving excellence through discipline, Cal Gymnastics has consistently been and will continue to be a top ranked NCAA team and train gymnasts for national and international competitions. It is the purpose of the Cal Benefit Cup to provide a quality meet in which:</p> <ul> <li>Junior athletes can enjoy the excitement of competing on a college campus</li> <li>We can raise awareness of the value of collegiate men&rsquo;s gymnastics competition</li> <li>We are thrilled to announce that we are donating 100% of the proceeds to the Cal Men&rsquo;s Gymnastics Program!</li> </ul> <p>With this mission, we hope you will join our efforts to secure and further develop these opportunities for young gymnasts, the Cal team, and men&rsquo;s gymnastics as a whole.</p> <h4><u>Annual Fundraising</u></h4> <p>Annual fundraising is vital to the continued presence of men&rsquo;s gymnastics on the Berkeley campus. Annual fund dollars provide the necessary support men&rsquo;s gymnastics scholar-athletes need to succeed academically, athletically and personally.</p> <p>&nbsp;</p> <p class="text-center"><a class="button large center" href="http://www.calbears.com/ViewArticle.dbml?DB_OEM_ID=30100&amp;ATCLID=209272691">Annual Fund</a></p>',
                        menu_index: 4,
                        is_displayed: true)
