// ignore_for_file: prefer_single_quotes, unnecessary_string_escapes, inference_failure_on_collection_literal, lines_longer_than_80_chars

import 'package:pet_heaven/features/pet/model/pet.dart';
import 'package:pet_heaven/features/pet/model/pet_list.dart';

class DummyPets {
  static final petListResp = {
    "animals": [
      {
        "id": 59276506,
        "organization_id": "CA2563",
        "url":
            "https:\/\/www.petfinder.com\/dog\/jessie-59276506\/ca\/bonita\/paws4thought-animal-rescue-ca2563\/?referrer_id=4e8653bb-ceda-4744-a242-5d1078661f1a",
        "type": "Dog",
        "species": "Dog",
        "breeds": {
          "primary": "Cattle Dog",
          "secondary": "German Shepherd Dog",
          "mixed": true,
          "unknown": false,
        },
        "colors": {
          "primary": "Brown \/ Chocolate",
          "secondary": null,
          "tertiary": null,
        },
        "age": "Young",
        "gender": "Female",
        "size": "Medium",
        "coat": null,
        "attributes": {
          "spayed_neutered": true,
          "house_trained": false,
          "declawed": null,
          "special_needs": false,
          "shots_current": true,
        },
        "environment": {"children": null, "dogs": null, "cats": null},
        "tags": [],
        "name": "Jessie",
        "description": null,
        "organization_animal_id": "ps_77960229",
        "photos": [],
        "primary_photo_cropped": null,
        "videos": [],
        "status": "adoptable",
        "status_changed_at": "2022-12-28T11:07:12+0000",
        "published_at": "2022-12-28T11:07:11+0000",
        "distance": null,
        "contact": {
          "email": "info@paws4thoughtrescue.com",
          "phone": "(619) 200-8363",
          "address": {
            "address1": null,
            "address2": null,
            "city": "Bonita",
            "state": "CA",
            "postcode": "91908",
            "country": "US",
          },
        },
        "_links": {
          "self": {"href": "\/v2\/animals\/59276506"},
          "type": {"href": "\/v2\/types\/dog"},
          "organization": {"href": "\/v2\/organizations\/ca2563"},
        },
      }
    ],
    "pagination": {
      "count_per_page": 1,
      "total_count": 263660,
      "current_page": 1,
      "total_pages": 13183,
      "_links": {
        "next": {"href": "\/v2\/animals?page=2"},
      },
    },
  };

