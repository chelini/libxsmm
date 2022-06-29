#!/usr/bin/env bash

HERE=$(cd "$(dirname "$0")" && pwd -P)
EXEC=${HERE}/../../scripts/tool_pexec.sh

export LIBXSMM_TARGET=avx512_vl256_clx
cd ${HERE} && cat <<EOM | ${EXEC} -c 3- "$@"
./kernel_test/binary_add_32b_eqld.sh
./kernel_test/binary_add_32b_gtld.sh
./kernel_test/binary_add_mixed_eqld.sh
./kernel_test/binary_add_mixed_gtld.sh
./kernel_test/binary_div_32b_eqld.sh
./kernel_test/binary_div_32b_gtld.sh
./kernel_test/binary_div_mixed_eqld.sh
./kernel_test/binary_div_mixed_gtld.sh
./kernel_test/binary_mul_32b_eqld.sh
./kernel_test/binary_mul_32b_gtld.sh
./kernel_test/binary_muladd_32b_eqld.sh
./kernel_test/binary_muladd_32b_gtld.sh
./kernel_test/binary_muladd_mixed_eqld.sh
./kernel_test/binary_muladd_mixed_gtld.sh
./kernel_test/binary_mul_mixed_eqld.sh
./kernel_test/binary_mul_mixed_gtld.sh
./kernel_test/binary_sub_32b_eqld.sh
./kernel_test/binary_sub_32b_gtld.sh
./kernel_test/binary_sub_mixed_eqld.sh
./kernel_test/binary_sub_mixed_gtld.sh
./kernel_test/unary_copy_32b_eqld.sh
./kernel_test/unary_copy_32b_gtld.sh
./kernel_test/unary_copy_mixed_eqld.sh
./kernel_test/unary_copy_mixed_gtld.sh
./kernel_test/unary_dropout_32b_eqld.sh
./kernel_test/unary_dropout_32b_gtld.sh
./kernel_test/unary_dropout_mixed_eqld.sh
./kernel_test/unary_dropout_mixed_gtld.sh
./kernel_test/unary_exp_32b_eqld.sh
./kernel_test/unary_exp_32b_gtld.sh
./kernel_test/unary_exp_mixed_eqld.sh
./kernel_test/unary_exp_mixed_gtld.sh
./kernel_test/unary_gelu_32b_eqld.sh
./kernel_test/unary_gelu_32b_gtld.sh
./kernel_test/unary_gelu_inv_32b_eqld.sh
./kernel_test/unary_gelu_inv_32b_gtld.sh
./kernel_test/unary_gelu_inv_mixed_eqld.sh
./kernel_test/unary_gelu_inv_mixed_gtld.sh
./kernel_test/unary_gelu_mixed_eqld.sh
./kernel_test/unary_gelu_mixed_gtld.sh
./kernel_test/unary_inc_32b_eqld.sh
./kernel_test/unary_inc_32b_gtld.sh
./kernel_test/unary_inc_mixed_eqld.sh
./kernel_test/unary_inc_mixed_gtld.sh
./kernel_test/unary_negate_32b_eqld.sh
./kernel_test/unary_negate_32b_gtld.sh
./kernel_test/unary_negate_mixed_eqld.sh
./kernel_test/unary_negate_mixed_gtld.sh
./kernel_test/unary_rcp_32b_eqld.sh
./kernel_test/unary_rcp_32b_gtld.sh
./kernel_test/unary_rcp_mixed_eqld.sh
./kernel_test/unary_rcp_mixed_gtld.sh
./kernel_test/unary_rcp_sqrt_32b_eqld.sh
./kernel_test/unary_rcp_sqrt_32b_gtld.sh
./kernel_test/unary_rcp_sqrt_mixed_eqld.sh
./kernel_test/unary_rcp_sqrt_mixed_gtld.sh
./kernel_test/unary_relu_32b_eqld.sh
./kernel_test/unary_relu_32b_gtld.sh
./kernel_test/unary_relu_mixed_eqld.sh
./kernel_test/unary_relu_mixed_gtld.sh
./kernel_test/unary_replicate_col_var_32b_eqld.sh
./kernel_test/unary_replicate_col_var_32b_gtld.sh
./kernel_test/unary_replicate_col_var_mixed_eqld.sh
./kernel_test/unary_replicate_col_var_mixed_gtld.sh
./kernel_test/unary_sigmoid_32b_eqld.sh
./kernel_test/unary_sigmoid_32b_gtld.sh
./kernel_test/unary_sigmoid_inv_32b_eqld.sh
./kernel_test/unary_sigmoid_inv_32b_gtld.sh
./kernel_test/unary_sigmoid_inv_mixed_eqld.sh
./kernel_test/unary_sigmoid_inv_mixed_gtld.sh
./kernel_test/unary_sigmoid_mixed_eqld.sh
./kernel_test/unary_sigmoid_mixed_gtld.sh
./kernel_test/unary_sqrt_32b_eqld.sh
./kernel_test/unary_sqrt_32b_gtld.sh
./kernel_test/unary_sqrt_mixed_eqld.sh
./kernel_test/unary_sqrt_mixed_gtld.sh
./kernel_test/unary_tanh_32b_eqld.sh
./kernel_test/unary_tanh_32b_gtld.sh
./kernel_test/unary_tanh_inv_32b_eqld.sh
./kernel_test/unary_tanh_inv_32b_gtld.sh
./kernel_test/unary_tanh_inv_mixed_eqld.sh
./kernel_test/unary_tanh_inv_mixed_gtld.sh
./kernel_test/unary_tanh_mixed_eqld.sh
./kernel_test/unary_tanh_mixed_gtld.sh
./kernel_test/unary_trans_08b_eqld.sh
./kernel_test/unary_trans_08b_gtld.sh
./kernel_test/unary_trans_16b_eqld.sh
./kernel_test/unary_trans_16b_gtld.sh
./kernel_test/unary_trans_32b_eqld.sh
./kernel_test/unary_trans_32b_gtld.sh
./kernel_test/unary_trans_64b_eqld.sh
./kernel_test/unary_trans_64b_gtld.sh
./kernel_test/unary_trans_padm_mod2_16b_eqld.sh
./kernel_test/unary_trans_padm_mod2_16b_gtld.sh
./kernel_test/unary_trans_padnm_mod2_16b_eqld.sh
./kernel_test/unary_trans_padnm_mod2_16b_gtld.sh
./kernel_test/unary_trans_padn_mod2_16b_eqld.sh
./kernel_test/unary_trans_padn_mod2_16b_gtld.sh
./kernel_test/unary_trans_padm_mod4_08b_eqld.sh
./kernel_test/unary_trans_padm_mod4_08b_gtld.sh
./kernel_test/unary_trans_padnm_mod4_08b_eqld.sh
./kernel_test/unary_trans_padnm_mod4_08b_gtld.sh
./kernel_test/unary_trans_padn_mod4_08b_eqld.sh
./kernel_test/unary_trans_padn_mod4_08b_gtld.sh
./kernel_test/unary_vnni_16b_eqld.sh
./kernel_test/unary_vnni_16b_gtld.sh
./kernel_test/unary_vnni_08b_eqld.sh
./kernel_test/unary_vnni_08b_gtld.sh
./kernel_test/unary_vnnitrans_16b_eqld.sh
./kernel_test/unary_vnnitrans_16b_gtld.sh
./kernel_test/unary_vnnitrans_08b_eqld.sh
./kernel_test/unary_vnnitrans_08b_gtld.sh
./kernel_test/unary_x2_32b_eqld.sh
./kernel_test/unary_x2_32b_gtld.sh
./kernel_test/unary_x2_mixed_eqld.sh
./kernel_test/unary_x2_mixed_gtld.sh
./kernel_test/unary_xor_32b_eqld.sh
./kernel_test/unary_xor_32b_gtld.sh
./kernel_test/unary_xor_mixed_eqld.sh
./kernel_test/unary_xor_mixed_gtld.sh
./kernel_test/reduce_add_cols_x_16b_eqld.sh
./kernel_test/reduce_add_cols_x_16b_gtld.sh
./kernel_test/reduce_add_cols_x2_16b_eqld.sh
./kernel_test/reduce_add_cols_x2_16b_gtld.sh
./kernel_test/reduce_add_cols_x2_32b_eqld.sh
./kernel_test/reduce_add_cols_x2_32b_gtld.sh
./kernel_test/reduce_add_cols_x_32b_eqld.sh
./kernel_test/reduce_add_cols_x_32b_gtld.sh
./kernel_test/reduce_add_cols_x_x2_16b_eqld.sh
./kernel_test/reduce_add_cols_x_x2_16b_gtld.sh
./kernel_test/reduce_add_cols_x_x2_32b_eqld.sh
./kernel_test/reduce_add_cols_x_x2_32b_gtld.sh
./kernel_test/reduce_add_idxcols_16b_eqld.sh
./kernel_test/reduce_add_idxcols_16b_gtld.sh
./kernel_test/reduce_add_idxcols_32b_eqld.sh
./kernel_test/reduce_add_idxcols_32b_gtld.sh
./kernel_test/reduce_add_rows_x_16b_eqld.sh
./kernel_test/reduce_add_rows_x_16b_gtld.sh
./kernel_test/reduce_add_rows_x2_16b_eqld.sh
./kernel_test/reduce_add_rows_x2_16b_gtld.sh
./kernel_test/reduce_add_rows_x2_32b_eqld.sh
./kernel_test/reduce_add_rows_x2_32b_gtld.sh
./kernel_test/reduce_add_rows_x_32b_eqld.sh
./kernel_test/reduce_add_rows_x_32b_gtld.sh
./kernel_test/reduce_add_rows_x_x2_16b_eqld.sh
./kernel_test/reduce_add_rows_x_x2_16b_gtld.sh
./kernel_test/reduce_add_rows_x_x2_32b_eqld.sh
./kernel_test/reduce_add_rows_x_x2_32b_gtld.sh
./kernel_test/init_acc_reduce_add_cols_x_16b_eqld.sh
./kernel_test/init_acc_reduce_add_cols_x_16b_gtld.sh
./kernel_test/init_acc_reduce_add_cols_x2_16b_eqld.sh
./kernel_test/init_acc_reduce_add_cols_x2_16b_gtld.sh
./kernel_test/init_acc_reduce_add_cols_x2_32b_eqld.sh
./kernel_test/init_acc_reduce_add_cols_x2_32b_gtld.sh
./kernel_test/init_acc_reduce_add_cols_x_32b_eqld.sh
./kernel_test/init_acc_reduce_add_cols_x_32b_gtld.sh
./kernel_test/init_acc_reduce_add_cols_x_x2_16b_eqld.sh
./kernel_test/init_acc_reduce_add_cols_x_x2_16b_gtld.sh
./kernel_test/init_acc_reduce_add_cols_x_x2_32b_eqld.sh
./kernel_test/init_acc_reduce_add_cols_x_x2_32b_gtld.sh
./kernel_test/init_acc_reduce_add_rows_x_16b_eqld.sh
./kernel_test/init_acc_reduce_add_rows_x_16b_gtld.sh
./kernel_test/init_acc_reduce_add_rows_x2_16b_eqld.sh
./kernel_test/init_acc_reduce_add_rows_x2_16b_gtld.sh
./kernel_test/init_acc_reduce_add_rows_x2_32b_eqld.sh
./kernel_test/init_acc_reduce_add_rows_x2_32b_gtld.sh
./kernel_test/init_acc_reduce_add_rows_x_32b_eqld.sh
./kernel_test/init_acc_reduce_add_rows_x_32b_gtld.sh
./kernel_test/init_acc_reduce_add_rows_x_x2_16b_eqld.sh
./kernel_test/init_acc_reduce_add_rows_x_x2_16b_gtld.sh
./kernel_test/init_acc_reduce_add_rows_x_x2_32b_eqld.sh
./kernel_test/init_acc_reduce_add_rows_x_x2_32b_gtld.sh
./kernel_test/reduce_max_cols_16b_eqld.sh
./kernel_test/reduce_max_cols_16b_gtld.sh
./kernel_test/reduce_max_cols_32b_eqld.sh
./kernel_test/reduce_max_cols_32b_gtld.sh
./kernel_test/reduce_max_rows_16b_eqld.sh
./kernel_test/reduce_max_rows_16b_gtld.sh
./kernel_test/reduce_max_rows_32b_eqld.sh
./kernel_test/reduce_max_rows_32b_gtld.sh
./kernel_test/unary_gather_16b_eqld.sh
./kernel_test/unary_gather_16b_gtld.sh
./kernel_test/unary_gather_32b_eqld.sh
./kernel_test/unary_gather_32b_gtld.sh
./kernel_test/unary_scatter_16b_eqld.sh
./kernel_test/unary_scatter_16b_gtld.sh
./kernel_test/unary_scatter_32b_eqld.sh
./kernel_test/unary_scatter_32b_gtld.sh
EOM
RESULT=$?

rm -f tmp.??????????
unset LIBXSMM_TARGET
exit ${RESULT}
