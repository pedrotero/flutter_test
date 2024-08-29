import 'package:restaurant_tour/models/restaurant.dart';

Future<RestaurantQueryResult?> mockYelpResult() {
  Map<String, dynamic> fakeData = {
    "data": {
      "search": {
        "total": 7518,
        "business": [
          {
            "id": "vHz2RLtfUMVRPFmd7VBEHA",
            "name": "Gordon Ramsay Hell's Kitchen",
            "price": "\$\$\$",
            "rating": 4.4,
            "photos": [
              "https://s3-media2.fl.yelpcdn.com/bphoto/q771KjLzI5y638leJsnJnQ/o.jpg",
            ],
            "reviews": [
              {
                "id": "VJCoQlkk4Fjac0OPoRP8HQ",
                "rating": 5,
                "text":
                    "Me and my husband came to celebrate my birthday here and it was a 10/10 experience. Firstly, I booked the wrong area which was the Gordon Ramsay pub and...",
                "user": {
                  "id": "0bQNLf0POLTW4VhQZqOZoQ",
                  "image_url":
                      "https://s3-media3.fl.yelpcdn.com/photo/i_0K5RUOQnoIw1c4QzHmTg/o.jpg",
                  "name": "Glydel L.",
                },
              },
              {
                "id": "EeCKH7eUVDsZv0Ii9wcPiQ",
                "rating": 5,
                "text":
                    "phenomenal! Bridgette made our experience as superb as the food coming to the table! would definitely come here again and try everything else on the menu,...",
                "user": {
                  "id": "gL7AGuKBW4ne93_mR168pQ",
                  "image_url":
                      "https://s3-media1.fl.yelpcdn.com/photo/iU1sA7y3dEEc4iRL9LnWQQ/o.jpg",
                  "name": "Sydney O.",
                },
              },
              {
                "id": "F88H5ow44AmiwisbrbswPw",
                "rating": 5,
                "text":
                    "This entire experience is always so amazing. Every single dish is cooked to perfection. Every beef dish was so tender. The desserts were absolutely...",
                "user": {
                  "id": "y742Fi1jF_JAqq5sRUlLEw",
                  "image_url":
                      "https://s3-media2.fl.yelpcdn.com/photo/rEWek1sYL0F35KZ0zRt3sw/o.jpg",
                  "name": "Ashley L.",
                },
              }
            ],
            "categories": [
              {
                "title": "New American",
                "alias": "newamerican",
              },
              {
                "title": "Seafood",
                "alias": "seafood",
              }
            ],
            "hours": [
              {
                "is_open_now": false,
              }
            ],
            "location": {
              "formatted_address": "3570 Las Vegas Blvd S\nLas Vegas, NV 89109",
            },
          },
          {
            "id": "faPVqws-x-5k2CQKDNtHxw",
            "name": "Yardbird",
            "price": "\$\$",
            "rating": 4.5,
            "photos": [
              "https://s3-media1.fl.yelpcdn.com/bphoto/xYJaanpF3Dl1OovhmpqAYw/o.jpg",
            ],
            "reviews": [
              {
                "id": "CN9oD1ncHKZtsGN7U1EMnA",
                "rating": 5,
                "text":
                    "The food was delicious and the host and waitress were very nice, my husband and I really loved all the food, their cocktails are also amazing.",
                "user": {
                  "id": "HArOfrshTW9s1HhN8oz8rg",
                  "image_url":
                      "https://s3-media3.fl.yelpcdn.com/photo/4sDrkYRIZxsXKCYdo9d1bQ/o.jpg",
                  "name": "Snow7 C.",
                },
              },
              {
                "id": "cqMrOWT9kRQOt3VUqOUbHg",
                "rating": 5,
                "text":
                    "Our last meal in Vegas was amazing at Yardbird. We have been to the Yardbird in Chicago so we thought we knew what to expect; however, we were blown away by...",
                "user": {
                  "id": "10oig4nwHnOAnAApdYvNrg",
                  "image_url": null,
                  "name": "Ellie K.",
                },
              },
              {
                "id": "XpTuzInVGZ2Dmx5BX21aqA",
                "rating": 4,
                "text":
                    "The food was great and the atmosphere was fun! Not over the top or too fancy. Perfect for lunch or dinner.",
                "user": {
                  "id": "kp40ga5HSczQfP5TDlzjPQ",
                  "image_url": null,
                  "name": "Tacie A.",
                },
              }
            ],
            "categories": [
              {
                "title": "Southern",
                "alias": "southern",
              },
              {
                "title": "New American",
                "alias": "newamerican",
              },
              {
                "title": "Cocktail Bars",
                "alias": "cocktailbars",
              }
            ],
            "hours": [
              {
                "is_open_now": false,
              }
            ],
            "location": {
              "formatted_address": "3355 Las Vegas Blvd S\nLas Vegas, NV 89109",
            },
          },
          {
            "id": "syhA1ugJpyNLaB0MiP19VA",
            "name": "888 Japanese BBQ",
            "price": "\$\$\$",
            "rating": 4.8,
            "photos": [
              "https://s3-media1.fl.yelpcdn.com/bphoto/V_zmwCUG1o_vR29xfkb-ng/o.jpg",
            ],
            "reviews": [
              {
                "id": "S7ftRkufT8eOlmW1jpgH0A",
                "rating": 5,
                "text":
                    "The GOAT of Kbbq in Vegas!\nCoz yelp wanted me to type more than 85 characters so dont mind this...gnsgngenv gebg dhngdngbscgejegjfjegnfsneybgssybgsbye",
                "user": {
                  "id": "MYfJmm9I5u1jsMg9JearYg",
                  "image_url": null,
                  "name": "Leonard L.",
                },
              },
              {
                "id": "mb9gfnkSopq00f4LBZVPig",
                "rating": 5,
                "text":
                    "Food service and Ambiance are so high quality.povw and always come back every other week .",
                "user": {
                  "id": "AKEHRiPmlrwKHxiiJlLGEQ",
                  "image_url":
                      "https://s3-media4.fl.yelpcdn.com/photo/GdoKcKDBW0fWQ4To-X_clA/o.jpg",
                  "name": "Mellon D.",
                },
              },
              {
                "id": "iYhY4TcIFW6XFZiQBBAQAQ",
                "rating": 5,
                "text":
                    "Good service, ambiance and food! Loved the kind and good looking staff. Can't wait to be back for my birthday celebration!",
                "user": {
                  "id": "mGmwqTs_V_triIVyYTT6eQ",
                  "image_url":
                      "https://s3-media2.fl.yelpcdn.com/photo/euv-0zXSYPPaLFFIyvoY2Q/o.jpg",
                  "name": "Brandon A.",
                },
              }
            ],
            "categories": [
              {
                "title": "Barbeque",
                "alias": "bbq",
              },
              {
                "title": "Japanese",
                "alias": "japanese",
              }
            ],
            "hours": [
              {
                "is_open_now": true,
              }
            ],
            "location": {
              "formatted_address": "3550 S Decatur Blvd\nLas Vegas, NV 89103",
            },
          },
          {
            "id": "QXV3L_QFGj8r6nWX2kS2hA",
            "name": "Nacho Daddy",
            "price": "\$\$",
            "rating": 4.4,
            "photos": [
              "https://s3-media4.fl.yelpcdn.com/bphoto/pu9doqMplB5x5SEs8ikW6w/o.jpg",
            ],
            "reviews": [
              {
                "id": "JU_T9FlCGKVBulGEI-4OHg",
                "rating": 5,
                "text":
                    "Alyssa was amazing! The food and atmosphere were great! Definitely will be coming back!",
                "user": {
                  "id": "CgVBZnioGBPgNLxq3z1E8Q",
                  "image_url": null,
                  "name": "Jazmin G.",
                },
              },
              {
                "id": "CifTHQgZ8L5IJc-dB_bizQ",
                "rating": 5,
                "text":
                    "Damn good! Xina was wonderful. 5 stars. Got some great nachos and drinks. Excellent vegan menu.",
                "user": {
                  "id": "zT0QrkMBUGj4DqSye8LnCQ",
                  "image_url": null,
                  "name": "Mark T.",
                },
              },
              {
                "id": "-MAq_q1q6Vgk1_RQjNCdjA",
                "rating": 5,
                "text":
                    "This is my first time at nacho daddy's and My server Shannon was amazing. She came to our table fast and i love how on top of it she was to get our drinks...",
                "user": {
                  "id": "MWZcvuYNlFq_UPJX-NyWLw",
                  "image_url": null,
                  "name": "Desiree L.",
                },
              }
            ],
            "categories": [
              {
                "title": "New American",
                "alias": "newamerican",
              },
              {
                "title": "Mexican",
                "alias": "mexican",
              },
              {
                "title": "Breakfast & Brunch",
                "alias": "breakfast_brunch",
              }
            ],
            "hours": [
              {
                "is_open_now": true,
              }
            ],
            "location": {
              "formatted_address":
                  "3663 Las Vegas Blvd\nSte 595\nLas Vegas, NV 89109",
            },
          },
          {
            "id": "2iTsRqUsPGRH1li1WVRvKQ",
            "name": "Carson Kitchen",
            "price": "\$\$",
            "rating": 4.5,
            "photos": [
              "https://s3-media2.fl.yelpcdn.com/bphoto/LhaPvLHIrsHu8ZMLgV04OQ/o.jpg",
            ],
            "reviews": [
              {
                "id": "PzKQYLK6skSfAUP73P8YXQ",
                "rating": 5,
                "text":
                    "Our son gave his mother a birthday gift of a meal at Carson Kitchen. He's the kind of guy that does thorough reviews on everything he's interested in...",
                "user": {
                  "id": "Cvlm-uNVOY2i5zPWQdLupA",
                  "image_url":
                      "https://s3-media3.fl.yelpcdn.com/photo/ZT4s2popID75p_yJbo1xjg/o.jpg",
                  "name": "Bill H.",
                },
              },
              {
                "id": "pq6VEb97OpbB-KwvsJVyfw",
                "rating": 4,
                "text":
                    "Came here during my most recent Vegas trip and was intrigued by the menu options! There's a parking lot close by (pay by the booth) but since I came on a...",
                "user": {
                  "id": "TMeT1a_1MJLOYobdY6Bs-A",
                  "image_url":
                      "https://s3-media2.fl.yelpcdn.com/photo/CxCo55gIOATctXc5wLa5CQ/o.jpg",
                  "name": "Amy E.",
                },
              },
              {
                "id": "5LF6EKorAR01mWStVYmYBw",
                "rating": 4,
                "text":
                    "The service and the atmosphere were amazing! Our server was very knowledgeable about the menu and helped guide our selections. We tired five different...",
                "user": {
                  "id": "a71YY9h3GRv7F-4_OGGiRQ",
                  "image_url":
                      "https://s3-media1.fl.yelpcdn.com/photo/3EDvhfkljrLyodxSrn8Fqg/o.jpg",
                  "name": "May G.",
                },
              }
            ],
            "categories": [
              {
                "title": "New American",
                "alias": "newamerican",
              },
              {
                "title": "Desserts",
                "alias": "desserts",
              },
              {
                "title": "Cocktail Bars",
                "alias": "cocktailbars",
              }
            ],
            "hours": [
              {
                "is_open_now": false,
              }
            ],
            "location": {
              "formatted_address": "124 S 6th St\nSte 100\nLas Vegas, NV 89101",
            },
          },
          {
            "id": "SAIrNOB4PtDA4gziNCucwg",
            "name": "Herbs & Rye",
            "price": "\$\$\$",
            "rating": 4.4,
            "photos": [
              "https://s3-media3.fl.yelpcdn.com/bphoto/95wd9m1E7A5Fuou1eUc3Bw/o.jpg",
            ],
            "reviews": [
              {
                "id": "_DJM84FO9CREfFD0yuVXLw",
                "rating": 5,
                "text":
                    "Always consistent with great vibe, food, service, and hospitality! Hands down one of the best in the city!",
                "user": {
                  "id": "jek0voQcahZGkM8V3Lh0FA",
                  "image_url":
                      "https://s3-media3.fl.yelpcdn.com/photo/7td8s4dxonwE2kWMNks7aQ/o.jpg",
                  "name": "Ryan James C.",
                },
              },
              {
                "id": "7T3Ycz88VP7B9EmnPCewTQ",
                "rating": 5,
                "text":
                    "We had the best experience at Herbs and Rye. We were celebrating my Dads birthday and we treated like royalty. The service was impeccable and unobtrusive....",
                "user": {
                  "id": "dOOEi2Qig6jsU-lDhdtcDw",
                  "image_url": null,
                  "name": "Cynthia A.",
                },
              },
              {
                "id": "_3pSQD-T7nd29BhZH1NXwg",
                "rating": 5,
                "text":
                    "The food was delicious and the waiter gave us excellent service!  They have happy hour prices all day and drinks are awesome!",
                "user": {
                  "id": "PSQblKeqE5gTHezRVvg_zQ",
                  "image_url": null,
                  "name": "Carmen C.",
                },
              }
            ],
            "categories": [
              {
                "title": "Steakhouses",
                "alias": "steak",
              },
              {
                "title": "Cocktail Bars",
                "alias": "cocktailbars",
              }
            ],
            "hours": [
              {
                "is_open_now": true,
              }
            ],
            "location": {
              "formatted_address": "3713 W Sahara Ave\nLas Vegas, NV 89102",
            },
          },
          {
            "id": "JPfi__QJAaRzmfh5aOyFEw",
            "name": "Shang Artisan Noodle - Flamingo Road",
            "price": "\$\$",
            "rating": 4.6,
            "photos": [
              "https://s3-media3.fl.yelpcdn.com/bphoto/TqV2TDWH-7Wje5B9Oh1EZw/o.jpg",
            ],
            "reviews": [
              {
                "id": "GcGUAH0FPeyfw7rw7eu2Sg",
                "rating": 5,
                "text":
                    "Best beef noodle soup I've ever had. Portion sizes huge. Family of 5 could have shared 3 bowls with some appetizers. Spicy wonton and beef dumplings were...",
                "user": {
                  "id": "4H2AFePQc7B4LGWhGkAb2g",
                  "image_url": null,
                  "name": "AA K.",
                },
              },
              {
                "id": "JZPALhqqab576i9xk80tgQ",
                "rating": 5,
                "text":
                    "Great restaurant with authentic flavors and everything is made from scratch! . Great service and very popular with the Asian community",
                "user": {
                  "id": "MmOJaZ2cPwguz6bPTYdfWQ",
                  "image_url": null,
                  "name": "Squadron F.",
                },
              },
              {
                "id": "k7cutA5Xm777rf_hbbGRnQ",
                "rating": 5,
                "text":
                    "The Seafood Noodle dish was a rich and satisfying experience, featuring a savory pork and chicken broth that was both comforting and full of depth....",
                "user": {
                  "id": "F0by7siSIUw0KIHZ-7yMaQ",
                  "image_url":
                      "https://s3-media2.fl.yelpcdn.com/photo/EvefjUpB0zjnojvCf4Y6MQ/o.jpg",
                  "name": "Tremaine R.",
                },
              }
            ],
            "categories": [
              {
                "title": "Noodles",
                "alias": "noodles",
              },
              {
                "title": "Chinese",
                "alias": "chinese",
              },
              {
                "title": "Soup",
                "alias": "soup",
              }
            ],
            "hours": [
              {
                "is_open_now": false,
              }
            ],
            "location": {
              "formatted_address":
                  "4983 W Flamingo Rd\nSte B\nLas Vegas, NV 89103",
            },
          },
          {
            "id": "_Ad2ZKhUl-krJFpaZ1FI8g",
            "name": "Nabe Hotpot",
            "price": "\$\$",
            "rating": 4.4,
            "photos": [
              "https://s3-media4.fl.yelpcdn.com/bphoto/0gkGtd58EYhj9lP_JtofBA/o.jpg",
            ],
            "reviews": [
              {
                "id": "--0JYDC-kjc7d_wryfLCqA",
                "rating": 5,
                "text":
                    "Me and my first time trying this hotpot! \nBoth Joseph and Marie are amazing! \n\nWe got the All day menu and I recommend when getting meat, get more! Because...",
                "user": {
                  "id": "O8JGsreKyoGPmicNMBgiZA",
                  "image_url": null,
                  "name": "stephanie t.",
                },
              },
              {
                "id": "eJWzFgO5FIlLoIPgCxfHgw",
                "rating": 5,
                "text":
                    "the meats are very tasty! no need for dipping sauces !! Our server Maria was very approachable, accommodating and recommends the best menu items! will come...",
                "user": {
                  "id": "JJJn4Ys7LjxuZmLTVidUjA",
                  "image_url": null,
                  "name": "Ren Ren G.",
                },
              },
              {
                "id": "KL94sN4Z3zqu73BwZQRrvA",
                "rating": 5,
                "text":
                    "Marie is so helpful. Fast orders service as well. Sushi selections were all good. I will definitely come back.",
                "user": {
                  "id": "mrHFWL72dKnuW1KoCclJGg",
                  "image_url": null,
                  "name": "Leonel Jake M.",
                },
              }
            ],
            "categories": [
              {
                "title": "Hot Pot",
                "alias": "hotpot",
              },
              {
                "title": "Buffets",
                "alias": "buffets",
              },
              {
                "title": "Asian Fusion",
                "alias": "asianfusion",
              }
            ],
            "hours": [
              {
                "is_open_now": true,
              }
            ],
            "location": {
              "formatted_address":
                  "4545 Spring Mountain Rd\nSte106\nLas Vegas, NV 89103",
            },
          },
          {
            "id": "-1m9o3vGRA8IBPNvNqKLmA",
            "name": "Bavette's Steakhouse & Bar",
            "price": "\$\$\$\$",
            "rating": 4.5,
            "photos": [
              "https://s3-media2.fl.yelpcdn.com/bphoto/pgcnYRHtbw_x_-OG8K4xVg/o.jpg",
            ],
            "reviews": [
              {
                "id": "SV29OIiCP3KLyC_8Du7Tyw",
                "rating": 5,
                "text":
                    "Few steaks wow me, but this one did. I've been to my share of steakhouses, and while steak is generally good anywhere that you get it, the filet mignon here...",
                "user": {
                  "id": "k0HPyDqzf7NuzGk9p570nw",
                  "image_url":
                      "https://s3-media4.fl.yelpcdn.com/photo/9ObAXwt_jOnhmOTsf4Phsw/o.jpg",
                  "name": "Anh N.",
                },
              },
              {
                "id": "PbKZJlLCWVcnHLUV0AK45g",
                "rating": 5,
                "text":
                    "For a great dining experience look no further!\n\nBavette's has it all; delicious food, fantastic cocktails, and a service staff above them all.\n\nWe were a...",
                "user": {
                  "id": "IJxjNg4fMDar8WTcY_s1NQ",
                  "image_url":
                      "https://s3-media1.fl.yelpcdn.com/photo/DN4xv1FYk_5yvPBhydRZGg/o.jpg",
                  "name": "Lisha K.",
                },
              },
              {
                "id": "Bk8AQJD8APVBWR6Y_Opvpw",
                "rating": 5,
                "text":
                    "First time at Bavettes and not sure what took us so long. Upon entry you feel whisked into a whole other atmosphere from the casino. The dark woods and...",
                "user": {
                  "id": "c1sHJlr0MizIANx49BTXWQ",
                  "image_url":
                      "https://s3-media4.fl.yelpcdn.com/photo/y9JnzleHF9G9Lx6EHIu8SA/o.jpg",
                  "name": "Alyssa Y.",
                },
              }
            ],
            "categories": [
              {
                "title": "Steakhouses",
                "alias": "steak",
              },
              {
                "title": "Bars",
                "alias": "bars",
              },
              {
                "title": "New American",
                "alias": "newamerican",
              }
            ],
            "hours": [
              {
                "is_open_now": false,
              }
            ],
            "location": {
              "formatted_address": "3770 Las Vegas Blvd S\nLas Vegas, NV 89109",
            },
          },
          {
            "id": "igHYkXZMLAc9UdV5VnR_AA",
            "name": "Echo & Rig",
            "price": "\$\$\$",
            "rating": 4.4,
            "photos": [
              "https://s3-media1.fl.yelpcdn.com/bphoto/Q9swks1BO-w-hVskIHrCVg/o.jpg",
            ],
            "reviews": [
              {
                "id": "cH3e_BfQnIMT8Bv4NrmQSg",
                "rating": 5,
                "text":
                    "We went on a Monday night and we were able to get a seat within 5 minutes. \n\nThe venue is 2 stories and beautifully decorated. Perfect for a date night and...",
                "user": {
                  "id": "-PXJEs_9T0lRKpssxf3otg",
                  "image_url":
                      "https://s3-media1.fl.yelpcdn.com/photo/eBKTnyOnHYTMNvLBcgrGwQ/o.jpg",
                  "name": "Cynthia H.",
                },
              },
              {
                "id": "HoUKWihuu-DVt77nA6QI5w",
                "rating": 5,
                "text":
                    "I've been here several times. Today I was meeting up with a friend and decided to sit at the bar downstairs to wait for him. I was pleasantly greeted by the...",
                "user": {
                  "id": "cMZVJdi_fKG7rp1no_2ZvA",
                  "image_url":
                      "https://s3-media3.fl.yelpcdn.com/photo/4NcP4S6RklA6sT8Zp2JCfw/o.jpg",
                  "name": "Joshua S.",
                },
              },
              {
                "id": "JId3KfBAwJTv3OqEoS-V9A",
                "rating": 5,
                "text":
                    "We had reservations very early at 5.30pm\nThis places is so large however super busy and popular.\nThe food and service are excellent. The only things that...",
                "user": {
                  "id": "1v2UxV8i_Ae64yxT17rRRg",
                  "image_url":
                      "https://s3-media1.fl.yelpcdn.com/photo/DxCDFZrPLOdc6o5CddaAoQ/o.jpg",
                  "name": "Apple S.",
                },
              }
            ],
            "categories": [
              {
                "title": "Steakhouses",
                "alias": "steak",
              },
              {
                "title": "Butcher",
                "alias": "butcher",
              },
              {
                "title": "Tapas/Small Plates",
                "alias": "tapasmallplates",
              }
            ],
            "hours": [
              {
                "is_open_now": false,
              }
            ],
            "location": {
              "formatted_address": "440 S Rampart Blvd\nLas Vegas, NV 89145",
            },
          },
          {
            "id": "RESDUcs7fIiihp38-d6_6g",
            "name": "Bacchanal Buffet",
            "price": "\$\$\$\$",
            "rating": 3.8,
            "photos": [
              "https://s3-media2.fl.yelpcdn.com/bphoto/oqUpQ_W-8ZrbZKpDh7lYEw/o.jpg",
            ],
            "reviews": [
              {
                "id": "P2_4GaJWg6MtvkPlOWWY8g",
                "rating": 3,
                "text":
                    "Great food, lots of options. Like a ridiculously good amount of options! \nOur food runner(name tag not visible)/server (Maria) was not good. Didn't come...",
                "user": {
                  "id": "D3-1U_sbS8dHuQDyYCsylg",
                  "image_url": null,
                  "name": "Loren E.",
                },
              },
              {
                "id": "YQ2fapAupFPi6qZJ3ggJgA",
                "rating": 5,
                "text":
                    "We were visiting from Seattle for a conference. We were greeted the moment we stepped into line by Ed Laipple. The table service from Alexis was thoughtful...",
                "user": {
                  "id": "65i_LmA6SrKBiOnld2CDcw",
                  "image_url":
                      "https://s3-media3.fl.yelpcdn.com/photo/PRWsyrSFiNdNJIxyVni9oQ/o.jpg",
                  "name": "Tisha H.",
                },
              },
              {
                "id": "pUrHanFOjPjOhUan34DtOw",
                "rating": 5,
                "text":
                    "Food was amazing. It's hard to choose at first and I would recommend to get small portions of everything! Shoutout to Cecile Jerome who made the best crepe...",
                "user": {
                  "id": "Xdaf6CJ2f_IKPluMbeumbg",
                  "image_url":
                      "https://s3-media2.fl.yelpcdn.com/photo/HrdzVRVKOfo61_9JAbfAZQ/o.jpg",
                  "name": "Niko V.",
                },
              }
            ],
            "categories": [
              {
                "title": "Buffets",
                "alias": "buffets",
              }
            ],
            "hours": [
              {
                "is_open_now": false,
              }
            ],
            "location": {
              "formatted_address": "3570 Las Vegas Blvd S\nLas Vegas, NV 89109",
            },
          },
          {
            "id": "4JNXUYY8wbaaDmk3BPzlWw",
            "name": "Mon Ami Gabi",
            "price": "\$\$\$",
            "rating": 4.2,
            "photos": [
              "https://s3-media3.fl.yelpcdn.com/bphoto/FFhN_E1rV0txRVa6elzcZw/o.jpg",
            ],
            "reviews": [
              {
                "id": "rAHgAhEdG0xoQspXc_6sZw",
                "rating": 4,
                "text":
                    "Great food and great atmosphere but I still feel that everything here in Vegas has gotten out of control with the pricing. Two salads and a pasta plate with...",
                "user": {
                  "id": "EE1M_Gq7uwGQhDb_v1POQQ",
                  "image_url": null,
                  "name": "Bert K.",
                },
              },
              {
                "id": "baBnM1ontpOLgoeu2xv6Wg",
                "rating": 5,
                "text":
                    "the breakfast was amazing, possibly the best french toast i've ever eaten. i'd love to try more items in the future, super appetizing. ate an entire french...",
                "user": {
                  "id": "xSvgz_-dtVa_GINcR85wzA",
                  "image_url": null,
                  "name": "Lilly H.",
                },
              },
              {
                "id": "Lg_j2vG2CTR8A5NGM7Zqhw",
                "rating": 5,
                "text":
                    "We recently ate at this French restaurant for the first time, and it was an amazing experience. Initially, we were eager to sit outside to enjoy the view of...",
                "user": {
                  "id": "pgvFEonlrCa1BCmDg_dofQ",
                  "image_url":
                      "https://s3-media2.fl.yelpcdn.com/photo/xMn5z_xxJt_Qq3_PvTZ__g/o.jpg",
                  "name": "Chul L.",
                },
              }
            ],
            "categories": [
              {
                "title": "French",
                "alias": "french",
              },
              {
                "title": "Steakhouses",
                "alias": "steak",
              },
              {
                "title": "Breakfast & Brunch",
                "alias": "breakfast_brunch",
              }
            ],
            "hours": [
              {
                "is_open_now": false,
              }
            ],
            "location": {
              "formatted_address": "3655 Las Vegas Blvd S\nLas Vegas, NV 89109",
            },
          },
          {
            "id": "UidEFF1WpnU4duev4fjPlQ",
            "name": "Therapy ",
            "price": "\$\$",
            "rating": 4.3,
            "photos": [
              "https://s3-media3.fl.yelpcdn.com/bphoto/otaMuPtauoEb6qZzmHlAlQ/o.jpg",
            ],
            "reviews": [
              {
                "id": "a3UISKdTa1aMxok4mmzNsQ",
                "rating": 5,
                "text":
                    "Step into Therapy and take a sit, Chris the bartender is pretty chill. Talking to him is like talking to a long time friend, the type you don't see for a...",
                "user": {
                  "id": "SbMQm6pAPRwg04y44S5zLA",
                  "image_url":
                      "https://s3-media1.fl.yelpcdn.com/photo/3ZuAxm31p7iwQ_zV2lgWOA/o.jpg",
                  "name": "Vittor V.",
                },
              },
              {
                "id": "hfZ-9d6Xxztb9o-cEJmR7Q",
                "rating": 5,
                "text":
                    "The food and drinks great! Try the loaded crab fries ~ got seated and served quick- Dallas was the best!",
                "user": {
                  "id": "7_uRkPfh8fvewEHDnhx6mg",
                  "image_url": null,
                  "name": "Patricia L.",
                },
              },
              {
                "id": "oSb7UzeaA-r_H8WgJYWH3A",
                "rating": 5,
                "text":
                    "I come here once in a while. I had a great time spent here dancing on tables! I came for happy hour during the day and had so much fun! They have a great...",
                "user": {
                  "id": "zPRZtDcBqN0VjXDlkYK3cQ",
                  "image_url":
                      "https://s3-media4.fl.yelpcdn.com/photo/4ZS87l3TNsOLSF6-Piqi_A/o.jpg",
                  "name": "Brenda B.",
                },
              }
            ],
            "categories": [
              {
                "title": "Bars",
                "alias": "bars",
              },
              {
                "title": "New American",
                "alias": "newamerican",
              },
              {
                "title": "Dance Clubs",
                "alias": "danceclubs",
              }
            ],
            "hours": [
              {
                "is_open_now": true,
              }
            ],
            "location": {
              "formatted_address": "518 Fremont St\nLas Vegas, NV 89101",
            },
          },
          {
            "id": "I6EDDi4-Eq_XlFghcDCUhw",
            "name": "Joe's Seafood Prime Steak & Stone Crab",
            "price": "\$\$\$",
            "rating": 4.4,
            "photos": [
              "https://s3-media1.fl.yelpcdn.com/bphoto/i5DVfdS-wOEPHBlVdw_Pvw/o.jpg",
            ],
            "reviews": [
              {
                "id": "87zJUacg5ksnwF3-aJUo7g",
                "rating": 5,
                "text":
                    "100/10. Food, service and atmosphere are TOP notch. Our server Danny was the most amazing waiter we have ever experienced. He was patient, attentive and...",
                "user": {
                  "id": "xMmxDGs9DWhB4X1lgkERkA",
                  "image_url": null,
                  "name": "Jeff N.",
                },
              },
              {
                "id": "WYKcaMOPhZ__qqQJlI44ng",
                "rating": 4,
                "text":
                    "Anniversary Dinner \nFood was outstanding\nPrices were spot on\nAmbience was beautiful\nBuser was top notch\nServer needs a personality! \n\nOur server Mindy was...",
                "user": {
                  "id": "9m-AG--3nt_8P8lSmdWpKw",
                  "image_url": null,
                  "name": "Diane P.",
                },
              },
              {
                "id": "gR_sU8D3SvogzALreBwyQQ",
                "rating": 5,
                "text":
                    "So my friend and I were in Vegas a couple of weeks ago to celebrate his birthday, and he decided he wanted to go here for his birthday dinner. There's also...",
                "user": {
                  "id": "GkhswbL80CZnYGwaXNHMcA",
                  "image_url":
                      "https://s3-media3.fl.yelpcdn.com/photo/xrLeqfrG7eu0gCAY-hFW-g/o.jpg",
                  "name": "Scott T.",
                },
              }
            ],
            "categories": [
              {
                "title": "Seafood",
                "alias": "seafood",
              },
              {
                "title": "Steakhouses",
                "alias": "steak",
              },
              {
                "title": "Wine Bars",
                "alias": "wine_bars",
              }
            ],
            "hours": [
              {
                "is_open_now": false,
              }
            ],
            "location": {
              "formatted_address": "3500 Las Vegas Blvd S\nLas Vegas, NV 89109",
            },
          },
          {
            "id": "myFPRndhdZMKdfMZyksyxQ",
            "name": "ITs SUSHI Spring Mountain",
            "price": "\$\$\$",
            "rating": 4.4,
            "photos": [
              "https://s3-media2.fl.yelpcdn.com/bphoto/5OQj-6E-xC_FKJERHBQvrw/o.jpg",
            ],
            "reviews": [
              {
                "id": "fe4zOfyVGGVdbUSWRMQmUg",
                "rating": 5,
                "text":
                    "Tina and her crew was amazing but most importantly to notice is that her management skills and urgency with all her guest is superb thanks a lot Tina see...",
                "user": {
                  "id": "9kElsBhkHl-EzJo2gIZv2w",
                  "image_url":
                      "https://s3-media4.fl.yelpcdn.com/photo/OheiFzJGKBJJIBSt4skwrw/o.jpg",
                  "name": "Jp P.",
                },
              },
              {
                "id": "YDljotopPmfocEGZzwEQTg",
                "rating": 1,
                "text":
                    "The sushi quality isn't great here it just tastes okay. \n\nThe service was terrible as well so I wouldn't come back. We had a table of nine people. There...",
                "user": {
                  "id": "WXSf4hMAdEaIfb0ig-A3FQ",
                  "image_url":
                      "https://s3-media4.fl.yelpcdn.com/photo/TGEIq5Z0tZIT3fYlQcKLgg/o.jpg",
                  "name": "Brit N.",
                },
              },
              {
                "id": "r0A_YwSM_QCZaZdjfXs6Uw",
                "rating": 4,
                "text":
                    "After hearing a lot of great things about itsSushi we knew we would be checking it out on our next Vegas trip.\n\nHere are the biggest take aways...\n\nthey...",
                "user": {
                  "id": "BIOYbBR3Cy5-MoZMGNnI0A",
                  "image_url":
                      "https://s3-media4.fl.yelpcdn.com/photo/ATpv5GAPKc5pyiiFH6rOQQ/o.jpg",
                  "name": "C S.",
                },
              }
            ],
            "categories": [
              {
                "title": "Japanese",
                "alias": "japanese",
              },
              {
                "title": "Sushi Bars",
                "alias": "sushi",
              },
              {
                "title": "Buffets",
                "alias": "buffets",
              }
            ],
            "hours": [
              {
                "is_open_now": true,
              }
            ],
            "location": {
              "formatted_address":
                  "4815 Spring Mountain Rd\nLas Vegas, NV 89103",
            },
          },
          {
            "id": "XnJeadLrlj9AZB8qSdIR2Q",
            "name": "Joel Robuchon",
            "price": "\$\$\$\$",
            "rating": 4.5,
            "photos": [
              "https://s3-media4.fl.yelpcdn.com/bphoto/8282ZD9hrsGH9a-kejFzxw/o.jpg",
            ],
            "reviews": [
              {
                "id": "r7FpihYh8TtwfpKgrI2syw",
                "rating": 5,
                "text":
                    "Rating: 4.5/5\n\nJoel Robuchon is a paragon of luxury dining. The opulent ambiance, characterized by soft lighting, a grand chandelier, and lavish floral...",
                "user": {
                  "id": "dvTlsNXCiLzBmGPcQPMA9A",
                  "image_url":
                      "https://s3-media3.fl.yelpcdn.com/photo/-XaQAXzr8og8SY7SyaNjLw/o.jpg",
                  "name": "Ayush K.",
                },
              },
              {
                "id": "aAUIYHJCTkXOufvSDxRoXA",
                "rating": 4,
                "text":
                    "We have tried some French restaurants but never a big fan. So far, Joel Robuchon is my favorite. \nA kind reminder if you make the reservation through MGM...",
                "user": {
                  "id": "BFFDzZR0ixxD3azljG5ysA",
                  "image_url":
                      "https://s3-media2.fl.yelpcdn.com/photo/R2ixq_srpqu10cTZ1uMZWw/o.jpg",
                  "name": "Felicity C.",
                },
              },
              {
                "id": "XMmZhe0rGtNkHub372PyTQ",
                "rating": 4,
                "text":
                    "We had our anniversary dinner at Joel Robuchon in Las Vegas this year.  It is always a pleasure to celebrate with our beloved daughter. Joel Robuchon is the...",
                "user": {
                  "id": "bv3sEZrvDqUguzlZeQDBUg",
                  "image_url":
                      "https://s3-media3.fl.yelpcdn.com/photo/mZGY1nkIZjadOpP4RjMdmg/o.jpg",
                  "name": "Kitty L.",
                },
              }
            ],
            "categories": [
              {
                "title": "French",
                "alias": "french",
              }
            ],
            "hours": [
              {
                "is_open_now": false,
              }
            ],
            "location": {
              "formatted_address": "3799 Las Vegas Blvd S\nLas Vegas, NV 89109",
            },
          },
          {
            "id": "gOOfBSBZlffCkQ7dr7cpdw",
            "name": "CHICA",
            "price": "\$\$",
            "rating": 4.3,
            "photos": [
              "https://s3-media2.fl.yelpcdn.com/bphoto/FxmtjuzPDiL7vx5KyceWuQ/o.jpg",
            ],
            "reviews": [
              {
                "id": "xXQzEfd0czYwW_PW_QW1RQ",
                "rating": 5,
                "text":
                    "Came here with a group of 8 for brunch and we all had a wonderful experience. Our waitress, Karena, was amazing! She was super attentive and such a good...",
                "user": {
                  "id": "A8wuelxCSNiuS6IFY6WKbw",
                  "image_url": null,
                  "name": "Joanna M.",
                },
              },
              {
                "id": "k0mR3x34X9bXMZfyTsO8nQ",
                "rating": 5,
                "text":
                    "The food was amazing. I had the Latin breakfast. Our table shared the donuts...delicious. We had drinks and they were made with fresh ingredients. They...",
                "user": {
                  "id": "47SO7vTL6Louu9Gbkq8UeA",
                  "image_url": null,
                  "name": "Brandi T.",
                },
              },
              {
                "id": "pLdKzOPNlHmonm08eRP6Fw",
                "rating": 5,
                "text":
                    "Every dish was amazing. The parrillada is a must have to share. The sides are also great. I love the corn too. And the famous flaming skull dessert is both...",
                "user": {
                  "id": "IE8XGvC-2fzE0lTltk-46Q",
                  "image_url":
                      "https://s3-media4.fl.yelpcdn.com/photo/vOMr4EWJNoDbKR-lrDSfbg/o.jpg",
                  "name": "Fabian L.",
                },
              }
            ],
            "categories": [
              {
                "title": "Latin American",
                "alias": "latin",
              },
              {
                "title": "Breakfast & Brunch",
                "alias": "breakfast_brunch",
              },
              {
                "title": "Cocktail Bars",
                "alias": "cocktailbars",
              }
            ],
            "hours": [
              {
                "is_open_now": false,
              }
            ],
            "location": {
              "formatted_address":
                  "3355 South Las Vegas Blvd\nSte 106\nLas Vegas, NV 89109",
            },
          },
          {
            "id": "rdE9gg0WB7Z8kRytIMSapg",
            "name": "Lazy Dog Restaurant & Bar",
            "price": "\$\$",
            "rating": 4.5,
            "photos": [
              "https://s3-media2.fl.yelpcdn.com/bphoto/_Wz-fNXawmbBinSf9Ev15g/o.jpg",
            ],
            "reviews": [
              {
                "id": "Gfj013WbLQo3sADlG1mXUQ",
                "rating": 5,
                "text":
                    "By far the BEST restaurant that we have been to while visiting Vegas. Food, atmosphere and customer service was  phenomenal! Tina was our server, absolutely...",
                "user": {
                  "id": "1TUNMdokzFDEa1SmZ-F3Dw",
                  "image_url": null,
                  "name": "Tasha R.",
                },
              },
              {
                "id": "n5R8ulxap3NlVvFI9Jpt7g",
                "rating": 5,
                "text":
                    "Amazing food. Super yummy drinks. Great deals. All around great place to bring yourself, your family, and your doggies!! Always get excellent service....",
                "user": {
                  "id": "mpHWQc0QfftpIJ8BK9pQlQ",
                  "image_url": null,
                  "name": "Michelle N.",
                },
              },
              {
                "id": "BCpLW2R6MIF23ePczZ9hew",
                "rating": 3,
                "text":
                    "Fish & chips don't bother ordering. Bland. Burger was dry for medium rare. Pink but dry, frozen patty?  Root beer & vanilla cream excellent. Dog friendly a...",
                "user": {
                  "id": "gsOZjtJX8i3FezAMPt4kFw",
                  "image_url": null,
                  "name": "Christopher C.",
                },
              }
            ],
            "categories": [
              {
                "title": "New American",
                "alias": "newamerican",
              },
              {
                "title": "Comfort Food",
                "alias": "comfortfood",
              },
              {
                "title": "Burgers",
                "alias": "burgers",
              }
            ],
            "hours": [
              {
                "is_open_now": false,
              }
            ],
            "location": {
              "formatted_address": "6509 S Las Vegas Blvd\nLas Vegas, NV 89119",
            },
          },
          {
            "id": "fL-b760btOaGa85OJ9ut3w",
            "name": "Rollin Smoke Barbeque",
            "price": "\$\$",
            "rating": 4.4,
            "photos": [
              "https://s3-media2.fl.yelpcdn.com/bphoto/j6pMPJziv3-_Jzl1bRaMSw/o.jpg",
            ],
            "reviews": [
              {
                "id": "bfnaYmZN0RPzutYSO9tPfg",
                "rating": 5,
                "text":
                    "This food was so good it made me write my first ever review. Absolutely delicious. My wife said it was the best mac and cheese she's ever had, and my wife...",
                "user": {
                  "id": "nLXyYA1LoLEtARCBiB6xYA",
                  "image_url": null,
                  "name": "Nicholas M.",
                },
              },
              {
                "id": "w8BwUCv10kmhYI0c-t538Q",
                "rating": 5,
                "text":
                    "Tried the grand canyon location years ago and it was just meh. Gave it another shot this time at Highland Dr. They have a massive 13lb sandwich called the...",
                "user": {
                  "id": "Zkm7wpn84rVPJ_ERDfn72g",
                  "image_url":
                      "https://s3-media1.fl.yelpcdn.com/photo/i-DcgjG46ckQ73gWQxbNsg/o.jpg",
                  "name": "Sheryllyne O.",
                },
              },
              {
                "id": "Iv8WkyFR3KBAfBRKy2u7vA",
                "rating": 2,
                "text":
                    "Two meals three sides. Half serving Beef Ribs, half serving Baby Back Pork Ribs, pint of loaded Mach and pint of Mack and Cheese. \nBeef Ribs delicious \nPork...",
                "user": {
                  "id": "5r4DxkXzNJlq21bq17tvmQ",
                  "image_url":
                      "https://s3-media4.fl.yelpcdn.com/photo/4vRaE3rwNjwk4n0-6t5faA/o.jpg",
                  "name": "Mike V.",
                },
              }
            ],
            "categories": [
              {
                "title": "Barbeque",
                "alias": "bbq",
              },
              {
                "title": "Southern",
                "alias": "southern",
              },
              {
                "title": "Sandwiches",
                "alias": "sandwiches",
              }
            ],
            "hours": [
              {
                "is_open_now": false,
              }
            ],
            "location": {
              "formatted_address":
                  "3185 S Highland Dr\nSte 2\nLas Vegas, NV 89109",
            },
          },
          {
            "id": "nUpz0YiBsOK7ff9k3vUJ3A",
            "name": "Buddy V's Ristorante",
            "price": "\$\$",
            "rating": 4.2,
            "photos": [
              "https://s3-media2.fl.yelpcdn.com/bphoto/cQxDwddn5H6c8ZGBQnjwnQ/o.jpg",
            ],
            "reviews": [
              {
                "id": "JGb9E8nERjsNFM2F7SqCNA",
                "rating": 5,
                "text":
                    "Great food and great service.\nNice location.. they have outdoor and indoor seating.\nMeatballs are highly recommended!",
                "user": {
                  "id": "loDGoLca5JC6dARvBQCUmg",
                  "image_url":
                      "https://s3-media4.fl.yelpcdn.com/photo/It7kRVx2aq3EPC9amExlPA/o.jpg",
                  "name": "Daniel V.",
                },
              },
              {
                "id": "37kIixegf3pTb3jb6i1Y5g",
                "rating": 3,
                "text":
                    "Overall, the restaurant was average. The calamari was the redeeming aspect since it was one of the best I had, so make sure to get that (Hoboken style, as...",
                "user": {
                  "id": "IAOAGReoxWaxhZm5-EpmOg",
                  "image_url":
                      "https://s3-media4.fl.yelpcdn.com/photo/YI-5O4mLRjh3-o0keMuzbA/o.jpg",
                  "name": "Juliet M.",
                },
              },
              {
                "id": "X5FcEmaTARLFpzIl2PqJNw",
                "rating": 3,
                "text":
                    "I have never heard of the cake boss, so I wondered why any business would be hyping up an association with Hoboken. \n\nFor context, you are eating in The...",
                "user": {
                  "id": "aOq8Npw6-oLEfo4CaVl-rw",
                  "image_url":
                      "https://s3-media4.fl.yelpcdn.com/photo/WUw-EefvloCACjglXeZcrw/o.jpg",
                  "name": "Niki R.",
                },
              }
            ],
            "categories": [
              {
                "title": "Italian",
                "alias": "italian",
              },
              {
                "title": "American",
                "alias": "tradamerican",
              },
              {
                "title": "Wine Bars",
                "alias": "wine_bars",
              }
            ],
            "hours": [
              {
                "is_open_now": false,
              }
            ],
            "location": {
              "formatted_address": "3327 S Las Vegas Blvd\nLas Vegas, NV 89109",
            },
          }
        ],
      },
    },
  };

  return Future.value(
    RestaurantQueryResult.fromJson(fakeData['data']!['search']),
  );
}
