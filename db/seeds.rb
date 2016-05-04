# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')

home = Page.create!(title: 'home',
                    permalink: 'home',
                    content: 'This is the homepage',
                    menu_index: 0,
                    is_displayed: true)


registration = Page.create!(title: 'registration',
                            permalink: 'registration',
                            content: 'This is the registration page',
                            menu_index: 1,
                            is_displayed: true)

meet_info = Page.create!(title: 'meet info',
                         permalink: 'meet_info',
                         content: 'This is the meet info page',
                         menu_index: 2,
                         is_displayed: true)

staff = Page.create!(title: 'staff',
                     permalink: 'staff',
                     content: 'This is the staff page',
                     parent_page_id: meet_info.id,
                     menu_index: 0,
                     is_displayed: true)


admissions = Page.create!(title: 'admissions',
                          permalink: 'admissions',
                          content: 'This is the admissions page',
                          parent_page_id: meet_info.id,
                          menu_index: 1,
                          is_displayed: true)

schedule = Page.create!(title: 'schedule',
                        permalink: 'schedule',
                        content: 'This is the schedule page',
                        parent_page_id: meet_info.id,
                        menu_index: 2,
                        is_displayed: true)

haas_pavillion = Page.create!(title: 'haas pavillion',
                              permalink: 'haas_pavillion',
                              content: 'This is the haas pavillion page',
                              parent_page_id: meet_info.id,
                              menu_index: 3,
                              is_displayed: true)

accommodations = Page.create!(title: 'accommodations',
                              permalink: 'accommodations',
                              content: 'This is the accommodations page',
                              parent_page_id: meet_info.id,
                              menu_index: 4,
                              is_displayed: true)

restaurants = Page.create!(title: 'restaurants',
                           permalink: 'restaurants',
                           content: 'This is the restaurants page',
                           parent_page_id: meet_info.id,
                           menu_index: 5,
                           is_displayed: true)

travel = Page.create!(title: 'travel',
                      permalink: 'travel',
                      content: 'This is the travel page',
                      parent_page_id: meet_info.id,
                      menu_index: 6,
                      is_displayed: true)

parking = Page.create!(title: 'parking',
                       permalink: 'parking',
                       content: 'This is the parking page',
                       parent_page_id: meet_info.id,
                       menu_index: 7,
                       is_displayed: true)


sponsors = Page.create!(title: 'sponsors',
                        permalink: 'sponsors',
                        content: 'This is the sponsors page',
                        menu_index: 3,
                        is_displayed: true)

about_us = Page.create!(title: 'about',
                        permalink: 'about',
                        content: 'This is the about us page',
                        menu_index: 4,
                        is_displayed: true)

contact = Page.create!(title: 'contact',
                       permalink: 'contact',
                       content: 'This is the contact page',
                       menu_index: 5,
                       is_displayed: true)

