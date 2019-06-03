/*
 * Copyright (C) 2018 ETH Zurich, University of Bologna and GreenWaves Technologies
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#ifndef __RT_RT_VOLTAGE_H__
#define __RT_RT_VOLTAGE_H__

/// @cond IMPLEM

#if PULP_CHIP != CHIP_VEGA

typedef enum {
  RT_VOLTAGE_DOMAIN_MAIN     = 0,
} rt_voltage_domain_e;

#endif

int rt_voltage_force(rt_voltage_domain_e domain, unsigned int new_voltage, rt_event_t *event);

/// @endcond

#endif