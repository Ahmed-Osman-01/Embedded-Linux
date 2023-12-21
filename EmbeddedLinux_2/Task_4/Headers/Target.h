/************************************************************************************************************************************************/
/* File             :       PORT.h                                                                                                              */
/* AUTHOR           :       Ahmed Osman                                                                                                         */
/* Origin Date      :       2/12/2023                                                                                                           */
/* Description      :       This files is used to configure the available Ports and Pins in the current target                                  */
/* Target           :       Atmega Family                                                                                                       */
/************************************************************************************************************************************************/

#ifndef LIB_TARGET_H_
#define LIB_TARGET_H_

/************************************************************************************************************************************************/
/* THESE VALUES MUST NOT BE CHANGED!!!!                                                                                                         */
/************************************************************************************************************************************************/
#define NOT_EXIST      0
#define EXIST          1

/************************************************************************************************************************************************/
/* Please configure if the PORT exists or not in your taget */
/************************************************************************************************************************************************/
#define PORT_A_EXIST        EXIST
#define PORT_B_EXIST        EXIST 
#define PORT_C_EXIST        EXIST
#define PORT_D_EXIST        EXIST

/************************************************************************************************************************************************/
/* Please configure if PINS 6 and 7 exist or not in your target as some tagets have only pins from 0 to 5                                       */
/************************************************************************************************************************************************/
#define PIN_6_EXIST         EXIST
#define PIN_7_EXIST         EXIST



#endif /* 00_LIB_TARGET_H_ */
