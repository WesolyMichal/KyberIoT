#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/Kyber_IoT.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/Kyber_IoT.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=mcc_generated_files/cli/cli.c mcc_generated_files/cloud/bsd_adapter/bsdWINC.c mcc_generated_files/cloud/crypto_client/crypto_client.c mcc_generated_files/cloud/crypto_client/cryptoauthlib_main.c mcc_generated_files/cloud/mqtt_packetPopulation/mqtt_packetPopulate.c mcc_generated_files/cloud/cloud_service.c mcc_generated_files/cloud/wifi_service.c mcc_generated_files/credentials_storage/credentials_storage.c mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_client.c mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_date.c mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_def.c mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_der.c mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_host_hw.c mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_host_sw.c mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_pem.c mcc_generated_files/cryptoauthlib/lib/basic/atca_basic.c mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_aes.c mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_checkmac.c mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_counter.c mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_derivekey.c mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_ecdh.c mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_gendig.c mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_genkey.c mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_hmac.c mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_info.c mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_kdf.c mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_lock.c mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_mac.c mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_nonce.c mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_privwrite.c mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_random.c mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_read.c mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_secureboot.c mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_selftest.c mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_sha.c mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_sign.c mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_updateextra.c mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_verify.c mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_write.c mcc_generated_files/cryptoauthlib/lib/basic/atca_helpers.c mcc_generated_files/cryptoauthlib/lib/crypto/hashes/sha1_routines.c mcc_generated_files/cryptoauthlib/lib/crypto/hashes/sha2_routines.c mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_ecdsa.c mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_rand.c mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_sha1.c mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_sha2.c mcc_generated_files/cryptoauthlib/lib/hal/hal_i2c.c mcc_generated_files/cryptoauthlib/lib/hal/hal_timer.c mcc_generated_files/cryptoauthlib/lib/hal/atca_hal.c mcc_generated_files/cryptoauthlib/lib/host/atca_host.c mcc_generated_files/cryptoauthlib/lib/jwt/atca_jwt.c mcc_generated_files/cryptoauthlib/lib/tls/atcatls.c mcc_generated_files/cryptoauthlib/lib/tls/atcatls_cfg.c mcc_generated_files/cryptoauthlib/lib/atca_cfgs.c mcc_generated_files/cryptoauthlib/lib/atca_command.c mcc_generated_files/cryptoauthlib/lib/atca_device.c mcc_generated_files/cryptoauthlib/lib/atca_execution.c mcc_generated_files/cryptoauthlib/lib/atca_iface.c mcc_generated_files/drivers/uart.c mcc_generated_files/drivers/i2c_master.c mcc_generated_files/drivers/i2c_types.c mcc_generated_files/drivers/timeout.c mcc_generated_files/drivers/spi_master.c mcc_generated_files/drivers/i2c_simple_master.c mcc_generated_files/mqtt/mqtt_comm_bsd/mqtt_comm_layer.c mcc_generated_files/mqtt/mqtt_core/mqtt_core.c mcc_generated_files/mqtt/mqtt_exchange_buffer/mqtt_exchange_buffer.c mcc_generated_files/mqtt/mqtt_packetTransfer_interface.c mcc_generated_files/winc/bsp/source/nm_bsp_mega.c mcc_generated_files/winc/bus_wrapper/source/nm_bus_wrapper_mega.c mcc_generated_files/winc/common/source/nm_common.c mcc_generated_files/winc/driver/source/m2m_ate_mode.c mcc_generated_files/winc/driver/source/m2m_crypto.c mcc_generated_files/winc/driver/source/m2m_hif.c mcc_generated_files/winc/driver/source/m2m_ota.c mcc_generated_files/winc/driver/source/m2m_periph.c mcc_generated_files/winc/driver/source/m2m_ssl.c mcc_generated_files/winc/driver/source/m2m_wifi.c mcc_generated_files/winc/driver/source/nmasic.c mcc_generated_files/winc/driver/source/nmbus.c mcc_generated_files/winc/driver/source/nmdrv.c mcc_generated_files/winc/driver/source/nmi2c.c mcc_generated_files/winc/driver/source/nmspi.c mcc_generated_files/winc/driver/source/nmuart.c mcc_generated_files/winc/socket/source/socket.c mcc_generated_files/winc/spi_flash/source/spi_flash.c mcc_generated_files/tmr2.c mcc_generated_files/spi1_driver.c mcc_generated_files/interrupt_manager.c mcc_generated_files/traps.c mcc_generated_files/where_was_i.s mcc_generated_files/adc1.c mcc_generated_files/pin_manager.c mcc_generated_files/delay.c mcc_generated_files/led.c mcc_generated_files/application_manager.c mcc_generated_files/debug_print.c mcc_generated_files/sensors_handling.c mcc_generated_files/tmr1.c mcc_generated_files/mcc.c mcc_generated_files/system.c mcc_generated_files/clock.c mcc_generated_files/i2c2_driver.c mcc_generated_files/uart1.c mcc_generated_files/i2c1.c my_files/oled.c main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/mcc_generated_files/cli/cli.o ${OBJECTDIR}/mcc_generated_files/cloud/bsd_adapter/bsdWINC.o ${OBJECTDIR}/mcc_generated_files/cloud/crypto_client/crypto_client.o ${OBJECTDIR}/mcc_generated_files/cloud/crypto_client/cryptoauthlib_main.o ${OBJECTDIR}/mcc_generated_files/cloud/mqtt_packetPopulation/mqtt_packetPopulate.o ${OBJECTDIR}/mcc_generated_files/cloud/cloud_service.o ${OBJECTDIR}/mcc_generated_files/cloud/wifi_service.o ${OBJECTDIR}/mcc_generated_files/credentials_storage/credentials_storage.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_client.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_date.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_def.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_der.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_host_hw.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_host_sw.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_pem.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_aes.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_checkmac.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_counter.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_derivekey.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_ecdh.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_gendig.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_genkey.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_hmac.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_info.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_kdf.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_lock.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_mac.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_nonce.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_privwrite.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_random.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_read.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_secureboot.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_selftest.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_sha.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_sign.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_updateextra.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_verify.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_write.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_helpers.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/hashes/sha1_routines.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/hashes/sha2_routines.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_ecdsa.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_rand.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_sha1.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_sha2.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/hal/hal_i2c.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/hal/hal_timer.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/hal/atca_hal.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/host/atca_host.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/jwt/atca_jwt.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/tls/atcatls.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/tls/atcatls_cfg.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_cfgs.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_command.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_device.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_execution.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_iface.o ${OBJECTDIR}/mcc_generated_files/drivers/uart.o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o ${OBJECTDIR}/mcc_generated_files/drivers/timeout.o ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_comm_bsd/mqtt_comm_layer.o ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_core/mqtt_core.o ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_exchange_buffer/mqtt_exchange_buffer.o ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_packetTransfer_interface.o ${OBJECTDIR}/mcc_generated_files/winc/bsp/source/nm_bsp_mega.o ${OBJECTDIR}/mcc_generated_files/winc/bus_wrapper/source/nm_bus_wrapper_mega.o ${OBJECTDIR}/mcc_generated_files/winc/common/source/nm_common.o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_ate_mode.o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_crypto.o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_hif.o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_ota.o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_periph.o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_ssl.o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_wifi.o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmasic.o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmbus.o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmdrv.o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmi2c.o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmspi.o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmuart.o ${OBJECTDIR}/mcc_generated_files/winc/socket/source/socket.o ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/source/spi_flash.o ${OBJECTDIR}/mcc_generated_files/tmr2.o ${OBJECTDIR}/mcc_generated_files/spi1_driver.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/mcc_generated_files/traps.o ${OBJECTDIR}/mcc_generated_files/where_was_i.o ${OBJECTDIR}/mcc_generated_files/adc1.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/mcc_generated_files/delay.o ${OBJECTDIR}/mcc_generated_files/led.o ${OBJECTDIR}/mcc_generated_files/application_manager.o ${OBJECTDIR}/mcc_generated_files/debug_print.o ${OBJECTDIR}/mcc_generated_files/sensors_handling.o ${OBJECTDIR}/mcc_generated_files/tmr1.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/system.o ${OBJECTDIR}/mcc_generated_files/clock.o ${OBJECTDIR}/mcc_generated_files/i2c2_driver.o ${OBJECTDIR}/mcc_generated_files/uart1.o ${OBJECTDIR}/mcc_generated_files/i2c1.o ${OBJECTDIR}/my_files/oled.o ${OBJECTDIR}/main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/mcc_generated_files/cli/cli.o.d ${OBJECTDIR}/mcc_generated_files/cloud/bsd_adapter/bsdWINC.o.d ${OBJECTDIR}/mcc_generated_files/cloud/crypto_client/crypto_client.o.d ${OBJECTDIR}/mcc_generated_files/cloud/crypto_client/cryptoauthlib_main.o.d ${OBJECTDIR}/mcc_generated_files/cloud/mqtt_packetPopulation/mqtt_packetPopulate.o.d ${OBJECTDIR}/mcc_generated_files/cloud/cloud_service.o.d ${OBJECTDIR}/mcc_generated_files/cloud/wifi_service.o.d ${OBJECTDIR}/mcc_generated_files/credentials_storage/credentials_storage.o.d ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_client.o.d ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_date.o.d ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_def.o.d ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_der.o.d ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_host_hw.o.d ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_host_sw.o.d ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_pem.o.d ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic.o.d ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_aes.o.d ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_checkmac.o.d ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_counter.o.d ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_derivekey.o.d ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_ecdh.o.d ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_gendig.o.d ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_genkey.o.d ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_hmac.o.d ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_info.o.d ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_kdf.o.d ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_lock.o.d ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_mac.o.d ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_nonce.o.d ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_privwrite.o.d ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_random.o.d ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_read.o.d ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_secureboot.o.d ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_selftest.o.d ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_sha.o.d ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_sign.o.d ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_updateextra.o.d ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_verify.o.d ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_write.o.d ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_helpers.o.d ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/hashes/sha1_routines.o.d ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/hashes/sha2_routines.o.d ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_ecdsa.o.d ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_rand.o.d ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_sha1.o.d ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_sha2.o.d ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/hal/hal_i2c.o.d ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/hal/hal_timer.o.d ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/hal/atca_hal.o.d ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/host/atca_host.o.d ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/jwt/atca_jwt.o.d ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/tls/atcatls.o.d ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/tls/atcatls_cfg.o.d ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_cfgs.o.d ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_command.o.d ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_device.o.d ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_execution.o.d ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_iface.o.d ${OBJECTDIR}/mcc_generated_files/drivers/uart.o.d ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o.d ${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o.d ${OBJECTDIR}/mcc_generated_files/drivers/timeout.o.d ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o.d ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o.d ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_comm_bsd/mqtt_comm_layer.o.d ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_core/mqtt_core.o.d ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_exchange_buffer/mqtt_exchange_buffer.o.d ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_packetTransfer_interface.o.d ${OBJECTDIR}/mcc_generated_files/winc/bsp/source/nm_bsp_mega.o.d ${OBJECTDIR}/mcc_generated_files/winc/bus_wrapper/source/nm_bus_wrapper_mega.o.d ${OBJECTDIR}/mcc_generated_files/winc/common/source/nm_common.o.d ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_ate_mode.o.d ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_crypto.o.d ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_hif.o.d ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_ota.o.d ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_periph.o.d ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_ssl.o.d ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_wifi.o.d ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmasic.o.d ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmbus.o.d ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmdrv.o.d ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmi2c.o.d ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmspi.o.d ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmuart.o.d ${OBJECTDIR}/mcc_generated_files/winc/socket/source/socket.o.d ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/source/spi_flash.o.d ${OBJECTDIR}/mcc_generated_files/tmr2.o.d ${OBJECTDIR}/mcc_generated_files/spi1_driver.o.d ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d ${OBJECTDIR}/mcc_generated_files/traps.o.d ${OBJECTDIR}/mcc_generated_files/where_was_i.o.d ${OBJECTDIR}/mcc_generated_files/adc1.o.d ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d ${OBJECTDIR}/mcc_generated_files/delay.o.d ${OBJECTDIR}/mcc_generated_files/led.o.d ${OBJECTDIR}/mcc_generated_files/application_manager.o.d ${OBJECTDIR}/mcc_generated_files/debug_print.o.d ${OBJECTDIR}/mcc_generated_files/sensors_handling.o.d ${OBJECTDIR}/mcc_generated_files/tmr1.o.d ${OBJECTDIR}/mcc_generated_files/mcc.o.d ${OBJECTDIR}/mcc_generated_files/system.o.d ${OBJECTDIR}/mcc_generated_files/clock.o.d ${OBJECTDIR}/mcc_generated_files/i2c2_driver.o.d ${OBJECTDIR}/mcc_generated_files/uart1.o.d ${OBJECTDIR}/mcc_generated_files/i2c1.o.d ${OBJECTDIR}/my_files/oled.o.d ${OBJECTDIR}/main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/mcc_generated_files/cli/cli.o ${OBJECTDIR}/mcc_generated_files/cloud/bsd_adapter/bsdWINC.o ${OBJECTDIR}/mcc_generated_files/cloud/crypto_client/crypto_client.o ${OBJECTDIR}/mcc_generated_files/cloud/crypto_client/cryptoauthlib_main.o ${OBJECTDIR}/mcc_generated_files/cloud/mqtt_packetPopulation/mqtt_packetPopulate.o ${OBJECTDIR}/mcc_generated_files/cloud/cloud_service.o ${OBJECTDIR}/mcc_generated_files/cloud/wifi_service.o ${OBJECTDIR}/mcc_generated_files/credentials_storage/credentials_storage.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_client.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_date.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_def.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_der.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_host_hw.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_host_sw.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_pem.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_aes.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_checkmac.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_counter.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_derivekey.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_ecdh.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_gendig.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_genkey.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_hmac.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_info.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_kdf.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_lock.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_mac.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_nonce.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_privwrite.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_random.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_read.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_secureboot.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_selftest.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_sha.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_sign.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_updateextra.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_verify.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_write.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_helpers.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/hashes/sha1_routines.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/hashes/sha2_routines.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_ecdsa.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_rand.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_sha1.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_sha2.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/hal/hal_i2c.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/hal/hal_timer.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/hal/atca_hal.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/host/atca_host.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/jwt/atca_jwt.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/tls/atcatls.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/tls/atcatls_cfg.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_cfgs.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_command.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_device.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_execution.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_iface.o ${OBJECTDIR}/mcc_generated_files/drivers/uart.o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o ${OBJECTDIR}/mcc_generated_files/drivers/timeout.o ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_comm_bsd/mqtt_comm_layer.o ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_core/mqtt_core.o ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_exchange_buffer/mqtt_exchange_buffer.o ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_packetTransfer_interface.o ${OBJECTDIR}/mcc_generated_files/winc/bsp/source/nm_bsp_mega.o ${OBJECTDIR}/mcc_generated_files/winc/bus_wrapper/source/nm_bus_wrapper_mega.o ${OBJECTDIR}/mcc_generated_files/winc/common/source/nm_common.o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_ate_mode.o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_crypto.o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_hif.o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_ota.o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_periph.o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_ssl.o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_wifi.o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmasic.o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmbus.o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmdrv.o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmi2c.o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmspi.o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmuart.o ${OBJECTDIR}/mcc_generated_files/winc/socket/source/socket.o ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/source/spi_flash.o ${OBJECTDIR}/mcc_generated_files/tmr2.o ${OBJECTDIR}/mcc_generated_files/spi1_driver.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/mcc_generated_files/traps.o ${OBJECTDIR}/mcc_generated_files/where_was_i.o ${OBJECTDIR}/mcc_generated_files/adc1.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/mcc_generated_files/delay.o ${OBJECTDIR}/mcc_generated_files/led.o ${OBJECTDIR}/mcc_generated_files/application_manager.o ${OBJECTDIR}/mcc_generated_files/debug_print.o ${OBJECTDIR}/mcc_generated_files/sensors_handling.o ${OBJECTDIR}/mcc_generated_files/tmr1.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/system.o ${OBJECTDIR}/mcc_generated_files/clock.o ${OBJECTDIR}/mcc_generated_files/i2c2_driver.o ${OBJECTDIR}/mcc_generated_files/uart1.o ${OBJECTDIR}/mcc_generated_files/i2c1.o ${OBJECTDIR}/my_files/oled.o ${OBJECTDIR}/main.o

