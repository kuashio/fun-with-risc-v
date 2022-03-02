/*********************************************************************
*                   (c) SEGGER Microcontroller GmbH                  *
*                        The Embedded Experts                        *
*                           www.segger.com                           *
**********************************************************************

-------------------------- END-OF-HEADER -----------------------------

File    : init.c
Purpose : Initializes system and ECLIC.

*/

#include "gd32vf103.h"
#include "riscv_encoding.h"
#include "n22_func.h"

/*********************************************************************
*
*       _init()
*
*  Function description
*    Initializes system and ECLIC
*/
void _init() {
  SystemInit();
  //
  // Initialize ECLIC
  //
  eclic_init(ECLIC_NUM_INTERRUPTS);
  eclic_mode_enable();
  set_csr(mstatus, MSTATUS_MIE);
}
