/**
 * Simulated Annealing for DISCOTANGO library.
 * Copyright (c) 2015 Danny McClanahan
 *
 * This program is free software; you can redistribute it and/or modify it under
 * the terms of the GNU General Public License as published by the Free Software
 * Foundation; either version 2 of the License, or (at your option) any later
 * version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU General Public License for more
 * details.
 *
 * You should have received a copy of the GNU General Public License along with
 * this program; if not, write to the Free Software Foundation, Inc., 59 Temple
 * Place, Suite 330, Boston, MA 02111-1307 USA
 */

#include "../common/error.h"
#include "siman.h"

int disco_siman(disco_fitness_fun fit,
                disco_input_data input,
                disco_output_data output) {
  DISCO_CHECK_ARGS(fit, input, output);
  return 0;
}