# Source Files
SOURCEFILES=mcc_generated_files/cli/cli.c mcc_generated_files/cloud/bsd_adapter/bsdWINC.c mcc_generated_files/cloud/crypto_client/crypto_client.c mcc_generated_files/cloud/crypto_client/cryptoauthlib_main.c mcc_generated_files/cloud/mqtt_packetPopulation/mqtt_packetPopulate.c mcc_generated_files/cloud/cloud_service.c mcc_generated_files/cloud/wifi_service.c mcc_generated_files/credentials_storage/credentials_storage.c mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_client.c mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_date.c mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_def.c mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_der.c mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_host_hw.c mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_host_sw.c mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_pem.c mcc_generated_files/cryptoauthlib/lib/basic/atca_basic.c mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_aes.c mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_checkmac.c mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_counter.c mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_derivekey.c mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_ecdh.c mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_gendig.c mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_genkey.c mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_hmac.c mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_info.c mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_kdf.c mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_lock.c mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_mac.c mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_nonce.c mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_privwrite.c mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_random.c mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_read.c mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_secureboot.c mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_selftest.c mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_sha.c mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_sign.c mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_updateextra.c mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_verify.c mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_write.c mcc_generated_files/cryptoauthlib/lib/basic/atca_helpers.c mcc_generated_files/cryptoauthlib/lib/crypto/hashes/sha1_routines.c mcc_generated_files/cryptoauthlib/lib/crypto/hashes/sha2_routines.c mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_ecdsa.c mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_rand.c mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_sha1.c mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_sha2.c mcc_generated_files/cryptoauthlib/lib/hal/hal_i2c.c mcc_generated_files/cryptoauthlib/lib/hal/hal_timer.c mcc_generated_files/cryptoauthlib/lib/hal/atca_hal.c mcc_generated_files/cryptoauthlib/lib/host/atca_host.c mcc_generated_files/cryptoauthlib/lib/jwt/atca_jwt.c mcc_generated_files/cryptoauthlib/lib/tls/atcatls.c mcc_generated_files/cryptoauthlib/lib/tls/atcatls_cfg.c mcc_generated_files/cryptoauthlib/lib/atca_cfgs.c mcc_generated_files/cryptoauthlib/lib/atca_command.c mcc_generated_files/cryptoauthlib/lib/atca_device.c mcc_generated_files/cryptoauthlib/lib/atca_execution.c mcc_generated_files/cryptoauthlib/lib/atca_iface.c mcc_generated_files/drivers/uart.c mcc_generated_files/drivers/i2c_master.c mcc_generated_files/drivers/i2c_types.c mcc_generated_files/drivers/timeout.c mcc_generated_files/drivers/spi_master.c mcc_generated_files/drivers/i2c_simple_master.c mcc_generated_files/mqtt/mqtt_comm_bsd/mqtt_comm_layer.c mcc_generated_files/mqtt/mqtt_core/mqtt_core.c mcc_generated_files/mqtt/mqtt_exchange_buffer/mqtt_exchange_buffer.c mcc_generated_files/mqtt/mqtt_packetTransfer_interface.c mcc_generated_files/winc/bsp/source/nm_bsp_mega.c mcc_generated_files/winc/bus_wrapper/source/nm_bus_wrapper_mega.c mcc_generated_files/winc/common/source/nm_common.c mcc_generated_files/winc/driver/source/m2m_ate_mode.c mcc_generated_files/winc/driver/source/m2m_crypto.c mcc_generated_files/winc/driver/source/m2m_hif.c mcc_generated_files/winc/driver/source/m2m_ota.c mcc_generated_files/winc/driver/source/m2m_periph.c mcc_generated_files/winc/driver/source/m2m_ssl.c mcc_generated_files/winc/driver/source/m2m_wifi.c mcc_generated_files/winc/driver/source/nmasic.c mcc_generated_files/winc/driver/source/nmbus.c mcc_generated_files/winc/driver/source/nmdrv.c mcc_generated_files/winc/driver/source/nmi2c.c mcc_generated_files/winc/driver/source/nmspi.c mcc_generated_files/winc/driver/source/nmuart.c mcc_generated_files/winc/socket/source/socket.c mcc_generated_files/winc/spi_flash/source/spi_flash.c mcc_generated_files/tmr2.c mcc_generated_files/spi1_driver.c mcc_generated_files/interrupt_manager.c mcc_generated_files/traps.c mcc_generated_files/where_was_i.s mcc_generated_files/adc1.c mcc_generated_files/pin_manager.c mcc_generated_files/delay.c mcc_generated_files/led.c mcc_generated_files/application_manager.c mcc_generated_files/debug_print.c mcc_generated_files/sensors_handling.c mcc_generated_files/tmr1.c mcc_generated_files/mcc.c mcc_generated_files/system.c mcc_generated_files/clock.c mcc_generated_files/i2c2_driver.c mcc_generated_files/uart1.c mcc_generated_files/i2c1.c my_files/oled.c main.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/Kyber_IoT.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=24FJ128GA705
MP_LINKER_FILE_OPTION=,--script=p24FJ128GA705.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/mcc_generated_files/cli/cli.o: mcc_generated_files/cli/cli.c  .generated_files/flags/default/497c4a177d73d76d302da3c4d5a7f3b39f11c332 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cli" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cli/cli.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cli/cli.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cli/cli.c  -o ${OBJECTDIR}/mcc_generated_files/cli/cli.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cli/cli.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cloud/bsd_adapter/bsdWINC.o: mcc_generated_files/cloud/bsd_adapter/bsdWINC.c  .generated_files/flags/default/5c2f61ffc6c85cc53a311f73a1c7b8f0625762a2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cloud/bsd_adapter" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cloud/bsd_adapter/bsdWINC.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cloud/bsd_adapter/bsdWINC.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cloud/bsd_adapter/bsdWINC.c  -o ${OBJECTDIR}/mcc_generated_files/cloud/bsd_adapter/bsdWINC.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cloud/bsd_adapter/bsdWINC.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cloud/crypto_client/crypto_client.o: mcc_generated_files/cloud/crypto_client/crypto_client.c  .generated_files/flags/default/b5ed3006e21ac13cc815b0b904a4a4aede395623 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cloud/crypto_client" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cloud/crypto_client/crypto_client.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cloud/crypto_client/crypto_client.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cloud/crypto_client/crypto_client.c  -o ${OBJECTDIR}/mcc_generated_files/cloud/crypto_client/crypto_client.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cloud/crypto_client/crypto_client.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cloud/crypto_client/cryptoauthlib_main.o: mcc_generated_files/cloud/crypto_client/cryptoauthlib_main.c  .generated_files/flags/default/f816f16b68613ac1d8c7c96a77a712da38a50dcb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cloud/crypto_client" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cloud/crypto_client/cryptoauthlib_main.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cloud/crypto_client/cryptoauthlib_main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cloud/crypto_client/cryptoauthlib_main.c  -o ${OBJECTDIR}/mcc_generated_files/cloud/crypto_client/cryptoauthlib_main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cloud/crypto_client/cryptoauthlib_main.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cloud/mqtt_packetPopulation/mqtt_packetPopulate.o: mcc_generated_files/cloud/mqtt_packetPopulation/mqtt_packetPopulate.c  .generated_files/flags/default/4f6f8a0491a0e2ffb7ae28bbc860f6b2d90a6f57 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cloud/mqtt_packetPopulation" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cloud/mqtt_packetPopulation/mqtt_packetPopulate.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cloud/mqtt_packetPopulation/mqtt_packetPopulate.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cloud/mqtt_packetPopulation/mqtt_packetPopulate.c  -o ${OBJECTDIR}/mcc_generated_files/cloud/mqtt_packetPopulation/mqtt_packetPopulate.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cloud/mqtt_packetPopulation/mqtt_packetPopulate.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cloud/cloud_service.o: mcc_generated_files/cloud/cloud_service.c  .generated_files/flags/default/c4b3370a5b0fd1c69650e10e10d4fdca40af0fbe .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cloud" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cloud/cloud_service.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cloud/cloud_service.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cloud/cloud_service.c  -o ${OBJECTDIR}/mcc_generated_files/cloud/cloud_service.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cloud/cloud_service.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cloud/wifi_service.o: mcc_generated_files/cloud/wifi_service.c  .generated_files/flags/default/c2a2cb2c96ed8e0492925cbd120ec2b921c7fdeb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cloud" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cloud/wifi_service.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cloud/wifi_service.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cloud/wifi_service.c  -o ${OBJECTDIR}/mcc_generated_files/cloud/wifi_service.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cloud/wifi_service.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/credentials_storage/credentials_storage.o: mcc_generated_files/credentials_storage/credentials_storage.c  .generated_files/flags/default/361311daa655fad3d5607cd90995bfff69206d0e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/credentials_storage" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/credentials_storage/credentials_storage.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/credentials_storage/credentials_storage.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/credentials_storage/credentials_storage.c  -o ${OBJECTDIR}/mcc_generated_files/credentials_storage/credentials_storage.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/credentials_storage/credentials_storage.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_client.o: mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_client.c  .generated_files/flags/default/d3a1641530f31ca781155d612a258324d2987732 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_client.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_client.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_client.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_client.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_client.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_date.o: mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_date.c  .generated_files/flags/default/9d4b7aa9c40342e2fea70b89a088dd059c3cacf7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_date.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_date.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_date.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_date.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_date.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_def.o: mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_def.c  .generated_files/flags/default/e72545f0ea362ff343850b5521f0b5dce2b8ef11 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_def.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_def.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_def.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_def.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_def.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_der.o: mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_der.c  .generated_files/flags/default/d7db9652236b65dca2d3bce3667f321ff4a155d8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_der.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_der.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_der.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_der.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_der.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_host_hw.o: mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_host_hw.c  .generated_files/flags/default/dab14fbe454151620d0fd84906a2d6073a541275 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_host_hw.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_host_hw.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_host_hw.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_host_hw.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_host_hw.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_host_sw.o: mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_host_sw.c  .generated_files/flags/default/729bc7ae79312887307717c61c89b4e8f1755752 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_host_sw.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_host_sw.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_host_sw.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_host_sw.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_host_sw.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_pem.o: mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_pem.c  .generated_files/flags/default/3afea7315dc955170dbd15cff4fb3222b4cc3fd2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_pem.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_pem.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_pem.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_pem.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_pem.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic.o: mcc_generated_files/cryptoauthlib/lib/basic/atca_basic.c  .generated_files/flags/default/97111665de669c8fe5a0bf4f97faa53dcd5ac48f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/basic/atca_basic.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_aes.o: mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_aes.c  .generated_files/flags/default/43ffa3f90ad70606d9bcc89e9690d40e4c0eec01 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_aes.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_aes.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_aes.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_aes.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_aes.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_checkmac.o: mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_checkmac.c  .generated_files/flags/default/638f7f4a14c0172b84161fc175fadf4df58dee04 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_checkmac.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_checkmac.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_checkmac.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_checkmac.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_checkmac.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_counter.o: mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_counter.c  .generated_files/flags/default/65414af5ce5c5557adf419639b498c29946395c8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_counter.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_counter.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_counter.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_counter.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_counter.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_derivekey.o: mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_derivekey.c  .generated_files/flags/default/948a36ffacc88d65ad396a01071c873515698d5e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_derivekey.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_derivekey.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_derivekey.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_derivekey.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_derivekey.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_ecdh.o: mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_ecdh.c  .generated_files/flags/default/bd9eb086c2bed8ab0978ea4b70534b1924218e62 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_ecdh.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_ecdh.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_ecdh.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_ecdh.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_ecdh.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_gendig.o: mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_gendig.c  .generated_files/flags/default/3d41695bbaecf033b93e653a4b104d62a6c42bdd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_gendig.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_gendig.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_gendig.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_gendig.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_gendig.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_genkey.o: mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_genkey.c  .generated_files/flags/default/c3a1e0f22fd8c388cacae9ca70fbe52060d96b5c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_genkey.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_genkey.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_genkey.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_genkey.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_genkey.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_hmac.o: mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_hmac.c  .generated_files/flags/default/e6a63f02410f495a10ed09320c340df1c289b376 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_hmac.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_hmac.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_hmac.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_hmac.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_hmac.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_info.o: mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_info.c  .generated_files/flags/default/f9386bbd5e60dacd597ad2971bf32b2b3659ca96 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_info.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_info.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_info.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_info.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_info.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_kdf.o: mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_kdf.c  .generated_files/flags/default/f042e11ad1387ceeae1b0045f9e56468fba660bf .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_kdf.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_kdf.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_kdf.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_kdf.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_kdf.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_lock.o: mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_lock.c  .generated_files/flags/default/1ae5578d9c48541e1eef1693483f2ac3b93a209c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_lock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_lock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_lock.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_lock.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_lock.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_mac.o: mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_mac.c  .generated_files/flags/default/4a019e2c3d25c7ecd67ea4f5d34549060d2efc0f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_mac.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_mac.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_mac.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_mac.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_mac.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_nonce.o: mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_nonce.c  .generated_files/flags/default/3c0ea2d53dbbde5b5a3d96b60d54c3ace7ef18f5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_nonce.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_nonce.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_nonce.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_nonce.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_nonce.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_privwrite.o: mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_privwrite.c  .generated_files/flags/default/387f47a73832340b5a83a1328ed2ce7078a7eb65 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_privwrite.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_privwrite.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_privwrite.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_privwrite.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_privwrite.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_random.o: mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_random.c  .generated_files/flags/default/e0d127d7909b807eae529f2efe625b47283e53e3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_random.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_random.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_random.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_random.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_random.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_read.o: mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_read.c  .generated_files/flags/default/776c3f4d437212bf403ff3a1e692337aa083f0f9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_read.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_read.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_read.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_read.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_read.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_secureboot.o: mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_secureboot.c  .generated_files/flags/default/efc9f234b31ec40c166a2a77eb5baa4143aadf55 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_secureboot.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_secureboot.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_secureboot.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_secureboot.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_secureboot.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_selftest.o: mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_selftest.c  .generated_files/flags/default/e0ecb4a84ed072b942c3e76acbdee4eca6dfbaf5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_selftest.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_selftest.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_selftest.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_selftest.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_selftest.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_sha.o: mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_sha.c  .generated_files/flags/default/138cd557fea488d16842a31d0ec20ff65344e519 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_sha.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_sha.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_sha.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_sha.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_sha.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_sign.o: mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_sign.c  .generated_files/flags/default/a53ed1b3d49192e4abbac30aa277e5775137ea7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_sign.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_sign.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_sign.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_sign.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_sign.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_updateextra.o: mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_updateextra.c  .generated_files/flags/default/5b785e831ac87510e7839a64d434597c503411dd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_updateextra.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_updateextra.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_updateextra.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_updateextra.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_updateextra.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_verify.o: mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_verify.c  .generated_files/flags/default/286d654956f98bb80e695867bb60083275fa7c94 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_verify.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_verify.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_verify.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_verify.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_verify.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_write.o: mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_write.c  .generated_files/flags/default/b0bde2a1848f1e17a0637d6c8a6fd1bfd3c435db .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_write.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_write.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_write.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_write.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_write.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_helpers.o: mcc_generated_files/cryptoauthlib/lib/basic/atca_helpers.c  .generated_files/flags/default/cb3001a55a733a74f5a36e40115a2db9d7479f83 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_helpers.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_helpers.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/basic/atca_helpers.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_helpers.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_helpers.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/hashes/sha1_routines.o: mcc_generated_files/cryptoauthlib/lib/crypto/hashes/sha1_routines.c  .generated_files/flags/default/7c9a38879a708744ab490e9c218e4a80ee1f43a0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/hashes" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/hashes/sha1_routines.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/hashes/sha1_routines.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/crypto/hashes/sha1_routines.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/hashes/sha1_routines.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/hashes/sha1_routines.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/hashes/sha2_routines.o: mcc_generated_files/cryptoauthlib/lib/crypto/hashes/sha2_routines.c  .generated_files/flags/default/c7abcd0d1e4f1aece96d32c85736424ca40f4dba .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/hashes" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/hashes/sha2_routines.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/hashes/sha2_routines.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/crypto/hashes/sha2_routines.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/hashes/sha2_routines.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/hashes/sha2_routines.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_ecdsa.o: mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_ecdsa.c  .generated_files/flags/default/267e0edbd79394b265716a6bcdf4b8b93692f049 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_ecdsa.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_ecdsa.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_ecdsa.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_ecdsa.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_ecdsa.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_rand.o: mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_rand.c  .generated_files/flags/default/4efe094f8389e3eac82daa6b87bc4291886b7eb3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_rand.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_rand.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_rand.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_rand.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_rand.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_sha1.o: mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_sha1.c  .generated_files/flags/default/aa15fb1d4e35817810516b73e8062095451d8bce .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_sha1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_sha1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_sha1.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_sha1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_sha1.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_sha2.o: mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_sha2.c  .generated_files/flags/default/2bbc18d42fb7c2da3fc58a1a3a52c8702381c945 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_sha2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_sha2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_sha2.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_sha2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_sha2.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/hal/hal_i2c.o: mcc_generated_files/cryptoauthlib/lib/hal/hal_i2c.c  .generated_files/flags/default/cb30cce691ae7b603b6537c702c85e3d8d25ca67 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/hal" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/hal/hal_i2c.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/hal/hal_i2c.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/hal/hal_i2c.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/hal/hal_i2c.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/hal/hal_i2c.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/hal/hal_timer.o: mcc_generated_files/cryptoauthlib/lib/hal/hal_timer.c  .generated_files/flags/default/3a85c48cdc44de720f322cd68d87a03235979089 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/hal" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/hal/hal_timer.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/hal/hal_timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/hal/hal_timer.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/hal/hal_timer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/hal/hal_timer.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/hal/atca_hal.o: mcc_generated_files/cryptoauthlib/lib/hal/atca_hal.c  .generated_files/flags/default/168384818621ab3f3ef090f77e06bc8401079406 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/hal" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/hal/atca_hal.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/hal/atca_hal.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/hal/atca_hal.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/hal/atca_hal.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/hal/atca_hal.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/host/atca_host.o: mcc_generated_files/cryptoauthlib/lib/host/atca_host.c  .generated_files/flags/default/3f771a2c3859dfe7fa0659c634435ad1b352af3c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/host" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/host/atca_host.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/host/atca_host.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/host/atca_host.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/host/atca_host.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/host/atca_host.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/jwt/atca_jwt.o: mcc_generated_files/cryptoauthlib/lib/jwt/atca_jwt.c  .generated_files/flags/default/317de782591b7f0407d5a9162e8683214299b439 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/jwt" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/jwt/atca_jwt.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/jwt/atca_jwt.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/jwt/atca_jwt.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/jwt/atca_jwt.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/jwt/atca_jwt.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/tls/atcatls.o: mcc_generated_files/cryptoauthlib/lib/tls/atcatls.c  .generated_files/flags/default/e21f14a979ae92d89c44e3dedf4eea3ea2db27f1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/tls" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/tls/atcatls.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/tls/atcatls.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/tls/atcatls.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/tls/atcatls.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/tls/atcatls.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/tls/atcatls_cfg.o: mcc_generated_files/cryptoauthlib/lib/tls/atcatls_cfg.c  .generated_files/flags/default/dd0d7629de82aaabd26c12e22b2ff4942e89cf4c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/tls" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/tls/atcatls_cfg.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/tls/atcatls_cfg.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/tls/atcatls_cfg.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/tls/atcatls_cfg.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/tls/atcatls_cfg.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_cfgs.o: mcc_generated_files/cryptoauthlib/lib/atca_cfgs.c  .generated_files/flags/default/c10b65cb11c4c5bc986b6fc084b045f5c2786196 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_cfgs.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_cfgs.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/atca_cfgs.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_cfgs.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_cfgs.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_command.o: mcc_generated_files/cryptoauthlib/lib/atca_command.c  .generated_files/flags/default/c1e9a38ede6c7a493bd5ef7145aba42f883a024 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_command.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_command.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/atca_command.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_command.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_command.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_device.o: mcc_generated_files/cryptoauthlib/lib/atca_device.c  .generated_files/flags/default/63bf843d97f07b6ce7da9df6218209eb9ad98045 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_device.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_device.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/atca_device.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_device.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_device.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_execution.o: mcc_generated_files/cryptoauthlib/lib/atca_execution.c  .generated_files/flags/default/76dfd9aaab5f8b1569fb7323532ebc1bfd3bd3ab .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_execution.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_execution.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/atca_execution.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_execution.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_execution.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_iface.o: mcc_generated_files/cryptoauthlib/lib/atca_iface.c  .generated_files/flags/default/8403c71d6e7347d26a3e8a39798afe7b85f7d9a4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_iface.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_iface.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/atca_iface.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_iface.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_iface.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/drivers/uart.o: mcc_generated_files/drivers/uart.c  .generated_files/flags/default/e6604897aec105c7fe2d95299eaf5cde1c37f1b5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/uart.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/uart.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/drivers/uart.c  -o ${OBJECTDIR}/mcc_generated_files/drivers/uart.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/uart.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o: mcc_generated_files/drivers/i2c_master.c  .generated_files/flags/default/afb33df27c39bd5e16b9d28029f8bc79cb2a9480 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/drivers/i2c_master.c  -o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o: mcc_generated_files/drivers/i2c_types.c  .generated_files/flags/default/8cac01e695dae0bd629b6923ac93c7e6b82fb179 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/drivers/i2c_types.c  -o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/drivers/timeout.o: mcc_generated_files/drivers/timeout.c  .generated_files/flags/default/76b124f04f728015eb194e07dd80171327fb17bf .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/timeout.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/timeout.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/drivers/timeout.c  -o ${OBJECTDIR}/mcc_generated_files/drivers/timeout.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/timeout.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o: mcc_generated_files/drivers/spi_master.c  .generated_files/flags/default/338ee850c1cd9a02b7a3254f882b04880f067fd2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/drivers/spi_master.c  -o ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o: mcc_generated_files/drivers/i2c_simple_master.c  .generated_files/flags/default/1a40735443932f61e050a85dbcfdc4b6980f3524 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/drivers/i2c_simple_master.c  -o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_comm_bsd/mqtt_comm_layer.o: mcc_generated_files/mqtt/mqtt_comm_bsd/mqtt_comm_layer.c  .generated_files/flags/default/d216b44a8b8a5f0ca86e008bb19d744d5241dd88 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_comm_bsd" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_comm_bsd/mqtt_comm_layer.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_comm_bsd/mqtt_comm_layer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mqtt/mqtt_comm_bsd/mqtt_comm_layer.c  -o ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_comm_bsd/mqtt_comm_layer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_comm_bsd/mqtt_comm_layer.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_core/mqtt_core.o: mcc_generated_files/mqtt/mqtt_core/mqtt_core.c  .generated_files/flags/default/9843db7bf0bd1b2274d8fc0e1db48234d38fb314 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_core" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_core/mqtt_core.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_core/mqtt_core.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mqtt/mqtt_core/mqtt_core.c  -o ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_core/mqtt_core.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_core/mqtt_core.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_exchange_buffer/mqtt_exchange_buffer.o: mcc_generated_files/mqtt/mqtt_exchange_buffer/mqtt_exchange_buffer.c  .generated_files/flags/default/15f71fba1b868ecf5a1afb4a516346d99016273d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_exchange_buffer" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_exchange_buffer/mqtt_exchange_buffer.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_exchange_buffer/mqtt_exchange_buffer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mqtt/mqtt_exchange_buffer/mqtt_exchange_buffer.c  -o ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_exchange_buffer/mqtt_exchange_buffer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_exchange_buffer/mqtt_exchange_buffer.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_packetTransfer_interface.o: mcc_generated_files/mqtt/mqtt_packetTransfer_interface.c  .generated_files/flags/default/78ffb93a4b75182f2098346822efb84a136c05b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/mqtt" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_packetTransfer_interface.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_packetTransfer_interface.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mqtt/mqtt_packetTransfer_interface.c  -o ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_packetTransfer_interface.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_packetTransfer_interface.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/bsp/source/nm_bsp_mega.o: mcc_generated_files/winc/bsp/source/nm_bsp_mega.c  .generated_files/flags/default/5ff64b1080ef993beabbaf3d1a8ef2f8ebd0d3ac .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/bsp/source" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/bsp/source/nm_bsp_mega.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/bsp/source/nm_bsp_mega.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/bsp/source/nm_bsp_mega.c  -o ${OBJECTDIR}/mcc_generated_files/winc/bsp/source/nm_bsp_mega.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/bsp/source/nm_bsp_mega.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/bus_wrapper/source/nm_bus_wrapper_mega.o: mcc_generated_files/winc/bus_wrapper/source/nm_bus_wrapper_mega.c  .generated_files/flags/default/9c0621d30bf1bc461e7b0c8acce469dc745e413a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/bus_wrapper/source" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/bus_wrapper/source/nm_bus_wrapper_mega.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/bus_wrapper/source/nm_bus_wrapper_mega.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/bus_wrapper/source/nm_bus_wrapper_mega.c  -o ${OBJECTDIR}/mcc_generated_files/winc/bus_wrapper/source/nm_bus_wrapper_mega.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/bus_wrapper/source/nm_bus_wrapper_mega.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/common/source/nm_common.o: mcc_generated_files/winc/common/source/nm_common.c  .generated_files/flags/default/127e9ac76c4202547a468e9cc65c025e0a0a987c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/common/source" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/common/source/nm_common.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/common/source/nm_common.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/common/source/nm_common.c  -o ${OBJECTDIR}/mcc_generated_files/winc/common/source/nm_common.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/common/source/nm_common.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_ate_mode.o: mcc_generated_files/winc/driver/source/m2m_ate_mode.c  .generated_files/flags/default/e1f84b582032f0d240eaeb712edec4c3e3e2474e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver/source" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_ate_mode.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_ate_mode.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/driver/source/m2m_ate_mode.c  -o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_ate_mode.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_ate_mode.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_crypto.o: mcc_generated_files/winc/driver/source/m2m_crypto.c  .generated_files/flags/default/80ed69da67d9c984b83a5e3a75b3ead08a9af845 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver/source" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_crypto.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_crypto.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/driver/source/m2m_crypto.c  -o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_crypto.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_crypto.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_hif.o: mcc_generated_files/winc/driver/source/m2m_hif.c  .generated_files/flags/default/9255232206cba057b1ee6af265c440ee2eb3afb3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver/source" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_hif.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_hif.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/driver/source/m2m_hif.c  -o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_hif.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_hif.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_ota.o: mcc_generated_files/winc/driver/source/m2m_ota.c  .generated_files/flags/default/cc7d024da5354b601609a00014ec12ea1d5f44cd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver/source" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_ota.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_ota.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/driver/source/m2m_ota.c  -o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_ota.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_ota.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_periph.o: mcc_generated_files/winc/driver/source/m2m_periph.c  .generated_files/flags/default/85ca75438d77ff0f015465ff75022eba0d376f87 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver/source" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_periph.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_periph.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/driver/source/m2m_periph.c  -o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_periph.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_periph.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_ssl.o: mcc_generated_files/winc/driver/source/m2m_ssl.c  .generated_files/flags/default/54f33d645e7f8f207e3ec42020f0d18dfb74983f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver/source" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_ssl.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_ssl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/driver/source/m2m_ssl.c  -o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_ssl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_ssl.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_wifi.o: mcc_generated_files/winc/driver/source/m2m_wifi.c  .generated_files/flags/default/71d06707947c1a9e1975d6efb620f595845ece7c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver/source" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_wifi.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_wifi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/driver/source/m2m_wifi.c  -o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_wifi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_wifi.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmasic.o: mcc_generated_files/winc/driver/source/nmasic.c  .generated_files/flags/default/cfbd8464b0c3aecbf734b6d9d210f546d0715fb8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver/source" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmasic.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmasic.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/driver/source/nmasic.c  -o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmasic.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmasic.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmbus.o: mcc_generated_files/winc/driver/source/nmbus.c  .generated_files/flags/default/d6671ce747fb296705e1ab37a4d802714e7f303a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver/source" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmbus.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmbus.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/driver/source/nmbus.c  -o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmbus.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmbus.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmdrv.o: mcc_generated_files/winc/driver/source/nmdrv.c  .generated_files/flags/default/1fc88a4d306e1792db7e19b471f8b0b81b1416bb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver/source" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmdrv.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmdrv.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/driver/source/nmdrv.c  -o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmdrv.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmdrv.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmi2c.o: mcc_generated_files/winc/driver/source/nmi2c.c  .generated_files/flags/default/abd2aca4da9f77447799c119bba154fdc27b1057 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver/source" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmi2c.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmi2c.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/driver/source/nmi2c.c  -o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmi2c.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmi2c.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmspi.o: mcc_generated_files/winc/driver/source/nmspi.c  .generated_files/flags/default/1bd7fd555544f95821b674a794b16943daaad3ea .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver/source" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmspi.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmspi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/driver/source/nmspi.c  -o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmspi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmspi.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmuart.o: mcc_generated_files/winc/driver/source/nmuart.c  .generated_files/flags/default/8bb0788d7fc43443034cead7e0654ea9f65a0421 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver/source" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmuart.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmuart.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/driver/source/nmuart.c  -o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmuart.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmuart.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/socket/source/socket.o: mcc_generated_files/winc/socket/source/socket.c  .generated_files/flags/default/964f468499283566c294a0187da956f3b1eed70d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/socket/source" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/socket/source/socket.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/socket/source/socket.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/socket/source/socket.c  -o ${OBJECTDIR}/mcc_generated_files/winc/socket/source/socket.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/socket/source/socket.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/spi_flash/source/spi_flash.o: mcc_generated_files/winc/spi_flash/source/spi_flash.c  .generated_files/flags/default/72ccf01e26ff5171b22bfd21229e991fbc33977e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/spi_flash/source" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/source/spi_flash.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/source/spi_flash.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/spi_flash/source/spi_flash.c  -o ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/source/spi_flash.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/spi_flash/source/spi_flash.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/tmr2.o: mcc_generated_files/tmr2.c  .generated_files/flags/default/6f58906e26132846b88b8ecc68248ab63cbb1e35 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/tmr2.c  -o ${OBJECTDIR}/mcc_generated_files/tmr2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/tmr2.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/spi1_driver.o: mcc_generated_files/spi1_driver.c  .generated_files/flags/default/380202e26a7d52d86820bc79b5591e8a14a2cf76 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi1_driver.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi1_driver.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/spi1_driver.c  -o ${OBJECTDIR}/mcc_generated_files/spi1_driver.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/spi1_driver.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/flags/default/859d4689d1e956594b5c36e97eb5580dda9af75d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/interrupt_manager.c  -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/traps.o: mcc_generated_files/traps.c  .generated_files/flags/default/79be8d08c0f3fbdb487ad8c063a646571bdd9ace .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/traps.c  -o ${OBJECTDIR}/mcc_generated_files/traps.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/traps.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/adc1.o: mcc_generated_files/adc1.c  .generated_files/flags/default/753fdb1fe33d3e1bfa8083a2bf60667ef966b38c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adc1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adc1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/adc1.c  -o ${OBJECTDIR}/mcc_generated_files/adc1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/adc1.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/flags/default/132b3f5c10b718bd4a13067dce1c1f80fbd3f63d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/pin_manager.c  -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/delay.o: mcc_generated_files/delay.c  .generated_files/flags/default/9b85f6ffade8d2a6017f6fdf0099505865d53913 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/delay.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/delay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/delay.c  -o ${OBJECTDIR}/mcc_generated_files/delay.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/delay.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/led.o: mcc_generated_files/led.c  .generated_files/flags/default/fa6037533be65aff015d3f454b85ba0ecfe3f0c2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/led.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/led.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/led.c  -o ${OBJECTDIR}/mcc_generated_files/led.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/led.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/application_manager.o: mcc_generated_files/application_manager.c  .generated_files/flags/default/fdc97a7107d22bd614f7c1e9b34a4c38463d64c1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/application_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/application_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/application_manager.c  -o ${OBJECTDIR}/mcc_generated_files/application_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/application_manager.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/debug_print.o: mcc_generated_files/debug_print.c  .generated_files/flags/default/17854e08b0254cd7d871df8ab0e3daa326dc2ce .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/debug_print.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/debug_print.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/debug_print.c  -o ${OBJECTDIR}/mcc_generated_files/debug_print.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/debug_print.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/sensors_handling.o: mcc_generated_files/sensors_handling.c  .generated_files/flags/default/ff24d119747521e33687a783e3595305448c9fb6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sensors_handling.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sensors_handling.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/sensors_handling.c  -o ${OBJECTDIR}/mcc_generated_files/sensors_handling.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/sensors_handling.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/tmr1.o: mcc_generated_files/tmr1.c  .generated_files/flags/default/a2c96889c0ea8a58452e016d2c2ee31db5e62bd7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/tmr1.c  -o ${OBJECTDIR}/mcc_generated_files/tmr1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/tmr1.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/flags/default/76a846f04ad54f7671043af4705570936b145761 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mcc.c  -o ${OBJECTDIR}/mcc_generated_files/mcc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/system.o: mcc_generated_files/system.c  .generated_files/flags/default/b311d6771b857e015a4bdd4549505dd964f08e28 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system.c  -o ${OBJECTDIR}/mcc_generated_files/system.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/clock.o: mcc_generated_files/clock.c  .generated_files/flags/default/1079a90aeea62b282bc44f0c958e29071cd36b4f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/clock.c  -o ${OBJECTDIR}/mcc_generated_files/clock.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/clock.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/i2c2_driver.o: mcc_generated_files/i2c2_driver.c  .generated_files/flags/default/f7f46f416cd3eb5bbf64a47a6f83d53b8f2c648c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c2_driver.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c2_driver.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/i2c2_driver.c  -o ${OBJECTDIR}/mcc_generated_files/i2c2_driver.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/i2c2_driver.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/uart1.o: mcc_generated_files/uart1.c  .generated_files/flags/default/5ccf2901afbda1a0c9702a5bdeed9e56bfac07e6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/uart1.c  -o ${OBJECTDIR}/mcc_generated_files/uart1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart1.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/i2c1.o: mcc_generated_files/i2c1.c  .generated_files/flags/default/c00c2c7207a22a0cd32fc00d042d3fe413625cc6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/i2c1.c  -o ${OBJECTDIR}/mcc_generated_files/i2c1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/i2c1.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/my_files/oled.o: my_files/oled.c  .generated_files/flags/default/86fa92b6c1e471cdcd14effd9edf7e65bbf83af0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/my_files" 
	@${RM} ${OBJECTDIR}/my_files/oled.o.d 
	@${RM} ${OBJECTDIR}/my_files/oled.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  my_files/oled.c  -o ${OBJECTDIR}/my_files/oled.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/my_files/oled.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/dcdb191ece1ab9cd552629837d95ce9bb9938ca3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/mcc_generated_files/cli/cli.o: mcc_generated_files/cli/cli.c  .generated_files/flags/default/dacf9624bb3a5542a26a1c30f49377ba39169c4e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cli" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cli/cli.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cli/cli.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cli/cli.c  -o ${OBJECTDIR}/mcc_generated_files/cli/cli.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cli/cli.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cloud/bsd_adapter/bsdWINC.o: mcc_generated_files/cloud/bsd_adapter/bsdWINC.c  .generated_files/flags/default/fd7c7b9157638484a565021b1b4b8ba324d4dfb9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cloud/bsd_adapter" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cloud/bsd_adapter/bsdWINC.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cloud/bsd_adapter/bsdWINC.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cloud/bsd_adapter/bsdWINC.c  -o ${OBJECTDIR}/mcc_generated_files/cloud/bsd_adapter/bsdWINC.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cloud/bsd_adapter/bsdWINC.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cloud/crypto_client/crypto_client.o: mcc_generated_files/cloud/crypto_client/crypto_client.c  .generated_files/flags/default/f21fb3a4f7e9e220e7fbae29f061185c402e3a16 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cloud/crypto_client" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cloud/crypto_client/crypto_client.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cloud/crypto_client/crypto_client.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cloud/crypto_client/crypto_client.c  -o ${OBJECTDIR}/mcc_generated_files/cloud/crypto_client/crypto_client.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cloud/crypto_client/crypto_client.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cloud/crypto_client/cryptoauthlib_main.o: mcc_generated_files/cloud/crypto_client/cryptoauthlib_main.c  .generated_files/flags/default/9adeb3fd595d359677f7c9ded1e6e03a2d07df1e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cloud/crypto_client" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cloud/crypto_client/cryptoauthlib_main.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cloud/crypto_client/cryptoauthlib_main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cloud/crypto_client/cryptoauthlib_main.c  -o ${OBJECTDIR}/mcc_generated_files/cloud/crypto_client/cryptoauthlib_main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cloud/crypto_client/cryptoauthlib_main.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cloud/mqtt_packetPopulation/mqtt_packetPopulate.o: mcc_generated_files/cloud/mqtt_packetPopulation/mqtt_packetPopulate.c  .generated_files/flags/default/124681e306a47f03646f2902cf2b83248cb7ab5f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cloud/mqtt_packetPopulation" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cloud/mqtt_packetPopulation/mqtt_packetPopulate.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cloud/mqtt_packetPopulation/mqtt_packetPopulate.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cloud/mqtt_packetPopulation/mqtt_packetPopulate.c  -o ${OBJECTDIR}/mcc_generated_files/cloud/mqtt_packetPopulation/mqtt_packetPopulate.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cloud/mqtt_packetPopulation/mqtt_packetPopulate.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cloud/cloud_service.o: mcc_generated_files/cloud/cloud_service.c  .generated_files/flags/default/bd144f0f2b5736de89e292ccae86842213427490 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cloud" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cloud/cloud_service.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cloud/cloud_service.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cloud/cloud_service.c  -o ${OBJECTDIR}/mcc_generated_files/cloud/cloud_service.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cloud/cloud_service.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cloud/wifi_service.o: mcc_generated_files/cloud/wifi_service.c  .generated_files/flags/default/4b8dafcfe1fd27fb55917d19f96dcb8ff60f8e18 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cloud" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cloud/wifi_service.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cloud/wifi_service.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cloud/wifi_service.c  -o ${OBJECTDIR}/mcc_generated_files/cloud/wifi_service.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cloud/wifi_service.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/credentials_storage/credentials_storage.o: mcc_generated_files/credentials_storage/credentials_storage.c  .generated_files/flags/default/5e313e7c2dd95f3811d20d0e56fb7e538d6d25df .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/credentials_storage" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/credentials_storage/credentials_storage.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/credentials_storage/credentials_storage.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/credentials_storage/credentials_storage.c  -o ${OBJECTDIR}/mcc_generated_files/credentials_storage/credentials_storage.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/credentials_storage/credentials_storage.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_client.o: mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_client.c  .generated_files/flags/default/79762671a091d96d8404a1453a12b3f8d08bd0a1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_client.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_client.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_client.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_client.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_client.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_date.o: mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_date.c  .generated_files/flags/default/18ff8d1bbd7273ff7f1239fde1079b264554332e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_date.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_date.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_date.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_date.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_date.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_def.o: mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_def.c  .generated_files/flags/default/cc379d03dc398a2f19128d0df8f10106c8bfd570 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_def.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_def.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_def.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_def.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_def.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_der.o: mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_der.c  .generated_files/flags/default/1a77cd6f37add72a0f323d13d8894d88e3970c3e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_der.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_der.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_der.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_der.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_der.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_host_hw.o: mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_host_hw.c  .generated_files/flags/default/209ef6ae246ae5b5c79753f3b461f75caf6fb8bf .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_host_hw.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_host_hw.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_host_hw.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_host_hw.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_host_hw.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_host_sw.o: mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_host_sw.c  .generated_files/flags/default/3ac72bc53d75398a083e11d56e9cdb78a8fdeed1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_host_sw.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_host_sw.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_host_sw.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_host_sw.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_host_sw.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_pem.o: mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_pem.c  .generated_files/flags/default/4a2d160c7d024606f7e8bfbc85529d8ba4ce4791 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_pem.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_pem.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_pem.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_pem.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_pem.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic.o: mcc_generated_files/cryptoauthlib/lib/basic/atca_basic.c  .generated_files/flags/default/3b7390e22929e1a3a9a3ce7bc480562313f36fc5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/basic/atca_basic.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_aes.o: mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_aes.c  .generated_files/flags/default/e32a19fee6ba903116d936aba1a02cb88ad5c95b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_aes.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_aes.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_aes.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_aes.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_aes.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_checkmac.o: mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_checkmac.c  .generated_files/flags/default/25c4b83dcd0fdca44a2f2bdf932598151a9fdf6d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_checkmac.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_checkmac.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_checkmac.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_checkmac.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_checkmac.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_counter.o: mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_counter.c  .generated_files/flags/default/22df9f8c8e1fa707bbb18bdd67ef879a7f4d28f1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_counter.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_counter.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_counter.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_counter.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_counter.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_derivekey.o: mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_derivekey.c  .generated_files/flags/default/d3a732496d877836c19b08ae06190edcd17988ff .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_derivekey.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_derivekey.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_derivekey.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_derivekey.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_derivekey.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_ecdh.o: mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_ecdh.c  .generated_files/flags/default/a7ba6b9ff12eca45bfcba88ab86647b2a41e77ae .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_ecdh.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_ecdh.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_ecdh.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_ecdh.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_ecdh.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_gendig.o: mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_gendig.c  .generated_files/flags/default/472276023aa45546c4ee9dff362f9797c2aea421 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_gendig.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_gendig.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_gendig.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_gendig.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_gendig.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_genkey.o: mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_genkey.c  .generated_files/flags/default/a92d66d8b13651f1d6f7d1539dbceae70d80bdf0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_genkey.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_genkey.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_genkey.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_genkey.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_genkey.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_hmac.o: mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_hmac.c  .generated_files/flags/default/40ac167a2bbd675e5cd0f7bafd5b5482eeffc4b3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_hmac.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_hmac.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_hmac.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_hmac.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_hmac.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_info.o: mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_info.c  .generated_files/flags/default/a75b414f10bc2f4b3ad63432b2a1aa4c951a754 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_info.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_info.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_info.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_info.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_info.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_kdf.o: mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_kdf.c  .generated_files/flags/default/212c7b4368c9582ab88084c37a3f034f954ce93d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_kdf.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_kdf.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_kdf.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_kdf.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_kdf.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_lock.o: mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_lock.c  .generated_files/flags/default/7666f9257fcaf698a6dc518a2490ea38991c4b29 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_lock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_lock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_lock.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_lock.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_lock.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_mac.o: mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_mac.c  .generated_files/flags/default/6d3b5d88743ca13fe03ce9b9298f4fc0925807c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_mac.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_mac.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_mac.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_mac.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_mac.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_nonce.o: mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_nonce.c  .generated_files/flags/default/a1ad3cab81e60cc033030e70d85ab3e89df40f4d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_nonce.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_nonce.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_nonce.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_nonce.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_nonce.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_privwrite.o: mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_privwrite.c  .generated_files/flags/default/977c5aa750f54364e8cbb4a58735ab02098a8647 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_privwrite.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_privwrite.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_privwrite.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_privwrite.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_privwrite.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_random.o: mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_random.c  .generated_files/flags/default/a9cc37dc45822dc41e502f38076193150675027 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_random.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_random.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_random.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_random.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_random.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_read.o: mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_read.c  .generated_files/flags/default/5c2fbccf51e9b498de6bc9a86ac28106a42e2a2d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_read.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_read.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_read.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_read.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_read.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_secureboot.o: mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_secureboot.c  .generated_files/flags/default/2f12d5bf4a925a8fdbf6d442f94b790d00f43213 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_secureboot.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_secureboot.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_secureboot.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_secureboot.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_secureboot.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_selftest.o: mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_selftest.c  .generated_files/flags/default/5e175a50c3f9e9fdff21e584a816a048add31673 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_selftest.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_selftest.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_selftest.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_selftest.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_selftest.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_sha.o: mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_sha.c  .generated_files/flags/default/c469535399a6b0a358a29831ad057ebd0bc2deb2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_sha.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_sha.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_sha.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_sha.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_sha.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_sign.o: mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_sign.c  .generated_files/flags/default/f62504276a0b0bbf6c1cb0d2f5fdffccf571e035 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_sign.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_sign.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_sign.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_sign.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_sign.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_updateextra.o: mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_updateextra.c  .generated_files/flags/default/bc55bece3913a776d332742745109aacddd98c22 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_updateextra.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_updateextra.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_updateextra.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_updateextra.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_updateextra.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_verify.o: mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_verify.c  .generated_files/flags/default/54f4da6a38212b9be3410bf3127cd0189c8768e3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_verify.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_verify.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_verify.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_verify.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_verify.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_write.o: mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_write.c  .generated_files/flags/default/d659fb337f3a9d9237b3f709ee3c9ac6af429d3b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_write.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_write.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_write.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_write.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_write.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_helpers.o: mcc_generated_files/cryptoauthlib/lib/basic/atca_helpers.c  .generated_files/flags/default/e277ec1d28fea8d483149de7bcd2ea9cbc98d5f6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_helpers.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_helpers.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/basic/atca_helpers.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_helpers.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_helpers.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/hashes/sha1_routines.o: mcc_generated_files/cryptoauthlib/lib/crypto/hashes/sha1_routines.c  .generated_files/flags/default/1e09e49526d7237dc36125273686ddeacea1720a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/hashes" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/hashes/sha1_routines.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/hashes/sha1_routines.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/crypto/hashes/sha1_routines.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/hashes/sha1_routines.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/hashes/sha1_routines.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/hashes/sha2_routines.o: mcc_generated_files/cryptoauthlib/lib/crypto/hashes/sha2_routines.c  .generated_files/flags/default/5b1d59fda1437716b6c33201e11555edb6ddfab2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/hashes" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/hashes/sha2_routines.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/hashes/sha2_routines.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/crypto/hashes/sha2_routines.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/hashes/sha2_routines.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/hashes/sha2_routines.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_ecdsa.o: mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_ecdsa.c  .generated_files/flags/default/ee5481c2d2597d147cc568b4ba2233b94646e995 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_ecdsa.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_ecdsa.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_ecdsa.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_ecdsa.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_ecdsa.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_rand.o: mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_rand.c  .generated_files/flags/default/418e79eb7622ec0de6c1dc6cf4ba7528b0f1920a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_rand.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_rand.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_rand.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_rand.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_rand.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_sha1.o: mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_sha1.c  .generated_files/flags/default/3092d89e4728296d99b98fd1df422f83816c6930 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_sha1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_sha1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_sha1.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_sha1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_sha1.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_sha2.o: mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_sha2.c  .generated_files/flags/default/452452e125022fb1020d2e4501073bf7caab263a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_sha2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_sha2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_sha2.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_sha2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_sha2.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/hal/hal_i2c.o: mcc_generated_files/cryptoauthlib/lib/hal/hal_i2c.c  .generated_files/flags/default/ecf260b088df15da74830c7fc44b1b7e7f0401cd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/hal" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/hal/hal_i2c.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/hal/hal_i2c.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/hal/hal_i2c.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/hal/hal_i2c.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/hal/hal_i2c.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/hal/hal_timer.o: mcc_generated_files/cryptoauthlib/lib/hal/hal_timer.c  .generated_files/flags/default/60491d55567581b754295d5b6bce65119f65b752 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/hal" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/hal/hal_timer.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/hal/hal_timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/hal/hal_timer.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/hal/hal_timer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/hal/hal_timer.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/hal/atca_hal.o: mcc_generated_files/cryptoauthlib/lib/hal/atca_hal.c  .generated_files/flags/default/6cb6848095acad32882efe180ed7ed394fefa342 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/hal" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/hal/atca_hal.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/hal/atca_hal.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/hal/atca_hal.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/hal/atca_hal.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/hal/atca_hal.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/host/atca_host.o: mcc_generated_files/cryptoauthlib/lib/host/atca_host.c  .generated_files/flags/default/320c713a40459a3a95dee8aecab7664ca072b620 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/host" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/host/atca_host.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/host/atca_host.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/host/atca_host.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/host/atca_host.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/host/atca_host.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/jwt/atca_jwt.o: mcc_generated_files/cryptoauthlib/lib/jwt/atca_jwt.c  .generated_files/flags/default/a3235610d49adc1d54e9b1e910cfe223544e3abe .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/jwt" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/jwt/atca_jwt.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/jwt/atca_jwt.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/jwt/atca_jwt.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/jwt/atca_jwt.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/jwt/atca_jwt.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/tls/atcatls.o: mcc_generated_files/cryptoauthlib/lib/tls/atcatls.c  .generated_files/flags/default/b1d30ba80bdb67ef153f64b5092402641ba8343c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/tls" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/tls/atcatls.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/tls/atcatls.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/tls/atcatls.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/tls/atcatls.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/tls/atcatls.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/tls/atcatls_cfg.o: mcc_generated_files/cryptoauthlib/lib/tls/atcatls_cfg.c  .generated_files/flags/default/70b3bd7a2f5afb35b179d0965c77aab377e65253 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/tls" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/tls/atcatls_cfg.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/tls/atcatls_cfg.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/tls/atcatls_cfg.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/tls/atcatls_cfg.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/tls/atcatls_cfg.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_cfgs.o: mcc_generated_files/cryptoauthlib/lib/atca_cfgs.c  .generated_files/flags/default/a74a0fc5ed2bea90a6b241a73455470b1939d576 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_cfgs.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_cfgs.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/atca_cfgs.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_cfgs.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_cfgs.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_command.o: mcc_generated_files/cryptoauthlib/lib/atca_command.c  .generated_files/flags/default/35c3a8721b06a5f9eb700f0db3682d42e210db86 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_command.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_command.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/atca_command.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_command.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_command.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_device.o: mcc_generated_files/cryptoauthlib/lib/atca_device.c  .generated_files/flags/default/c08995f5cac52dc4b2b73b55d0dc3b0b1ce6c450 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_device.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_device.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/atca_device.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_device.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_device.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_execution.o: mcc_generated_files/cryptoauthlib/lib/atca_execution.c  .generated_files/flags/default/20cc8506a84aa8814da4a73211096d5476c7ee4a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_execution.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_execution.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/atca_execution.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_execution.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_execution.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_iface.o: mcc_generated_files/cryptoauthlib/lib/atca_iface.c  .generated_files/flags/default/cba96da2e674c7441eb8667c3f843de2d6648508 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_iface.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_iface.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/atca_iface.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_iface.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_iface.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/drivers/uart.o: mcc_generated_files/drivers/uart.c  .generated_files/flags/default/acfa532a422c1d0696a097fbc5f112670447c301 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/uart.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/uart.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/drivers/uart.c  -o ${OBJECTDIR}/mcc_generated_files/drivers/uart.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/uart.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o: mcc_generated_files/drivers/i2c_master.c  .generated_files/flags/default/26ce58d9d8d39ed618e242a3a63145e467bc9114 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/drivers/i2c_master.c  -o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o: mcc_generated_files/drivers/i2c_types.c  .generated_files/flags/default/e5c4990e935f93256d585dd2f33f73531442e679 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/drivers/i2c_types.c  -o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/drivers/timeout.o: mcc_generated_files/drivers/timeout.c  .generated_files/flags/default/b1d98a93f0fe11e0bd846c0e98d88a3fa0fb2f0a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/timeout.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/timeout.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/drivers/timeout.c  -o ${OBJECTDIR}/mcc_generated_files/drivers/timeout.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/timeout.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o: mcc_generated_files/drivers/spi_master.c  .generated_files/flags/default/59e83ce44d4d41e61ca6a32f8943cba9ebe42127 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/drivers/spi_master.c  -o ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o: mcc_generated_files/drivers/i2c_simple_master.c  .generated_files/flags/default/2e377d147e857dd3fcddfaf6b51110c8cf54abf2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/drivers/i2c_simple_master.c  -o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_comm_bsd/mqtt_comm_layer.o: mcc_generated_files/mqtt/mqtt_comm_bsd/mqtt_comm_layer.c  .generated_files/flags/default/1b22a19ed3f687c5a20d200b066ca1b52465471c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_comm_bsd" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_comm_bsd/mqtt_comm_layer.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_comm_bsd/mqtt_comm_layer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mqtt/mqtt_comm_bsd/mqtt_comm_layer.c  -o ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_comm_bsd/mqtt_comm_layer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_comm_bsd/mqtt_comm_layer.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_core/mqtt_core.o: mcc_generated_files/mqtt/mqtt_core/mqtt_core.c  .generated_files/flags/default/580420b257ea7875569d6b4d716cbd83fcc5a078 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_core" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_core/mqtt_core.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_core/mqtt_core.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mqtt/mqtt_core/mqtt_core.c  -o ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_core/mqtt_core.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_core/mqtt_core.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_exchange_buffer/mqtt_exchange_buffer.o: mcc_generated_files/mqtt/mqtt_exchange_buffer/mqtt_exchange_buffer.c  .generated_files/flags/default/4635461b62ce8a947f0e0006c3ae8705dbbcd5cb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_exchange_buffer" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_exchange_buffer/mqtt_exchange_buffer.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_exchange_buffer/mqtt_exchange_buffer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mqtt/mqtt_exchange_buffer/mqtt_exchange_buffer.c  -o ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_exchange_buffer/mqtt_exchange_buffer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_exchange_buffer/mqtt_exchange_buffer.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_packetTransfer_interface.o: mcc_generated_files/mqtt/mqtt_packetTransfer_interface.c  .generated_files/flags/default/e103a2811fde6a458464d6a06ddf715fa8305c68 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/mqtt" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_packetTransfer_interface.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_packetTransfer_interface.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mqtt/mqtt_packetTransfer_interface.c  -o ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_packetTransfer_interface.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_packetTransfer_interface.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/bsp/source/nm_bsp_mega.o: mcc_generated_files/winc/bsp/source/nm_bsp_mega.c  .generated_files/flags/default/65cb92f62c8549407bb6f6e936f02530a1f94e31 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/bsp/source" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/bsp/source/nm_bsp_mega.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/bsp/source/nm_bsp_mega.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/bsp/source/nm_bsp_mega.c  -o ${OBJECTDIR}/mcc_generated_files/winc/bsp/source/nm_bsp_mega.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/bsp/source/nm_bsp_mega.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/bus_wrapper/source/nm_bus_wrapper_mega.o: mcc_generated_files/winc/bus_wrapper/source/nm_bus_wrapper_mega.c  .generated_files/flags/default/a537e01c8684a7810b89bbf6688521ff614fd1b0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/bus_wrapper/source" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/bus_wrapper/source/nm_bus_wrapper_mega.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/bus_wrapper/source/nm_bus_wrapper_mega.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/bus_wrapper/source/nm_bus_wrapper_mega.c  -o ${OBJECTDIR}/mcc_generated_files/winc/bus_wrapper/source/nm_bus_wrapper_mega.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/bus_wrapper/source/nm_bus_wrapper_mega.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/common/source/nm_common.o: mcc_generated_files/winc/common/source/nm_common.c  .generated_files/flags/default/d36b82888d61cc57ef0718d12a9210635720aa83 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/common/source" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/common/source/nm_common.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/common/source/nm_common.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/common/source/nm_common.c  -o ${OBJECTDIR}/mcc_generated_files/winc/common/source/nm_common.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/common/source/nm_common.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_ate_mode.o: mcc_generated_files/winc/driver/source/m2m_ate_mode.c  .generated_files/flags/default/72b12da9bd420a6b51aab7f02eaf400fb85963ee .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver/source" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_ate_mode.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_ate_mode.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/driver/source/m2m_ate_mode.c  -o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_ate_mode.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_ate_mode.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_crypto.o: mcc_generated_files/winc/driver/source/m2m_crypto.c  .generated_files/flags/default/4453a79a49e7031792a126fd13402150a6d04d5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver/source" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_crypto.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_crypto.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/driver/source/m2m_crypto.c  -o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_crypto.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_crypto.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_hif.o: mcc_generated_files/winc/driver/source/m2m_hif.c  .generated_files/flags/default/71538ad73ac7265e7310bfce70546d922a18ce5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver/source" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_hif.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_hif.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/driver/source/m2m_hif.c  -o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_hif.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_hif.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_ota.o: mcc_generated_files/winc/driver/source/m2m_ota.c  .generated_files/flags/default/95cb55b53d4717a35006c9b1b2e466240e8c22cd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver/source" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_ota.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_ota.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/driver/source/m2m_ota.c  -o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_ota.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_ota.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_periph.o: mcc_generated_files/winc/driver/source/m2m_periph.c  .generated_files/flags/default/2b758ca329cca80409616914e903746fdb9b0fc4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver/source" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_periph.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_periph.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/driver/source/m2m_periph.c  -o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_periph.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_periph.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_ssl.o: mcc_generated_files/winc/driver/source/m2m_ssl.c  .generated_files/flags/default/25cd044cc856d9a6148b61bfc2588e774fba9f6e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver/source" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_ssl.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_ssl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/driver/source/m2m_ssl.c  -o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_ssl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_ssl.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_wifi.o: mcc_generated_files/winc/driver/source/m2m_wifi.c  .generated_files/flags/default/77756c7e23d97f8d2b1d7d94083516f617c3afe2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver/source" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_wifi.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_wifi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/driver/source/m2m_wifi.c  -o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_wifi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_wifi.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmasic.o: mcc_generated_files/winc/driver/source/nmasic.c  .generated_files/flags/default/74b9706d91f0ab21df79f9fd2d41e06ad95417d2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver/source" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmasic.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmasic.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/driver/source/nmasic.c  -o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmasic.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmasic.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmbus.o: mcc_generated_files/winc/driver/source/nmbus.c  .generated_files/flags/default/8b09d50222090c90cb205b60f7b6d509a8798ed .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver/source" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmbus.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmbus.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/driver/source/nmbus.c  -o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmbus.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmbus.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmdrv.o: mcc_generated_files/winc/driver/source/nmdrv.c  .generated_files/flags/default/34e14391f9fc0ac61230ace29cf2fe20a28b9fab .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver/source" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmdrv.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmdrv.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/driver/source/nmdrv.c  -o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmdrv.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmdrv.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmi2c.o: mcc_generated_files/winc/driver/source/nmi2c.c  .generated_files/flags/default/258384d0223af029b4d5dfe1afa27e0672f09abe .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver/source" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmi2c.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmi2c.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/driver/source/nmi2c.c  -o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmi2c.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmi2c.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmspi.o: mcc_generated_files/winc/driver/source/nmspi.c  .generated_files/flags/default/b3560c58cba9ab833a9eefe67de7e4517b999b2f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver/source" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmspi.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmspi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/driver/source/nmspi.c  -o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmspi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmspi.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmuart.o: mcc_generated_files/winc/driver/source/nmuart.c  .generated_files/flags/default/18cc0f47df5c77261cbd1132025d671db738f1bb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver/source" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmuart.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmuart.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/driver/source/nmuart.c  -o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmuart.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmuart.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/socket/source/socket.o: mcc_generated_files/winc/socket/source/socket.c  .generated_files/flags/default/b91a566dc42fd00fdef3c59a34ca5283a5863772 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/socket/source" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/socket/source/socket.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/socket/source/socket.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/socket/source/socket.c  -o ${OBJECTDIR}/mcc_generated_files/winc/socket/source/socket.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/socket/source/socket.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/spi_flash/source/spi_flash.o: mcc_generated_files/winc/spi_flash/source/spi_flash.c  .generated_files/flags/default/8c37808786287d2ad0e4f78c25e8f36d235fe324 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/spi_flash/source" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/source/spi_flash.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/source/spi_flash.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/spi_flash/source/spi_flash.c  -o ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/source/spi_flash.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/spi_flash/source/spi_flash.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/tmr2.o: mcc_generated_files/tmr2.c  .generated_files/flags/default/81a8d40c276b8e283b245a11176fb716279d6386 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/tmr2.c  -o ${OBJECTDIR}/mcc_generated_files/tmr2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/tmr2.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/spi1_driver.o: mcc_generated_files/spi1_driver.c  .generated_files/flags/default/ef0f3f56bfafaa0a49352634de307ef5c36d544d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi1_driver.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi1_driver.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/spi1_driver.c  -o ${OBJECTDIR}/mcc_generated_files/spi1_driver.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/spi1_driver.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/flags/default/69d465d368e40dea41fd088ad71e6858c28e3eed .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/interrupt_manager.c  -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/traps.o: mcc_generated_files/traps.c  .generated_files/flags/default/4dc1253f2f8262d5b6051198ad2fde863f6e497d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/traps.c  -o ${OBJECTDIR}/mcc_generated_files/traps.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/traps.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/adc1.o: mcc_generated_files/adc1.c  .generated_files/flags/default/3d38586e1e2c15eb64beaf0c69a5567bb7c5aa4f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adc1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adc1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/adc1.c  -o ${OBJECTDIR}/mcc_generated_files/adc1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/adc1.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/flags/default/2cc899480ef751701013cf8601f832e724edd72d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/pin_manager.c  -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/delay.o: mcc_generated_files/delay.c  .generated_files/flags/default/247c4fbb0d07354dff4625306927df719d09aea7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/delay.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/delay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/delay.c  -o ${OBJECTDIR}/mcc_generated_files/delay.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/delay.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/led.o: mcc_generated_files/led.c  .generated_files/flags/default/588015218f98a1c63604a4afdb7a72196e9e9edd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/led.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/led.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/led.c  -o ${OBJECTDIR}/mcc_generated_files/led.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/led.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/application_manager.o: mcc_generated_files/application_manager.c  .generated_files/flags/default/834e0d6064a73912b819d8397550174d07851660 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/application_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/application_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/application_manager.c  -o ${OBJECTDIR}/mcc_generated_files/application_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/application_manager.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/debug_print.o: mcc_generated_files/debug_print.c  .generated_files/flags/default/961d78d75e0e62ee4a9365bb4a34d50f96f5faa7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/debug_print.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/debug_print.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/debug_print.c  -o ${OBJECTDIR}/mcc_generated_files/debug_print.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/debug_print.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/sensors_handling.o: mcc_generated_files/sensors_handling.c  .generated_files/flags/default/b74e5ae2a059000efab413398d28f9d58ff3c24a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sensors_handling.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sensors_handling.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/sensors_handling.c  -o ${OBJECTDIR}/mcc_generated_files/sensors_handling.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/sensors_handling.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/tmr1.o: mcc_generated_files/tmr1.c  .generated_files/flags/default/2edd684f347685bc1e091ca2fff17e000cf89d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/tmr1.c  -o ${OBJECTDIR}/mcc_generated_files/tmr1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/tmr1.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/flags/default/d7d3bbf3fd8105f37e24bd10f617eecda115aaba .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mcc.c  -o ${OBJECTDIR}/mcc_generated_files/mcc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/system.o: mcc_generated_files/system.c  .generated_files/flags/default/a210da0315ecbabfafdda2422a41c99f20da1508 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system.c  -o ${OBJECTDIR}/mcc_generated_files/system.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/clock.o: mcc_generated_files/clock.c  .generated_files/flags/default/2e22937517a65f7101b45e1654587d13106ea461 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/clock.c  -o ${OBJECTDIR}/mcc_generated_files/clock.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/clock.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/i2c2_driver.o: mcc_generated_files/i2c2_driver.c  .generated_files/flags/default/ffe6a835e2d300fcebec0175c5c94b04567541eb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c2_driver.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c2_driver.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/i2c2_driver.c  -o ${OBJECTDIR}/mcc_generated_files/i2c2_driver.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/i2c2_driver.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/uart1.o: mcc_generated_files/uart1.c  .generated_files/flags/default/e39d05fac96b0891478b48de61d9c974c33bf056 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/uart1.c  -o ${OBJECTDIR}/mcc_generated_files/uart1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart1.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/i2c1.o: mcc_generated_files/i2c1.c  .generated_files/flags/default/231615335409786c5fe4dc364cc4413c70d5d77e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/i2c1.c  -o ${OBJECTDIR}/mcc_generated_files/i2c1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/i2c1.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/my_files/oled.o: my_files/oled.c  .generated_files/flags/default/15d98a3f7273e6b71eb47771e49facc3942af89b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/my_files" 
	@${RM} ${OBJECTDIR}/my_files/oled.o.d 
	@${RM} ${OBJECTDIR}/my_files/oled.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  my_files/oled.c  -o ${OBJECTDIR}/my_files/oled.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/my_files/oled.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/d2a2a17e78b848a64e7677804b5f97430baa1fb8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/mcc_generated_files/where_was_i.o: mcc_generated_files/where_was_i.s  .generated_files/flags/default/9f101c640b86aff4006e21a2ebe4ac7969ba9968 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/where_was_i.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/where_was_i.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  mcc_generated_files/where_was_i.s  -o ${OBJECTDIR}/mcc_generated_files/where_was_i.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)    -Wa,-MD,"${OBJECTDIR}/mcc_generated_files/where_was_i.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,,-g,--no-relax$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/mcc_generated_files/where_was_i.o: mcc_generated_files/where_was_i.s  .generated_files/flags/default/cb947e96dc02e82ee9b56790a50fee9bc941c742 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/where_was_i.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/where_was_i.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  mcc_generated_files/where_was_i.s  -o ${OBJECTDIR}/mcc_generated_files/where_was_i.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -DXPRJ_default=$(CND_CONF)    -Wa,-MD,"${OBJECTDIR}/mcc_generated_files/where_was_i.o.d",--defsym=__MPLAB_BUILD=1,-g,--no-relax$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/Kyber_IoT.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/Kyber_IoT.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG=__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -mreserve=data@0x800:0x81B -mreserve=data@0x81C:0x81D -mreserve=data@0x81E:0x81F -mreserve=data@0x820:0x821 -mreserve=data@0x822:0x823 -mreserve=data@0x824:0x827 -mreserve=data@0x82A:0x84F   -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D__DEBUG=__DEBUG,,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,${DISTDIR}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	
else
${DISTDIR}/Kyber_IoT.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/Kyber_IoT.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,${DISTDIR}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	${MP_CC_DIR}\\xc16-bin2hex ${DISTDIR}/Kyber_IoT.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf   -mdfp="${DFP_DIR}/xc16" 
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(wildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
