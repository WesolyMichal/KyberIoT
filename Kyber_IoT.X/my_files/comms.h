/* 
 * File:   comms.h
 * Author: mwes
 *
 * Created on November 9, 2026, 4:07 PM
 */

#ifndef COMMS_H
#define	COMMS_H

#include <stdint.h>

#ifdef	__cplusplus
extern "C" {
#endif

typedef union
{
    uint8_t allBits;
    struct
    {
        unsigned amDisconnecting :1;
        unsigned haveAPConnection :1;
        unsigned haveERROR :1;
        unsigned :5;
    };
} shared_networking_params_t;

extern shared_networking_params_t shared_networking_params;

void Comms_Init(void);

#ifdef	__cplusplus
}
#endif

#endif	/* COMMS_H */