  static final petResp = {
    "animal": {
      "id": 59243302,
      "organization_id": "OH415",
      "url":
          "https:\/\/www.petfinder.com\/dog\/alfredo-59243302\/oh\/portsmouth\/sierras-haven-for-new-and-used-pets-oh415\/?referrer_id=4e8653bb-ceda-4744-a242-5d1078661f1a",
      "type": "Dog",
      "species": "Dog",
      "breeds": {
        "primary": "German Shepherd Dog",
        "secondary": null,
        "mixed": true,
        "unknown": false,
      },
      "colors": {
        "primary": "Black",
        "secondary": "Yellow \/ Tan \/ Blond \/ Fawn",
        "tertiary": null,
      },
      "age": "Baby",
      "gender": "Male",
      "size": "Large",
      "coat": "Short",
      "attributes": {
        "spayed_neutered": false,
        "house_trained": false,
        "declawed": null,
        "special_needs": false,
        "shots_current": true,
      },
      "environment": {"children": null, "dogs": null, "cats": null},
      "tags": [],
      "name": "Alfredo",
      "description":
          "For more information on Alfredo please call Sierra\u0026#039;s Haven at 1-740-353-5100. Come visit us any time to meet and get...",
      "organization_animal_id": "A0051689598",
      "photos": [
        {
          "small":
              "https:\/\/dl5zpyw5k3jeb.cloudfront.net\/photos\/pets\/59243302\/1\/?bust=1671760532\u0026width=100",
          "medium":
              "https:\/\/dl5zpyw5k3jeb.cloudfront.net\/photos\/pets\/59243302\/1\/?bust=1671760532\u0026width=300",
          "large":
              "https:\/\/dl5zpyw5k3jeb.cloudfront.net\/photos\/pets\/59243302\/1\/?bust=1671760532\u0026width=600",
          "full":
              "https:\/\/dl5zpyw5k3jeb.cloudfront.net\/photos\/pets\/59243302\/1\/?bust=1671760532",
        },
        {
          "small":
              "https:\/\/dl5zpyw5k3jeb.cloudfront.net\/photos\/pets\/59243302\/2\/?bust=1671760532\u0026width=100",
          "medium":
              "https:\/\/dl5zpyw5k3jeb.cloudfront.net\/photos\/pets\/59243302\/2\/?bust=1671760532\u0026width=300",
          "large":
              "https:\/\/dl5zpyw5k3jeb.cloudfront.net\/photos\/pets\/59243302\/2\/?bust=1671760532\u0026width=600",
          "full":
              "https:\/\/dl5zpyw5k3jeb.cloudfront.net\/photos\/pets\/59243302\/2\/?bust=1671760532",
        }
      ],
      "primary_photo_cropped": {
        "small":
            "https:\/\/dl5zpyw5k3jeb.cloudfront.net\/photos\/pets\/59243302\/1\/?bust=1671760532\u0026width=300",
        "medium":
            "https:\/\/dl5zpyw5k3jeb.cloudfront.net\/photos\/pets\/59243302\/1\/?bust=1671760532\u0026width=450",
        "large":
            "https:\/\/dl5zpyw5k3jeb.cloudfront.net\/photos\/pets\/59243302\/1\/?bust=1671760532\u0026width=600",
        "full":
            "https:\/\/dl5zpyw5k3jeb.cloudfront.net\/photos\/pets\/59243302\/1\/?bust=1671760532",
      },
      "videos": [],
      "status": "adoptable",
      "status_changed_at": "2022-12-23T01:55:35+0000",
      "published_at": "2022-12-23T01:55:33+0000",
      "distance": null,
      "contact": {
        "email": "sierrashaven@hotmail.com",
        "phone": "(740) 353-5100",
        "address": {
          "address1": "80 Easter Drive",
          "address2": null,
          "city": "Portsmouth",
          "state": "OH",
          "postcode": "45662",
          "country": "US",
        },
      },
      "_links": {
        "self": {"href": "\/v2\/animals\/59243302"},
        "type": {"href": "\/v2\/types\/dog"},
        "organization": {"href": "\/v2\/organizations\/oh415"},
      },
    },
  };
  static final petRespWithoutImages = {
    "animal": {
      "id": 59243302,
      "organization_id": "OH415",
      "url":
          "https:\/\/www.petfinder.com\/dog\/alfredo-59243302\/oh\/portsmouth\/sierras-haven-for-new-and-used-pets-oh415\/?referrer_id=4e8653bb-ceda-4744-a242-5d1078661f1a",
      "type": "Dog",
      "species": "Dog",
      "breeds": {
        "primary": "German Shepherd Dog",
        "secondary": null,
        "mixed": true,
        "unknown": false,
      },
      "colors": {
        "primary": "Black",
        "secondary": "Yellow \/ Tan \/ Blond \/ Fawn",
        "tertiary": null,
      },
      "age": "Baby",
      "gender": "Male",
      "size": "Large",
      "coat": "Short",
      "attributes": {
        "spayed_neutered": false,
        "house_trained": false,
        "declawed": null,
        "special_needs": false,
        "shots_current": true,
      },
      "environment": {"children": null, "dogs": null, "cats": null},
      "tags": [],
      "name": "Alfredo",
      "description":
          "For more information on Alfredo please call Sierra\u0026#039;s Haven at 1-740-353-5100. Come visit us any time to meet and get...",
      "organization_animal_id": "A0051689598",
      "photos": [
        {
          "small": 'avatar_url',
          "medium": 'avatar_url',
          "large": 'avatar_url',
          "full": "'avatar_url'",
        },
        {
          "small": 'avatar_url',
          "medium": 'avatar_url',
          "large": 'avatar_url',
          "full": 'avatar_url',
        }
      ],
      "primary_photo_cropped": {
        "small": 'avatar_url',
        "medium": 'avatar_url',
        "large": 'avatar_url',
        "full": 'avatar_url',
      },
      "videos": [],
      "status": "adoptable",
      "status_changed_at": "2022-12-23T01:55:35+0000",
      "published_at": "2022-12-23T01:55:33+0000",
      "distance": null,
      "contact": {
        "email": "sierrashaven@hotmail.com",
        "phone": "(740) 353-5100",
        "address": {
          "address1": "80 Easter Drive",
          "address2": null,
          "city": "Portsmouth",
          "state": "OH",
          "postcode": "45662",
          "country": "US",
        },
      },
      "_links": {
        "self": {"href": "\/v2\/animals\/59243302"},
        "type": {"href": "\/v2\/types\/dog"},
        "organization": {"href": "\/v2\/organizations\/oh415"},
      },
    },
  };

  static final petList1 = PetList.fromJson(petListResp);

  static final pet1 = Pet.fromJson(petResp['animal']!);

  static final petWithoutImage =
      Pet.fromJson(petRespWithoutImages['animal']!).copyWith(photos: null);
}
