#include "comms.h"
#include <string.h>
#include "../mcc_generated_files/cloud/wifi_service.h"

shared_networking_params_t shared_networking_params;
struct wifi_params wifi_params;

void Comms_Init(void){
    strcpy(wifi_params.wifi_ssid, "AndroidAP1890");
    strcpy(wifi_params.wifi_password, "uegc4562");
    wifi_params.wifi_authType[0] = 0;
    wifi_params.wifi_authType[1] = 0;
    wifi_init(NULL, WIFI_DEFAULT);
    wifi_connectToAp(DEFAULT_CREDENTIALS);
}
