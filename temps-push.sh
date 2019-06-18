#!/bin/bash

currenttime=$(date +%s)
TEMP1="$(/bin/curl -s -H "Authorization: Bearer BEARER_FROM_SAMSUNG" https://api.smartthings.com/v1/devices/a7318ca9-a56d-4d3d-a86a-9a021ffa227b/status  | /bin/python -mjson.tool | grep -A2 temperature | grep value | awk '{print $2}')"

/bin/curl  -X POST -H "Content-type: application/json" \
-d "{ \"series\" :
         [{\"metric\":\"home.externalGarageDoor.temp\",
          \"points\":[[$currenttime, $TEMP1]],
          \"type\":\"gauge\",
          \"host\":\"home\",
          \"tags\":[\"environment:temps\"]}
        ]
    }" \
'https://app.datadoghq.com/api/v1/series?api_key=DD_API_KEY'

TEMP2="$(/bin/curl -s -H "Authorization: Bearer BEARER_FROM_SAMSUNG" https://api.smartthings.com/v1/devices/7e33f8de-2f03-4a3c-b44d-f75dd5bd67f1/status  | /bin/python -mjson.tool | grep -A2 temperature | grep value | awk '{print $2}')"

/bin/curl  -X POST -H "Content-type: application/json" \
-d "{ \"series\" :
         [{\"metric\":\"home.internalFrontDoor.temp\",
          \"points\":[[$currenttime, $TEMP2]],
          \"type\":\"gauge\",
          \"host\":\"home\",
          \"tags\":[\"environment:temps\"]}
        ]
    }" \
'https://app.datadoghq.com/api/v1/series?api_key=DD_API_KEY'

TEMP3="$(/bin/curl -s -H "Authorization: Bearer BEARER_FROM_SAMSUNG" https://api.smartthings.com/v1/devices/5519ebeb-d388-4c1b-9da9-de155052a383/status  | /bin/python -mjson.tool | grep -A2 temperature | grep value | awk '{print $2}')"

/bin/curl  -X POST -H "Content-type: application/json" \
-d "{ \"series\" :
         [{\"metric\":\"home.internalLivingRoom.temp\",
          \"points\":[[$currenttime, $TEMP3]],
          \"type\":\"gauge\",
          \"host\":\"home\",
          \"tags\":[\"environment:temps\"]}
        ]
    }" \
'https://app.datadoghq.com/api/v1/series?api_key=DD_API_KEY'

TEMP4="$(/bin/curl -s -H "Authorization: Bearer BEARER_FROM_SAMSUNG" https://api.smartthings.com/v1/devices/c1cd77a3-4bbe-4915-8b31-1eb49c58756e/status  | /bin/python -mjson.tool | grep -A2 temperature | grep value | awk '{print $2}')"

/bin/curl  -X POST -H "Content-type: application/json" \
-d "{ \"series\" :
         [{\"metric\":\"home.externalGarageBackDoor.temp\",
          \"points\":[[$currenttime, $TEMP4]],
          \"type\":\"gauge\",
          \"host\":\"home\",
          \"tags\":[\"environment:temps\"]}
        ]
    }" \
'https://app.datadoghq.com/api/v1/series?api_key=DD_API_KEY'

TEMP5="$(/bin/curl -s -H "Authorization: Bearer BEARER_FROM_SAMSUNG" https://api.smartthings.com/v1/devices/9bcbd003-fa6e-41ea-99f0-4333ae50a13e/status  | /bin/python -mjson.tool | grep -A2 temperature | grep value | awk '{print $2}')"

/bin/curl  -X POST -H "Content-type: application/json" \
-d "{ \"series\" :
         [{\"metric\":\"home.internalPatioDoor.temp\",
          \"points\":[[$currenttime, $TEMP5]],
          \"type\":\"gauge\",
          \"host\":\"home\",
          \"tags\":[\"environment:temps\"]}
        ]
    }" \
'https://app.datadoghq.com/api/v1/series?api_key=DD_API_KEY'

TEMP6="$(/bin/curl -s -H "Authorization: Bearer BEARER_FROM_SAMSUNG" https://api.smartthings.com/v1/devices/23092738-d938-474d-acf1-3bc6116a7134/status  | /bin/python -mjson.tool | grep -A2 temperature | grep value | awk '{print $2}')"

/bin/curl  -X POST -H "Content-type: application/json" \
-d "{ \"series\" :
         [{\"metric\":\"home.ivysroom.temp\",
          \"points\":[[$currenttime, $TEMP6]],
          \"type\":\"gauge\",
          \"host\":\"home\",
          \"tags\":[\"environment:temps\"]}
        ]
    }" \
'https://app.datadoghq.com/api/v1/series?api_key=DD_API_KEY'

TEMP7="$(/bin/curl -s -H "Authorization: Bearer BEARER_FROM_SAMSUNG" https://api.smartthings.com/v1/devices/35385c6c-77b5-4efb-8382-f2b36b418921/status  | /bin/python -mjson.tool | grep -A2 temperature | grep value | awk '{print $2}')"

/bin/curl  -X POST -H "Content-type: application/json" \
-d "{ \"series\" :
         [{\"metric\":\"home.office.temp\",
          \"points\":[[$currenttime, $TEMP7]],
          \"type\":\"gauge\",
          \"host\":\"home\",
          \"tags\":[\"environment:temps\"]}
        ]
    }" \
'https://app.datadoghq.com/api/v1/series?api_key=DD_API_KEY'
