{
    "id": "e2fa4947-9f00-4df3-a1d1-453ea9d91857",
    "modelName": "GMObject",
    "mvc": "1.0",
    "name": "obj_firefly_special",
    "eventList": [
        {
            "id": "93514182-ec4f-4f4a-80a2-d204a77869f8",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 0,
            "m_owner": "e2fa4947-9f00-4df3-a1d1-453ea9d91857"
        },
        {
            "id": "629bd9c1-1188-4c81-af93-64031488a59d",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 12,
            "m_owner": "e2fa4947-9f00-4df3-a1d1-453ea9d91857"
        },
        {
            "id": "e4e2e858-2767-46a3-a8e8-1a58d4ef550b",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 3,
            "m_owner": "e2fa4947-9f00-4df3-a1d1-453ea9d91857"
        }
    ],
    "maskSpriteId": "00000000-0000-0000-0000-000000000000",
    "overriddenProperties": null,
    "parentObjectId": "00000000-0000-0000-0000-000000000000",
    "persistent": false,
    "physicsAngularDamping": 0.1,
    "physicsDensity": 0.5,
    "physicsFriction": 0.2,
    "physicsGroup": 0,
    "physicsKinematic": false,
    "physicsLinearDamping": 0.1,
    "physicsObject": false,
    "physicsRestitution": 0.1,
    "physicsSensor": false,
    "physicsShape": 1,
    "physicsShapePoints": null,
    "physicsStartAwake": true,
    "properties": [
        {
            "id": "9df2e264-dff4-4301-a113-61f546c49916",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": [
                "\"Point Light\"",
                "\"Spot Light\"",
                "\"Area Light\"",
                "\"Directional Light\"",
                "\"Line Light\""
            ],
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "\"Point Light\"",
            "varName": "Light_Type",
            "varType": 6
        },
        {
            "id": "d5fadee2-29de-4645-8f7e-58d480300387",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "$FF3477B2",
            "varName": "Light_Color",
            "varType": 7
        },
        {
            "id": "5d16bbac-8ff6-4cf6-8a70-728f678697c2",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": true,
            "rangeMax": 5000,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "200",
            "varName": "Light_Range",
            "varType": 1
        },
        {
            "id": "6a400798-111d-4292-9742-1bf99801ff32",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": true,
            "rangeMax": 30,
            "rangeMin": 0.001,
            "resourceFilter": 1023,
            "value": "5",
            "varName": "Light_Intensity",
            "varType": 0
        },
        {
            "id": "5c4cb764-7db5-4be8-9b26-2cf4bd62302d",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": true,
            "rangeMax": 65536,
            "rangeMin": 1,
            "resourceFilter": 1023,
            "value": "32000",
            "varName": "Light_Shadow_Length",
            "varType": 1
        },
        {
            "id": "74478f7d-9964-4c7e-b7da-8dceb0eaf837",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": true,
            "rangeMax": 359,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "Light_Angle",
            "varType": 0
        },
        {
            "id": "f614d2f4-23c4-406e-8bce-8e6c4affaf26",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": true,
            "rangeMax": 359,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "Light_Direction",
            "varType": 0
        },
        {
            "id": "ac851b16-b10e-4f48-b481-988326ac11aa",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "256",
            "varName": "Light_Width",
            "varType": 1
        },
        {
            "id": "546fcc68-42dd-4c4a-aef6-21f34a6fe589",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 2,
            "value": "noone",
            "varName": "LUT_Intensity",
            "varType": 5
        }
    ],
    "solid": false,
    "spriteId": "55bead75-efc9-4123-9733-0eadccbdddb1",
    "visible": true
}