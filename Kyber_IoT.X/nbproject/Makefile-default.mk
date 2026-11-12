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
SOURCEFILES_QUOTED_IF_SPACED=mcc_generated_files/cloud/bsd_adapter/bsdWINC.c mcc_generated_files/cloud/crypto_client/crypto_client.c mcc_generated_files/cloud/crypto_client/cryptoauthlib_main.c mcc_generated_files/cloud/mqtt_packetPopulation/mqtt_packetPopulate.c mcc_generated_files/cloud/wifi_service.c mcc_generated_files/credentials_storage/credentials_storage.c mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_client.c mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_date.c mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_def.c mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_der.c mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_host_hw.c mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_host_sw.c mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_pem.c mcc_generated_files/cryptoauthlib/lib/basic/atca_basic.c mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_aes.c mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_checkmac.c mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_counter.c mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_derivekey.c mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_ecdh.c mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_gendig.c mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_genkey.c mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_hmac.c mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_info.c mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_kdf.c mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_lock.c mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_mac.c mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_nonce.c mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_privwrite.c mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_random.c mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_read.c mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_secureboot.c mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_selftest.c mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_sha.c mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_sign.c mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_updateextra.c mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_verify.c mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_write.c mcc_generated_files/cryptoauthlib/lib/basic/atca_helpers.c mcc_generated_files/cryptoauthlib/lib/crypto/hashes/sha1_routines.c mcc_generated_files/cryptoauthlib/lib/crypto/hashes/sha2_routines.c mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_ecdsa.c mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_rand.c mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_sha1.c mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_sha2.c mcc_generated_files/cryptoauthlib/lib/hal/hal_i2c.c mcc_generated_files/cryptoauthlib/lib/hal/hal_timer.c mcc_generated_files/cryptoauthlib/lib/hal/atca_hal.c mcc_generated_files/cryptoauthlib/lib/host/atca_host.c mcc_generated_files/cryptoauthlib/lib/jwt/atca_jwt.c mcc_generated_files/cryptoauthlib/lib/tls/atcatls.c mcc_generated_files/cryptoauthlib/lib/tls/atcatls_cfg.c mcc_generated_files/cryptoauthlib/lib/atca_cfgs.c mcc_generated_files/cryptoauthlib/lib/atca_command.c mcc_generated_files/cryptoauthlib/lib/atca_device.c mcc_generated_files/cryptoauthlib/lib/atca_execution.c mcc_generated_files/cryptoauthlib/lib/atca_iface.c mcc_generated_files/drivers/uart.c mcc_generated_files/drivers/i2c_master.c mcc_generated_files/drivers/i2c_types.c mcc_generated_files/drivers/timeout.c mcc_generated_files/drivers/spi_master.c mcc_generated_files/drivers/i2c_simple_master.c mcc_generated_files/mqtt/mqtt_comm_bsd/mqtt_comm_layer.c mcc_generated_files/mqtt/mqtt_core/mqtt_core.c mcc_generated_files/mqtt/mqtt_exchange_buffer/mqtt_exchange_buffer.c mcc_generated_files/mqtt/mqtt_packetTransfer_interface.c mcc_generated_files/winc/bsp/source/nm_bsp_mega.c mcc_generated_files/winc/bus_wrapper/source/nm_bus_wrapper_mega.c mcc_generated_files/winc/common/source/nm_common.c mcc_generated_files/winc/driver/source/m2m_ate_mode.c mcc_generated_files/winc/driver/source/m2m_crypto.c mcc_generated_files/winc/driver/source/m2m_hif.c mcc_generated_files/winc/driver/source/m2m_ota.c mcc_generated_files/winc/driver/source/m2m_periph.c mcc_generated_files/winc/driver/source/m2m_ssl.c mcc_generated_files/winc/driver/source/m2m_wifi.c mcc_generated_files/winc/driver/source/nmasic.c mcc_generated_files/winc/driver/source/nmbus.c mcc_generated_files/winc/driver/source/nmdrv.c mcc_generated_files/winc/driver/source/nmi2c.c mcc_generated_files/winc/driver/source/nmspi.c mcc_generated_files/winc/driver/source/nmuart.c mcc_generated_files/winc/socket/source/socket.c mcc_generated_files/winc/spi_flash/source/spi_flash.c mcc_generated_files/tmr2.c mcc_generated_files/spi1_driver.c mcc_generated_files/interrupt_manager.c mcc_generated_files/traps.c mcc_generated_files/where_was_i.s mcc_generated_files/adc1.c mcc_generated_files/pin_manager.c mcc_generated_files/delay.c mcc_generated_files/led.c mcc_generated_files/sensors_handling.c mcc_generated_files/tmr1.c mcc_generated_files/mcc.c mcc_generated_files/system.c mcc_generated_files/clock.c mcc_generated_files/i2c2_driver.c mcc_generated_files/uart1.c mcc_generated_files/i2c1.c my_files/Kyber/byte_operations.c my_files/Kyber/ml_kem_const.c my_files/Kyber/NTT.c my_files/Kyber/tests.c my_files/sh1106.c my_files/comms.c main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/mcc_generated_files/cloud/bsd_adapter/bsdWINC.o ${OBJECTDIR}/mcc_generated_files/cloud/crypto_client/crypto_client.o ${OBJECTDIR}/mcc_generated_files/cloud/crypto_client/cryptoauthlib_main.o ${OBJECTDIR}/mcc_generated_files/cloud/mqtt_packetPopulation/mqtt_packetPopulate.o ${OBJECTDIR}/mcc_generated_files/cloud/wifi_service.o ${OBJECTDIR}/mcc_generated_files/credentials_storage/credentials_storage.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_client.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_date.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_def.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_der.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_host_hw.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_host_sw.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_pem.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_aes.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_checkmac.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_counter.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_derivekey.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_ecdh.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_gendig.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_genkey.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_hmac.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_info.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_kdf.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_lock.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_mac.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_nonce.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_privwrite.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_random.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_read.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_secureboot.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_selftest.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_sha.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_sign.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_updateextra.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_verify.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_write.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_helpers.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/hashes/sha1_routines.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/hashes/sha2_routines.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_ecdsa.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_rand.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_sha1.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_sha2.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/hal/hal_i2c.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/hal/hal_timer.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/hal/atca_hal.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/host/atca_host.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/jwt/atca_jwt.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/tls/atcatls.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/tls/atcatls_cfg.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_cfgs.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_command.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_device.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_execution.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_iface.o ${OBJECTDIR}/mcc_generated_files/drivers/uart.o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o ${OBJECTDIR}/mcc_generated_files/drivers/timeout.o ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_comm_bsd/mqtt_comm_layer.o ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_core/mqtt_core.o ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_exchange_buffer/mqtt_exchange_buffer.o ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_packetTransfer_interface.o ${OBJECTDIR}/mcc_generated_files/winc/bsp/source/nm_bsp_mega.o ${OBJECTDIR}/mcc_generated_files/winc/bus_wrapper/source/nm_bus_wrapper_mega.o ${OBJECTDIR}/mcc_generated_files/winc/common/source/nm_common.o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_ate_mode.o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_crypto.o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_hif.o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_ota.o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_periph.o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_ssl.o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_wifi.o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmasic.o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmbus.o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmdrv.o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmi2c.o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmspi.o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmuart.o ${OBJECTDIR}/mcc_generated_files/winc/socket/source/socket.o ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/source/spi_flash.o ${OBJECTDIR}/mcc_generated_files/tmr2.o ${OBJECTDIR}/mcc_generated_files/spi1_driver.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/mcc_generated_files/traps.o ${OBJECTDIR}/mcc_generated_files/where_was_i.o ${OBJECTDIR}/mcc_generated_files/adc1.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/mcc_generated_files/delay.o ${OBJECTDIR}/mcc_generated_files/led.o ${OBJECTDIR}/mcc_generated_files/sensors_handling.o ${OBJECTDIR}/mcc_generated_files/tmr1.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/system.o ${OBJECTDIR}/mcc_generated_files/clock.o ${OBJECTDIR}/mcc_generated_files/i2c2_driver.o ${OBJECTDIR}/mcc_generated_files/uart1.o ${OBJECTDIR}/mcc_generated_files/i2c1.o ${OBJECTDIR}/my_files/Kyber/byte_operations.o ${OBJECTDIR}/my_files/Kyber/ml_kem_const.o ${OBJECTDIR}/my_files/Kyber/NTT.o ${OBJECTDIR}/my_files/Kyber/tests.o ${OBJECTDIR}/my_files/sh1106.o ${OBJECTDIR}/my_files/comms.o ${OBJECTDIR}/main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/mcc_generated_files/cloud/bsd_adapter/bsdWINC.o.d ${OBJECTDIR}/mcc_generated_files/cloud/crypto_client/crypto_client.o.d ${OBJECTDIR}/mcc_generated_files/cloud/crypto_client/cryptoauthlib_main.o.d ${OBJECTDIR}/mcc_generated_files/cloud/mqtt_packetPopulation/mqtt_packetPopulate.o.d ${OBJECTDIR}/mcc_generated_files/cloud/wifi_service.o.d ${OBJECTDIR}/mcc_generated_files/credentials_storage/credentials_storage.o.d ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_client.o.d ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_date.o.d ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_def.o.d ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_der.o.d ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_host_hw.o.d ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_host_sw.o.d ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_pem.o.d ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic.o.d ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_aes.o.d ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_checkmac.o.d ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_counter.o.d ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_derivekey.o.d ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_ecdh.o.d ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_gendig.o.d ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_genkey.o.d ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_hmac.o.d ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_info.o.d ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_kdf.o.d ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_lock.o.d ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_mac.o.d ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_nonce.o.d ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_privwrite.o.d ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_random.o.d ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_read.o.d ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_secureboot.o.d ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_selftest.o.d ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_sha.o.d ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_sign.o.d ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_updateextra.o.d ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_verify.o.d ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_write.o.d ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_helpers.o.d ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/hashes/sha1_routines.o.d ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/hashes/sha2_routines.o.d ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_ecdsa.o.d ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_rand.o.d ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_sha1.o.d ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_sha2.o.d ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/hal/hal_i2c.o.d ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/hal/hal_timer.o.d ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/hal/atca_hal.o.d ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/host/atca_host.o.d ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/jwt/atca_jwt.o.d ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/tls/atcatls.o.d ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/tls/atcatls_cfg.o.d ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_cfgs.o.d ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_command.o.d ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_device.o.d ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_execution.o.d ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_iface.o.d ${OBJECTDIR}/mcc_generated_files/drivers/uart.o.d ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o.d ${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o.d ${OBJECTDIR}/mcc_generated_files/drivers/timeout.o.d ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o.d ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o.d ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_comm_bsd/mqtt_comm_layer.o.d ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_core/mqtt_core.o.d ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_exchange_buffer/mqtt_exchange_buffer.o.d ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_packetTransfer_interface.o.d ${OBJECTDIR}/mcc_generated_files/winc/bsp/source/nm_bsp_mega.o.d ${OBJECTDIR}/mcc_generated_files/winc/bus_wrapper/source/nm_bus_wrapper_mega.o.d ${OBJECTDIR}/mcc_generated_files/winc/common/source/nm_common.o.d ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_ate_mode.o.d ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_crypto.o.d ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_hif.o.d ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_ota.o.d ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_periph.o.d ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_ssl.o.d ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_wifi.o.d ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmasic.o.d ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmbus.o.d ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmdrv.o.d ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmi2c.o.d ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmspi.o.d ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmuart.o.d ${OBJECTDIR}/mcc_generated_files/winc/socket/source/socket.o.d ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/source/spi_flash.o.d ${OBJECTDIR}/mcc_generated_files/tmr2.o.d ${OBJECTDIR}/mcc_generated_files/spi1_driver.o.d ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d ${OBJECTDIR}/mcc_generated_files/traps.o.d ${OBJECTDIR}/mcc_generated_files/where_was_i.o.d ${OBJECTDIR}/mcc_generated_files/adc1.o.d ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d ${OBJECTDIR}/mcc_generated_files/delay.o.d ${OBJECTDIR}/mcc_generated_files/led.o.d ${OBJECTDIR}/mcc_generated_files/sensors_handling.o.d ${OBJECTDIR}/mcc_generated_files/tmr1.o.d ${OBJECTDIR}/mcc_generated_files/mcc.o.d ${OBJECTDIR}/mcc_generated_files/system.o.d ${OBJECTDIR}/mcc_generated_files/clock.o.d ${OBJECTDIR}/mcc_generated_files/i2c2_driver.o.d ${OBJECTDIR}/mcc_generated_files/uart1.o.d ${OBJECTDIR}/mcc_generated_files/i2c1.o.d ${OBJECTDIR}/my_files/Kyber/byte_operations.o.d ${OBJECTDIR}/my_files/Kyber/ml_kem_const.o.d ${OBJECTDIR}/my_files/Kyber/NTT.o.d ${OBJECTDIR}/my_files/Kyber/tests.o.d ${OBJECTDIR}/my_files/sh1106.o.d ${OBJECTDIR}/my_files/comms.o.d ${OBJECTDIR}/main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/mcc_generated_files/cloud/bsd_adapter/bsdWINC.o ${OBJECTDIR}/mcc_generated_files/cloud/crypto_client/crypto_client.o ${OBJECTDIR}/mcc_generated_files/cloud/crypto_client/cryptoauthlib_main.o ${OBJECTDIR}/mcc_generated_files/cloud/mqtt_packetPopulation/mqtt_packetPopulate.o ${OBJECTDIR}/mcc_generated_files/cloud/wifi_service.o ${OBJECTDIR}/mcc_generated_files/credentials_storage/credentials_storage.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_client.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_date.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_def.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_der.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_host_hw.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_host_sw.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_pem.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_aes.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_checkmac.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_counter.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_derivekey.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_ecdh.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_gendig.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_genkey.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_hmac.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_info.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_kdf.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_lock.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_mac.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_nonce.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_privwrite.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_random.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_read.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_secureboot.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_selftest.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_sha.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_sign.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_updateextra.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_verify.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_write.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_helpers.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/hashes/sha1_routines.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/hashes/sha2_routines.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_ecdsa.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_rand.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_sha1.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_sha2.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/hal/hal_i2c.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/hal/hal_timer.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/hal/atca_hal.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/host/atca_host.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/jwt/atca_jwt.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/tls/atcatls.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/tls/atcatls_cfg.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_cfgs.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_command.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_device.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_execution.o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_iface.o ${OBJECTDIR}/mcc_generated_files/drivers/uart.o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o ${OBJECTDIR}/mcc_generated_files/drivers/timeout.o ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_comm_bsd/mqtt_comm_layer.o ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_core/mqtt_core.o ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_exchange_buffer/mqtt_exchange_buffer.o ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_packetTransfer_interface.o ${OBJECTDIR}/mcc_generated_files/winc/bsp/source/nm_bsp_mega.o ${OBJECTDIR}/mcc_generated_files/winc/bus_wrapper/source/nm_bus_wrapper_mega.o ${OBJECTDIR}/mcc_generated_files/winc/common/source/nm_common.o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_ate_mode.o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_crypto.o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_hif.o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_ota.o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_periph.o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_ssl.o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_wifi.o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmasic.o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmbus.o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmdrv.o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmi2c.o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmspi.o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmuart.o ${OBJECTDIR}/mcc_generated_files/winc/socket/source/socket.o ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/source/spi_flash.o ${OBJECTDIR}/mcc_generated_files/tmr2.o ${OBJECTDIR}/mcc_generated_files/spi1_driver.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/mcc_generated_files/traps.o ${OBJECTDIR}/mcc_generated_files/where_was_i.o ${OBJECTDIR}/mcc_generated_files/adc1.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/mcc_generated_files/delay.o ${OBJECTDIR}/mcc_generated_files/led.o ${OBJECTDIR}/mcc_generated_files/sensors_handling.o ${OBJECTDIR}/mcc_generated_files/tmr1.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/system.o ${OBJECTDIR}/mcc_generated_files/clock.o ${OBJECTDIR}/mcc_generated_files/i2c2_driver.o ${OBJECTDIR}/mcc_generated_files/uart1.o ${OBJECTDIR}/mcc_generated_files/i2c1.o ${OBJECTDIR}/my_files/Kyber/byte_operations.o ${OBJECTDIR}/my_files/Kyber/ml_kem_const.o ${OBJECTDIR}/my_files/Kyber/NTT.o ${OBJECTDIR}/my_files/Kyber/tests.o ${OBJECTDIR}/my_files/sh1106.o ${OBJECTDIR}/my_files/comms.o ${OBJECTDIR}/main.o

# Source Files
SOURCEFILES=mcc_generated_files/cloud/bsd_adapter/bsdWINC.c mcc_generated_files/cloud/crypto_client/crypto_client.c mcc_generated_files/cloud/crypto_client/cryptoauthlib_main.c mcc_generated_files/cloud/mqtt_packetPopulation/mqtt_packetPopulate.c mcc_generated_files/cloud/wifi_service.c mcc_generated_files/credentials_storage/credentials_storage.c mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_client.c mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_date.c mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_def.c mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_der.c mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_host_hw.c mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_host_sw.c mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_pem.c mcc_generated_files/cryptoauthlib/lib/basic/atca_basic.c mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_aes.c mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_checkmac.c mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_counter.c mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_derivekey.c mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_ecdh.c mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_gendig.c mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_genkey.c mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_hmac.c mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_info.c mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_kdf.c mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_lock.c mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_mac.c mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_nonce.c mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_privwrite.c mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_random.c mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_read.c mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_secureboot.c mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_selftest.c mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_sha.c mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_sign.c mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_updateextra.c mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_verify.c mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_write.c mcc_generated_files/cryptoauthlib/lib/basic/atca_helpers.c mcc_generated_files/cryptoauthlib/lib/crypto/hashes/sha1_routines.c mcc_generated_files/cryptoauthlib/lib/crypto/hashes/sha2_routines.c mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_ecdsa.c mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_rand.c mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_sha1.c mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_sha2.c mcc_generated_files/cryptoauthlib/lib/hal/hal_i2c.c mcc_generated_files/cryptoauthlib/lib/hal/hal_timer.c mcc_generated_files/cryptoauthlib/lib/hal/atca_hal.c mcc_generated_files/cryptoauthlib/lib/host/atca_host.c mcc_generated_files/cryptoauthlib/lib/jwt/atca_jwt.c mcc_generated_files/cryptoauthlib/lib/tls/atcatls.c mcc_generated_files/cryptoauthlib/lib/tls/atcatls_cfg.c mcc_generated_files/cryptoauthlib/lib/atca_cfgs.c mcc_generated_files/cryptoauthlib/lib/atca_command.c mcc_generated_files/cryptoauthlib/lib/atca_device.c mcc_generated_files/cryptoauthlib/lib/atca_execution.c mcc_generated_files/cryptoauthlib/lib/atca_iface.c mcc_generated_files/drivers/uart.c mcc_generated_files/drivers/i2c_master.c mcc_generated_files/drivers/i2c_types.c mcc_generated_files/drivers/timeout.c mcc_generated_files/drivers/spi_master.c mcc_generated_files/drivers/i2c_simple_master.c mcc_generated_files/mqtt/mqtt_comm_bsd/mqtt_comm_layer.c mcc_generated_files/mqtt/mqtt_core/mqtt_core.c mcc_generated_files/mqtt/mqtt_exchange_buffer/mqtt_exchange_buffer.c mcc_generated_files/mqtt/mqtt_packetTransfer_interface.c mcc_generated_files/winc/bsp/source/nm_bsp_mega.c mcc_generated_files/winc/bus_wrapper/source/nm_bus_wrapper_mega.c mcc_generated_files/winc/common/source/nm_common.c mcc_generated_files/winc/driver/source/m2m_ate_mode.c mcc_generated_files/winc/driver/source/m2m_crypto.c mcc_generated_files/winc/driver/source/m2m_hif.c mcc_generated_files/winc/driver/source/m2m_ota.c mcc_generated_files/winc/driver/source/m2m_periph.c mcc_generated_files/winc/driver/source/m2m_ssl.c mcc_generated_files/winc/driver/source/m2m_wifi.c mcc_generated_files/winc/driver/source/nmasic.c mcc_generated_files/winc/driver/source/nmbus.c mcc_generated_files/winc/driver/source/nmdrv.c mcc_generated_files/winc/driver/source/nmi2c.c mcc_generated_files/winc/driver/source/nmspi.c mcc_generated_files/winc/driver/source/nmuart.c mcc_generated_files/winc/socket/source/socket.c mcc_generated_files/winc/spi_flash/source/spi_flash.c mcc_generated_files/tmr2.c mcc_generated_files/spi1_driver.c mcc_generated_files/interrupt_manager.c mcc_generated_files/traps.c mcc_generated_files/where_was_i.s mcc_generated_files/adc1.c mcc_generated_files/pin_manager.c mcc_generated_files/delay.c mcc_generated_files/led.c mcc_generated_files/sensors_handling.c mcc_generated_files/tmr1.c mcc_generated_files/mcc.c mcc_generated_files/system.c mcc_generated_files/clock.c mcc_generated_files/i2c2_driver.c mcc_generated_files/uart1.c mcc_generated_files/i2c1.c my_files/Kyber/byte_operations.c my_files/Kyber/ml_kem_const.c my_files/Kyber/NTT.c my_files/Kyber/tests.c my_files/sh1106.c my_files/comms.c main.c



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
${OBJECTDIR}/mcc_generated_files/cloud/bsd_adapter/bsdWINC.o: mcc_generated_files/cloud/bsd_adapter/bsdWINC.c  .generated_files/flags/default/eff0aad9773e926a692591d45d594761ff6f74b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cloud/bsd_adapter" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cloud/bsd_adapter/bsdWINC.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cloud/bsd_adapter/bsdWINC.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cloud/bsd_adapter/bsdWINC.c  -o ${OBJECTDIR}/mcc_generated_files/cloud/bsd_adapter/bsdWINC.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cloud/bsd_adapter/bsdWINC.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cloud/crypto_client/crypto_client.o: mcc_generated_files/cloud/crypto_client/crypto_client.c  .generated_files/flags/default/dcc0778992a7cf20449ae302a95e4c5537ba5d56 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cloud/crypto_client" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cloud/crypto_client/crypto_client.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cloud/crypto_client/crypto_client.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cloud/crypto_client/crypto_client.c  -o ${OBJECTDIR}/mcc_generated_files/cloud/crypto_client/crypto_client.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cloud/crypto_client/crypto_client.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cloud/crypto_client/cryptoauthlib_main.o: mcc_generated_files/cloud/crypto_client/cryptoauthlib_main.c  .generated_files/flags/default/4f86a9f9ad20ff4fba38ca41c0cf46e753b453d7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cloud/crypto_client" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cloud/crypto_client/cryptoauthlib_main.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cloud/crypto_client/cryptoauthlib_main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cloud/crypto_client/cryptoauthlib_main.c  -o ${OBJECTDIR}/mcc_generated_files/cloud/crypto_client/cryptoauthlib_main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cloud/crypto_client/cryptoauthlib_main.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cloud/mqtt_packetPopulation/mqtt_packetPopulate.o: mcc_generated_files/cloud/mqtt_packetPopulation/mqtt_packetPopulate.c  .generated_files/flags/default/a9724566628e7f9ccaba58459a849d16f79eacfb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cloud/mqtt_packetPopulation" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cloud/mqtt_packetPopulation/mqtt_packetPopulate.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cloud/mqtt_packetPopulation/mqtt_packetPopulate.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cloud/mqtt_packetPopulation/mqtt_packetPopulate.c  -o ${OBJECTDIR}/mcc_generated_files/cloud/mqtt_packetPopulation/mqtt_packetPopulate.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cloud/mqtt_packetPopulation/mqtt_packetPopulate.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cloud/wifi_service.o: mcc_generated_files/cloud/wifi_service.c  .generated_files/flags/default/fc5a324240f0b4e08796583200910c0b4ceb6c99 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cloud" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cloud/wifi_service.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cloud/wifi_service.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cloud/wifi_service.c  -o ${OBJECTDIR}/mcc_generated_files/cloud/wifi_service.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cloud/wifi_service.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/credentials_storage/credentials_storage.o: mcc_generated_files/credentials_storage/credentials_storage.c  .generated_files/flags/default/f38eb6105cbfcb72e61469d874919d3531052c15 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/credentials_storage" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/credentials_storage/credentials_storage.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/credentials_storage/credentials_storage.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/credentials_storage/credentials_storage.c  -o ${OBJECTDIR}/mcc_generated_files/credentials_storage/credentials_storage.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/credentials_storage/credentials_storage.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_client.o: mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_client.c  .generated_files/flags/default/cb421b8f19bd9256b2fd58cd552d8a420f191ae4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_client.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_client.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_client.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_client.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_client.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_date.o: mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_date.c  .generated_files/flags/default/9765f97f64eb0f70ef5cb55511879207e1181c2e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_date.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_date.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_date.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_date.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_date.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_def.o: mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_def.c  .generated_files/flags/default/c779a165a2297b8bb67bf09cb69eca53c75d998b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_def.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_def.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_def.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_def.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_def.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_der.o: mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_der.c  .generated_files/flags/default/3e47d8067de7a02a4e40afcd15198fe4396f854 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_der.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_der.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_der.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_der.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_der.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_host_hw.o: mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_host_hw.c  .generated_files/flags/default/b24dd6305d908827719d948ef5ba267ccfcd053a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_host_hw.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_host_hw.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_host_hw.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_host_hw.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_host_hw.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_host_sw.o: mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_host_sw.c  .generated_files/flags/default/fac5240a70ed3aea25c43e7aeb579d6ea7b21517 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_host_sw.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_host_sw.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_host_sw.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_host_sw.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_host_sw.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_pem.o: mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_pem.c  .generated_files/flags/default/b0fdfbf0698fcc25df1bc1cc41216714ad2f8262 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_pem.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_pem.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_pem.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_pem.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_pem.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic.o: mcc_generated_files/cryptoauthlib/lib/basic/atca_basic.c  .generated_files/flags/default/37744537b6c77489f236e4959993b46d0760556f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/basic/atca_basic.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_aes.o: mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_aes.c  .generated_files/flags/default/c90bea605a1617b7f0b2d7103e49a741fdba1336 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_aes.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_aes.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_aes.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_aes.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_aes.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_checkmac.o: mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_checkmac.c  .generated_files/flags/default/8dc2e75e45b219834fa8f443fa1f50996d675a72 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_checkmac.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_checkmac.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_checkmac.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_checkmac.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_checkmac.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_counter.o: mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_counter.c  .generated_files/flags/default/182f48cd9d7cf20d3549a9d4e11cacdc141c62ef .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_counter.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_counter.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_counter.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_counter.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_counter.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_derivekey.o: mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_derivekey.c  .generated_files/flags/default/f86a46be55f55ceb3bc089ef5717e869c93c07c7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_derivekey.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_derivekey.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_derivekey.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_derivekey.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_derivekey.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_ecdh.o: mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_ecdh.c  .generated_files/flags/default/45623659281133762146fee6a4c1a998ec819668 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_ecdh.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_ecdh.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_ecdh.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_ecdh.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_ecdh.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_gendig.o: mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_gendig.c  .generated_files/flags/default/fb3aeb7cfe246c6f20d6f5e8039f13da82ec9410 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_gendig.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_gendig.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_gendig.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_gendig.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_gendig.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_genkey.o: mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_genkey.c  .generated_files/flags/default/4ba624524c2bba6f4810525a71aa22ab21d24af4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_genkey.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_genkey.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_genkey.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_genkey.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_genkey.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_hmac.o: mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_hmac.c  .generated_files/flags/default/ed04cb13f66e94bd493f01ce18f5ebd3e2d0af4e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_hmac.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_hmac.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_hmac.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_hmac.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_hmac.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_info.o: mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_info.c  .generated_files/flags/default/73b169ffdfdafab230058de767462d534e91bb11 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_info.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_info.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_info.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_info.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_info.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_kdf.o: mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_kdf.c  .generated_files/flags/default/60366c4f7a4ad976c2dea02bf6daad80966adfea .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_kdf.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_kdf.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_kdf.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_kdf.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_kdf.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_lock.o: mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_lock.c  .generated_files/flags/default/701c343933ae0810c1d891be63bc3803580464b3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_lock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_lock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_lock.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_lock.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_lock.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_mac.o: mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_mac.c  .generated_files/flags/default/d7d9dc07d644327996baddabce91e857ff22d53 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_mac.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_mac.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_mac.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_mac.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_mac.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_nonce.o: mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_nonce.c  .generated_files/flags/default/cf5181861882c479a8b960688b08f6455a1b621a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_nonce.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_nonce.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_nonce.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_nonce.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_nonce.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_privwrite.o: mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_privwrite.c  .generated_files/flags/default/da5a96c5064b0d4093369f42e187aa8b42ef9aa1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_privwrite.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_privwrite.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_privwrite.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_privwrite.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_privwrite.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_random.o: mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_random.c  .generated_files/flags/default/d98ad082e69413b1f898877056324039f25be40b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_random.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_random.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_random.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_random.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_random.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_read.o: mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_read.c  .generated_files/flags/default/390a735d0b22a62054e3869d8df7429d1bf05e57 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_read.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_read.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_read.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_read.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_read.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_secureboot.o: mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_secureboot.c  .generated_files/flags/default/b5a872ce574b62b04b92884c643dc9fc2398e589 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_secureboot.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_secureboot.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_secureboot.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_secureboot.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_secureboot.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_selftest.o: mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_selftest.c  .generated_files/flags/default/87f4d83e6c10826659406e6530e375b9296470aa .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_selftest.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_selftest.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_selftest.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_selftest.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_selftest.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_sha.o: mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_sha.c  .generated_files/flags/default/5b4dc3eb9a369da23c178dfde28c6308a8d68853 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_sha.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_sha.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_sha.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_sha.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_sha.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_sign.o: mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_sign.c  .generated_files/flags/default/232e0cad0fd7aad33ce586289544dedfe57c4b30 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_sign.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_sign.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_sign.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_sign.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_sign.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_updateextra.o: mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_updateextra.c  .generated_files/flags/default/d03ebac7ac4f895f5949634a8301988da398dc61 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_updateextra.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_updateextra.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_updateextra.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_updateextra.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_updateextra.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_verify.o: mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_verify.c  .generated_files/flags/default/76fe1131ba20c6750f35a194218b6b01cbacca23 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_verify.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_verify.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_verify.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_verify.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_verify.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_write.o: mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_write.c  .generated_files/flags/default/d1745a8a6abe8e60d2851f6b72798178b9c65a6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_write.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_write.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_write.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_write.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_write.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_helpers.o: mcc_generated_files/cryptoauthlib/lib/basic/atca_helpers.c  .generated_files/flags/default/cc14951915b58600e8b0b6b4365a0fdf5a7d5197 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_helpers.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_helpers.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/basic/atca_helpers.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_helpers.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_helpers.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/hashes/sha1_routines.o: mcc_generated_files/cryptoauthlib/lib/crypto/hashes/sha1_routines.c  .generated_files/flags/default/391a17e9d81f792ce3ee1da0883aa0fa1d5d6c5a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/hashes" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/hashes/sha1_routines.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/hashes/sha1_routines.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/crypto/hashes/sha1_routines.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/hashes/sha1_routines.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/hashes/sha1_routines.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/hashes/sha2_routines.o: mcc_generated_files/cryptoauthlib/lib/crypto/hashes/sha2_routines.c  .generated_files/flags/default/c2d823b898901f460de3b4ce1059e07cbfb6060 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/hashes" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/hashes/sha2_routines.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/hashes/sha2_routines.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/crypto/hashes/sha2_routines.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/hashes/sha2_routines.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/hashes/sha2_routines.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_ecdsa.o: mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_ecdsa.c  .generated_files/flags/default/e5dd453f8ad052ace645cdf8de894ae8035684b4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_ecdsa.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_ecdsa.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_ecdsa.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_ecdsa.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_ecdsa.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_rand.o: mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_rand.c  .generated_files/flags/default/ffcb19801e732ede9253d0986939ae32994ba32f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_rand.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_rand.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_rand.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_rand.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_rand.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_sha1.o: mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_sha1.c  .generated_files/flags/default/db2e0a510f7a5f0aea2b6f42ee3f62a839e457f9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_sha1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_sha1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_sha1.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_sha1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_sha1.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_sha2.o: mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_sha2.c  .generated_files/flags/default/8027c1b2a9271268743aca933277ec953caead82 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_sha2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_sha2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_sha2.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_sha2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_sha2.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/hal/hal_i2c.o: mcc_generated_files/cryptoauthlib/lib/hal/hal_i2c.c  .generated_files/flags/default/5c1aaf1c1ac62f5a23334a403898ac61930281b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/hal" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/hal/hal_i2c.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/hal/hal_i2c.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/hal/hal_i2c.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/hal/hal_i2c.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/hal/hal_i2c.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/hal/hal_timer.o: mcc_generated_files/cryptoauthlib/lib/hal/hal_timer.c  .generated_files/flags/default/d4b76121c18c5d615ce3b00734e44befc0a02daf .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/hal" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/hal/hal_timer.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/hal/hal_timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/hal/hal_timer.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/hal/hal_timer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/hal/hal_timer.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/hal/atca_hal.o: mcc_generated_files/cryptoauthlib/lib/hal/atca_hal.c  .generated_files/flags/default/5a791ef4206dd9e6fe49d3ddd9ae4682b6713d14 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/hal" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/hal/atca_hal.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/hal/atca_hal.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/hal/atca_hal.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/hal/atca_hal.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/hal/atca_hal.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/host/atca_host.o: mcc_generated_files/cryptoauthlib/lib/host/atca_host.c  .generated_files/flags/default/e5fbf8080fbd639ba4023481c34ddc9271a9168f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/host" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/host/atca_host.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/host/atca_host.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/host/atca_host.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/host/atca_host.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/host/atca_host.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/jwt/atca_jwt.o: mcc_generated_files/cryptoauthlib/lib/jwt/atca_jwt.c  .generated_files/flags/default/c6617404aacf61d65f223b4e18f047988e2033c4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/jwt" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/jwt/atca_jwt.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/jwt/atca_jwt.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/jwt/atca_jwt.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/jwt/atca_jwt.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/jwt/atca_jwt.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/tls/atcatls.o: mcc_generated_files/cryptoauthlib/lib/tls/atcatls.c  .generated_files/flags/default/7938ebe366baa1035267aeff11394d6a3c0c5eb9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/tls" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/tls/atcatls.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/tls/atcatls.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/tls/atcatls.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/tls/atcatls.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/tls/atcatls.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/tls/atcatls_cfg.o: mcc_generated_files/cryptoauthlib/lib/tls/atcatls_cfg.c  .generated_files/flags/default/3b81aa568b1171ba463cbd43ee6e92c16bd6627d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/tls" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/tls/atcatls_cfg.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/tls/atcatls_cfg.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/tls/atcatls_cfg.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/tls/atcatls_cfg.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/tls/atcatls_cfg.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_cfgs.o: mcc_generated_files/cryptoauthlib/lib/atca_cfgs.c  .generated_files/flags/default/dbf5b27b0b38bd222a02ddf6156453159bec07f8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_cfgs.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_cfgs.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/atca_cfgs.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_cfgs.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_cfgs.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_command.o: mcc_generated_files/cryptoauthlib/lib/atca_command.c  .generated_files/flags/default/7d3605eb6e181b3703cebff1e78ede730b0d8b12 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_command.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_command.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/atca_command.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_command.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_command.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_device.o: mcc_generated_files/cryptoauthlib/lib/atca_device.c  .generated_files/flags/default/2138c2ac42273f11ffd82a8f6ca6616dafb44bd3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_device.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_device.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/atca_device.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_device.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_device.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_execution.o: mcc_generated_files/cryptoauthlib/lib/atca_execution.c  .generated_files/flags/default/8e842ead2d60c6db7807862bd1808c2aacd73e9e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_execution.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_execution.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/atca_execution.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_execution.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_execution.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_iface.o: mcc_generated_files/cryptoauthlib/lib/atca_iface.c  .generated_files/flags/default/d48cd23933ef09bed57182f97f2d72a07c8966c5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_iface.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_iface.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/atca_iface.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_iface.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_iface.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/drivers/uart.o: mcc_generated_files/drivers/uart.c  .generated_files/flags/default/541a1a03388003301184707f90c5d62d1cb237cb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/uart.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/uart.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/drivers/uart.c  -o ${OBJECTDIR}/mcc_generated_files/drivers/uart.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/uart.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o: mcc_generated_files/drivers/i2c_master.c  .generated_files/flags/default/f35f3b8241e71df528a39015d305c1ed75087628 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/drivers/i2c_master.c  -o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o: mcc_generated_files/drivers/i2c_types.c  .generated_files/flags/default/c110c4bec59669fb1b4bebe7c3e4e4fa5842d680 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/drivers/i2c_types.c  -o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/drivers/timeout.o: mcc_generated_files/drivers/timeout.c  .generated_files/flags/default/fd64790ddf62664eeba7155ec4b52dc7040e3aa3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/timeout.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/timeout.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/drivers/timeout.c  -o ${OBJECTDIR}/mcc_generated_files/drivers/timeout.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/timeout.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o: mcc_generated_files/drivers/spi_master.c  .generated_files/flags/default/d087da7e8fffa41a5d90cb34736a945f0f2ac199 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/drivers/spi_master.c  -o ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o: mcc_generated_files/drivers/i2c_simple_master.c  .generated_files/flags/default/f6550c3e795d2df22708a4e2ca9dfb12ef69cb3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/drivers/i2c_simple_master.c  -o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_comm_bsd/mqtt_comm_layer.o: mcc_generated_files/mqtt/mqtt_comm_bsd/mqtt_comm_layer.c  .generated_files/flags/default/44f5e0ec3bbf40a241c56053bab6f13d7afc67ee .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_comm_bsd" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_comm_bsd/mqtt_comm_layer.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_comm_bsd/mqtt_comm_layer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mqtt/mqtt_comm_bsd/mqtt_comm_layer.c  -o ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_comm_bsd/mqtt_comm_layer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_comm_bsd/mqtt_comm_layer.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_core/mqtt_core.o: mcc_generated_files/mqtt/mqtt_core/mqtt_core.c  .generated_files/flags/default/2148e33fde607436300b8090e9844e7d1d04b90f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_core" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_core/mqtt_core.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_core/mqtt_core.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mqtt/mqtt_core/mqtt_core.c  -o ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_core/mqtt_core.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_core/mqtt_core.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_exchange_buffer/mqtt_exchange_buffer.o: mcc_generated_files/mqtt/mqtt_exchange_buffer/mqtt_exchange_buffer.c  .generated_files/flags/default/ff82dce962f2e62b535190e53e8ea02a89ece733 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_exchange_buffer" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_exchange_buffer/mqtt_exchange_buffer.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_exchange_buffer/mqtt_exchange_buffer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mqtt/mqtt_exchange_buffer/mqtt_exchange_buffer.c  -o ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_exchange_buffer/mqtt_exchange_buffer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_exchange_buffer/mqtt_exchange_buffer.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_packetTransfer_interface.o: mcc_generated_files/mqtt/mqtt_packetTransfer_interface.c  .generated_files/flags/default/252305ae21e523167a8db6ee42e30e0bf338eaa9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/mqtt" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_packetTransfer_interface.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_packetTransfer_interface.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mqtt/mqtt_packetTransfer_interface.c  -o ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_packetTransfer_interface.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_packetTransfer_interface.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/bsp/source/nm_bsp_mega.o: mcc_generated_files/winc/bsp/source/nm_bsp_mega.c  .generated_files/flags/default/cd307f898df3b61327a1903a0041115abe4c6981 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/bsp/source" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/bsp/source/nm_bsp_mega.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/bsp/source/nm_bsp_mega.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/bsp/source/nm_bsp_mega.c  -o ${OBJECTDIR}/mcc_generated_files/winc/bsp/source/nm_bsp_mega.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/bsp/source/nm_bsp_mega.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/bus_wrapper/source/nm_bus_wrapper_mega.o: mcc_generated_files/winc/bus_wrapper/source/nm_bus_wrapper_mega.c  .generated_files/flags/default/fe00b127b246b2b5e03c624d295bd28cd63afb54 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/bus_wrapper/source" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/bus_wrapper/source/nm_bus_wrapper_mega.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/bus_wrapper/source/nm_bus_wrapper_mega.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/bus_wrapper/source/nm_bus_wrapper_mega.c  -o ${OBJECTDIR}/mcc_generated_files/winc/bus_wrapper/source/nm_bus_wrapper_mega.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/bus_wrapper/source/nm_bus_wrapper_mega.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/common/source/nm_common.o: mcc_generated_files/winc/common/source/nm_common.c  .generated_files/flags/default/8c71ac09cba671de4e495611c11ee5936d9acaf9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/common/source" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/common/source/nm_common.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/common/source/nm_common.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/common/source/nm_common.c  -o ${OBJECTDIR}/mcc_generated_files/winc/common/source/nm_common.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/common/source/nm_common.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_ate_mode.o: mcc_generated_files/winc/driver/source/m2m_ate_mode.c  .generated_files/flags/default/49d4e473a7241e7e8874fa601dd8a69d10b126a9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver/source" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_ate_mode.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_ate_mode.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/driver/source/m2m_ate_mode.c  -o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_ate_mode.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_ate_mode.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_crypto.o: mcc_generated_files/winc/driver/source/m2m_crypto.c  .generated_files/flags/default/7565e46cbbe003d38f3213108dc8db7a1296b59d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver/source" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_crypto.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_crypto.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/driver/source/m2m_crypto.c  -o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_crypto.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_crypto.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_hif.o: mcc_generated_files/winc/driver/source/m2m_hif.c  .generated_files/flags/default/bf45e94213ddc8f681e6d2bee8178b774c2d910 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver/source" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_hif.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_hif.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/driver/source/m2m_hif.c  -o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_hif.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_hif.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_ota.o: mcc_generated_files/winc/driver/source/m2m_ota.c  .generated_files/flags/default/9b6821a2ed45d15a52128ad854296f1d2db9bcc0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver/source" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_ota.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_ota.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/driver/source/m2m_ota.c  -o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_ota.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_ota.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_periph.o: mcc_generated_files/winc/driver/source/m2m_periph.c  .generated_files/flags/default/ed8df635fdcbc61b39f6b82f31c004cdcc72d792 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver/source" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_periph.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_periph.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/driver/source/m2m_periph.c  -o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_periph.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_periph.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_ssl.o: mcc_generated_files/winc/driver/source/m2m_ssl.c  .generated_files/flags/default/b448c6aee842483d563dd89ad7f679b5264aee62 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver/source" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_ssl.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_ssl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/driver/source/m2m_ssl.c  -o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_ssl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_ssl.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_wifi.o: mcc_generated_files/winc/driver/source/m2m_wifi.c  .generated_files/flags/default/9dfe18e1536f3bbaa9b8630c846f3b0227f5f190 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver/source" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_wifi.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_wifi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/driver/source/m2m_wifi.c  -o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_wifi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_wifi.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmasic.o: mcc_generated_files/winc/driver/source/nmasic.c  .generated_files/flags/default/a49e48d10024c5b67910236eafdc24d1c9f9ff8a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver/source" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmasic.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmasic.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/driver/source/nmasic.c  -o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmasic.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmasic.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmbus.o: mcc_generated_files/winc/driver/source/nmbus.c  .generated_files/flags/default/5c7d66cc86d073c568f92693561311b647d027bb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver/source" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmbus.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmbus.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/driver/source/nmbus.c  -o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmbus.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmbus.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmdrv.o: mcc_generated_files/winc/driver/source/nmdrv.c  .generated_files/flags/default/6759ca13aca0d7dfc061d2a1b00d39def4900550 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver/source" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmdrv.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmdrv.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/driver/source/nmdrv.c  -o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmdrv.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmdrv.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmi2c.o: mcc_generated_files/winc/driver/source/nmi2c.c  .generated_files/flags/default/284334231a9adb743717a9843edb635768aa0a6e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver/source" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmi2c.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmi2c.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/driver/source/nmi2c.c  -o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmi2c.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmi2c.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmspi.o: mcc_generated_files/winc/driver/source/nmspi.c  .generated_files/flags/default/e35691bafc9498bcb4483fcee072a7a839ba9482 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver/source" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmspi.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmspi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/driver/source/nmspi.c  -o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmspi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmspi.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmuart.o: mcc_generated_files/winc/driver/source/nmuart.c  .generated_files/flags/default/3cf8b5bad7bb67e6626579bd87c71c7d274d82da .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver/source" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmuart.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmuart.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/driver/source/nmuart.c  -o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmuart.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmuart.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/socket/source/socket.o: mcc_generated_files/winc/socket/source/socket.c  .generated_files/flags/default/9d1d29869429a32452ce93df4fe703d59acadef8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/socket/source" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/socket/source/socket.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/socket/source/socket.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/socket/source/socket.c  -o ${OBJECTDIR}/mcc_generated_files/winc/socket/source/socket.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/socket/source/socket.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/spi_flash/source/spi_flash.o: mcc_generated_files/winc/spi_flash/source/spi_flash.c  .generated_files/flags/default/ac1e8ce190addbb02b0cba20d96b7edc3c758282 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/spi_flash/source" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/source/spi_flash.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/source/spi_flash.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/spi_flash/source/spi_flash.c  -o ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/source/spi_flash.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/spi_flash/source/spi_flash.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/tmr2.o: mcc_generated_files/tmr2.c  .generated_files/flags/default/26de4fd1913534d0a6a9cdf432e8a726ddafd6fa .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/tmr2.c  -o ${OBJECTDIR}/mcc_generated_files/tmr2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/tmr2.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/spi1_driver.o: mcc_generated_files/spi1_driver.c  .generated_files/flags/default/f6f797e4d253ebce208f7551ac14d1f419f7bd19 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi1_driver.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi1_driver.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/spi1_driver.c  -o ${OBJECTDIR}/mcc_generated_files/spi1_driver.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/spi1_driver.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/flags/default/8ece6600d1ff94f899ef9880d5f84f16d14fea40 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/interrupt_manager.c  -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/traps.o: mcc_generated_files/traps.c  .generated_files/flags/default/1231ab3e8882708ba904956b43c6431cbc5800ea .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/traps.c  -o ${OBJECTDIR}/mcc_generated_files/traps.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/traps.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/adc1.o: mcc_generated_files/adc1.c  .generated_files/flags/default/862e311d21d823ef6de9f37c248a9e86e53939bc .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adc1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adc1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/adc1.c  -o ${OBJECTDIR}/mcc_generated_files/adc1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/adc1.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/flags/default/f7550790362fe6ed5eb48006609a6fc81d9224f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/pin_manager.c  -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/delay.o: mcc_generated_files/delay.c  .generated_files/flags/default/92cae98cc4055e99ed806e9bbf1c472485c5c6bb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/delay.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/delay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/delay.c  -o ${OBJECTDIR}/mcc_generated_files/delay.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/delay.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/led.o: mcc_generated_files/led.c  .generated_files/flags/default/a7891118bf076f769f6c016cec9a17ff6029656d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/led.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/led.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/led.c  -o ${OBJECTDIR}/mcc_generated_files/led.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/led.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/sensors_handling.o: mcc_generated_files/sensors_handling.c  .generated_files/flags/default/15ed6cb88f65352ed2bc583a4d1b693da9c975ce .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sensors_handling.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sensors_handling.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/sensors_handling.c  -o ${OBJECTDIR}/mcc_generated_files/sensors_handling.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/sensors_handling.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/tmr1.o: mcc_generated_files/tmr1.c  .generated_files/flags/default/80e3693455ab161373acbc98175becf678f37ea2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/tmr1.c  -o ${OBJECTDIR}/mcc_generated_files/tmr1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/tmr1.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/flags/default/13d45df47f86a30642f12ca426f95a8c6e7eae0e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mcc.c  -o ${OBJECTDIR}/mcc_generated_files/mcc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/system.o: mcc_generated_files/system.c  .generated_files/flags/default/372d909e2e538e37c8b66d36a5b26c402cad21f3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system.c  -o ${OBJECTDIR}/mcc_generated_files/system.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/clock.o: mcc_generated_files/clock.c  .generated_files/flags/default/892fd73d81fb7f07cf47a791c65e5b7dbf3be535 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/clock.c  -o ${OBJECTDIR}/mcc_generated_files/clock.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/clock.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/i2c2_driver.o: mcc_generated_files/i2c2_driver.c  .generated_files/flags/default/a93ce11df1b2ab0d2abfe4d6e98de5559eec1a4b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c2_driver.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c2_driver.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/i2c2_driver.c  -o ${OBJECTDIR}/mcc_generated_files/i2c2_driver.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/i2c2_driver.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/uart1.o: mcc_generated_files/uart1.c  .generated_files/flags/default/6699ba1e3c5636f7b43e605b947d1da439436d13 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/uart1.c  -o ${OBJECTDIR}/mcc_generated_files/uart1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart1.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/i2c1.o: mcc_generated_files/i2c1.c  .generated_files/flags/default/2a8aa84c684459124b67c90e558d0ff06ffdea4f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/i2c1.c  -o ${OBJECTDIR}/mcc_generated_files/i2c1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/i2c1.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/my_files/Kyber/byte_operations.o: my_files/Kyber/byte_operations.c  .generated_files/flags/default/64706696a1e6a9a78498c92bce1a1e04ca5fa065 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/my_files/Kyber" 
	@${RM} ${OBJECTDIR}/my_files/Kyber/byte_operations.o.d 
	@${RM} ${OBJECTDIR}/my_files/Kyber/byte_operations.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  my_files/Kyber/byte_operations.c  -o ${OBJECTDIR}/my_files/Kyber/byte_operations.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/my_files/Kyber/byte_operations.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/my_files/Kyber/ml_kem_const.o: my_files/Kyber/ml_kem_const.c  .generated_files/flags/default/ca1fe188dc851d7ac3e03c529251a8a3990c815c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/my_files/Kyber" 
	@${RM} ${OBJECTDIR}/my_files/Kyber/ml_kem_const.o.d 
	@${RM} ${OBJECTDIR}/my_files/Kyber/ml_kem_const.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  my_files/Kyber/ml_kem_const.c  -o ${OBJECTDIR}/my_files/Kyber/ml_kem_const.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/my_files/Kyber/ml_kem_const.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/my_files/Kyber/NTT.o: my_files/Kyber/NTT.c  .generated_files/flags/default/37fd613b3a8521fd76a8845f45ebd380d95fdb82 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/my_files/Kyber" 
	@${RM} ${OBJECTDIR}/my_files/Kyber/NTT.o.d 
	@${RM} ${OBJECTDIR}/my_files/Kyber/NTT.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  my_files/Kyber/NTT.c  -o ${OBJECTDIR}/my_files/Kyber/NTT.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/my_files/Kyber/NTT.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/my_files/Kyber/tests.o: my_files/Kyber/tests.c  .generated_files/flags/default/42c8da1f301d7d50ef723e1017895476bdcb0931 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/my_files/Kyber" 
	@${RM} ${OBJECTDIR}/my_files/Kyber/tests.o.d 
	@${RM} ${OBJECTDIR}/my_files/Kyber/tests.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  my_files/Kyber/tests.c  -o ${OBJECTDIR}/my_files/Kyber/tests.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/my_files/Kyber/tests.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/my_files/sh1106.o: my_files/sh1106.c  .generated_files/flags/default/c49aca88edaa2f5ac7243879cb9625e93a7188c6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/my_files" 
	@${RM} ${OBJECTDIR}/my_files/sh1106.o.d 
	@${RM} ${OBJECTDIR}/my_files/sh1106.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  my_files/sh1106.c  -o ${OBJECTDIR}/my_files/sh1106.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/my_files/sh1106.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/my_files/comms.o: my_files/comms.c  .generated_files/flags/default/f39d120934feca2a5dc5b7ce7c09254e8b4c428e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/my_files" 
	@${RM} ${OBJECTDIR}/my_files/comms.o.d 
	@${RM} ${OBJECTDIR}/my_files/comms.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  my_files/comms.c  -o ${OBJECTDIR}/my_files/comms.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/my_files/comms.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/b2f955934bf4d7daa340d966ed3202237776395a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/mcc_generated_files/cloud/bsd_adapter/bsdWINC.o: mcc_generated_files/cloud/bsd_adapter/bsdWINC.c  .generated_files/flags/default/3c563807f3f92be45c1b2d00391410381d196ca2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cloud/bsd_adapter" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cloud/bsd_adapter/bsdWINC.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cloud/bsd_adapter/bsdWINC.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cloud/bsd_adapter/bsdWINC.c  -o ${OBJECTDIR}/mcc_generated_files/cloud/bsd_adapter/bsdWINC.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cloud/bsd_adapter/bsdWINC.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cloud/crypto_client/crypto_client.o: mcc_generated_files/cloud/crypto_client/crypto_client.c  .generated_files/flags/default/49fd1aea240f162feb830ed77bfe07bf95653b82 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cloud/crypto_client" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cloud/crypto_client/crypto_client.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cloud/crypto_client/crypto_client.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cloud/crypto_client/crypto_client.c  -o ${OBJECTDIR}/mcc_generated_files/cloud/crypto_client/crypto_client.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cloud/crypto_client/crypto_client.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cloud/crypto_client/cryptoauthlib_main.o: mcc_generated_files/cloud/crypto_client/cryptoauthlib_main.c  .generated_files/flags/default/1faee97944ee2e2e099fa4b4ce18092a171de866 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cloud/crypto_client" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cloud/crypto_client/cryptoauthlib_main.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cloud/crypto_client/cryptoauthlib_main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cloud/crypto_client/cryptoauthlib_main.c  -o ${OBJECTDIR}/mcc_generated_files/cloud/crypto_client/cryptoauthlib_main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cloud/crypto_client/cryptoauthlib_main.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cloud/mqtt_packetPopulation/mqtt_packetPopulate.o: mcc_generated_files/cloud/mqtt_packetPopulation/mqtt_packetPopulate.c  .generated_files/flags/default/e86bd70715af28860fe9d233400db1ff74256d4f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cloud/mqtt_packetPopulation" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cloud/mqtt_packetPopulation/mqtt_packetPopulate.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cloud/mqtt_packetPopulation/mqtt_packetPopulate.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cloud/mqtt_packetPopulation/mqtt_packetPopulate.c  -o ${OBJECTDIR}/mcc_generated_files/cloud/mqtt_packetPopulation/mqtt_packetPopulate.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cloud/mqtt_packetPopulation/mqtt_packetPopulate.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cloud/wifi_service.o: mcc_generated_files/cloud/wifi_service.c  .generated_files/flags/default/7979337344db09a177e09bd92a91140478d47f5f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cloud" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cloud/wifi_service.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cloud/wifi_service.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cloud/wifi_service.c  -o ${OBJECTDIR}/mcc_generated_files/cloud/wifi_service.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cloud/wifi_service.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/credentials_storage/credentials_storage.o: mcc_generated_files/credentials_storage/credentials_storage.c  .generated_files/flags/default/464337eadf0b8610403c7c2e6fc16ebc6d32e481 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/credentials_storage" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/credentials_storage/credentials_storage.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/credentials_storage/credentials_storage.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/credentials_storage/credentials_storage.c  -o ${OBJECTDIR}/mcc_generated_files/credentials_storage/credentials_storage.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/credentials_storage/credentials_storage.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_client.o: mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_client.c  .generated_files/flags/default/c21dfe671226261f6da007cb815bc6f2dd1b4fe .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_client.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_client.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_client.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_client.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_client.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_date.o: mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_date.c  .generated_files/flags/default/d8b7a5f3917166f89ec8c910281a21421ee9ad8b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_date.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_date.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_date.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_date.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_date.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_def.o: mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_def.c  .generated_files/flags/default/6665549959813b06d113ee79459a73e68c56b0dd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_def.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_def.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_def.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_def.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_def.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_der.o: mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_der.c  .generated_files/flags/default/5160211628f1166bd68910f5d2d234f54240b877 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_der.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_der.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_der.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_der.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_der.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_host_hw.o: mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_host_hw.c  .generated_files/flags/default/fc68693cb5fea2a1d12f46b1f1e0d215850600a2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_host_hw.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_host_hw.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_host_hw.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_host_hw.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_host_hw.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_host_sw.o: mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_host_sw.c  .generated_files/flags/default/9062cc8fc15017804b288ba2f9ce54b8c656b31d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_host_sw.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_host_sw.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_host_sw.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_host_sw.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_host_sw.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_pem.o: mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_pem.c  .generated_files/flags/default/9c9830272b4600b5e11dd7aa95b4914860ca75f1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_pem.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_pem.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_pem.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_pem.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atcacert/atcacert_pem.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic.o: mcc_generated_files/cryptoauthlib/lib/basic/atca_basic.c  .generated_files/flags/default/4a5c48e555af38312552694917fac3014dc7740c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/basic/atca_basic.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_aes.o: mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_aes.c  .generated_files/flags/default/12d8b574a45414079c200a171358da37893ddb15 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_aes.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_aes.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_aes.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_aes.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_aes.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_checkmac.o: mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_checkmac.c  .generated_files/flags/default/7c416d850d13b48106c155507e7d9aef9cc826bb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_checkmac.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_checkmac.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_checkmac.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_checkmac.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_checkmac.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_counter.o: mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_counter.c  .generated_files/flags/default/ee584c1adb1fbacd81cd0fcb3bf5e82e14b2b4bc .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_counter.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_counter.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_counter.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_counter.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_counter.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_derivekey.o: mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_derivekey.c  .generated_files/flags/default/ae96f627933b8aa98780521e404263fc7bf8f4f4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_derivekey.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_derivekey.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_derivekey.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_derivekey.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_derivekey.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_ecdh.o: mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_ecdh.c  .generated_files/flags/default/2d8ecb096f26d38d7e209c2b58e305fbd3633150 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_ecdh.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_ecdh.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_ecdh.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_ecdh.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_ecdh.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_gendig.o: mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_gendig.c  .generated_files/flags/default/a9e25c6c6df4a0b11e0d81a24f93bd0aa9e58087 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_gendig.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_gendig.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_gendig.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_gendig.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_gendig.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_genkey.o: mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_genkey.c  .generated_files/flags/default/e60fb227664a9468ffb002ab693449b09bfa50a4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_genkey.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_genkey.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_genkey.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_genkey.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_genkey.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_hmac.o: mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_hmac.c  .generated_files/flags/default/7af2fbf9369ac3b5140a1df0b9d7765c7127bc34 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_hmac.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_hmac.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_hmac.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_hmac.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_hmac.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_info.o: mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_info.c  .generated_files/flags/default/bd126ad5ed5cba15fe7d614c3dd1631b1ab8dd26 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_info.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_info.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_info.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_info.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_info.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_kdf.o: mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_kdf.c  .generated_files/flags/default/2a5cd0ebb063872e567925f7cf773ad521fa164f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_kdf.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_kdf.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_kdf.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_kdf.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_kdf.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_lock.o: mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_lock.c  .generated_files/flags/default/dc0a63679e6986c621cc842d415a07abb175eb01 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_lock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_lock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_lock.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_lock.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_lock.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_mac.o: mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_mac.c  .generated_files/flags/default/d120000f519f440b3279979d77bbd40bfb69adb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_mac.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_mac.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_mac.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_mac.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_mac.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_nonce.o: mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_nonce.c  .generated_files/flags/default/96c116fb904618431b5b2c2e12481a4c08355d6e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_nonce.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_nonce.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_nonce.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_nonce.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_nonce.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_privwrite.o: mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_privwrite.c  .generated_files/flags/default/75894f3e88d1b12d448c98d88e3057b91fe02a51 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_privwrite.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_privwrite.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_privwrite.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_privwrite.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_privwrite.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_random.o: mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_random.c  .generated_files/flags/default/5b5f54ff749bdee15652b0ecbc557f0a76bcd9ef .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_random.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_random.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_random.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_random.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_random.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_read.o: mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_read.c  .generated_files/flags/default/ea19685137a7e393c4a5ab5976cc6ea9f098a425 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_read.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_read.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_read.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_read.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_read.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_secureboot.o: mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_secureboot.c  .generated_files/flags/default/2b19a9675916ef4fc1701ad3c86f5172df2f9d5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_secureboot.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_secureboot.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_secureboot.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_secureboot.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_secureboot.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_selftest.o: mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_selftest.c  .generated_files/flags/default/ed586fd88e1362da2808ef2f477fe1dfcbdb07cc .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_selftest.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_selftest.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_selftest.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_selftest.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_selftest.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_sha.o: mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_sha.c  .generated_files/flags/default/3709b9a2e550e925c6e00b48cf4a9e48e06a9894 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_sha.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_sha.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_sha.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_sha.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_sha.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_sign.o: mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_sign.c  .generated_files/flags/default/a659f214941b72c57671fe057dfefbc1587165ef .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_sign.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_sign.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_sign.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_sign.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_sign.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_updateextra.o: mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_updateextra.c  .generated_files/flags/default/a990717a309dd3dca8dc614effbe737d63b029 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_updateextra.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_updateextra.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_updateextra.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_updateextra.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_updateextra.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_verify.o: mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_verify.c  .generated_files/flags/default/66c7196d9a75a804c76ef35b98ffb11ed72f6b67 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_verify.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_verify.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_verify.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_verify.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_verify.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_write.o: mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_write.c  .generated_files/flags/default/c6567e3fec36f5af012f81c5ba1936a9f8db5e94 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_write.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_write.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_write.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_write.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_basic_write.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_helpers.o: mcc_generated_files/cryptoauthlib/lib/basic/atca_helpers.c  .generated_files/flags/default/cc9ac133b2c3c11c9e4c4f681f3d3eb29310c7cc .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_helpers.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_helpers.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/basic/atca_helpers.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_helpers.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/basic/atca_helpers.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/hashes/sha1_routines.o: mcc_generated_files/cryptoauthlib/lib/crypto/hashes/sha1_routines.c  .generated_files/flags/default/20c41c3aa7e04be644aade7209c971d98c252d0d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/hashes" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/hashes/sha1_routines.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/hashes/sha1_routines.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/crypto/hashes/sha1_routines.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/hashes/sha1_routines.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/hashes/sha1_routines.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/hashes/sha2_routines.o: mcc_generated_files/cryptoauthlib/lib/crypto/hashes/sha2_routines.c  .generated_files/flags/default/ea616a1099539c866d6cfc0b4ff6c12ff4bd1aa5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/hashes" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/hashes/sha2_routines.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/hashes/sha2_routines.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/crypto/hashes/sha2_routines.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/hashes/sha2_routines.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/hashes/sha2_routines.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_ecdsa.o: mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_ecdsa.c  .generated_files/flags/default/edcdbff60970ebd2eec0de00ecd028549bec1ed0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_ecdsa.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_ecdsa.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_ecdsa.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_ecdsa.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_ecdsa.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_rand.o: mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_rand.c  .generated_files/flags/default/e1937bfbf4744aedd92f04e653d82c4c38411310 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_rand.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_rand.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_rand.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_rand.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_rand.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_sha1.o: mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_sha1.c  .generated_files/flags/default/620ece559e49bc50538b3f1fffea62e120578106 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_sha1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_sha1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_sha1.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_sha1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_sha1.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_sha2.o: mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_sha2.c  .generated_files/flags/default/fce967dd27ba169e2af949edcc13447791e304da .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_sha2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_sha2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_sha2.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_sha2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/crypto/atca_crypto_sw_sha2.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/hal/hal_i2c.o: mcc_generated_files/cryptoauthlib/lib/hal/hal_i2c.c  .generated_files/flags/default/d36371a4e95e9fc7ced05f53d1ee028e9207538 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/hal" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/hal/hal_i2c.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/hal/hal_i2c.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/hal/hal_i2c.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/hal/hal_i2c.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/hal/hal_i2c.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/hal/hal_timer.o: mcc_generated_files/cryptoauthlib/lib/hal/hal_timer.c  .generated_files/flags/default/acaa6dbd48f1f0bb1ac52c924d031e0967d425 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/hal" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/hal/hal_timer.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/hal/hal_timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/hal/hal_timer.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/hal/hal_timer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/hal/hal_timer.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/hal/atca_hal.o: mcc_generated_files/cryptoauthlib/lib/hal/atca_hal.c  .generated_files/flags/default/11e2ffe78a2b89c0bfc0a678f71c88606c346996 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/hal" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/hal/atca_hal.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/hal/atca_hal.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/hal/atca_hal.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/hal/atca_hal.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/hal/atca_hal.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/host/atca_host.o: mcc_generated_files/cryptoauthlib/lib/host/atca_host.c  .generated_files/flags/default/eac8100f52c425a1e539645b40b31745faf2452c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/host" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/host/atca_host.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/host/atca_host.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/host/atca_host.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/host/atca_host.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/host/atca_host.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/jwt/atca_jwt.o: mcc_generated_files/cryptoauthlib/lib/jwt/atca_jwt.c  .generated_files/flags/default/fb7a82481e449f0d05510aef501735b0c7594ba4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/jwt" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/jwt/atca_jwt.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/jwt/atca_jwt.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/jwt/atca_jwt.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/jwt/atca_jwt.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/jwt/atca_jwt.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/tls/atcatls.o: mcc_generated_files/cryptoauthlib/lib/tls/atcatls.c  .generated_files/flags/default/13a6cc5ffff123198cbbca0277a6d6f123dcae89 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/tls" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/tls/atcatls.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/tls/atcatls.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/tls/atcatls.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/tls/atcatls.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/tls/atcatls.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/tls/atcatls_cfg.o: mcc_generated_files/cryptoauthlib/lib/tls/atcatls_cfg.c  .generated_files/flags/default/43c85206f25b5c7955cb0627459c7169f3ff0a3e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/tls" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/tls/atcatls_cfg.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/tls/atcatls_cfg.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/tls/atcatls_cfg.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/tls/atcatls_cfg.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/tls/atcatls_cfg.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_cfgs.o: mcc_generated_files/cryptoauthlib/lib/atca_cfgs.c  .generated_files/flags/default/84c5e072e56be06646f399444198dc60e2602e91 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_cfgs.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_cfgs.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/atca_cfgs.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_cfgs.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_cfgs.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_command.o: mcc_generated_files/cryptoauthlib/lib/atca_command.c  .generated_files/flags/default/ae3e83ea0c0f696fe26c8298c9150651285353f6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_command.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_command.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/atca_command.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_command.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_command.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_device.o: mcc_generated_files/cryptoauthlib/lib/atca_device.c  .generated_files/flags/default/800f08310d7d1b4ec10936cf47dfd74058ed39bf .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_device.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_device.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/atca_device.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_device.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_device.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_execution.o: mcc_generated_files/cryptoauthlib/lib/atca_execution.c  .generated_files/flags/default/60a47cc3ddcb5ddcd8d13e4900a647ba136b05e4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_execution.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_execution.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/atca_execution.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_execution.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_execution.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_iface.o: mcc_generated_files/cryptoauthlib/lib/atca_iface.c  .generated_files/flags/default/13c419f7df757df84024e880bb2b2d3b7b44b2df .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_iface.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_iface.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cryptoauthlib/lib/atca_iface.c  -o ${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_iface.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cryptoauthlib/lib/atca_iface.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/drivers/uart.o: mcc_generated_files/drivers/uart.c  .generated_files/flags/default/8789e45eba65f0a06f6b1146ff19cdaa3c1f1510 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/uart.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/uart.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/drivers/uart.c  -o ${OBJECTDIR}/mcc_generated_files/drivers/uart.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/uart.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o: mcc_generated_files/drivers/i2c_master.c  .generated_files/flags/default/2cfaad99ef1598692a923bf7d7f08654a63016e0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/drivers/i2c_master.c  -o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o: mcc_generated_files/drivers/i2c_types.c  .generated_files/flags/default/f8e9cd2530c6fb43eeb1ba13b7703094dcdd0d43 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/drivers/i2c_types.c  -o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/drivers/timeout.o: mcc_generated_files/drivers/timeout.c  .generated_files/flags/default/fb19214f04f97990e0d69d4d636b30ab03b42eab .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/timeout.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/timeout.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/drivers/timeout.c  -o ${OBJECTDIR}/mcc_generated_files/drivers/timeout.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/timeout.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o: mcc_generated_files/drivers/spi_master.c  .generated_files/flags/default/5759b2e0b9e435ed520bab8af98528baede4d08d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/drivers/spi_master.c  -o ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o: mcc_generated_files/drivers/i2c_simple_master.c  .generated_files/flags/default/30b86038e5c56320f837d6b05f36bcdeb5859357 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/drivers/i2c_simple_master.c  -o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_comm_bsd/mqtt_comm_layer.o: mcc_generated_files/mqtt/mqtt_comm_bsd/mqtt_comm_layer.c  .generated_files/flags/default/4567f56b77b89fd48b1934763a7e4bb0a7e40238 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_comm_bsd" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_comm_bsd/mqtt_comm_layer.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_comm_bsd/mqtt_comm_layer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mqtt/mqtt_comm_bsd/mqtt_comm_layer.c  -o ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_comm_bsd/mqtt_comm_layer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_comm_bsd/mqtt_comm_layer.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_core/mqtt_core.o: mcc_generated_files/mqtt/mqtt_core/mqtt_core.c  .generated_files/flags/default/ce9bfb533d2fc68167a47888ddde68cf59792502 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_core" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_core/mqtt_core.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_core/mqtt_core.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mqtt/mqtt_core/mqtt_core.c  -o ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_core/mqtt_core.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_core/mqtt_core.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_exchange_buffer/mqtt_exchange_buffer.o: mcc_generated_files/mqtt/mqtt_exchange_buffer/mqtt_exchange_buffer.c  .generated_files/flags/default/7628c8c625d741d3b41759ee69c5160197e567f8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_exchange_buffer" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_exchange_buffer/mqtt_exchange_buffer.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_exchange_buffer/mqtt_exchange_buffer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mqtt/mqtt_exchange_buffer/mqtt_exchange_buffer.c  -o ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_exchange_buffer/mqtt_exchange_buffer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_exchange_buffer/mqtt_exchange_buffer.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_packetTransfer_interface.o: mcc_generated_files/mqtt/mqtt_packetTransfer_interface.c  .generated_files/flags/default/48cc5d23397d0bb1e6fab354a4d168a086df6728 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/mqtt" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_packetTransfer_interface.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_packetTransfer_interface.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mqtt/mqtt_packetTransfer_interface.c  -o ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_packetTransfer_interface.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_packetTransfer_interface.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/bsp/source/nm_bsp_mega.o: mcc_generated_files/winc/bsp/source/nm_bsp_mega.c  .generated_files/flags/default/c2df1dd94cad9af0db7aa3bd25d90325976c65f7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/bsp/source" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/bsp/source/nm_bsp_mega.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/bsp/source/nm_bsp_mega.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/bsp/source/nm_bsp_mega.c  -o ${OBJECTDIR}/mcc_generated_files/winc/bsp/source/nm_bsp_mega.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/bsp/source/nm_bsp_mega.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/bus_wrapper/source/nm_bus_wrapper_mega.o: mcc_generated_files/winc/bus_wrapper/source/nm_bus_wrapper_mega.c  .generated_files/flags/default/fca2e830dbc4041fb4308132ff17f5ddab4c4e09 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/bus_wrapper/source" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/bus_wrapper/source/nm_bus_wrapper_mega.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/bus_wrapper/source/nm_bus_wrapper_mega.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/bus_wrapper/source/nm_bus_wrapper_mega.c  -o ${OBJECTDIR}/mcc_generated_files/winc/bus_wrapper/source/nm_bus_wrapper_mega.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/bus_wrapper/source/nm_bus_wrapper_mega.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/common/source/nm_common.o: mcc_generated_files/winc/common/source/nm_common.c  .generated_files/flags/default/2f96e1d306c574e22af9fe4a6e4479a777f2d535 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/common/source" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/common/source/nm_common.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/common/source/nm_common.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/common/source/nm_common.c  -o ${OBJECTDIR}/mcc_generated_files/winc/common/source/nm_common.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/common/source/nm_common.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_ate_mode.o: mcc_generated_files/winc/driver/source/m2m_ate_mode.c  .generated_files/flags/default/d3831c0f9a09166761a7b157509caeccfc9469a2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver/source" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_ate_mode.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_ate_mode.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/driver/source/m2m_ate_mode.c  -o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_ate_mode.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_ate_mode.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_crypto.o: mcc_generated_files/winc/driver/source/m2m_crypto.c  .generated_files/flags/default/c905ad59b91f28624cb3914498cbba03264da51 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver/source" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_crypto.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_crypto.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/driver/source/m2m_crypto.c  -o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_crypto.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_crypto.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_hif.o: mcc_generated_files/winc/driver/source/m2m_hif.c  .generated_files/flags/default/511d7d3fb7dcc7d2d51478e956d22ac582fb802a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver/source" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_hif.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_hif.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/driver/source/m2m_hif.c  -o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_hif.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_hif.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_ota.o: mcc_generated_files/winc/driver/source/m2m_ota.c  .generated_files/flags/default/3fb348f98f0a9376d797ebfe2e9c688c99041e85 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver/source" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_ota.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_ota.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/driver/source/m2m_ota.c  -o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_ota.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_ota.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_periph.o: mcc_generated_files/winc/driver/source/m2m_periph.c  .generated_files/flags/default/860b6eb9835efbf2c03fd1a0fc14033105c8f3b1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver/source" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_periph.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_periph.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/driver/source/m2m_periph.c  -o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_periph.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_periph.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_ssl.o: mcc_generated_files/winc/driver/source/m2m_ssl.c  .generated_files/flags/default/7289445eef88f6325789aa3326aff44ff40e7cf1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver/source" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_ssl.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_ssl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/driver/source/m2m_ssl.c  -o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_ssl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_ssl.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_wifi.o: mcc_generated_files/winc/driver/source/m2m_wifi.c  .generated_files/flags/default/83592bfe0ef158bf6257630207cfb5d841b00e56 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver/source" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_wifi.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_wifi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/driver/source/m2m_wifi.c  -o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_wifi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/source/m2m_wifi.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmasic.o: mcc_generated_files/winc/driver/source/nmasic.c  .generated_files/flags/default/4c3eb15f1a7badb67347ee6f57676c553e6a4887 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver/source" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmasic.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmasic.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/driver/source/nmasic.c  -o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmasic.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmasic.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmbus.o: mcc_generated_files/winc/driver/source/nmbus.c  .generated_files/flags/default/c04f6a5711478940f9bc13e2e98103de0c12079b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver/source" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmbus.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmbus.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/driver/source/nmbus.c  -o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmbus.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmbus.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmdrv.o: mcc_generated_files/winc/driver/source/nmdrv.c  .generated_files/flags/default/4670db33b4ffc9330769cb0f7e331f528b3adad2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver/source" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmdrv.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmdrv.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/driver/source/nmdrv.c  -o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmdrv.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmdrv.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmi2c.o: mcc_generated_files/winc/driver/source/nmi2c.c  .generated_files/flags/default/d3f7789ed0df4a4be058f118b3e0558df397f386 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver/source" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmi2c.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmi2c.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/driver/source/nmi2c.c  -o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmi2c.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmi2c.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmspi.o: mcc_generated_files/winc/driver/source/nmspi.c  .generated_files/flags/default/a48a86533925b8851dd5d17fac35bc8c0ad72541 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver/source" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmspi.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmspi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/driver/source/nmspi.c  -o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmspi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmspi.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmuart.o: mcc_generated_files/winc/driver/source/nmuart.c  .generated_files/flags/default/892ae628fa86a110afa189ea13521b455a28e9c6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver/source" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmuart.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmuart.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/driver/source/nmuart.c  -o ${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmuart.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/source/nmuart.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/socket/source/socket.o: mcc_generated_files/winc/socket/source/socket.c  .generated_files/flags/default/d88bb08f73243393b484b307634a0cd672d66a1c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/socket/source" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/socket/source/socket.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/socket/source/socket.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/socket/source/socket.c  -o ${OBJECTDIR}/mcc_generated_files/winc/socket/source/socket.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/socket/source/socket.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/spi_flash/source/spi_flash.o: mcc_generated_files/winc/spi_flash/source/spi_flash.c  .generated_files/flags/default/35e0bffa980c09640aabfab10b911b15094b0418 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/spi_flash/source" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/source/spi_flash.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/source/spi_flash.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/spi_flash/source/spi_flash.c  -o ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/source/spi_flash.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/spi_flash/source/spi_flash.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/tmr2.o: mcc_generated_files/tmr2.c  .generated_files/flags/default/18d97d659d20b419dc8cb7e0fba624fdbd987b5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/tmr2.c  -o ${OBJECTDIR}/mcc_generated_files/tmr2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/tmr2.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/spi1_driver.o: mcc_generated_files/spi1_driver.c  .generated_files/flags/default/7d725f2d758ae2502d05a608089e820a94551253 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi1_driver.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi1_driver.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/spi1_driver.c  -o ${OBJECTDIR}/mcc_generated_files/spi1_driver.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/spi1_driver.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/flags/default/562dca95a76d1fd5cbe34fccd934ed6328b14b42 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/interrupt_manager.c  -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/traps.o: mcc_generated_files/traps.c  .generated_files/flags/default/b844f40ccde00c88040ef0274e866cebe183f944 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/traps.c  -o ${OBJECTDIR}/mcc_generated_files/traps.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/traps.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/adc1.o: mcc_generated_files/adc1.c  .generated_files/flags/default/1c3efaae34ff27a24721390757cc760c8d3055d8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adc1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adc1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/adc1.c  -o ${OBJECTDIR}/mcc_generated_files/adc1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/adc1.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/flags/default/4ab33928b511a2f3110b0da1c3d75ee311c777f3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/pin_manager.c  -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/delay.o: mcc_generated_files/delay.c  .generated_files/flags/default/56f5a304f0187094be5b858031756aadb25de7f1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/delay.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/delay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/delay.c  -o ${OBJECTDIR}/mcc_generated_files/delay.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/delay.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/led.o: mcc_generated_files/led.c  .generated_files/flags/default/9b721dd106d8b134e23492124015f61ee4e89d66 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/led.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/led.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/led.c  -o ${OBJECTDIR}/mcc_generated_files/led.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/led.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/sensors_handling.o: mcc_generated_files/sensors_handling.c  .generated_files/flags/default/fb7d70fe38586eae77544b2627f251a7b5d1ee37 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sensors_handling.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sensors_handling.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/sensors_handling.c  -o ${OBJECTDIR}/mcc_generated_files/sensors_handling.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/sensors_handling.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/tmr1.o: mcc_generated_files/tmr1.c  .generated_files/flags/default/97288b37bfc04a0125bb5669cee3cc55275e81de .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/tmr1.c  -o ${OBJECTDIR}/mcc_generated_files/tmr1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/tmr1.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/flags/default/cd2c81c7faca840fecb685ed661608a59a4cf375 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mcc.c  -o ${OBJECTDIR}/mcc_generated_files/mcc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/system.o: mcc_generated_files/system.c  .generated_files/flags/default/a154e746b1b5a51e41397a9b158674d8d69279e9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system.c  -o ${OBJECTDIR}/mcc_generated_files/system.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/clock.o: mcc_generated_files/clock.c  .generated_files/flags/default/bf85ab4604fb071bdd662877b88a34d66654bd92 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/clock.c  -o ${OBJECTDIR}/mcc_generated_files/clock.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/clock.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/i2c2_driver.o: mcc_generated_files/i2c2_driver.c  .generated_files/flags/default/d740b34ea96cb9be3515ef331baabee59c4bb634 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c2_driver.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c2_driver.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/i2c2_driver.c  -o ${OBJECTDIR}/mcc_generated_files/i2c2_driver.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/i2c2_driver.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/uart1.o: mcc_generated_files/uart1.c  .generated_files/flags/default/75206b1c88bfdd22a52d240441053755b83b6535 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/uart1.c  -o ${OBJECTDIR}/mcc_generated_files/uart1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart1.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/i2c1.o: mcc_generated_files/i2c1.c  .generated_files/flags/default/49499c1209df7a2c894f2372c1e25f0f95c3cf93 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/i2c1.c  -o ${OBJECTDIR}/mcc_generated_files/i2c1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/i2c1.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/my_files/Kyber/byte_operations.o: my_files/Kyber/byte_operations.c  .generated_files/flags/default/18db1d39ba28c396d45955ea91a0a95df5937712 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/my_files/Kyber" 
	@${RM} ${OBJECTDIR}/my_files/Kyber/byte_operations.o.d 
	@${RM} ${OBJECTDIR}/my_files/Kyber/byte_operations.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  my_files/Kyber/byte_operations.c  -o ${OBJECTDIR}/my_files/Kyber/byte_operations.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/my_files/Kyber/byte_operations.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/my_files/Kyber/ml_kem_const.o: my_files/Kyber/ml_kem_const.c  .generated_files/flags/default/3324a9a78e1150ce254d4ebf5c9cac184f26cdc1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/my_files/Kyber" 
	@${RM} ${OBJECTDIR}/my_files/Kyber/ml_kem_const.o.d 
	@${RM} ${OBJECTDIR}/my_files/Kyber/ml_kem_const.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  my_files/Kyber/ml_kem_const.c  -o ${OBJECTDIR}/my_files/Kyber/ml_kem_const.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/my_files/Kyber/ml_kem_const.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/my_files/Kyber/NTT.o: my_files/Kyber/NTT.c  .generated_files/flags/default/f57e07c3b81c44cba06a1222b6bb27bc33f57822 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/my_files/Kyber" 
	@${RM} ${OBJECTDIR}/my_files/Kyber/NTT.o.d 
	@${RM} ${OBJECTDIR}/my_files/Kyber/NTT.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  my_files/Kyber/NTT.c  -o ${OBJECTDIR}/my_files/Kyber/NTT.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/my_files/Kyber/NTT.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/my_files/Kyber/tests.o: my_files/Kyber/tests.c  .generated_files/flags/default/3770e25357bafd685ed8ecf1a94c87d70926b1ff .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/my_files/Kyber" 
	@${RM} ${OBJECTDIR}/my_files/Kyber/tests.o.d 
	@${RM} ${OBJECTDIR}/my_files/Kyber/tests.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  my_files/Kyber/tests.c  -o ${OBJECTDIR}/my_files/Kyber/tests.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/my_files/Kyber/tests.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/my_files/sh1106.o: my_files/sh1106.c  .generated_files/flags/default/91ebd9df3808fdb6b7c8e0974e4e156b9b871bad .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/my_files" 
	@${RM} ${OBJECTDIR}/my_files/sh1106.o.d 
	@${RM} ${OBJECTDIR}/my_files/sh1106.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  my_files/sh1106.c  -o ${OBJECTDIR}/my_files/sh1106.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/my_files/sh1106.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/my_files/comms.o: my_files/comms.c  .generated_files/flags/default/1b28dc72f4b3358a6e40b7f8dcff52fc7713cc9a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/my_files" 
	@${RM} ${OBJECTDIR}/my_files/comms.o.d 
	@${RM} ${OBJECTDIR}/my_files/comms.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  my_files/comms.c  -o ${OBJECTDIR}/my_files/comms.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/my_files/comms.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/73fa3ba7080af457ae56bc4084d8246584b1af98 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -Os -msmart-io=1 -Wall -msfr-warn=off   -fgnu89-inline  -mdfp="${DFP_DIR}/xc16"
	
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
