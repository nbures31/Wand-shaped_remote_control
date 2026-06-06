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
FINAL_IMAGE=${DISTDIR}/MagicStick.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/MagicStick.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=../ai-code/edge-impulse-sdk/classifier/ei_run_classifier_c.cpp ../ai-code/edge-impulse-sdk/dsp/dct/fast-dct-fft.cpp ../ai-code/edge-impulse-sdk/dsp/image/processing.cpp ../ai-code/edge-impulse-sdk/dsp/kissfft/kiss_fft.cpp ../ai-code/edge-impulse-sdk/dsp/kissfft/kiss_fftr.cpp ../ai-code/edge-impulse-sdk/dsp/memory.cpp ../ai-code/edge-impulse-sdk/porting/posix/debug_log.cpp ../ai-code/edge-impulse-sdk/porting/posix/ei_classifier_porting.cpp ../ai-code/edge-impulse-sdk/tensorflow/lite/c/common.c ../ai-code/edge-impulse-sdk/tensorflow/lite/core/api/common.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/core/api/error_reporter.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/core/api/flatbuffer_conversions.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/core/api/op_resolver.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/core/api/tensor_utils.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/kernels/custom/tree_ensemble_classifier.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/kernels/internal/portable_tensor_utils.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/kernels/internal/quantization_util.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/kernels/internal/reference_portable_tensor_utils.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/kernels/internal/tensor_utils.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/kernels/kernel_util_lite.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/activations.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/activations_common.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/add.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/add_common.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/add_n.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/arg_min_max.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/assign_variable.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/batch_matmul.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/batch_to_space_nd.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/broadcast_args.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/broadcast_to.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/call_once.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/cast.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/ceil.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/circular_buffer.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/circular_buffer_common.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/comparisons.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/complex_abs.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/concatenation.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/conv.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/conv_common.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/cumsum.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/depthwise_conv.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/depthwise_conv_common.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/depth_to_space.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/dequantize.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/dequantize_common.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/detection_postprocess.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/div.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/elementwise.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/elu.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/ethosu.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/exp.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/expand_dims.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/fill.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/floor.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/floor_div.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/floor_mod.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/fully_connected.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/fully_connected_common.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/gather.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/gather_nd.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/hard_swish.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/hard_swish_common.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/if.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/kernel_runner.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/kernel_util_micro.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/l2norm.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/l2_pool_2d.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/leaky_relu.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/leaky_relu_common.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/logical.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/logical_common.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/logistic.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/logistic_common.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/log_softmax.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/lstm_eval.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/maximum_minimum.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/micro_tensor_utils.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/mirror_pad.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/mli_interface.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/mli_slicers.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/mul.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/mul_common.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/neg.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/pack.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/pad.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/pooling.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/pooling_common.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/prelu.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/prelu_common.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/quantize.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/quantize_common.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/read_variable.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/real.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/reduce.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/reduce_common.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/reshape.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/resize_bilinear.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/resize_nearest_neighbor.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/rfft2d.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/round.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/scatter_nd.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/scratch_buffers.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/scratch_buf_mgr.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/select.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/shape.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/slice.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/softmax.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/softmax_common.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/space_to_batch_nd.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/space_to_depth.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/split.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/split_v.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/squared_difference.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/squeeze.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/strided_slice.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/sub.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/sub_common.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/svdf.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/svdf_common.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/tanh.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/tile.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/topk_v2.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/transpose.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/transpose_conv.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/tree_ensemble_classifier.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/unidirectional_sequence_lstm.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/unpack.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/var_handle.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/while.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/zeros_like.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/memory_planner/greedy_memory_planner.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/memory_planner/linear_memory_planner.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/memory_planner/non_persistent_buffer_planner_shim.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/all_ops_resolver.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/fake_micro_context.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/flatbuffer_conversions_bridge.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/flatbuffer_utils.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/memory_helpers.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/micro_allocation_info.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/micro_allocator.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/micro_context.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/micro_error_reporter.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/micro_graph.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/micro_interpreter.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/micro_log.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/micro_profiler.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/micro_resource_variable.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/micro_string.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/micro_time.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/micro_utils.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/mock_micro_graph.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/non_persistent_arena_buffer_allocator.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/op_resolver_bridge.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/persistent_arena_buffer_allocator.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/recording_micro_allocator.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/recording_single_arena_buffer_allocator.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/schema_utils.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/single_arena_buffer_allocator.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/system_setup.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/test_helpers.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/test_helper_custom_ops.cc ../ai-code/tflite-model/tflite_learn_950386_5_compiled.cpp ../src/config/default/peripheral/adc/plib_adc.c ../src/config/default/peripheral/clk/plib_clk.c ../src/config/default/peripheral/coretimer/plib_coretimer.c ../src/config/default/peripheral/evic/plib_evic.c ../src/config/default/peripheral/gpio/plib_gpio.c ../src/config/default/peripheral/uart/plib_uart1.c ../src/config/default/stdio/xc32_monitor.c ../src/config/default/initialization.c ../src/config/default/interrupts.c ../src/config/default/exceptions.c Main.cpp ../ai-code/ei_pic32_porting.cpp

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/165077998/ei_run_classifier_c.o ${OBJECTDIR}/_ext/307672522/fast-dct-fft.o ${OBJECTDIR}/_ext/684350332/processing.o ${OBJECTDIR}/_ext/2086818665/kiss_fft.o ${OBJECTDIR}/_ext/2086818665/kiss_fftr.o ${OBJECTDIR}/_ext/1032610032/memory.o ${OBJECTDIR}/_ext/342965028/debug_log.o ${OBJECTDIR}/_ext/342965028/ei_classifier_porting.o ${OBJECTDIR}/_ext/678231495/common.o ${OBJECTDIR}/_ext/1467219692/common.o ${OBJECTDIR}/_ext/1467219692/error_reporter.o ${OBJECTDIR}/_ext/1467219692/flatbuffer_conversions.o ${OBJECTDIR}/_ext/1467219692/op_resolver.o ${OBJECTDIR}/_ext/1467219692/tensor_utils.o ${OBJECTDIR}/_ext/484606540/tree_ensemble_classifier.o ${OBJECTDIR}/_ext/1886178240/portable_tensor_utils.o ${OBJECTDIR}/_ext/1886178240/quantization_util.o ${OBJECTDIR}/_ext/1886178240/reference_portable_tensor_utils.o ${OBJECTDIR}/_ext/1886178240/tensor_utils.o ${OBJECTDIR}/_ext/1961753300/kernel_util_lite.o ${OBJECTDIR}/_ext/897492065/activations.o ${OBJECTDIR}/_ext/897492065/activations_common.o ${OBJECTDIR}/_ext/897492065/add.o ${OBJECTDIR}/_ext/897492065/add_common.o ${OBJECTDIR}/_ext/897492065/add_n.o ${OBJECTDIR}/_ext/897492065/arg_min_max.o ${OBJECTDIR}/_ext/897492065/assign_variable.o ${OBJECTDIR}/_ext/897492065/batch_matmul.o ${OBJECTDIR}/_ext/897492065/batch_to_space_nd.o ${OBJECTDIR}/_ext/897492065/broadcast_args.o ${OBJECTDIR}/_ext/897492065/broadcast_to.o ${OBJECTDIR}/_ext/897492065/call_once.o ${OBJECTDIR}/_ext/897492065/cast.o ${OBJECTDIR}/_ext/897492065/ceil.o ${OBJECTDIR}/_ext/897492065/circular_buffer.o ${OBJECTDIR}/_ext/897492065/circular_buffer_common.o ${OBJECTDIR}/_ext/897492065/comparisons.o ${OBJECTDIR}/_ext/897492065/complex_abs.o ${OBJECTDIR}/_ext/897492065/concatenation.o ${OBJECTDIR}/_ext/897492065/conv.o ${OBJECTDIR}/_ext/897492065/conv_common.o ${OBJECTDIR}/_ext/897492065/cumsum.o ${OBJECTDIR}/_ext/897492065/depthwise_conv.o ${OBJECTDIR}/_ext/897492065/depthwise_conv_common.o ${OBJECTDIR}/_ext/897492065/depth_to_space.o ${OBJECTDIR}/_ext/897492065/dequantize.o ${OBJECTDIR}/_ext/897492065/dequantize_common.o ${OBJECTDIR}/_ext/897492065/detection_postprocess.o ${OBJECTDIR}/_ext/897492065/div.o ${OBJECTDIR}/_ext/897492065/elementwise.o ${OBJECTDIR}/_ext/897492065/elu.o ${OBJECTDIR}/_ext/897492065/ethosu.o ${OBJECTDIR}/_ext/897492065/exp.o ${OBJECTDIR}/_ext/897492065/expand_dims.o ${OBJECTDIR}/_ext/897492065/fill.o ${OBJECTDIR}/_ext/897492065/floor.o ${OBJECTDIR}/_ext/897492065/floor_div.o ${OBJECTDIR}/_ext/897492065/floor_mod.o ${OBJECTDIR}/_ext/897492065/fully_connected.o ${OBJECTDIR}/_ext/897492065/fully_connected_common.o ${OBJECTDIR}/_ext/897492065/gather.o ${OBJECTDIR}/_ext/897492065/gather_nd.o ${OBJECTDIR}/_ext/897492065/hard_swish.o ${OBJECTDIR}/_ext/897492065/hard_swish_common.o ${OBJECTDIR}/_ext/897492065/if.o ${OBJECTDIR}/_ext/897492065/kernel_runner.o ${OBJECTDIR}/_ext/897492065/kernel_util_micro.o ${OBJECTDIR}/_ext/897492065/l2norm.o ${OBJECTDIR}/_ext/897492065/l2_pool_2d.o ${OBJECTDIR}/_ext/897492065/leaky_relu.o ${OBJECTDIR}/_ext/897492065/leaky_relu_common.o ${OBJECTDIR}/_ext/897492065/logical.o ${OBJECTDIR}/_ext/897492065/logical_common.o ${OBJECTDIR}/_ext/897492065/logistic.o ${OBJECTDIR}/_ext/897492065/logistic_common.o ${OBJECTDIR}/_ext/897492065/log_softmax.o ${OBJECTDIR}/_ext/897492065/lstm_eval.o ${OBJECTDIR}/_ext/897492065/maximum_minimum.o ${OBJECTDIR}/_ext/897492065/micro_tensor_utils.o ${OBJECTDIR}/_ext/897492065/mirror_pad.o ${OBJECTDIR}/_ext/897492065/mli_interface.o ${OBJECTDIR}/_ext/897492065/mli_slicers.o ${OBJECTDIR}/_ext/897492065/mul.o ${OBJECTDIR}/_ext/897492065/mul_common.o ${OBJECTDIR}/_ext/897492065/neg.o ${OBJECTDIR}/_ext/897492065/pack.o ${OBJECTDIR}/_ext/897492065/pad.o ${OBJECTDIR}/_ext/897492065/pooling.o ${OBJECTDIR}/_ext/897492065/pooling_common.o ${OBJECTDIR}/_ext/897492065/prelu.o ${OBJECTDIR}/_ext/897492065/prelu_common.o ${OBJECTDIR}/_ext/897492065/quantize.o ${OBJECTDIR}/_ext/897492065/quantize_common.o ${OBJECTDIR}/_ext/897492065/read_variable.o ${OBJECTDIR}/_ext/897492065/real.o ${OBJECTDIR}/_ext/897492065/reduce.o ${OBJECTDIR}/_ext/897492065/reduce_common.o ${OBJECTDIR}/_ext/897492065/reshape.o ${OBJECTDIR}/_ext/897492065/resize_bilinear.o ${OBJECTDIR}/_ext/897492065/resize_nearest_neighbor.o ${OBJECTDIR}/_ext/897492065/rfft2d.o ${OBJECTDIR}/_ext/897492065/round.o ${OBJECTDIR}/_ext/897492065/scatter_nd.o ${OBJECTDIR}/_ext/897492065/scratch_buffers.o ${OBJECTDIR}/_ext/897492065/scratch_buf_mgr.o ${OBJECTDIR}/_ext/897492065/select.o ${OBJECTDIR}/_ext/897492065/shape.o ${OBJECTDIR}/_ext/897492065/slice.o ${OBJECTDIR}/_ext/897492065/softmax.o ${OBJECTDIR}/_ext/897492065/softmax_common.o ${OBJECTDIR}/_ext/897492065/space_to_batch_nd.o ${OBJECTDIR}/_ext/897492065/space_to_depth.o ${OBJECTDIR}/_ext/897492065/split.o ${OBJECTDIR}/_ext/897492065/split_v.o ${OBJECTDIR}/_ext/897492065/squared_difference.o ${OBJECTDIR}/_ext/897492065/squeeze.o ${OBJECTDIR}/_ext/897492065/strided_slice.o ${OBJECTDIR}/_ext/897492065/sub.o ${OBJECTDIR}/_ext/897492065/sub_common.o ${OBJECTDIR}/_ext/897492065/svdf.o ${OBJECTDIR}/_ext/897492065/svdf_common.o ${OBJECTDIR}/_ext/897492065/tanh.o ${OBJECTDIR}/_ext/897492065/tile.o ${OBJECTDIR}/_ext/897492065/topk_v2.o ${OBJECTDIR}/_ext/897492065/transpose.o ${OBJECTDIR}/_ext/897492065/transpose_conv.o ${OBJECTDIR}/_ext/897492065/tree_ensemble_classifier.o ${OBJECTDIR}/_ext/897492065/unidirectional_sequence_lstm.o ${OBJECTDIR}/_ext/897492065/unpack.o ${OBJECTDIR}/_ext/897492065/var_handle.o ${OBJECTDIR}/_ext/897492065/while.o ${OBJECTDIR}/_ext/897492065/zeros_like.o ${OBJECTDIR}/_ext/1004033623/greedy_memory_planner.o ${OBJECTDIR}/_ext/1004033623/linear_memory_planner.o ${OBJECTDIR}/_ext/1004033623/non_persistent_buffer_planner_shim.o ${OBJECTDIR}/_ext/165452390/all_ops_resolver.o ${OBJECTDIR}/_ext/165452390/fake_micro_context.o ${OBJECTDIR}/_ext/165452390/flatbuffer_conversions_bridge.o ${OBJECTDIR}/_ext/165452390/flatbuffer_utils.o ${OBJECTDIR}/_ext/165452390/memory_helpers.o ${OBJECTDIR}/_ext/165452390/micro_allocation_info.o ${OBJECTDIR}/_ext/165452390/micro_allocator.o ${OBJECTDIR}/_ext/165452390/micro_context.o ${OBJECTDIR}/_ext/165452390/micro_error_reporter.o ${OBJECTDIR}/_ext/165452390/micro_graph.o ${OBJECTDIR}/_ext/165452390/micro_interpreter.o ${OBJECTDIR}/_ext/165452390/micro_log.o ${OBJECTDIR}/_ext/165452390/micro_profiler.o ${OBJECTDIR}/_ext/165452390/micro_resource_variable.o ${OBJECTDIR}/_ext/165452390/micro_string.o ${OBJECTDIR}/_ext/165452390/micro_time.o ${OBJECTDIR}/_ext/165452390/micro_utils.o ${OBJECTDIR}/_ext/165452390/mock_micro_graph.o ${OBJECTDIR}/_ext/165452390/non_persistent_arena_buffer_allocator.o ${OBJECTDIR}/_ext/165452390/op_resolver_bridge.o ${OBJECTDIR}/_ext/165452390/persistent_arena_buffer_allocator.o ${OBJECTDIR}/_ext/165452390/recording_micro_allocator.o ${OBJECTDIR}/_ext/165452390/recording_single_arena_buffer_allocator.o ${OBJECTDIR}/_ext/165452390/schema_utils.o ${OBJECTDIR}/_ext/165452390/single_arena_buffer_allocator.o ${OBJECTDIR}/_ext/165452390/system_setup.o ${OBJECTDIR}/_ext/165452390/test_helpers.o ${OBJECTDIR}/_ext/165452390/test_helper_custom_ops.o ${OBJECTDIR}/_ext/1889185960/tflite_learn_950386_5_compiled.o ${OBJECTDIR}/_ext/60163342/plib_adc.o ${OBJECTDIR}/_ext/60165520/plib_clk.o ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ${OBJECTDIR}/_ext/1865657120/plib_uart1.o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ${OBJECTDIR}/_ext/1171490990/initialization.o ${OBJECTDIR}/_ext/1171490990/interrupts.o ${OBJECTDIR}/_ext/1171490990/exceptions.o ${OBJECTDIR}/Main.o ${OBJECTDIR}/_ext/1558683427/ei_pic32_porting.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/165077998/ei_run_classifier_c.o.d ${OBJECTDIR}/_ext/307672522/fast-dct-fft.o.d ${OBJECTDIR}/_ext/684350332/processing.o.d ${OBJECTDIR}/_ext/2086818665/kiss_fft.o.d ${OBJECTDIR}/_ext/2086818665/kiss_fftr.o.d ${OBJECTDIR}/_ext/1032610032/memory.o.d ${OBJECTDIR}/_ext/342965028/debug_log.o.d ${OBJECTDIR}/_ext/342965028/ei_classifier_porting.o.d ${OBJECTDIR}/_ext/678231495/common.o.d ${OBJECTDIR}/_ext/1467219692/common.o.d ${OBJECTDIR}/_ext/1467219692/error_reporter.o.d ${OBJECTDIR}/_ext/1467219692/flatbuffer_conversions.o.d ${OBJECTDIR}/_ext/1467219692/op_resolver.o.d ${OBJECTDIR}/_ext/1467219692/tensor_utils.o.d ${OBJECTDIR}/_ext/484606540/tree_ensemble_classifier.o.d ${OBJECTDIR}/_ext/1886178240/portable_tensor_utils.o.d ${OBJECTDIR}/_ext/1886178240/quantization_util.o.d ${OBJECTDIR}/_ext/1886178240/reference_portable_tensor_utils.o.d ${OBJECTDIR}/_ext/1886178240/tensor_utils.o.d ${OBJECTDIR}/_ext/1961753300/kernel_util_lite.o.d ${OBJECTDIR}/_ext/897492065/activations.o.d ${OBJECTDIR}/_ext/897492065/activations_common.o.d ${OBJECTDIR}/_ext/897492065/add.o.d ${OBJECTDIR}/_ext/897492065/add_common.o.d ${OBJECTDIR}/_ext/897492065/add_n.o.d ${OBJECTDIR}/_ext/897492065/arg_min_max.o.d ${OBJECTDIR}/_ext/897492065/assign_variable.o.d ${OBJECTDIR}/_ext/897492065/batch_matmul.o.d ${OBJECTDIR}/_ext/897492065/batch_to_space_nd.o.d ${OBJECTDIR}/_ext/897492065/broadcast_args.o.d ${OBJECTDIR}/_ext/897492065/broadcast_to.o.d ${OBJECTDIR}/_ext/897492065/call_once.o.d ${OBJECTDIR}/_ext/897492065/cast.o.d ${OBJECTDIR}/_ext/897492065/ceil.o.d ${OBJECTDIR}/_ext/897492065/circular_buffer.o.d ${OBJECTDIR}/_ext/897492065/circular_buffer_common.o.d ${OBJECTDIR}/_ext/897492065/comparisons.o.d ${OBJECTDIR}/_ext/897492065/complex_abs.o.d ${OBJECTDIR}/_ext/897492065/concatenation.o.d ${OBJECTDIR}/_ext/897492065/conv.o.d ${OBJECTDIR}/_ext/897492065/conv_common.o.d ${OBJECTDIR}/_ext/897492065/cumsum.o.d ${OBJECTDIR}/_ext/897492065/depthwise_conv.o.d ${OBJECTDIR}/_ext/897492065/depthwise_conv_common.o.d ${OBJECTDIR}/_ext/897492065/depth_to_space.o.d ${OBJECTDIR}/_ext/897492065/dequantize.o.d ${OBJECTDIR}/_ext/897492065/dequantize_common.o.d ${OBJECTDIR}/_ext/897492065/detection_postprocess.o.d ${OBJECTDIR}/_ext/897492065/div.o.d ${OBJECTDIR}/_ext/897492065/elementwise.o.d ${OBJECTDIR}/_ext/897492065/elu.o.d ${OBJECTDIR}/_ext/897492065/ethosu.o.d ${OBJECTDIR}/_ext/897492065/exp.o.d ${OBJECTDIR}/_ext/897492065/expand_dims.o.d ${OBJECTDIR}/_ext/897492065/fill.o.d ${OBJECTDIR}/_ext/897492065/floor.o.d ${OBJECTDIR}/_ext/897492065/floor_div.o.d ${OBJECTDIR}/_ext/897492065/floor_mod.o.d ${OBJECTDIR}/_ext/897492065/fully_connected.o.d ${OBJECTDIR}/_ext/897492065/fully_connected_common.o.d ${OBJECTDIR}/_ext/897492065/gather.o.d ${OBJECTDIR}/_ext/897492065/gather_nd.o.d ${OBJECTDIR}/_ext/897492065/hard_swish.o.d ${OBJECTDIR}/_ext/897492065/hard_swish_common.o.d ${OBJECTDIR}/_ext/897492065/if.o.d ${OBJECTDIR}/_ext/897492065/kernel_runner.o.d ${OBJECTDIR}/_ext/897492065/kernel_util_micro.o.d ${OBJECTDIR}/_ext/897492065/l2norm.o.d ${OBJECTDIR}/_ext/897492065/l2_pool_2d.o.d ${OBJECTDIR}/_ext/897492065/leaky_relu.o.d ${OBJECTDIR}/_ext/897492065/leaky_relu_common.o.d ${OBJECTDIR}/_ext/897492065/logical.o.d ${OBJECTDIR}/_ext/897492065/logical_common.o.d ${OBJECTDIR}/_ext/897492065/logistic.o.d ${OBJECTDIR}/_ext/897492065/logistic_common.o.d ${OBJECTDIR}/_ext/897492065/log_softmax.o.d ${OBJECTDIR}/_ext/897492065/lstm_eval.o.d ${OBJECTDIR}/_ext/897492065/maximum_minimum.o.d ${OBJECTDIR}/_ext/897492065/micro_tensor_utils.o.d ${OBJECTDIR}/_ext/897492065/mirror_pad.o.d ${OBJECTDIR}/_ext/897492065/mli_interface.o.d ${OBJECTDIR}/_ext/897492065/mli_slicers.o.d ${OBJECTDIR}/_ext/897492065/mul.o.d ${OBJECTDIR}/_ext/897492065/mul_common.o.d ${OBJECTDIR}/_ext/897492065/neg.o.d ${OBJECTDIR}/_ext/897492065/pack.o.d ${OBJECTDIR}/_ext/897492065/pad.o.d ${OBJECTDIR}/_ext/897492065/pooling.o.d ${OBJECTDIR}/_ext/897492065/pooling_common.o.d ${OBJECTDIR}/_ext/897492065/prelu.o.d ${OBJECTDIR}/_ext/897492065/prelu_common.o.d ${OBJECTDIR}/_ext/897492065/quantize.o.d ${OBJECTDIR}/_ext/897492065/quantize_common.o.d ${OBJECTDIR}/_ext/897492065/read_variable.o.d ${OBJECTDIR}/_ext/897492065/real.o.d ${OBJECTDIR}/_ext/897492065/reduce.o.d ${OBJECTDIR}/_ext/897492065/reduce_common.o.d ${OBJECTDIR}/_ext/897492065/reshape.o.d ${OBJECTDIR}/_ext/897492065/resize_bilinear.o.d ${OBJECTDIR}/_ext/897492065/resize_nearest_neighbor.o.d ${OBJECTDIR}/_ext/897492065/rfft2d.o.d ${OBJECTDIR}/_ext/897492065/round.o.d ${OBJECTDIR}/_ext/897492065/scatter_nd.o.d ${OBJECTDIR}/_ext/897492065/scratch_buffers.o.d ${OBJECTDIR}/_ext/897492065/scratch_buf_mgr.o.d ${OBJECTDIR}/_ext/897492065/select.o.d ${OBJECTDIR}/_ext/897492065/shape.o.d ${OBJECTDIR}/_ext/897492065/slice.o.d ${OBJECTDIR}/_ext/897492065/softmax.o.d ${OBJECTDIR}/_ext/897492065/softmax_common.o.d ${OBJECTDIR}/_ext/897492065/space_to_batch_nd.o.d ${OBJECTDIR}/_ext/897492065/space_to_depth.o.d ${OBJECTDIR}/_ext/897492065/split.o.d ${OBJECTDIR}/_ext/897492065/split_v.o.d ${OBJECTDIR}/_ext/897492065/squared_difference.o.d ${OBJECTDIR}/_ext/897492065/squeeze.o.d ${OBJECTDIR}/_ext/897492065/strided_slice.o.d ${OBJECTDIR}/_ext/897492065/sub.o.d ${OBJECTDIR}/_ext/897492065/sub_common.o.d ${OBJECTDIR}/_ext/897492065/svdf.o.d ${OBJECTDIR}/_ext/897492065/svdf_common.o.d ${OBJECTDIR}/_ext/897492065/tanh.o.d ${OBJECTDIR}/_ext/897492065/tile.o.d ${OBJECTDIR}/_ext/897492065/topk_v2.o.d ${OBJECTDIR}/_ext/897492065/transpose.o.d ${OBJECTDIR}/_ext/897492065/transpose_conv.o.d ${OBJECTDIR}/_ext/897492065/tree_ensemble_classifier.o.d ${OBJECTDIR}/_ext/897492065/unidirectional_sequence_lstm.o.d ${OBJECTDIR}/_ext/897492065/unpack.o.d ${OBJECTDIR}/_ext/897492065/var_handle.o.d ${OBJECTDIR}/_ext/897492065/while.o.d ${OBJECTDIR}/_ext/897492065/zeros_like.o.d ${OBJECTDIR}/_ext/1004033623/greedy_memory_planner.o.d ${OBJECTDIR}/_ext/1004033623/linear_memory_planner.o.d ${OBJECTDIR}/_ext/1004033623/non_persistent_buffer_planner_shim.o.d ${OBJECTDIR}/_ext/165452390/all_ops_resolver.o.d ${OBJECTDIR}/_ext/165452390/fake_micro_context.o.d ${OBJECTDIR}/_ext/165452390/flatbuffer_conversions_bridge.o.d ${OBJECTDIR}/_ext/165452390/flatbuffer_utils.o.d ${OBJECTDIR}/_ext/165452390/memory_helpers.o.d ${OBJECTDIR}/_ext/165452390/micro_allocation_info.o.d ${OBJECTDIR}/_ext/165452390/micro_allocator.o.d ${OBJECTDIR}/_ext/165452390/micro_context.o.d ${OBJECTDIR}/_ext/165452390/micro_error_reporter.o.d ${OBJECTDIR}/_ext/165452390/micro_graph.o.d ${OBJECTDIR}/_ext/165452390/micro_interpreter.o.d ${OBJECTDIR}/_ext/165452390/micro_log.o.d ${OBJECTDIR}/_ext/165452390/micro_profiler.o.d ${OBJECTDIR}/_ext/165452390/micro_resource_variable.o.d ${OBJECTDIR}/_ext/165452390/micro_string.o.d ${OBJECTDIR}/_ext/165452390/micro_time.o.d ${OBJECTDIR}/_ext/165452390/micro_utils.o.d ${OBJECTDIR}/_ext/165452390/mock_micro_graph.o.d ${OBJECTDIR}/_ext/165452390/non_persistent_arena_buffer_allocator.o.d ${OBJECTDIR}/_ext/165452390/op_resolver_bridge.o.d ${OBJECTDIR}/_ext/165452390/persistent_arena_buffer_allocator.o.d ${OBJECTDIR}/_ext/165452390/recording_micro_allocator.o.d ${OBJECTDIR}/_ext/165452390/recording_single_arena_buffer_allocator.o.d ${OBJECTDIR}/_ext/165452390/schema_utils.o.d ${OBJECTDIR}/_ext/165452390/single_arena_buffer_allocator.o.d ${OBJECTDIR}/_ext/165452390/system_setup.o.d ${OBJECTDIR}/_ext/165452390/test_helpers.o.d ${OBJECTDIR}/_ext/165452390/test_helper_custom_ops.o.d ${OBJECTDIR}/_ext/1889185960/tflite_learn_950386_5_compiled.o.d ${OBJECTDIR}/_ext/60163342/plib_adc.o.d ${OBJECTDIR}/_ext/60165520/plib_clk.o.d ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d ${OBJECTDIR}/_ext/1865200349/plib_evic.o.d ${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d ${OBJECTDIR}/_ext/1865657120/plib_uart1.o.d ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d ${OBJECTDIR}/_ext/1171490990/initialization.o.d ${OBJECTDIR}/_ext/1171490990/interrupts.o.d ${OBJECTDIR}/_ext/1171490990/exceptions.o.d ${OBJECTDIR}/Main.o.d ${OBJECTDIR}/_ext/1558683427/ei_pic32_porting.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/165077998/ei_run_classifier_c.o ${OBJECTDIR}/_ext/307672522/fast-dct-fft.o ${OBJECTDIR}/_ext/684350332/processing.o ${OBJECTDIR}/_ext/2086818665/kiss_fft.o ${OBJECTDIR}/_ext/2086818665/kiss_fftr.o ${OBJECTDIR}/_ext/1032610032/memory.o ${OBJECTDIR}/_ext/342965028/debug_log.o ${OBJECTDIR}/_ext/342965028/ei_classifier_porting.o ${OBJECTDIR}/_ext/678231495/common.o ${OBJECTDIR}/_ext/1467219692/common.o ${OBJECTDIR}/_ext/1467219692/error_reporter.o ${OBJECTDIR}/_ext/1467219692/flatbuffer_conversions.o ${OBJECTDIR}/_ext/1467219692/op_resolver.o ${OBJECTDIR}/_ext/1467219692/tensor_utils.o ${OBJECTDIR}/_ext/484606540/tree_ensemble_classifier.o ${OBJECTDIR}/_ext/1886178240/portable_tensor_utils.o ${OBJECTDIR}/_ext/1886178240/quantization_util.o ${OBJECTDIR}/_ext/1886178240/reference_portable_tensor_utils.o ${OBJECTDIR}/_ext/1886178240/tensor_utils.o ${OBJECTDIR}/_ext/1961753300/kernel_util_lite.o ${OBJECTDIR}/_ext/897492065/activations.o ${OBJECTDIR}/_ext/897492065/activations_common.o ${OBJECTDIR}/_ext/897492065/add.o ${OBJECTDIR}/_ext/897492065/add_common.o ${OBJECTDIR}/_ext/897492065/add_n.o ${OBJECTDIR}/_ext/897492065/arg_min_max.o ${OBJECTDIR}/_ext/897492065/assign_variable.o ${OBJECTDIR}/_ext/897492065/batch_matmul.o ${OBJECTDIR}/_ext/897492065/batch_to_space_nd.o ${OBJECTDIR}/_ext/897492065/broadcast_args.o ${OBJECTDIR}/_ext/897492065/broadcast_to.o ${OBJECTDIR}/_ext/897492065/call_once.o ${OBJECTDIR}/_ext/897492065/cast.o ${OBJECTDIR}/_ext/897492065/ceil.o ${OBJECTDIR}/_ext/897492065/circular_buffer.o ${OBJECTDIR}/_ext/897492065/circular_buffer_common.o ${OBJECTDIR}/_ext/897492065/comparisons.o ${OBJECTDIR}/_ext/897492065/complex_abs.o ${OBJECTDIR}/_ext/897492065/concatenation.o ${OBJECTDIR}/_ext/897492065/conv.o ${OBJECTDIR}/_ext/897492065/conv_common.o ${OBJECTDIR}/_ext/897492065/cumsum.o ${OBJECTDIR}/_ext/897492065/depthwise_conv.o ${OBJECTDIR}/_ext/897492065/depthwise_conv_common.o ${OBJECTDIR}/_ext/897492065/depth_to_space.o ${OBJECTDIR}/_ext/897492065/dequantize.o ${OBJECTDIR}/_ext/897492065/dequantize_common.o ${OBJECTDIR}/_ext/897492065/detection_postprocess.o ${OBJECTDIR}/_ext/897492065/div.o ${OBJECTDIR}/_ext/897492065/elementwise.o ${OBJECTDIR}/_ext/897492065/elu.o ${OBJECTDIR}/_ext/897492065/ethosu.o ${OBJECTDIR}/_ext/897492065/exp.o ${OBJECTDIR}/_ext/897492065/expand_dims.o ${OBJECTDIR}/_ext/897492065/fill.o ${OBJECTDIR}/_ext/897492065/floor.o ${OBJECTDIR}/_ext/897492065/floor_div.o ${OBJECTDIR}/_ext/897492065/floor_mod.o ${OBJECTDIR}/_ext/897492065/fully_connected.o ${OBJECTDIR}/_ext/897492065/fully_connected_common.o ${OBJECTDIR}/_ext/897492065/gather.o ${OBJECTDIR}/_ext/897492065/gather_nd.o ${OBJECTDIR}/_ext/897492065/hard_swish.o ${OBJECTDIR}/_ext/897492065/hard_swish_common.o ${OBJECTDIR}/_ext/897492065/if.o ${OBJECTDIR}/_ext/897492065/kernel_runner.o ${OBJECTDIR}/_ext/897492065/kernel_util_micro.o ${OBJECTDIR}/_ext/897492065/l2norm.o ${OBJECTDIR}/_ext/897492065/l2_pool_2d.o ${OBJECTDIR}/_ext/897492065/leaky_relu.o ${OBJECTDIR}/_ext/897492065/leaky_relu_common.o ${OBJECTDIR}/_ext/897492065/logical.o ${OBJECTDIR}/_ext/897492065/logical_common.o ${OBJECTDIR}/_ext/897492065/logistic.o ${OBJECTDIR}/_ext/897492065/logistic_common.o ${OBJECTDIR}/_ext/897492065/log_softmax.o ${OBJECTDIR}/_ext/897492065/lstm_eval.o ${OBJECTDIR}/_ext/897492065/maximum_minimum.o ${OBJECTDIR}/_ext/897492065/micro_tensor_utils.o ${OBJECTDIR}/_ext/897492065/mirror_pad.o ${OBJECTDIR}/_ext/897492065/mli_interface.o ${OBJECTDIR}/_ext/897492065/mli_slicers.o ${OBJECTDIR}/_ext/897492065/mul.o ${OBJECTDIR}/_ext/897492065/mul_common.o ${OBJECTDIR}/_ext/897492065/neg.o ${OBJECTDIR}/_ext/897492065/pack.o ${OBJECTDIR}/_ext/897492065/pad.o ${OBJECTDIR}/_ext/897492065/pooling.o ${OBJECTDIR}/_ext/897492065/pooling_common.o ${OBJECTDIR}/_ext/897492065/prelu.o ${OBJECTDIR}/_ext/897492065/prelu_common.o ${OBJECTDIR}/_ext/897492065/quantize.o ${OBJECTDIR}/_ext/897492065/quantize_common.o ${OBJECTDIR}/_ext/897492065/read_variable.o ${OBJECTDIR}/_ext/897492065/real.o ${OBJECTDIR}/_ext/897492065/reduce.o ${OBJECTDIR}/_ext/897492065/reduce_common.o ${OBJECTDIR}/_ext/897492065/reshape.o ${OBJECTDIR}/_ext/897492065/resize_bilinear.o ${OBJECTDIR}/_ext/897492065/resize_nearest_neighbor.o ${OBJECTDIR}/_ext/897492065/rfft2d.o ${OBJECTDIR}/_ext/897492065/round.o ${OBJECTDIR}/_ext/897492065/scatter_nd.o ${OBJECTDIR}/_ext/897492065/scratch_buffers.o ${OBJECTDIR}/_ext/897492065/scratch_buf_mgr.o ${OBJECTDIR}/_ext/897492065/select.o ${OBJECTDIR}/_ext/897492065/shape.o ${OBJECTDIR}/_ext/897492065/slice.o ${OBJECTDIR}/_ext/897492065/softmax.o ${OBJECTDIR}/_ext/897492065/softmax_common.o ${OBJECTDIR}/_ext/897492065/space_to_batch_nd.o ${OBJECTDIR}/_ext/897492065/space_to_depth.o ${OBJECTDIR}/_ext/897492065/split.o ${OBJECTDIR}/_ext/897492065/split_v.o ${OBJECTDIR}/_ext/897492065/squared_difference.o ${OBJECTDIR}/_ext/897492065/squeeze.o ${OBJECTDIR}/_ext/897492065/strided_slice.o ${OBJECTDIR}/_ext/897492065/sub.o ${OBJECTDIR}/_ext/897492065/sub_common.o ${OBJECTDIR}/_ext/897492065/svdf.o ${OBJECTDIR}/_ext/897492065/svdf_common.o ${OBJECTDIR}/_ext/897492065/tanh.o ${OBJECTDIR}/_ext/897492065/tile.o ${OBJECTDIR}/_ext/897492065/topk_v2.o ${OBJECTDIR}/_ext/897492065/transpose.o ${OBJECTDIR}/_ext/897492065/transpose_conv.o ${OBJECTDIR}/_ext/897492065/tree_ensemble_classifier.o ${OBJECTDIR}/_ext/897492065/unidirectional_sequence_lstm.o ${OBJECTDIR}/_ext/897492065/unpack.o ${OBJECTDIR}/_ext/897492065/var_handle.o ${OBJECTDIR}/_ext/897492065/while.o ${OBJECTDIR}/_ext/897492065/zeros_like.o ${OBJECTDIR}/_ext/1004033623/greedy_memory_planner.o ${OBJECTDIR}/_ext/1004033623/linear_memory_planner.o ${OBJECTDIR}/_ext/1004033623/non_persistent_buffer_planner_shim.o ${OBJECTDIR}/_ext/165452390/all_ops_resolver.o ${OBJECTDIR}/_ext/165452390/fake_micro_context.o ${OBJECTDIR}/_ext/165452390/flatbuffer_conversions_bridge.o ${OBJECTDIR}/_ext/165452390/flatbuffer_utils.o ${OBJECTDIR}/_ext/165452390/memory_helpers.o ${OBJECTDIR}/_ext/165452390/micro_allocation_info.o ${OBJECTDIR}/_ext/165452390/micro_allocator.o ${OBJECTDIR}/_ext/165452390/micro_context.o ${OBJECTDIR}/_ext/165452390/micro_error_reporter.o ${OBJECTDIR}/_ext/165452390/micro_graph.o ${OBJECTDIR}/_ext/165452390/micro_interpreter.o ${OBJECTDIR}/_ext/165452390/micro_log.o ${OBJECTDIR}/_ext/165452390/micro_profiler.o ${OBJECTDIR}/_ext/165452390/micro_resource_variable.o ${OBJECTDIR}/_ext/165452390/micro_string.o ${OBJECTDIR}/_ext/165452390/micro_time.o ${OBJECTDIR}/_ext/165452390/micro_utils.o ${OBJECTDIR}/_ext/165452390/mock_micro_graph.o ${OBJECTDIR}/_ext/165452390/non_persistent_arena_buffer_allocator.o ${OBJECTDIR}/_ext/165452390/op_resolver_bridge.o ${OBJECTDIR}/_ext/165452390/persistent_arena_buffer_allocator.o ${OBJECTDIR}/_ext/165452390/recording_micro_allocator.o ${OBJECTDIR}/_ext/165452390/recording_single_arena_buffer_allocator.o ${OBJECTDIR}/_ext/165452390/schema_utils.o ${OBJECTDIR}/_ext/165452390/single_arena_buffer_allocator.o ${OBJECTDIR}/_ext/165452390/system_setup.o ${OBJECTDIR}/_ext/165452390/test_helpers.o ${OBJECTDIR}/_ext/165452390/test_helper_custom_ops.o ${OBJECTDIR}/_ext/1889185960/tflite_learn_950386_5_compiled.o ${OBJECTDIR}/_ext/60163342/plib_adc.o ${OBJECTDIR}/_ext/60165520/plib_clk.o ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ${OBJECTDIR}/_ext/1865657120/plib_uart1.o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ${OBJECTDIR}/_ext/1171490990/initialization.o ${OBJECTDIR}/_ext/1171490990/interrupts.o ${OBJECTDIR}/_ext/1171490990/exceptions.o ${OBJECTDIR}/Main.o ${OBJECTDIR}/_ext/1558683427/ei_pic32_porting.o

# Source Files
SOURCEFILES=../ai-code/edge-impulse-sdk/classifier/ei_run_classifier_c.cpp ../ai-code/edge-impulse-sdk/dsp/dct/fast-dct-fft.cpp ../ai-code/edge-impulse-sdk/dsp/image/processing.cpp ../ai-code/edge-impulse-sdk/dsp/kissfft/kiss_fft.cpp ../ai-code/edge-impulse-sdk/dsp/kissfft/kiss_fftr.cpp ../ai-code/edge-impulse-sdk/dsp/memory.cpp ../ai-code/edge-impulse-sdk/porting/posix/debug_log.cpp ../ai-code/edge-impulse-sdk/porting/posix/ei_classifier_porting.cpp ../ai-code/edge-impulse-sdk/tensorflow/lite/c/common.c ../ai-code/edge-impulse-sdk/tensorflow/lite/core/api/common.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/core/api/error_reporter.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/core/api/flatbuffer_conversions.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/core/api/op_resolver.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/core/api/tensor_utils.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/kernels/custom/tree_ensemble_classifier.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/kernels/internal/portable_tensor_utils.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/kernels/internal/quantization_util.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/kernels/internal/reference_portable_tensor_utils.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/kernels/internal/tensor_utils.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/kernels/kernel_util_lite.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/activations.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/activations_common.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/add.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/add_common.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/add_n.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/arg_min_max.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/assign_variable.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/batch_matmul.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/batch_to_space_nd.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/broadcast_args.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/broadcast_to.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/call_once.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/cast.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/ceil.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/circular_buffer.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/circular_buffer_common.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/comparisons.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/complex_abs.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/concatenation.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/conv.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/conv_common.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/cumsum.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/depthwise_conv.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/depthwise_conv_common.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/depth_to_space.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/dequantize.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/dequantize_common.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/detection_postprocess.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/div.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/elementwise.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/elu.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/ethosu.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/exp.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/expand_dims.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/fill.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/floor.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/floor_div.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/floor_mod.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/fully_connected.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/fully_connected_common.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/gather.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/gather_nd.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/hard_swish.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/hard_swish_common.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/if.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/kernel_runner.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/kernel_util_micro.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/l2norm.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/l2_pool_2d.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/leaky_relu.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/leaky_relu_common.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/logical.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/logical_common.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/logistic.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/logistic_common.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/log_softmax.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/lstm_eval.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/maximum_minimum.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/micro_tensor_utils.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/mirror_pad.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/mli_interface.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/mli_slicers.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/mul.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/mul_common.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/neg.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/pack.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/pad.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/pooling.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/pooling_common.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/prelu.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/prelu_common.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/quantize.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/quantize_common.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/read_variable.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/real.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/reduce.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/reduce_common.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/reshape.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/resize_bilinear.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/resize_nearest_neighbor.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/rfft2d.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/round.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/scatter_nd.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/scratch_buffers.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/scratch_buf_mgr.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/select.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/shape.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/slice.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/softmax.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/softmax_common.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/space_to_batch_nd.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/space_to_depth.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/split.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/split_v.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/squared_difference.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/squeeze.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/strided_slice.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/sub.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/sub_common.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/svdf.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/svdf_common.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/tanh.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/tile.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/topk_v2.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/transpose.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/transpose_conv.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/tree_ensemble_classifier.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/unidirectional_sequence_lstm.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/unpack.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/var_handle.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/while.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/zeros_like.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/memory_planner/greedy_memory_planner.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/memory_planner/linear_memory_planner.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/memory_planner/non_persistent_buffer_planner_shim.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/all_ops_resolver.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/fake_micro_context.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/flatbuffer_conversions_bridge.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/flatbuffer_utils.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/memory_helpers.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/micro_allocation_info.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/micro_allocator.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/micro_context.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/micro_error_reporter.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/micro_graph.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/micro_interpreter.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/micro_log.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/micro_profiler.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/micro_resource_variable.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/micro_string.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/micro_time.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/micro_utils.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/mock_micro_graph.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/non_persistent_arena_buffer_allocator.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/op_resolver_bridge.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/persistent_arena_buffer_allocator.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/recording_micro_allocator.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/recording_single_arena_buffer_allocator.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/schema_utils.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/single_arena_buffer_allocator.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/system_setup.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/test_helpers.cc ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/test_helper_custom_ops.cc ../ai-code/tflite-model/tflite_learn_950386_5_compiled.cpp ../src/config/default/peripheral/adc/plib_adc.c ../src/config/default/peripheral/clk/plib_clk.c ../src/config/default/peripheral/coretimer/plib_coretimer.c ../src/config/default/peripheral/evic/plib_evic.c ../src/config/default/peripheral/gpio/plib_gpio.c ../src/config/default/peripheral/uart/plib_uart1.c ../src/config/default/stdio/xc32_monitor.c ../src/config/default/initialization.c ../src/config/default/interrupts.c ../src/config/default/exceptions.c Main.cpp ../ai-code/ei_pic32_porting.cpp



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
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/MagicStick.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX270F256B
MP_LINKER_FILE_OPTION=,--script="..\src\config\default\p32MX270F256B.ld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/678231495/common.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/c/common.c  .generated_files/flags/default/2d0e9571ca67b45a0779bc93bb7f718341528662 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/678231495" 
	@${RM} ${OBJECTDIR}/_ext/678231495/common.o.d 
	@${RM} ${OBJECTDIR}/_ext/678231495/common.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/678231495/common.o.d" -o ${OBJECTDIR}/_ext/678231495/common.o ../ai-code/edge-impulse-sdk/tensorflow/lite/c/common.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60163342/plib_adc.o: ../src/config/default/peripheral/adc/plib_adc.c  .generated_files/flags/default/caf3f6282b8f01d30960bcf7ab950680c5eb570e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60163342" 
	@${RM} ${OBJECTDIR}/_ext/60163342/plib_adc.o.d 
	@${RM} ${OBJECTDIR}/_ext/60163342/plib_adc.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/60163342/plib_adc.o.d" -o ${OBJECTDIR}/_ext/60163342/plib_adc.o ../src/config/default/peripheral/adc/plib_adc.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60165520/plib_clk.o: ../src/config/default/peripheral/clk/plib_clk.c  .generated_files/flags/default/21da8e32362b2415ac35e3967d1bb10a1992be9c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60165520" 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/60165520/plib_clk.o.d" -o ${OBJECTDIR}/_ext/60165520/plib_clk.o ../src/config/default/peripheral/clk/plib_clk.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1249264884/plib_coretimer.o: ../src/config/default/peripheral/coretimer/plib_coretimer.c  .generated_files/flags/default/e5d1c52373836806056f1345e90600cfcdd660f4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1249264884" 
	@${RM} ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d" -o ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o ../src/config/default/peripheral/coretimer/plib_coretimer.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865200349/plib_evic.o: ../src/config/default/peripheral/evic/plib_evic.c  .generated_files/flags/default/f6407145733332c5057b98f446d92dbc08aed91b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865200349" 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/1865200349/plib_evic.o.d" -o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ../src/config/default/peripheral/evic/plib_evic.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865254177/plib_gpio.o: ../src/config/default/peripheral/gpio/plib_gpio.c  .generated_files/flags/default/3d8b5563d4b6eccc362e94a9c3b9a04175f23c83 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865254177" 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ../src/config/default/peripheral/gpio/plib_gpio.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart1.o: ../src/config/default/peripheral/uart/plib_uart1.c  .generated_files/flags/default/14dd59643e3942c064d37de390483e21e42b569a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart1.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart1.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart1.o ../src/config/default/peripheral/uart/plib_uart1.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/flags/default/2697e34f38518bee2bf361d5698c6e9d2d125c84 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/flags/default/28ac03ccbc3828d38be68f324d86fc41e9a35ce .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/flags/default/bf3734a106c400741abcad81a46eee2efd775664 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  .generated_files/flags/default/e1c94bf80b009da6db9f2bc93130c3f21bb68874 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/678231495/common.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/c/common.c  .generated_files/flags/default/297dbcba5544f6d10f4a477500e4a369efc2e740 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/678231495" 
	@${RM} ${OBJECTDIR}/_ext/678231495/common.o.d 
	@${RM} ${OBJECTDIR}/_ext/678231495/common.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/678231495/common.o.d" -o ${OBJECTDIR}/_ext/678231495/common.o ../ai-code/edge-impulse-sdk/tensorflow/lite/c/common.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60163342/plib_adc.o: ../src/config/default/peripheral/adc/plib_adc.c  .generated_files/flags/default/9813c0a14b9b5b42c65da7b79e32f4f66177c2c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60163342" 
	@${RM} ${OBJECTDIR}/_ext/60163342/plib_adc.o.d 
	@${RM} ${OBJECTDIR}/_ext/60163342/plib_adc.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/60163342/plib_adc.o.d" -o ${OBJECTDIR}/_ext/60163342/plib_adc.o ../src/config/default/peripheral/adc/plib_adc.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60165520/plib_clk.o: ../src/config/default/peripheral/clk/plib_clk.c  .generated_files/flags/default/ca1e7194dc5dbd8681bbd2f16647cacaba9fb3fd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60165520" 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/60165520/plib_clk.o.d" -o ${OBJECTDIR}/_ext/60165520/plib_clk.o ../src/config/default/peripheral/clk/plib_clk.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1249264884/plib_coretimer.o: ../src/config/default/peripheral/coretimer/plib_coretimer.c  .generated_files/flags/default/9ac45319f96262cc52ed16f3cdf92a245635d483 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1249264884" 
	@${RM} ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d" -o ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o ../src/config/default/peripheral/coretimer/plib_coretimer.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865200349/plib_evic.o: ../src/config/default/peripheral/evic/plib_evic.c  .generated_files/flags/default/97bce784ad140cf947d145db79c6e9cd46831bf4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865200349" 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/1865200349/plib_evic.o.d" -o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ../src/config/default/peripheral/evic/plib_evic.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865254177/plib_gpio.o: ../src/config/default/peripheral/gpio/plib_gpio.c  .generated_files/flags/default/8c3dcd09f73be566515f20baa83fd0e59e134ae7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865254177" 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ../src/config/default/peripheral/gpio/plib_gpio.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart1.o: ../src/config/default/peripheral/uart/plib_uart1.c  .generated_files/flags/default/fa26e98eac2e244934ebfde5fae914dead95e08 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart1.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart1.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart1.o ../src/config/default/peripheral/uart/plib_uart1.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/flags/default/819ca9f31830b61b656c76abda063f76b8c0cdaa .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/flags/default/88da8384582324674e92d9de3d7c221d954ca9cf .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/flags/default/73b7c9c47a2cdfc71468dedaa1505ae248284052 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  .generated_files/flags/default/c07d40a0c43e8abd5e3c3dcea7f9a821d2b836dc .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/165077998/ei_run_classifier_c.o: ../ai-code/edge-impulse-sdk/classifier/ei_run_classifier_c.cpp  .generated_files/flags/default/d7d7c346de76e9340a41511fd1fe848b6896aabd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165077998" 
	@${RM} ${OBJECTDIR}/_ext/165077998/ei_run_classifier_c.o.d 
	@${RM} ${OBJECTDIR}/_ext/165077998/ei_run_classifier_c.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/165077998/ei_run_classifier_c.o.d" -o ${OBJECTDIR}/_ext/165077998/ei_run_classifier_c.o ../ai-code/edge-impulse-sdk/classifier/ei_run_classifier_c.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/307672522/fast-dct-fft.o: ../ai-code/edge-impulse-sdk/dsp/dct/fast-dct-fft.cpp  .generated_files/flags/default/f3b9b014b48920cb35ce88c238a60142fa3e9bff .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/307672522" 
	@${RM} ${OBJECTDIR}/_ext/307672522/fast-dct-fft.o.d 
	@${RM} ${OBJECTDIR}/_ext/307672522/fast-dct-fft.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/307672522/fast-dct-fft.o.d" -o ${OBJECTDIR}/_ext/307672522/fast-dct-fft.o ../ai-code/edge-impulse-sdk/dsp/dct/fast-dct-fft.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/684350332/processing.o: ../ai-code/edge-impulse-sdk/dsp/image/processing.cpp  .generated_files/flags/default/c8d0b86099af72a1c4635908bb343ed5fdb410d9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/684350332" 
	@${RM} ${OBJECTDIR}/_ext/684350332/processing.o.d 
	@${RM} ${OBJECTDIR}/_ext/684350332/processing.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/684350332/processing.o.d" -o ${OBJECTDIR}/_ext/684350332/processing.o ../ai-code/edge-impulse-sdk/dsp/image/processing.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2086818665/kiss_fft.o: ../ai-code/edge-impulse-sdk/dsp/kissfft/kiss_fft.cpp  .generated_files/flags/default/7f9722985c6ea001c191d16228461dc751258eb6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2086818665" 
	@${RM} ${OBJECTDIR}/_ext/2086818665/kiss_fft.o.d 
	@${RM} ${OBJECTDIR}/_ext/2086818665/kiss_fft.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/2086818665/kiss_fft.o.d" -o ${OBJECTDIR}/_ext/2086818665/kiss_fft.o ../ai-code/edge-impulse-sdk/dsp/kissfft/kiss_fft.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2086818665/kiss_fftr.o: ../ai-code/edge-impulse-sdk/dsp/kissfft/kiss_fftr.cpp  .generated_files/flags/default/2eea384e17e6f02a0081c1aaa3dcd75595c29ee5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2086818665" 
	@${RM} ${OBJECTDIR}/_ext/2086818665/kiss_fftr.o.d 
	@${RM} ${OBJECTDIR}/_ext/2086818665/kiss_fftr.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/2086818665/kiss_fftr.o.d" -o ${OBJECTDIR}/_ext/2086818665/kiss_fftr.o ../ai-code/edge-impulse-sdk/dsp/kissfft/kiss_fftr.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1032610032/memory.o: ../ai-code/edge-impulse-sdk/dsp/memory.cpp  .generated_files/flags/default/5840087538d61d63c02a72f7c4e2fe97e6241f41 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1032610032" 
	@${RM} ${OBJECTDIR}/_ext/1032610032/memory.o.d 
	@${RM} ${OBJECTDIR}/_ext/1032610032/memory.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/1032610032/memory.o.d" -o ${OBJECTDIR}/_ext/1032610032/memory.o ../ai-code/edge-impulse-sdk/dsp/memory.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/342965028/debug_log.o: ../ai-code/edge-impulse-sdk/porting/posix/debug_log.cpp  .generated_files/flags/default/c2de4fd72a273c57f4365e4e12229f87658e6b9c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/342965028" 
	@${RM} ${OBJECTDIR}/_ext/342965028/debug_log.o.d 
	@${RM} ${OBJECTDIR}/_ext/342965028/debug_log.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/342965028/debug_log.o.d" -o ${OBJECTDIR}/_ext/342965028/debug_log.o ../ai-code/edge-impulse-sdk/porting/posix/debug_log.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/342965028/ei_classifier_porting.o: ../ai-code/edge-impulse-sdk/porting/posix/ei_classifier_porting.cpp  .generated_files/flags/default/edc3b581311c749f68b863322df8708ac9e6d06b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/342965028" 
	@${RM} ${OBJECTDIR}/_ext/342965028/ei_classifier_porting.o.d 
	@${RM} ${OBJECTDIR}/_ext/342965028/ei_classifier_porting.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/342965028/ei_classifier_porting.o.d" -o ${OBJECTDIR}/_ext/342965028/ei_classifier_porting.o ../ai-code/edge-impulse-sdk/porting/posix/ei_classifier_porting.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1467219692/common.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/core/api/common.cc  .generated_files/flags/default/2f22cc47e87d3dec419c832dd16b55d94b615474 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1467219692" 
	@${RM} ${OBJECTDIR}/_ext/1467219692/common.o.d 
	@${RM} ${OBJECTDIR}/_ext/1467219692/common.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/1467219692/common.o.d" -o ${OBJECTDIR}/_ext/1467219692/common.o ../ai-code/edge-impulse-sdk/tensorflow/lite/core/api/common.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1467219692/error_reporter.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/core/api/error_reporter.cc  .generated_files/flags/default/63efe2e0cd4c1f02db4235c1c782b1f272fa894e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1467219692" 
	@${RM} ${OBJECTDIR}/_ext/1467219692/error_reporter.o.d 
	@${RM} ${OBJECTDIR}/_ext/1467219692/error_reporter.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/1467219692/error_reporter.o.d" -o ${OBJECTDIR}/_ext/1467219692/error_reporter.o ../ai-code/edge-impulse-sdk/tensorflow/lite/core/api/error_reporter.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1467219692/flatbuffer_conversions.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/core/api/flatbuffer_conversions.cc  .generated_files/flags/default/d00c261cc55d9873214c790a284ea335e97f2bc .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1467219692" 
	@${RM} ${OBJECTDIR}/_ext/1467219692/flatbuffer_conversions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1467219692/flatbuffer_conversions.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/1467219692/flatbuffer_conversions.o.d" -o ${OBJECTDIR}/_ext/1467219692/flatbuffer_conversions.o ../ai-code/edge-impulse-sdk/tensorflow/lite/core/api/flatbuffer_conversions.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1467219692/op_resolver.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/core/api/op_resolver.cc  .generated_files/flags/default/4893c991992c05928b65c0b55c24eab666868dba .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1467219692" 
	@${RM} ${OBJECTDIR}/_ext/1467219692/op_resolver.o.d 
	@${RM} ${OBJECTDIR}/_ext/1467219692/op_resolver.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/1467219692/op_resolver.o.d" -o ${OBJECTDIR}/_ext/1467219692/op_resolver.o ../ai-code/edge-impulse-sdk/tensorflow/lite/core/api/op_resolver.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1467219692/tensor_utils.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/core/api/tensor_utils.cc  .generated_files/flags/default/47c114467992e2ad17c9e44cbfe2b9b4dca8a71d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1467219692" 
	@${RM} ${OBJECTDIR}/_ext/1467219692/tensor_utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1467219692/tensor_utils.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/1467219692/tensor_utils.o.d" -o ${OBJECTDIR}/_ext/1467219692/tensor_utils.o ../ai-code/edge-impulse-sdk/tensorflow/lite/core/api/tensor_utils.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/484606540/tree_ensemble_classifier.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/kernels/custom/tree_ensemble_classifier.cc  .generated_files/flags/default/d33a2fe06ddd0f3a767bfb5d9806a245ebac715e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/484606540" 
	@${RM} ${OBJECTDIR}/_ext/484606540/tree_ensemble_classifier.o.d 
	@${RM} ${OBJECTDIR}/_ext/484606540/tree_ensemble_classifier.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/484606540/tree_ensemble_classifier.o.d" -o ${OBJECTDIR}/_ext/484606540/tree_ensemble_classifier.o ../ai-code/edge-impulse-sdk/tensorflow/lite/kernels/custom/tree_ensemble_classifier.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1886178240/portable_tensor_utils.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/kernels/internal/portable_tensor_utils.cc  .generated_files/flags/default/f07919507729d73cbdd317036510b4283fd9abc9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1886178240" 
	@${RM} ${OBJECTDIR}/_ext/1886178240/portable_tensor_utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1886178240/portable_tensor_utils.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/1886178240/portable_tensor_utils.o.d" -o ${OBJECTDIR}/_ext/1886178240/portable_tensor_utils.o ../ai-code/edge-impulse-sdk/tensorflow/lite/kernels/internal/portable_tensor_utils.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1886178240/quantization_util.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/kernels/internal/quantization_util.cc  .generated_files/flags/default/cf41981b5393dbbdb18877bdca227c353562d76b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1886178240" 
	@${RM} ${OBJECTDIR}/_ext/1886178240/quantization_util.o.d 
	@${RM} ${OBJECTDIR}/_ext/1886178240/quantization_util.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/1886178240/quantization_util.o.d" -o ${OBJECTDIR}/_ext/1886178240/quantization_util.o ../ai-code/edge-impulse-sdk/tensorflow/lite/kernels/internal/quantization_util.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1886178240/reference_portable_tensor_utils.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/kernels/internal/reference_portable_tensor_utils.cc  .generated_files/flags/default/cdb588baac09b78b318886d15cc0cc90e8949e30 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1886178240" 
	@${RM} ${OBJECTDIR}/_ext/1886178240/reference_portable_tensor_utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1886178240/reference_portable_tensor_utils.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/1886178240/reference_portable_tensor_utils.o.d" -o ${OBJECTDIR}/_ext/1886178240/reference_portable_tensor_utils.o ../ai-code/edge-impulse-sdk/tensorflow/lite/kernels/internal/reference_portable_tensor_utils.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1886178240/tensor_utils.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/kernels/internal/tensor_utils.cc  .generated_files/flags/default/a947b9663e25d96e416329f39f15c5e7a9a0618e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1886178240" 
	@${RM} ${OBJECTDIR}/_ext/1886178240/tensor_utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1886178240/tensor_utils.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/1886178240/tensor_utils.o.d" -o ${OBJECTDIR}/_ext/1886178240/tensor_utils.o ../ai-code/edge-impulse-sdk/tensorflow/lite/kernels/internal/tensor_utils.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1961753300/kernel_util_lite.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/kernels/kernel_util_lite.cc  .generated_files/flags/default/c053bbafbbffdb02194242a2f99da023cb492435 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1961753300" 
	@${RM} ${OBJECTDIR}/_ext/1961753300/kernel_util_lite.o.d 
	@${RM} ${OBJECTDIR}/_ext/1961753300/kernel_util_lite.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/1961753300/kernel_util_lite.o.d" -o ${OBJECTDIR}/_ext/1961753300/kernel_util_lite.o ../ai-code/edge-impulse-sdk/tensorflow/lite/kernels/kernel_util_lite.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/activations.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/activations.cc  .generated_files/flags/default/9ad4886ac3bd21d970f6f71c1da4eb40282ab031 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/activations.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/activations.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/activations.o.d" -o ${OBJECTDIR}/_ext/897492065/activations.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/activations.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/activations_common.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/activations_common.cc  .generated_files/flags/default/55f77b528a9105160529043c01eb5a948b052ddd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/activations_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/activations_common.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/activations_common.o.d" -o ${OBJECTDIR}/_ext/897492065/activations_common.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/activations_common.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/add.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/add.cc  .generated_files/flags/default/c50a40e005154549034f46cc72a0ae4549f0a1c8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/add.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/add.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/add.o.d" -o ${OBJECTDIR}/_ext/897492065/add.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/add.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/add_common.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/add_common.cc  .generated_files/flags/default/f520a198e1419a9f4e20695683f4f0d0f5193ae4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/add_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/add_common.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/add_common.o.d" -o ${OBJECTDIR}/_ext/897492065/add_common.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/add_common.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/add_n.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/add_n.cc  .generated_files/flags/default/2c24f96e5c558e2008eed2c6c23303a08d5ee8df .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/add_n.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/add_n.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/add_n.o.d" -o ${OBJECTDIR}/_ext/897492065/add_n.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/add_n.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/arg_min_max.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/arg_min_max.cc  .generated_files/flags/default/4cc86ec7e2c89b9fd22fe5f32d5043bdf4462f9d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/arg_min_max.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/arg_min_max.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/arg_min_max.o.d" -o ${OBJECTDIR}/_ext/897492065/arg_min_max.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/arg_min_max.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/assign_variable.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/assign_variable.cc  .generated_files/flags/default/7e29380270605afc77fca1a18370c49fdd15c4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/assign_variable.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/assign_variable.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/assign_variable.o.d" -o ${OBJECTDIR}/_ext/897492065/assign_variable.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/assign_variable.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/batch_matmul.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/batch_matmul.cc  .generated_files/flags/default/1b3b1de2c1d39eb5a831564b573a305a11780800 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/batch_matmul.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/batch_matmul.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/batch_matmul.o.d" -o ${OBJECTDIR}/_ext/897492065/batch_matmul.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/batch_matmul.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/batch_to_space_nd.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/batch_to_space_nd.cc  .generated_files/flags/default/b96d4a5f14a91f4b66cdf135a06706a4eeac739a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/batch_to_space_nd.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/batch_to_space_nd.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/batch_to_space_nd.o.d" -o ${OBJECTDIR}/_ext/897492065/batch_to_space_nd.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/batch_to_space_nd.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/broadcast_args.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/broadcast_args.cc  .generated_files/flags/default/83fd71b0afa70474ae4a4784e66b7e7c5176e10a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/broadcast_args.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/broadcast_args.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/broadcast_args.o.d" -o ${OBJECTDIR}/_ext/897492065/broadcast_args.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/broadcast_args.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/broadcast_to.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/broadcast_to.cc  .generated_files/flags/default/ce84f3471db2f7417452c6bde144ef4872fdd7e0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/broadcast_to.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/broadcast_to.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/broadcast_to.o.d" -o ${OBJECTDIR}/_ext/897492065/broadcast_to.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/broadcast_to.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/call_once.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/call_once.cc  .generated_files/flags/default/3cf050e3187f3d4edfd032b18df60c1ec248a89 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/call_once.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/call_once.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/call_once.o.d" -o ${OBJECTDIR}/_ext/897492065/call_once.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/call_once.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/cast.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/cast.cc  .generated_files/flags/default/38e3d4e84a827c83c82891ea997ef2ad991cbd8e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/cast.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/cast.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/cast.o.d" -o ${OBJECTDIR}/_ext/897492065/cast.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/cast.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/ceil.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/ceil.cc  .generated_files/flags/default/12eb358c6b874e0bbaace0eba71dff4f641246fd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/ceil.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/ceil.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/ceil.o.d" -o ${OBJECTDIR}/_ext/897492065/ceil.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/ceil.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/circular_buffer.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/circular_buffer.cc  .generated_files/flags/default/4b95e842470a2a29d769a87b285b2f356b102540 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/circular_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/circular_buffer.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/circular_buffer.o.d" -o ${OBJECTDIR}/_ext/897492065/circular_buffer.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/circular_buffer.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/circular_buffer_common.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/circular_buffer_common.cc  .generated_files/flags/default/aa42a6011bdd257dfde8bb29070d5b244050132 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/circular_buffer_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/circular_buffer_common.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/circular_buffer_common.o.d" -o ${OBJECTDIR}/_ext/897492065/circular_buffer_common.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/circular_buffer_common.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/comparisons.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/comparisons.cc  .generated_files/flags/default/b5e6fd64b0965102583ae889d43c3fb9aca96805 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/comparisons.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/comparisons.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/comparisons.o.d" -o ${OBJECTDIR}/_ext/897492065/comparisons.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/comparisons.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/complex_abs.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/complex_abs.cc  .generated_files/flags/default/f86a0d77a62f48834d336928765604ed4aa89e26 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/complex_abs.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/complex_abs.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/complex_abs.o.d" -o ${OBJECTDIR}/_ext/897492065/complex_abs.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/complex_abs.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/concatenation.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/concatenation.cc  .generated_files/flags/default/6eee387a5fc2f22e803c683285ff8d04e1dbba8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/concatenation.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/concatenation.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/concatenation.o.d" -o ${OBJECTDIR}/_ext/897492065/concatenation.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/concatenation.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/conv.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/conv.cc  .generated_files/flags/default/c00463545145258c29e93a427471cfc8430c0410 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/conv.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/conv.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/conv.o.d" -o ${OBJECTDIR}/_ext/897492065/conv.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/conv.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/conv_common.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/conv_common.cc  .generated_files/flags/default/2cb2460384a88f997227d89d8ba57a36cc395f0f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/conv_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/conv_common.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/conv_common.o.d" -o ${OBJECTDIR}/_ext/897492065/conv_common.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/conv_common.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/cumsum.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/cumsum.cc  .generated_files/flags/default/76507f86a44b9337720da23a63fb358588a067ad .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/cumsum.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/cumsum.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/cumsum.o.d" -o ${OBJECTDIR}/_ext/897492065/cumsum.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/cumsum.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/depthwise_conv.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/depthwise_conv.cc  .generated_files/flags/default/a1589e265ddb512c053e2fdac16661ba29896fd5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/depthwise_conv.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/depthwise_conv.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/depthwise_conv.o.d" -o ${OBJECTDIR}/_ext/897492065/depthwise_conv.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/depthwise_conv.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/depthwise_conv_common.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/depthwise_conv_common.cc  .generated_files/flags/default/5dca7460456acedf19fc9ee57271658dca60b05d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/depthwise_conv_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/depthwise_conv_common.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/depthwise_conv_common.o.d" -o ${OBJECTDIR}/_ext/897492065/depthwise_conv_common.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/depthwise_conv_common.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/depth_to_space.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/depth_to_space.cc  .generated_files/flags/default/a398f344489b4618ccb1fbc6a75313abd12bb2c7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/depth_to_space.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/depth_to_space.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/depth_to_space.o.d" -o ${OBJECTDIR}/_ext/897492065/depth_to_space.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/depth_to_space.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/dequantize.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/dequantize.cc  .generated_files/flags/default/a3e408061356d20917168852bcc3baa63b07d51b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/dequantize.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/dequantize.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/dequantize.o.d" -o ${OBJECTDIR}/_ext/897492065/dequantize.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/dequantize.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/dequantize_common.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/dequantize_common.cc  .generated_files/flags/default/55656978542c7d38895003cb7e1fe8b04ea1bad9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/dequantize_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/dequantize_common.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/dequantize_common.o.d" -o ${OBJECTDIR}/_ext/897492065/dequantize_common.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/dequantize_common.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/detection_postprocess.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/detection_postprocess.cc  .generated_files/flags/default/b70acc820e3e9a4a7186faea6700848722bd8050 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/detection_postprocess.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/detection_postprocess.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/detection_postprocess.o.d" -o ${OBJECTDIR}/_ext/897492065/detection_postprocess.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/detection_postprocess.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/div.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/div.cc  .generated_files/flags/default/ba8c79d736271bc2f8cd4155aefbb18f49410fe .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/div.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/div.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/div.o.d" -o ${OBJECTDIR}/_ext/897492065/div.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/div.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/elementwise.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/elementwise.cc  .generated_files/flags/default/420357c43765dda2b158c7380c3da9319c3340b9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/elementwise.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/elementwise.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/elementwise.o.d" -o ${OBJECTDIR}/_ext/897492065/elementwise.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/elementwise.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/elu.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/elu.cc  .generated_files/flags/default/f738ee35c67d02b3040894195ed96c307a9a39c2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/elu.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/elu.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/elu.o.d" -o ${OBJECTDIR}/_ext/897492065/elu.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/elu.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/ethosu.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/ethosu.cc  .generated_files/flags/default/3ca914e9852c224b272ca80632dda742883c69f2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/ethosu.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/ethosu.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/ethosu.o.d" -o ${OBJECTDIR}/_ext/897492065/ethosu.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/ethosu.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/exp.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/exp.cc  .generated_files/flags/default/4145ab59a6afd24468b9f5b290c2336694f0cfff .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/exp.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/exp.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/exp.o.d" -o ${OBJECTDIR}/_ext/897492065/exp.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/exp.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/expand_dims.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/expand_dims.cc  .generated_files/flags/default/1a6a94ad0861d0f88f6d47f1bd4c8aa9e5687280 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/expand_dims.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/expand_dims.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/expand_dims.o.d" -o ${OBJECTDIR}/_ext/897492065/expand_dims.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/expand_dims.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/fill.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/fill.cc  .generated_files/flags/default/c335e103263e4186d6eff2557c6d343a5c6eff0b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/fill.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/fill.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/fill.o.d" -o ${OBJECTDIR}/_ext/897492065/fill.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/fill.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/floor.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/floor.cc  .generated_files/flags/default/82b01b9b040ae1b545dd80b483f56e062a965296 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/floor.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/floor.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/floor.o.d" -o ${OBJECTDIR}/_ext/897492065/floor.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/floor.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/floor_div.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/floor_div.cc  .generated_files/flags/default/e65b005ec90def6932719bf5efaa8dde3d632f15 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/floor_div.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/floor_div.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/floor_div.o.d" -o ${OBJECTDIR}/_ext/897492065/floor_div.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/floor_div.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/floor_mod.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/floor_mod.cc  .generated_files/flags/default/a04bc99cd0328412ac983c1572a4e08c1d25167a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/floor_mod.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/floor_mod.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/floor_mod.o.d" -o ${OBJECTDIR}/_ext/897492065/floor_mod.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/floor_mod.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/fully_connected.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/fully_connected.cc  .generated_files/flags/default/e5dc87dfacb96ab44f54ed1e47b39c3a8aa72f90 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/fully_connected.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/fully_connected.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/fully_connected.o.d" -o ${OBJECTDIR}/_ext/897492065/fully_connected.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/fully_connected.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/fully_connected_common.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/fully_connected_common.cc  .generated_files/flags/default/312571d7650d82e99558638b130efca6b4f4a270 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/fully_connected_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/fully_connected_common.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/fully_connected_common.o.d" -o ${OBJECTDIR}/_ext/897492065/fully_connected_common.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/fully_connected_common.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/gather.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/gather.cc  .generated_files/flags/default/ba104e2071345a3e8cd131baa356cd8e5462264e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/gather.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/gather.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/gather.o.d" -o ${OBJECTDIR}/_ext/897492065/gather.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/gather.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/gather_nd.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/gather_nd.cc  .generated_files/flags/default/2b8c3039e86008d0ec64974623f43d16384320ed .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/gather_nd.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/gather_nd.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/gather_nd.o.d" -o ${OBJECTDIR}/_ext/897492065/gather_nd.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/gather_nd.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/hard_swish.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/hard_swish.cc  .generated_files/flags/default/24572110e637045be3467e8a8e6db96c88858d59 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/hard_swish.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/hard_swish.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/hard_swish.o.d" -o ${OBJECTDIR}/_ext/897492065/hard_swish.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/hard_swish.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/hard_swish_common.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/hard_swish_common.cc  .generated_files/flags/default/a0d88a816f3c59899ca7e80b5f735b3ee59767ad .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/hard_swish_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/hard_swish_common.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/hard_swish_common.o.d" -o ${OBJECTDIR}/_ext/897492065/hard_swish_common.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/hard_swish_common.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/if.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/if.cc  .generated_files/flags/default/2e660db7d937ed318c5dc332722079c1126b55e1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/if.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/if.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/if.o.d" -o ${OBJECTDIR}/_ext/897492065/if.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/if.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/kernel_runner.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/kernel_runner.cc  .generated_files/flags/default/2987d56662e0ec570ec5aabbb605e88ade38e284 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/kernel_runner.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/kernel_runner.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/kernel_runner.o.d" -o ${OBJECTDIR}/_ext/897492065/kernel_runner.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/kernel_runner.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/kernel_util_micro.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/kernel_util_micro.cc  .generated_files/flags/default/ead0d49265d81e2bb5004f45c61e76ec5768f1d4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/kernel_util_micro.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/kernel_util_micro.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/kernel_util_micro.o.d" -o ${OBJECTDIR}/_ext/897492065/kernel_util_micro.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/kernel_util_micro.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/l2norm.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/l2norm.cc  .generated_files/flags/default/64cda26d132e33431381b7281b03ca545c2ec30c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/l2norm.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/l2norm.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/l2norm.o.d" -o ${OBJECTDIR}/_ext/897492065/l2norm.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/l2norm.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/l2_pool_2d.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/l2_pool_2d.cc  .generated_files/flags/default/e3675d97ed7526ef55f30368a4fea6a5d97087b0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/l2_pool_2d.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/l2_pool_2d.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/l2_pool_2d.o.d" -o ${OBJECTDIR}/_ext/897492065/l2_pool_2d.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/l2_pool_2d.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/leaky_relu.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/leaky_relu.cc  .generated_files/flags/default/740de20380de8ee7216527df8a1ebd62b627e676 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/leaky_relu.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/leaky_relu.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/leaky_relu.o.d" -o ${OBJECTDIR}/_ext/897492065/leaky_relu.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/leaky_relu.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/leaky_relu_common.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/leaky_relu_common.cc  .generated_files/flags/default/b4f662335668214dc07e35f54587c3426ddc0549 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/leaky_relu_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/leaky_relu_common.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/leaky_relu_common.o.d" -o ${OBJECTDIR}/_ext/897492065/leaky_relu_common.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/leaky_relu_common.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/logical.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/logical.cc  .generated_files/flags/default/1b90763e7c14acb63524ef80b6fde5860ef10abe .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/logical.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/logical.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/logical.o.d" -o ${OBJECTDIR}/_ext/897492065/logical.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/logical.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/logical_common.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/logical_common.cc  .generated_files/flags/default/f3f433b8be82f1e9a7bd3d509b19ebf635ca1efb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/logical_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/logical_common.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/logical_common.o.d" -o ${OBJECTDIR}/_ext/897492065/logical_common.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/logical_common.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/logistic.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/logistic.cc  .generated_files/flags/default/b9e5c81619be3e61c842562925c41d9b41a012eb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/logistic.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/logistic.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/logistic.o.d" -o ${OBJECTDIR}/_ext/897492065/logistic.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/logistic.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/logistic_common.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/logistic_common.cc  .generated_files/flags/default/ff0af6942f19c9ac18a4767135b5fe75de366150 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/logistic_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/logistic_common.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/logistic_common.o.d" -o ${OBJECTDIR}/_ext/897492065/logistic_common.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/logistic_common.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/log_softmax.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/log_softmax.cc  .generated_files/flags/default/9fafbdf2c3f742dbbf7a8710a772a4f8f617bdcf .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/log_softmax.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/log_softmax.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/log_softmax.o.d" -o ${OBJECTDIR}/_ext/897492065/log_softmax.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/log_softmax.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/lstm_eval.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/lstm_eval.cc  .generated_files/flags/default/9040d0227e161d7a01c59fb71590fa7727d0a3f4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/lstm_eval.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/lstm_eval.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/lstm_eval.o.d" -o ${OBJECTDIR}/_ext/897492065/lstm_eval.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/lstm_eval.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/maximum_minimum.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/maximum_minimum.cc  .generated_files/flags/default/54a2e1a98c6ed61c15619ed632864fd0fc2e159e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/maximum_minimum.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/maximum_minimum.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/maximum_minimum.o.d" -o ${OBJECTDIR}/_ext/897492065/maximum_minimum.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/maximum_minimum.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/micro_tensor_utils.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/micro_tensor_utils.cc  .generated_files/flags/default/c4acfe8690b8d53c516058fbcd3d4b5f44e29bb0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/micro_tensor_utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/micro_tensor_utils.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/micro_tensor_utils.o.d" -o ${OBJECTDIR}/_ext/897492065/micro_tensor_utils.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/micro_tensor_utils.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/mirror_pad.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/mirror_pad.cc  .generated_files/flags/default/377c3588c841d90718f0ae77ca2aa12dad725602 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/mirror_pad.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/mirror_pad.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/mirror_pad.o.d" -o ${OBJECTDIR}/_ext/897492065/mirror_pad.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/mirror_pad.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/mli_interface.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/mli_interface.cc  .generated_files/flags/default/afdd9b0d5885c7b10794a59cc1eeab0143f54cb9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/mli_interface.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/mli_interface.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/mli_interface.o.d" -o ${OBJECTDIR}/_ext/897492065/mli_interface.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/mli_interface.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/mli_slicers.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/mli_slicers.cc  .generated_files/flags/default/c60438b8ce5ef204c68cf711ac58ee4b848869cb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/mli_slicers.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/mli_slicers.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/mli_slicers.o.d" -o ${OBJECTDIR}/_ext/897492065/mli_slicers.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/mli_slicers.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/mul.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/mul.cc  .generated_files/flags/default/93217fa95959da4511f38f5f6a4ec2e2765f8e0f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/mul.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/mul.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/mul.o.d" -o ${OBJECTDIR}/_ext/897492065/mul.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/mul.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/mul_common.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/mul_common.cc  .generated_files/flags/default/99cf8e8c195f1a6bea97de24d012da99a5d9d4bd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/mul_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/mul_common.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/mul_common.o.d" -o ${OBJECTDIR}/_ext/897492065/mul_common.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/mul_common.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/neg.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/neg.cc  .generated_files/flags/default/5aa3de9550c31eceed1a0239055da901518d69a4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/neg.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/neg.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/neg.o.d" -o ${OBJECTDIR}/_ext/897492065/neg.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/neg.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/pack.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/pack.cc  .generated_files/flags/default/7e5a3874213c8bfc458d17e051f2b45c13c0ce26 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/pack.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/pack.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/pack.o.d" -o ${OBJECTDIR}/_ext/897492065/pack.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/pack.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/pad.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/pad.cc  .generated_files/flags/default/548198e080268c60915c0eec785c04d2bb3c433b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/pad.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/pad.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/pad.o.d" -o ${OBJECTDIR}/_ext/897492065/pad.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/pad.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/pooling.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/pooling.cc  .generated_files/flags/default/f7b7153f61c849b9fcdcd478b546b04518fc1dbc .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/pooling.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/pooling.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/pooling.o.d" -o ${OBJECTDIR}/_ext/897492065/pooling.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/pooling.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/pooling_common.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/pooling_common.cc  .generated_files/flags/default/d65e5e8b200d57bd9c1683ebdb61fa5861f57047 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/pooling_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/pooling_common.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/pooling_common.o.d" -o ${OBJECTDIR}/_ext/897492065/pooling_common.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/pooling_common.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/prelu.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/prelu.cc  .generated_files/flags/default/2895e5b91db6bdf7b40afdefdff79dfa3b086c16 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/prelu.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/prelu.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/prelu.o.d" -o ${OBJECTDIR}/_ext/897492065/prelu.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/prelu.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/prelu_common.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/prelu_common.cc  .generated_files/flags/default/dfd711f03c1db0358a0ced2b9311d19eb2e44680 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/prelu_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/prelu_common.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/prelu_common.o.d" -o ${OBJECTDIR}/_ext/897492065/prelu_common.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/prelu_common.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/quantize.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/quantize.cc  .generated_files/flags/default/cacbd174a42d2457065c9e738d0541cd2d9f73cc .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/quantize.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/quantize.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/quantize.o.d" -o ${OBJECTDIR}/_ext/897492065/quantize.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/quantize.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/quantize_common.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/quantize_common.cc  .generated_files/flags/default/dc94c11eb6a457ca66e76725c54db9e03de3b945 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/quantize_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/quantize_common.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/quantize_common.o.d" -o ${OBJECTDIR}/_ext/897492065/quantize_common.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/quantize_common.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/read_variable.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/read_variable.cc  .generated_files/flags/default/6712770e1f87998c8b5f83805a2e05b82731da6f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/read_variable.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/read_variable.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/read_variable.o.d" -o ${OBJECTDIR}/_ext/897492065/read_variable.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/read_variable.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/real.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/real.cc  .generated_files/flags/default/47d5c8597b7b677a30f6fca6e6d77cd16b201749 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/real.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/real.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/real.o.d" -o ${OBJECTDIR}/_ext/897492065/real.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/real.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/reduce.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/reduce.cc  .generated_files/flags/default/1e2aba0e2c9c4678f17cae0c933f168770cd48a8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/reduce.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/reduce.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/reduce.o.d" -o ${OBJECTDIR}/_ext/897492065/reduce.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/reduce.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/reduce_common.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/reduce_common.cc  .generated_files/flags/default/5deb68a05df9d716e35e82e80e60ea4ccb7a77c9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/reduce_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/reduce_common.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/reduce_common.o.d" -o ${OBJECTDIR}/_ext/897492065/reduce_common.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/reduce_common.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/reshape.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/reshape.cc  .generated_files/flags/default/ec24b6dd579e6b663c1b7fa434fb334d8f0abfa9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/reshape.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/reshape.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/reshape.o.d" -o ${OBJECTDIR}/_ext/897492065/reshape.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/reshape.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/resize_bilinear.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/resize_bilinear.cc  .generated_files/flags/default/eda6a2954c1dd6ae985b928afc4c02fa9ba4c9c3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/resize_bilinear.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/resize_bilinear.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/resize_bilinear.o.d" -o ${OBJECTDIR}/_ext/897492065/resize_bilinear.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/resize_bilinear.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/resize_nearest_neighbor.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/resize_nearest_neighbor.cc  .generated_files/flags/default/6d10ae2e6492a266e7025a44e84c01fad120f762 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/resize_nearest_neighbor.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/resize_nearest_neighbor.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/resize_nearest_neighbor.o.d" -o ${OBJECTDIR}/_ext/897492065/resize_nearest_neighbor.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/resize_nearest_neighbor.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/rfft2d.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/rfft2d.cc  .generated_files/flags/default/c4dcbc10a824914a282e113b96a1675273acd34a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/rfft2d.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/rfft2d.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/rfft2d.o.d" -o ${OBJECTDIR}/_ext/897492065/rfft2d.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/rfft2d.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/round.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/round.cc  .generated_files/flags/default/fc26b90fa17369148dcc239e2ef91647b8ff717d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/round.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/round.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/round.o.d" -o ${OBJECTDIR}/_ext/897492065/round.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/round.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/scatter_nd.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/scatter_nd.cc  .generated_files/flags/default/bae5da25fc70b74f0718757b5db9b8c1645abd6a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/scatter_nd.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/scatter_nd.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/scatter_nd.o.d" -o ${OBJECTDIR}/_ext/897492065/scatter_nd.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/scatter_nd.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/scratch_buffers.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/scratch_buffers.cc  .generated_files/flags/default/67a5b85de629d32ca6007daf3e2ab772d610073d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/scratch_buffers.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/scratch_buffers.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/scratch_buffers.o.d" -o ${OBJECTDIR}/_ext/897492065/scratch_buffers.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/scratch_buffers.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/scratch_buf_mgr.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/scratch_buf_mgr.cc  .generated_files/flags/default/a97c2de42c3db577d3a6b72452850f2e59ae6b25 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/scratch_buf_mgr.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/scratch_buf_mgr.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/scratch_buf_mgr.o.d" -o ${OBJECTDIR}/_ext/897492065/scratch_buf_mgr.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/scratch_buf_mgr.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/select.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/select.cc  .generated_files/flags/default/2aaff88c970efcc42b7bc30d98efe446711f2c9e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/select.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/select.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/select.o.d" -o ${OBJECTDIR}/_ext/897492065/select.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/select.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/shape.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/shape.cc  .generated_files/flags/default/e512ca354ec6f05dfd401fd477d73e36c0862274 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/shape.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/shape.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/shape.o.d" -o ${OBJECTDIR}/_ext/897492065/shape.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/shape.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/slice.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/slice.cc  .generated_files/flags/default/951393b0e3a4ff16b64e4d3b7af52b45b4a89b76 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/slice.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/slice.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/slice.o.d" -o ${OBJECTDIR}/_ext/897492065/slice.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/slice.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/softmax.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/softmax.cc  .generated_files/flags/default/e6df341c87247941ab9d1301a0c6b0a4f38461b9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/softmax.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/softmax.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/softmax.o.d" -o ${OBJECTDIR}/_ext/897492065/softmax.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/softmax.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/softmax_common.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/softmax_common.cc  .generated_files/flags/default/bd7d7970b48547e2ee436a98f64fbf9058f2a67 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/softmax_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/softmax_common.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/softmax_common.o.d" -o ${OBJECTDIR}/_ext/897492065/softmax_common.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/softmax_common.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/space_to_batch_nd.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/space_to_batch_nd.cc  .generated_files/flags/default/87f673f4ae7cebf52c55682618ce9833b4c8eb46 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/space_to_batch_nd.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/space_to_batch_nd.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/space_to_batch_nd.o.d" -o ${OBJECTDIR}/_ext/897492065/space_to_batch_nd.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/space_to_batch_nd.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/space_to_depth.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/space_to_depth.cc  .generated_files/flags/default/8fcb43a790e0308978ab741c13c424ca108d9d60 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/space_to_depth.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/space_to_depth.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/space_to_depth.o.d" -o ${OBJECTDIR}/_ext/897492065/space_to_depth.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/space_to_depth.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/split.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/split.cc  .generated_files/flags/default/735301a39d793067eb88538f887bd922463499ae .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/split.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/split.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/split.o.d" -o ${OBJECTDIR}/_ext/897492065/split.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/split.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/split_v.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/split_v.cc  .generated_files/flags/default/7f2d59d8c62cdcd3cf6687e4ad83c552030101b1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/split_v.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/split_v.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/split_v.o.d" -o ${OBJECTDIR}/_ext/897492065/split_v.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/split_v.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/squared_difference.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/squared_difference.cc  .generated_files/flags/default/2680ac3807f80aeda141bcb9da185e6280cc98e3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/squared_difference.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/squared_difference.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/squared_difference.o.d" -o ${OBJECTDIR}/_ext/897492065/squared_difference.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/squared_difference.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/squeeze.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/squeeze.cc  .generated_files/flags/default/590be3f48bc6629c0529c51e31e0f879cf0a9625 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/squeeze.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/squeeze.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/squeeze.o.d" -o ${OBJECTDIR}/_ext/897492065/squeeze.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/squeeze.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/strided_slice.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/strided_slice.cc  .generated_files/flags/default/904c8048aea932622bdd7efa53bacef6b2bcfe6c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/strided_slice.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/strided_slice.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/strided_slice.o.d" -o ${OBJECTDIR}/_ext/897492065/strided_slice.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/strided_slice.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/sub.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/sub.cc  .generated_files/flags/default/9491940852ef549fe6eec148ea7357093123c53a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/sub.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/sub.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/sub.o.d" -o ${OBJECTDIR}/_ext/897492065/sub.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/sub.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/sub_common.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/sub_common.cc  .generated_files/flags/default/2ed057fe3b8b69485aa16cf27f57376fc5592c48 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/sub_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/sub_common.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/sub_common.o.d" -o ${OBJECTDIR}/_ext/897492065/sub_common.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/sub_common.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/svdf.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/svdf.cc  .generated_files/flags/default/2caacbdb16a9779610746a11e05f19c746d2dc22 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/svdf.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/svdf.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/svdf.o.d" -o ${OBJECTDIR}/_ext/897492065/svdf.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/svdf.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/svdf_common.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/svdf_common.cc  .generated_files/flags/default/7ecbab2c7dc1c6c36ee109467266e8aff17dc8c3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/svdf_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/svdf_common.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/svdf_common.o.d" -o ${OBJECTDIR}/_ext/897492065/svdf_common.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/svdf_common.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/tanh.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/tanh.cc  .generated_files/flags/default/ee9ed439faef8a94b89dc53c17dc99d86caac149 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/tanh.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/tanh.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/tanh.o.d" -o ${OBJECTDIR}/_ext/897492065/tanh.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/tanh.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/tile.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/tile.cc  .generated_files/flags/default/1097fd55e7ac5c852889edcad25f9e975a78b48a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/tile.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/tile.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/tile.o.d" -o ${OBJECTDIR}/_ext/897492065/tile.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/tile.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/topk_v2.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/topk_v2.cc  .generated_files/flags/default/a187ed6d51d55b5d5ffe3cab953b1592c2f1fd0f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/topk_v2.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/topk_v2.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/topk_v2.o.d" -o ${OBJECTDIR}/_ext/897492065/topk_v2.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/topk_v2.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/transpose.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/transpose.cc  .generated_files/flags/default/1a19b0272a2e613d8ee3c90231efc911204927a8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/transpose.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/transpose.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/transpose.o.d" -o ${OBJECTDIR}/_ext/897492065/transpose.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/transpose.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/transpose_conv.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/transpose_conv.cc  .generated_files/flags/default/787972e75223cab42ef1db70c2cbbb2a54e06d26 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/transpose_conv.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/transpose_conv.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/transpose_conv.o.d" -o ${OBJECTDIR}/_ext/897492065/transpose_conv.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/transpose_conv.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/tree_ensemble_classifier.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/tree_ensemble_classifier.cc  .generated_files/flags/default/ad806e821e8c4cdc9f187fe608ed2cec1e48034f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/tree_ensemble_classifier.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/tree_ensemble_classifier.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/tree_ensemble_classifier.o.d" -o ${OBJECTDIR}/_ext/897492065/tree_ensemble_classifier.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/tree_ensemble_classifier.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/unidirectional_sequence_lstm.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/unidirectional_sequence_lstm.cc  .generated_files/flags/default/340aa7282fc5897588ed2e12827dcd35672b1fb1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/unidirectional_sequence_lstm.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/unidirectional_sequence_lstm.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/unidirectional_sequence_lstm.o.d" -o ${OBJECTDIR}/_ext/897492065/unidirectional_sequence_lstm.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/unidirectional_sequence_lstm.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/unpack.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/unpack.cc  .generated_files/flags/default/19b74b3bcd1176a8d87eb650322d2871543238e2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/unpack.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/unpack.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/unpack.o.d" -o ${OBJECTDIR}/_ext/897492065/unpack.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/unpack.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/var_handle.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/var_handle.cc  .generated_files/flags/default/76c585688bb1e325ef0967bea4ab7842a9eb1253 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/var_handle.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/var_handle.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/var_handle.o.d" -o ${OBJECTDIR}/_ext/897492065/var_handle.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/var_handle.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/while.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/while.cc  .generated_files/flags/default/55813ad068a7b75616d7cd55d283d43fabe63d9f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/while.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/while.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/while.o.d" -o ${OBJECTDIR}/_ext/897492065/while.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/while.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/zeros_like.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/zeros_like.cc  .generated_files/flags/default/1f9883be11d75e946e2787038527f16faa6821df .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/zeros_like.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/zeros_like.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/zeros_like.o.d" -o ${OBJECTDIR}/_ext/897492065/zeros_like.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/zeros_like.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1004033623/greedy_memory_planner.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/memory_planner/greedy_memory_planner.cc  .generated_files/flags/default/3ef4c7d6983cce2a0fd3ff78efa9a19af3264335 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1004033623" 
	@${RM} ${OBJECTDIR}/_ext/1004033623/greedy_memory_planner.o.d 
	@${RM} ${OBJECTDIR}/_ext/1004033623/greedy_memory_planner.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/1004033623/greedy_memory_planner.o.d" -o ${OBJECTDIR}/_ext/1004033623/greedy_memory_planner.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/memory_planner/greedy_memory_planner.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1004033623/linear_memory_planner.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/memory_planner/linear_memory_planner.cc  .generated_files/flags/default/aa8f49e2ab2286365328ee8fcd97932a37f03b8f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1004033623" 
	@${RM} ${OBJECTDIR}/_ext/1004033623/linear_memory_planner.o.d 
	@${RM} ${OBJECTDIR}/_ext/1004033623/linear_memory_planner.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/1004033623/linear_memory_planner.o.d" -o ${OBJECTDIR}/_ext/1004033623/linear_memory_planner.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/memory_planner/linear_memory_planner.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1004033623/non_persistent_buffer_planner_shim.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/memory_planner/non_persistent_buffer_planner_shim.cc  .generated_files/flags/default/e8d1fe11bba2f7b2d50e429223d09b76ec3b1793 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1004033623" 
	@${RM} ${OBJECTDIR}/_ext/1004033623/non_persistent_buffer_planner_shim.o.d 
	@${RM} ${OBJECTDIR}/_ext/1004033623/non_persistent_buffer_planner_shim.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/1004033623/non_persistent_buffer_planner_shim.o.d" -o ${OBJECTDIR}/_ext/1004033623/non_persistent_buffer_planner_shim.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/memory_planner/non_persistent_buffer_planner_shim.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/165452390/all_ops_resolver.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/all_ops_resolver.cc  .generated_files/flags/default/859cf0233ae139ff782d544e7402acfce8843cdc .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165452390" 
	@${RM} ${OBJECTDIR}/_ext/165452390/all_ops_resolver.o.d 
	@${RM} ${OBJECTDIR}/_ext/165452390/all_ops_resolver.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/165452390/all_ops_resolver.o.d" -o ${OBJECTDIR}/_ext/165452390/all_ops_resolver.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/all_ops_resolver.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/165452390/fake_micro_context.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/fake_micro_context.cc  .generated_files/flags/default/d89ddfc7df5d27bd194c816034a8096010088ab9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165452390" 
	@${RM} ${OBJECTDIR}/_ext/165452390/fake_micro_context.o.d 
	@${RM} ${OBJECTDIR}/_ext/165452390/fake_micro_context.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/165452390/fake_micro_context.o.d" -o ${OBJECTDIR}/_ext/165452390/fake_micro_context.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/fake_micro_context.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/165452390/flatbuffer_conversions_bridge.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/flatbuffer_conversions_bridge.cc  .generated_files/flags/default/70239b7dc94fcb49737f65ce972ab4c9d66c1c93 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165452390" 
	@${RM} ${OBJECTDIR}/_ext/165452390/flatbuffer_conversions_bridge.o.d 
	@${RM} ${OBJECTDIR}/_ext/165452390/flatbuffer_conversions_bridge.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/165452390/flatbuffer_conversions_bridge.o.d" -o ${OBJECTDIR}/_ext/165452390/flatbuffer_conversions_bridge.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/flatbuffer_conversions_bridge.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/165452390/flatbuffer_utils.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/flatbuffer_utils.cc  .generated_files/flags/default/68023e87ecaee70a5469a90687c1c03326ae2038 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165452390" 
	@${RM} ${OBJECTDIR}/_ext/165452390/flatbuffer_utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/165452390/flatbuffer_utils.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/165452390/flatbuffer_utils.o.d" -o ${OBJECTDIR}/_ext/165452390/flatbuffer_utils.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/flatbuffer_utils.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/165452390/memory_helpers.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/memory_helpers.cc  .generated_files/flags/default/e140239aacc98a5bdc6a2992e45ac5fef8c4cf1d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165452390" 
	@${RM} ${OBJECTDIR}/_ext/165452390/memory_helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/165452390/memory_helpers.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/165452390/memory_helpers.o.d" -o ${OBJECTDIR}/_ext/165452390/memory_helpers.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/memory_helpers.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/165452390/micro_allocation_info.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/micro_allocation_info.cc  .generated_files/flags/default/41209d1651f3f78d20e13b4f7c075370974a6fb2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165452390" 
	@${RM} ${OBJECTDIR}/_ext/165452390/micro_allocation_info.o.d 
	@${RM} ${OBJECTDIR}/_ext/165452390/micro_allocation_info.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/165452390/micro_allocation_info.o.d" -o ${OBJECTDIR}/_ext/165452390/micro_allocation_info.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/micro_allocation_info.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/165452390/micro_allocator.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/micro_allocator.cc  .generated_files/flags/default/783e82d4ad8861fb9241416d1eda72f5159fcce9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165452390" 
	@${RM} ${OBJECTDIR}/_ext/165452390/micro_allocator.o.d 
	@${RM} ${OBJECTDIR}/_ext/165452390/micro_allocator.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/165452390/micro_allocator.o.d" -o ${OBJECTDIR}/_ext/165452390/micro_allocator.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/micro_allocator.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/165452390/micro_context.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/micro_context.cc  .generated_files/flags/default/bb706c913070cda1d21f83df51af2dadb5673811 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165452390" 
	@${RM} ${OBJECTDIR}/_ext/165452390/micro_context.o.d 
	@${RM} ${OBJECTDIR}/_ext/165452390/micro_context.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/165452390/micro_context.o.d" -o ${OBJECTDIR}/_ext/165452390/micro_context.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/micro_context.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/165452390/micro_error_reporter.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/micro_error_reporter.cc  .generated_files/flags/default/2f4487809e24fbbaf660705c9061b12c35402410 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165452390" 
	@${RM} ${OBJECTDIR}/_ext/165452390/micro_error_reporter.o.d 
	@${RM} ${OBJECTDIR}/_ext/165452390/micro_error_reporter.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/165452390/micro_error_reporter.o.d" -o ${OBJECTDIR}/_ext/165452390/micro_error_reporter.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/micro_error_reporter.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/165452390/micro_graph.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/micro_graph.cc  .generated_files/flags/default/9371754ef32b9ab89d525484d7664f984ab6174a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165452390" 
	@${RM} ${OBJECTDIR}/_ext/165452390/micro_graph.o.d 
	@${RM} ${OBJECTDIR}/_ext/165452390/micro_graph.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/165452390/micro_graph.o.d" -o ${OBJECTDIR}/_ext/165452390/micro_graph.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/micro_graph.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/165452390/micro_interpreter.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/micro_interpreter.cc  .generated_files/flags/default/8e58eb40cf7591068785632f18c658bcae60782d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165452390" 
	@${RM} ${OBJECTDIR}/_ext/165452390/micro_interpreter.o.d 
	@${RM} ${OBJECTDIR}/_ext/165452390/micro_interpreter.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/165452390/micro_interpreter.o.d" -o ${OBJECTDIR}/_ext/165452390/micro_interpreter.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/micro_interpreter.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/165452390/micro_log.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/micro_log.cc  .generated_files/flags/default/d4b15d3596a0fa0029be4bd3c440471a172a7bb0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165452390" 
	@${RM} ${OBJECTDIR}/_ext/165452390/micro_log.o.d 
	@${RM} ${OBJECTDIR}/_ext/165452390/micro_log.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/165452390/micro_log.o.d" -o ${OBJECTDIR}/_ext/165452390/micro_log.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/micro_log.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/165452390/micro_profiler.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/micro_profiler.cc  .generated_files/flags/default/3d758ed591f58561cfced0d2eb10cffe96a30d58 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165452390" 
	@${RM} ${OBJECTDIR}/_ext/165452390/micro_profiler.o.d 
	@${RM} ${OBJECTDIR}/_ext/165452390/micro_profiler.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/165452390/micro_profiler.o.d" -o ${OBJECTDIR}/_ext/165452390/micro_profiler.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/micro_profiler.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/165452390/micro_resource_variable.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/micro_resource_variable.cc  .generated_files/flags/default/cb37ad3dd389a0d3dfbb19b69c516d4ab7220bd0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165452390" 
	@${RM} ${OBJECTDIR}/_ext/165452390/micro_resource_variable.o.d 
	@${RM} ${OBJECTDIR}/_ext/165452390/micro_resource_variable.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/165452390/micro_resource_variable.o.d" -o ${OBJECTDIR}/_ext/165452390/micro_resource_variable.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/micro_resource_variable.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/165452390/micro_string.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/micro_string.cc  .generated_files/flags/default/409ab5309e5d1783966cf44849c4718a9ebcbf2d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165452390" 
	@${RM} ${OBJECTDIR}/_ext/165452390/micro_string.o.d 
	@${RM} ${OBJECTDIR}/_ext/165452390/micro_string.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/165452390/micro_string.o.d" -o ${OBJECTDIR}/_ext/165452390/micro_string.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/micro_string.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/165452390/micro_time.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/micro_time.cc  .generated_files/flags/default/305d51fba91844b29640392d0cce022dba1cca0a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165452390" 
	@${RM} ${OBJECTDIR}/_ext/165452390/micro_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/165452390/micro_time.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/165452390/micro_time.o.d" -o ${OBJECTDIR}/_ext/165452390/micro_time.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/micro_time.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/165452390/micro_utils.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/micro_utils.cc  .generated_files/flags/default/de628bc41112fc329e939e444aa6cf6f9a9e3cbc .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165452390" 
	@${RM} ${OBJECTDIR}/_ext/165452390/micro_utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/165452390/micro_utils.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/165452390/micro_utils.o.d" -o ${OBJECTDIR}/_ext/165452390/micro_utils.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/micro_utils.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/165452390/mock_micro_graph.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/mock_micro_graph.cc  .generated_files/flags/default/9507439472c498cb2705940fa5f7b99024980dba .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165452390" 
	@${RM} ${OBJECTDIR}/_ext/165452390/mock_micro_graph.o.d 
	@${RM} ${OBJECTDIR}/_ext/165452390/mock_micro_graph.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/165452390/mock_micro_graph.o.d" -o ${OBJECTDIR}/_ext/165452390/mock_micro_graph.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/mock_micro_graph.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/165452390/non_persistent_arena_buffer_allocator.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/non_persistent_arena_buffer_allocator.cc  .generated_files/flags/default/6f38347e12be17bed3297f07df3fd2250e7758c8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165452390" 
	@${RM} ${OBJECTDIR}/_ext/165452390/non_persistent_arena_buffer_allocator.o.d 
	@${RM} ${OBJECTDIR}/_ext/165452390/non_persistent_arena_buffer_allocator.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/165452390/non_persistent_arena_buffer_allocator.o.d" -o ${OBJECTDIR}/_ext/165452390/non_persistent_arena_buffer_allocator.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/non_persistent_arena_buffer_allocator.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/165452390/op_resolver_bridge.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/op_resolver_bridge.cc  .generated_files/flags/default/3b41898c030ec2235ce91feb52e854326f8dbab3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165452390" 
	@${RM} ${OBJECTDIR}/_ext/165452390/op_resolver_bridge.o.d 
	@${RM} ${OBJECTDIR}/_ext/165452390/op_resolver_bridge.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/165452390/op_resolver_bridge.o.d" -o ${OBJECTDIR}/_ext/165452390/op_resolver_bridge.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/op_resolver_bridge.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/165452390/persistent_arena_buffer_allocator.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/persistent_arena_buffer_allocator.cc  .generated_files/flags/default/17630f9322e591eb215b49513fe7b4536acd33d8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165452390" 
	@${RM} ${OBJECTDIR}/_ext/165452390/persistent_arena_buffer_allocator.o.d 
	@${RM} ${OBJECTDIR}/_ext/165452390/persistent_arena_buffer_allocator.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/165452390/persistent_arena_buffer_allocator.o.d" -o ${OBJECTDIR}/_ext/165452390/persistent_arena_buffer_allocator.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/persistent_arena_buffer_allocator.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/165452390/recording_micro_allocator.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/recording_micro_allocator.cc  .generated_files/flags/default/a2b0da62810eead4eecc08913824358b44e37783 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165452390" 
	@${RM} ${OBJECTDIR}/_ext/165452390/recording_micro_allocator.o.d 
	@${RM} ${OBJECTDIR}/_ext/165452390/recording_micro_allocator.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/165452390/recording_micro_allocator.o.d" -o ${OBJECTDIR}/_ext/165452390/recording_micro_allocator.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/recording_micro_allocator.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/165452390/recording_single_arena_buffer_allocator.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/recording_single_arena_buffer_allocator.cc  .generated_files/flags/default/432ae9a8c62663004bfd922c1b2e6ff36fd387d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165452390" 
	@${RM} ${OBJECTDIR}/_ext/165452390/recording_single_arena_buffer_allocator.o.d 
	@${RM} ${OBJECTDIR}/_ext/165452390/recording_single_arena_buffer_allocator.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/165452390/recording_single_arena_buffer_allocator.o.d" -o ${OBJECTDIR}/_ext/165452390/recording_single_arena_buffer_allocator.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/recording_single_arena_buffer_allocator.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/165452390/schema_utils.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/schema_utils.cc  .generated_files/flags/default/eb9e39f431c3ba4a0834b1ea9036b5d8614cf70a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165452390" 
	@${RM} ${OBJECTDIR}/_ext/165452390/schema_utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/165452390/schema_utils.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/165452390/schema_utils.o.d" -o ${OBJECTDIR}/_ext/165452390/schema_utils.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/schema_utils.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/165452390/single_arena_buffer_allocator.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/single_arena_buffer_allocator.cc  .generated_files/flags/default/5746c6e23d762e32a7e1c05f92ac0fbec35aef6e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165452390" 
	@${RM} ${OBJECTDIR}/_ext/165452390/single_arena_buffer_allocator.o.d 
	@${RM} ${OBJECTDIR}/_ext/165452390/single_arena_buffer_allocator.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/165452390/single_arena_buffer_allocator.o.d" -o ${OBJECTDIR}/_ext/165452390/single_arena_buffer_allocator.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/single_arena_buffer_allocator.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/165452390/system_setup.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/system_setup.cc  .generated_files/flags/default/f9f630d23f175268e7d6d17cd67c5fa06aac7e2d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165452390" 
	@${RM} ${OBJECTDIR}/_ext/165452390/system_setup.o.d 
	@${RM} ${OBJECTDIR}/_ext/165452390/system_setup.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/165452390/system_setup.o.d" -o ${OBJECTDIR}/_ext/165452390/system_setup.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/system_setup.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/165452390/test_helpers.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/test_helpers.cc  .generated_files/flags/default/40366421f84c9c3a15882db9b12f0fa77282a414 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165452390" 
	@${RM} ${OBJECTDIR}/_ext/165452390/test_helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/165452390/test_helpers.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/165452390/test_helpers.o.d" -o ${OBJECTDIR}/_ext/165452390/test_helpers.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/test_helpers.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/165452390/test_helper_custom_ops.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/test_helper_custom_ops.cc  .generated_files/flags/default/7e58e64062c4900b0ac86608b7eba80ee9e7e3a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165452390" 
	@${RM} ${OBJECTDIR}/_ext/165452390/test_helper_custom_ops.o.d 
	@${RM} ${OBJECTDIR}/_ext/165452390/test_helper_custom_ops.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/165452390/test_helper_custom_ops.o.d" -o ${OBJECTDIR}/_ext/165452390/test_helper_custom_ops.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/test_helper_custom_ops.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1889185960/tflite_learn_950386_5_compiled.o: ../ai-code/tflite-model/tflite_learn_950386_5_compiled.cpp  .generated_files/flags/default/ff035774a59581c06c01e82a5f47ca240b8c3c00 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1889185960" 
	@${RM} ${OBJECTDIR}/_ext/1889185960/tflite_learn_950386_5_compiled.o.d 
	@${RM} ${OBJECTDIR}/_ext/1889185960/tflite_learn_950386_5_compiled.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/1889185960/tflite_learn_950386_5_compiled.o.d" -o ${OBJECTDIR}/_ext/1889185960/tflite_learn_950386_5_compiled.o ../ai-code/tflite-model/tflite_learn_950386_5_compiled.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/Main.o: Main.cpp  .generated_files/flags/default/fc9d2caa3becc3a783712425f15e5a7022cef54f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Main.o.d 
	@${RM} ${OBJECTDIR}/Main.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/Main.o.d" -o ${OBJECTDIR}/Main.o Main.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1558683427/ei_pic32_porting.o: ../ai-code/ei_pic32_porting.cpp  .generated_files/flags/default/6c87faca8a7f798191c6e29d7dcf6530813ca854 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1558683427" 
	@${RM} ${OBJECTDIR}/_ext/1558683427/ei_pic32_porting.o.d 
	@${RM} ${OBJECTDIR}/_ext/1558683427/ei_pic32_porting.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SNAP=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/1558683427/ei_pic32_porting.o.d" -o ${OBJECTDIR}/_ext/1558683427/ei_pic32_porting.o ../ai-code/ei_pic32_porting.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/165077998/ei_run_classifier_c.o: ../ai-code/edge-impulse-sdk/classifier/ei_run_classifier_c.cpp  .generated_files/flags/default/d013822fcef200fa5c90c5b5865a4f5a7ae5bcf1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165077998" 
	@${RM} ${OBJECTDIR}/_ext/165077998/ei_run_classifier_c.o.d 
	@${RM} ${OBJECTDIR}/_ext/165077998/ei_run_classifier_c.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/165077998/ei_run_classifier_c.o.d" -o ${OBJECTDIR}/_ext/165077998/ei_run_classifier_c.o ../ai-code/edge-impulse-sdk/classifier/ei_run_classifier_c.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/307672522/fast-dct-fft.o: ../ai-code/edge-impulse-sdk/dsp/dct/fast-dct-fft.cpp  .generated_files/flags/default/5e5c6445957c396f9ca6dd0642e2a541b5d50d43 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/307672522" 
	@${RM} ${OBJECTDIR}/_ext/307672522/fast-dct-fft.o.d 
	@${RM} ${OBJECTDIR}/_ext/307672522/fast-dct-fft.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/307672522/fast-dct-fft.o.d" -o ${OBJECTDIR}/_ext/307672522/fast-dct-fft.o ../ai-code/edge-impulse-sdk/dsp/dct/fast-dct-fft.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/684350332/processing.o: ../ai-code/edge-impulse-sdk/dsp/image/processing.cpp  .generated_files/flags/default/868521d87c4415a48671fa397053caaa3f33d715 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/684350332" 
	@${RM} ${OBJECTDIR}/_ext/684350332/processing.o.d 
	@${RM} ${OBJECTDIR}/_ext/684350332/processing.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/684350332/processing.o.d" -o ${OBJECTDIR}/_ext/684350332/processing.o ../ai-code/edge-impulse-sdk/dsp/image/processing.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2086818665/kiss_fft.o: ../ai-code/edge-impulse-sdk/dsp/kissfft/kiss_fft.cpp  .generated_files/flags/default/ef7f7aa8a687c21d00bfcc6d43bbe24080913fc8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2086818665" 
	@${RM} ${OBJECTDIR}/_ext/2086818665/kiss_fft.o.d 
	@${RM} ${OBJECTDIR}/_ext/2086818665/kiss_fft.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/2086818665/kiss_fft.o.d" -o ${OBJECTDIR}/_ext/2086818665/kiss_fft.o ../ai-code/edge-impulse-sdk/dsp/kissfft/kiss_fft.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2086818665/kiss_fftr.o: ../ai-code/edge-impulse-sdk/dsp/kissfft/kiss_fftr.cpp  .generated_files/flags/default/d83980342f4d6061e557db7d819e898081be5a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2086818665" 
	@${RM} ${OBJECTDIR}/_ext/2086818665/kiss_fftr.o.d 
	@${RM} ${OBJECTDIR}/_ext/2086818665/kiss_fftr.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/2086818665/kiss_fftr.o.d" -o ${OBJECTDIR}/_ext/2086818665/kiss_fftr.o ../ai-code/edge-impulse-sdk/dsp/kissfft/kiss_fftr.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1032610032/memory.o: ../ai-code/edge-impulse-sdk/dsp/memory.cpp  .generated_files/flags/default/f52f1746d1bcc600762b440f3a11b5019a183790 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1032610032" 
	@${RM} ${OBJECTDIR}/_ext/1032610032/memory.o.d 
	@${RM} ${OBJECTDIR}/_ext/1032610032/memory.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/1032610032/memory.o.d" -o ${OBJECTDIR}/_ext/1032610032/memory.o ../ai-code/edge-impulse-sdk/dsp/memory.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/342965028/debug_log.o: ../ai-code/edge-impulse-sdk/porting/posix/debug_log.cpp  .generated_files/flags/default/b066048a5f60e269e110d25be21f9671d46a33b3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/342965028" 
	@${RM} ${OBJECTDIR}/_ext/342965028/debug_log.o.d 
	@${RM} ${OBJECTDIR}/_ext/342965028/debug_log.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/342965028/debug_log.o.d" -o ${OBJECTDIR}/_ext/342965028/debug_log.o ../ai-code/edge-impulse-sdk/porting/posix/debug_log.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/342965028/ei_classifier_porting.o: ../ai-code/edge-impulse-sdk/porting/posix/ei_classifier_porting.cpp  .generated_files/flags/default/9f3901049c82c7aa5b80b0753d7aab02781d4f80 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/342965028" 
	@${RM} ${OBJECTDIR}/_ext/342965028/ei_classifier_porting.o.d 
	@${RM} ${OBJECTDIR}/_ext/342965028/ei_classifier_porting.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/342965028/ei_classifier_porting.o.d" -o ${OBJECTDIR}/_ext/342965028/ei_classifier_porting.o ../ai-code/edge-impulse-sdk/porting/posix/ei_classifier_porting.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1467219692/common.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/core/api/common.cc  .generated_files/flags/default/c26245d4f48a83e9a42db3832f3f31288ec54a9f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1467219692" 
	@${RM} ${OBJECTDIR}/_ext/1467219692/common.o.d 
	@${RM} ${OBJECTDIR}/_ext/1467219692/common.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/1467219692/common.o.d" -o ${OBJECTDIR}/_ext/1467219692/common.o ../ai-code/edge-impulse-sdk/tensorflow/lite/core/api/common.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1467219692/error_reporter.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/core/api/error_reporter.cc  .generated_files/flags/default/593eee1f4e49c8e574d6df92fee033cbaf357941 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1467219692" 
	@${RM} ${OBJECTDIR}/_ext/1467219692/error_reporter.o.d 
	@${RM} ${OBJECTDIR}/_ext/1467219692/error_reporter.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/1467219692/error_reporter.o.d" -o ${OBJECTDIR}/_ext/1467219692/error_reporter.o ../ai-code/edge-impulse-sdk/tensorflow/lite/core/api/error_reporter.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1467219692/flatbuffer_conversions.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/core/api/flatbuffer_conversions.cc  .generated_files/flags/default/e51b392867e949a449f08d30f78018f1377a7b54 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1467219692" 
	@${RM} ${OBJECTDIR}/_ext/1467219692/flatbuffer_conversions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1467219692/flatbuffer_conversions.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/1467219692/flatbuffer_conversions.o.d" -o ${OBJECTDIR}/_ext/1467219692/flatbuffer_conversions.o ../ai-code/edge-impulse-sdk/tensorflow/lite/core/api/flatbuffer_conversions.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1467219692/op_resolver.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/core/api/op_resolver.cc  .generated_files/flags/default/3e33fb4b07b0d498b49dfe237e1717620e1ac15d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1467219692" 
	@${RM} ${OBJECTDIR}/_ext/1467219692/op_resolver.o.d 
	@${RM} ${OBJECTDIR}/_ext/1467219692/op_resolver.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/1467219692/op_resolver.o.d" -o ${OBJECTDIR}/_ext/1467219692/op_resolver.o ../ai-code/edge-impulse-sdk/tensorflow/lite/core/api/op_resolver.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1467219692/tensor_utils.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/core/api/tensor_utils.cc  .generated_files/flags/default/62fe0eca5fc9bb58bc6dbe908ccd897ed88efc20 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1467219692" 
	@${RM} ${OBJECTDIR}/_ext/1467219692/tensor_utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1467219692/tensor_utils.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/1467219692/tensor_utils.o.d" -o ${OBJECTDIR}/_ext/1467219692/tensor_utils.o ../ai-code/edge-impulse-sdk/tensorflow/lite/core/api/tensor_utils.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/484606540/tree_ensemble_classifier.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/kernels/custom/tree_ensemble_classifier.cc  .generated_files/flags/default/cfc138673431ad2c62f29ed4ed211dca923db4cd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/484606540" 
	@${RM} ${OBJECTDIR}/_ext/484606540/tree_ensemble_classifier.o.d 
	@${RM} ${OBJECTDIR}/_ext/484606540/tree_ensemble_classifier.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/484606540/tree_ensemble_classifier.o.d" -o ${OBJECTDIR}/_ext/484606540/tree_ensemble_classifier.o ../ai-code/edge-impulse-sdk/tensorflow/lite/kernels/custom/tree_ensemble_classifier.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1886178240/portable_tensor_utils.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/kernels/internal/portable_tensor_utils.cc  .generated_files/flags/default/d4a85192882b07d77bd8dba7fbb30ea5b869351 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1886178240" 
	@${RM} ${OBJECTDIR}/_ext/1886178240/portable_tensor_utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1886178240/portable_tensor_utils.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/1886178240/portable_tensor_utils.o.d" -o ${OBJECTDIR}/_ext/1886178240/portable_tensor_utils.o ../ai-code/edge-impulse-sdk/tensorflow/lite/kernels/internal/portable_tensor_utils.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1886178240/quantization_util.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/kernels/internal/quantization_util.cc  .generated_files/flags/default/65bad42c043bbc57e2247c683fc945c4e62a25e7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1886178240" 
	@${RM} ${OBJECTDIR}/_ext/1886178240/quantization_util.o.d 
	@${RM} ${OBJECTDIR}/_ext/1886178240/quantization_util.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/1886178240/quantization_util.o.d" -o ${OBJECTDIR}/_ext/1886178240/quantization_util.o ../ai-code/edge-impulse-sdk/tensorflow/lite/kernels/internal/quantization_util.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1886178240/reference_portable_tensor_utils.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/kernels/internal/reference_portable_tensor_utils.cc  .generated_files/flags/default/76f9efb6ff5925e544736f5eca708d7150ce44a8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1886178240" 
	@${RM} ${OBJECTDIR}/_ext/1886178240/reference_portable_tensor_utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1886178240/reference_portable_tensor_utils.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/1886178240/reference_portable_tensor_utils.o.d" -o ${OBJECTDIR}/_ext/1886178240/reference_portable_tensor_utils.o ../ai-code/edge-impulse-sdk/tensorflow/lite/kernels/internal/reference_portable_tensor_utils.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1886178240/tensor_utils.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/kernels/internal/tensor_utils.cc  .generated_files/flags/default/9a60f84baf08e5cdfc919b1259e61db3098374b2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1886178240" 
	@${RM} ${OBJECTDIR}/_ext/1886178240/tensor_utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1886178240/tensor_utils.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/1886178240/tensor_utils.o.d" -o ${OBJECTDIR}/_ext/1886178240/tensor_utils.o ../ai-code/edge-impulse-sdk/tensorflow/lite/kernels/internal/tensor_utils.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1961753300/kernel_util_lite.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/kernels/kernel_util_lite.cc  .generated_files/flags/default/943dbc7bf621ddab2803be3ea04a4791946d1755 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1961753300" 
	@${RM} ${OBJECTDIR}/_ext/1961753300/kernel_util_lite.o.d 
	@${RM} ${OBJECTDIR}/_ext/1961753300/kernel_util_lite.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/1961753300/kernel_util_lite.o.d" -o ${OBJECTDIR}/_ext/1961753300/kernel_util_lite.o ../ai-code/edge-impulse-sdk/tensorflow/lite/kernels/kernel_util_lite.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/activations.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/activations.cc  .generated_files/flags/default/dfbc294ac9f0d9003b65722731a5ade8da8172d9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/activations.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/activations.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/activations.o.d" -o ${OBJECTDIR}/_ext/897492065/activations.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/activations.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/activations_common.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/activations_common.cc  .generated_files/flags/default/a50e40e2605e8daaf90cb3e5d50731f30669cfdb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/activations_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/activations_common.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/activations_common.o.d" -o ${OBJECTDIR}/_ext/897492065/activations_common.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/activations_common.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/add.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/add.cc  .generated_files/flags/default/88b0ba1e2c557ae59699a43ee49e0d450febf9fa .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/add.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/add.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/add.o.d" -o ${OBJECTDIR}/_ext/897492065/add.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/add.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/add_common.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/add_common.cc  .generated_files/flags/default/61d43a63a518af3be193a58c3d6f1ed5a81a664f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/add_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/add_common.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/add_common.o.d" -o ${OBJECTDIR}/_ext/897492065/add_common.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/add_common.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/add_n.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/add_n.cc  .generated_files/flags/default/71db6f5020f8d3cbfb498fcaa3aeeeb9c3901765 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/add_n.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/add_n.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/add_n.o.d" -o ${OBJECTDIR}/_ext/897492065/add_n.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/add_n.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/arg_min_max.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/arg_min_max.cc  .generated_files/flags/default/996ee16aa57bf2d88c156ed5bf06aa2ffdbb7db9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/arg_min_max.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/arg_min_max.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/arg_min_max.o.d" -o ${OBJECTDIR}/_ext/897492065/arg_min_max.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/arg_min_max.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/assign_variable.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/assign_variable.cc  .generated_files/flags/default/ceaf4a4000a293bb1037c3c8cf0153ad68535245 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/assign_variable.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/assign_variable.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/assign_variable.o.d" -o ${OBJECTDIR}/_ext/897492065/assign_variable.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/assign_variable.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/batch_matmul.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/batch_matmul.cc  .generated_files/flags/default/4fd4525f539bb73fe2fed65e1b792663619abc46 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/batch_matmul.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/batch_matmul.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/batch_matmul.o.d" -o ${OBJECTDIR}/_ext/897492065/batch_matmul.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/batch_matmul.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/batch_to_space_nd.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/batch_to_space_nd.cc  .generated_files/flags/default/7d633dbf1faedc00488265bb4bc0e24c95469495 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/batch_to_space_nd.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/batch_to_space_nd.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/batch_to_space_nd.o.d" -o ${OBJECTDIR}/_ext/897492065/batch_to_space_nd.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/batch_to_space_nd.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/broadcast_args.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/broadcast_args.cc  .generated_files/flags/default/343a722481c431064aec0aa822d10e1da0fd94e7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/broadcast_args.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/broadcast_args.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/broadcast_args.o.d" -o ${OBJECTDIR}/_ext/897492065/broadcast_args.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/broadcast_args.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/broadcast_to.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/broadcast_to.cc  .generated_files/flags/default/6659376e337cfa1cabea9b6a5e32f106ef1067d6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/broadcast_to.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/broadcast_to.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/broadcast_to.o.d" -o ${OBJECTDIR}/_ext/897492065/broadcast_to.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/broadcast_to.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/call_once.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/call_once.cc  .generated_files/flags/default/26e9bbd0b4e8cd7cb763f21f50e648863d8dddf6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/call_once.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/call_once.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/call_once.o.d" -o ${OBJECTDIR}/_ext/897492065/call_once.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/call_once.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/cast.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/cast.cc  .generated_files/flags/default/5cb6bc8de1c1a951a141c51ccf86e79c3b05f91 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/cast.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/cast.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/cast.o.d" -o ${OBJECTDIR}/_ext/897492065/cast.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/cast.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/ceil.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/ceil.cc  .generated_files/flags/default/351bde3cb2cc6b265c9c57e1378aaac49930bfb7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/ceil.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/ceil.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/ceil.o.d" -o ${OBJECTDIR}/_ext/897492065/ceil.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/ceil.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/circular_buffer.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/circular_buffer.cc  .generated_files/flags/default/1dfda257b789997859a3a5fb18ad1f4771114bc9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/circular_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/circular_buffer.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/circular_buffer.o.d" -o ${OBJECTDIR}/_ext/897492065/circular_buffer.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/circular_buffer.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/circular_buffer_common.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/circular_buffer_common.cc  .generated_files/flags/default/3db2782e89a458e4921010fd146a3784c2ce6175 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/circular_buffer_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/circular_buffer_common.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/circular_buffer_common.o.d" -o ${OBJECTDIR}/_ext/897492065/circular_buffer_common.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/circular_buffer_common.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/comparisons.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/comparisons.cc  .generated_files/flags/default/3510bea6618c563ef099ae57d3886a3dab25cefa .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/comparisons.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/comparisons.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/comparisons.o.d" -o ${OBJECTDIR}/_ext/897492065/comparisons.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/comparisons.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/complex_abs.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/complex_abs.cc  .generated_files/flags/default/3ce7e4db7d605ec2e86f3d9ab19fc227b43bf8f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/complex_abs.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/complex_abs.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/complex_abs.o.d" -o ${OBJECTDIR}/_ext/897492065/complex_abs.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/complex_abs.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/concatenation.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/concatenation.cc  .generated_files/flags/default/f9f6a5ec3c88a772d48ce62a7432e969f13c5fcd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/concatenation.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/concatenation.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/concatenation.o.d" -o ${OBJECTDIR}/_ext/897492065/concatenation.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/concatenation.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/conv.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/conv.cc  .generated_files/flags/default/7c3ccf44b467ac8c86317f07d685f66d484788b3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/conv.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/conv.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/conv.o.d" -o ${OBJECTDIR}/_ext/897492065/conv.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/conv.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/conv_common.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/conv_common.cc  .generated_files/flags/default/a0d53a26a5ee79b18f9bbd027058fe7504f4c2fd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/conv_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/conv_common.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/conv_common.o.d" -o ${OBJECTDIR}/_ext/897492065/conv_common.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/conv_common.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/cumsum.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/cumsum.cc  .generated_files/flags/default/55f1d88c4d82ad22dfdbe3dcacd892c47dafb32f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/cumsum.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/cumsum.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/cumsum.o.d" -o ${OBJECTDIR}/_ext/897492065/cumsum.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/cumsum.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/depthwise_conv.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/depthwise_conv.cc  .generated_files/flags/default/da0019e315c466dfaa7a7b15e7324f5e4b6ddb16 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/depthwise_conv.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/depthwise_conv.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/depthwise_conv.o.d" -o ${OBJECTDIR}/_ext/897492065/depthwise_conv.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/depthwise_conv.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/depthwise_conv_common.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/depthwise_conv_common.cc  .generated_files/flags/default/7476f9694668f31bb653fd9342f61e56548f314c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/depthwise_conv_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/depthwise_conv_common.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/depthwise_conv_common.o.d" -o ${OBJECTDIR}/_ext/897492065/depthwise_conv_common.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/depthwise_conv_common.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/depth_to_space.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/depth_to_space.cc  .generated_files/flags/default/5e13e4f4477286e8c67d6fc5de8d24fc7d9f1a4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/depth_to_space.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/depth_to_space.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/depth_to_space.o.d" -o ${OBJECTDIR}/_ext/897492065/depth_to_space.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/depth_to_space.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/dequantize.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/dequantize.cc  .generated_files/flags/default/bb6e14363dc5a198426de0271afdf3c63fd2fa04 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/dequantize.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/dequantize.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/dequantize.o.d" -o ${OBJECTDIR}/_ext/897492065/dequantize.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/dequantize.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/dequantize_common.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/dequantize_common.cc  .generated_files/flags/default/c90f6b8390805d8fab5d00d169bc200ceb468a3c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/dequantize_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/dequantize_common.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/dequantize_common.o.d" -o ${OBJECTDIR}/_ext/897492065/dequantize_common.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/dequantize_common.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/detection_postprocess.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/detection_postprocess.cc  .generated_files/flags/default/5b075b8c6481b036472ac959aba2aac7820ca4b7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/detection_postprocess.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/detection_postprocess.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/detection_postprocess.o.d" -o ${OBJECTDIR}/_ext/897492065/detection_postprocess.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/detection_postprocess.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/div.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/div.cc  .generated_files/flags/default/87e1b5e17e16d88da05695bda7a71906a925f3cd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/div.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/div.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/div.o.d" -o ${OBJECTDIR}/_ext/897492065/div.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/div.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/elementwise.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/elementwise.cc  .generated_files/flags/default/38917f75c4113e3d895010f515a203c5d6b6f795 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/elementwise.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/elementwise.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/elementwise.o.d" -o ${OBJECTDIR}/_ext/897492065/elementwise.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/elementwise.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/elu.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/elu.cc  .generated_files/flags/default/b6c022ff741c844d8f57f736ee855a8cea02d96e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/elu.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/elu.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/elu.o.d" -o ${OBJECTDIR}/_ext/897492065/elu.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/elu.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/ethosu.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/ethosu.cc  .generated_files/flags/default/80bfbf4b1099558272ace9221e156733abca41f2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/ethosu.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/ethosu.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/ethosu.o.d" -o ${OBJECTDIR}/_ext/897492065/ethosu.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/ethosu.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/exp.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/exp.cc  .generated_files/flags/default/81d99c9c52443ea9768ec396b60a081e07d606ca .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/exp.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/exp.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/exp.o.d" -o ${OBJECTDIR}/_ext/897492065/exp.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/exp.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/expand_dims.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/expand_dims.cc  .generated_files/flags/default/95446db42c0f577e2a6e22b50ca577cf3fbc267d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/expand_dims.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/expand_dims.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/expand_dims.o.d" -o ${OBJECTDIR}/_ext/897492065/expand_dims.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/expand_dims.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/fill.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/fill.cc  .generated_files/flags/default/faf209c0bbc8a10f3c47c6cba42f48f85f71587 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/fill.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/fill.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/fill.o.d" -o ${OBJECTDIR}/_ext/897492065/fill.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/fill.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/floor.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/floor.cc  .generated_files/flags/default/f66f3a91b8dfede288a6c71fbb8b742b30522ccf .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/floor.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/floor.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/floor.o.d" -o ${OBJECTDIR}/_ext/897492065/floor.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/floor.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/floor_div.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/floor_div.cc  .generated_files/flags/default/cf87063cb85f3e43dfc5e61edc0c7d1ef49de60e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/floor_div.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/floor_div.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/floor_div.o.d" -o ${OBJECTDIR}/_ext/897492065/floor_div.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/floor_div.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/floor_mod.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/floor_mod.cc  .generated_files/flags/default/eff6842ef4cd27a0e4e25ea18c8f4589cc5f282 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/floor_mod.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/floor_mod.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/floor_mod.o.d" -o ${OBJECTDIR}/_ext/897492065/floor_mod.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/floor_mod.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/fully_connected.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/fully_connected.cc  .generated_files/flags/default/7a5e3c5cce3c8c9a633529b2efd72f823c4e0b2f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/fully_connected.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/fully_connected.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/fully_connected.o.d" -o ${OBJECTDIR}/_ext/897492065/fully_connected.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/fully_connected.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/fully_connected_common.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/fully_connected_common.cc  .generated_files/flags/default/b7a17b1302fcfa097869072f8a1f55a74c7aad1f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/fully_connected_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/fully_connected_common.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/fully_connected_common.o.d" -o ${OBJECTDIR}/_ext/897492065/fully_connected_common.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/fully_connected_common.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/gather.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/gather.cc  .generated_files/flags/default/79fb7576d2af31fa3ccdb2837289ee418b0a1a09 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/gather.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/gather.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/gather.o.d" -o ${OBJECTDIR}/_ext/897492065/gather.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/gather.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/gather_nd.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/gather_nd.cc  .generated_files/flags/default/1e00f33d0483cdb5c5571b000fb4490ecbd4ae81 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/gather_nd.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/gather_nd.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/gather_nd.o.d" -o ${OBJECTDIR}/_ext/897492065/gather_nd.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/gather_nd.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/hard_swish.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/hard_swish.cc  .generated_files/flags/default/5809897077f3f7a3e734517a69636b24c6f7fe8c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/hard_swish.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/hard_swish.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/hard_swish.o.d" -o ${OBJECTDIR}/_ext/897492065/hard_swish.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/hard_swish.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/hard_swish_common.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/hard_swish_common.cc  .generated_files/flags/default/5a3c91e20c5a97b740e4c6a517cbc34cbea5aa6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/hard_swish_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/hard_swish_common.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/hard_swish_common.o.d" -o ${OBJECTDIR}/_ext/897492065/hard_swish_common.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/hard_swish_common.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/if.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/if.cc  .generated_files/flags/default/f3a3b581b8a6444467453507e60f1c2e2f529f66 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/if.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/if.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/if.o.d" -o ${OBJECTDIR}/_ext/897492065/if.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/if.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/kernel_runner.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/kernel_runner.cc  .generated_files/flags/default/e5725072e52e73dc7ccd2a8bc84ffc01539ad3c3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/kernel_runner.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/kernel_runner.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/kernel_runner.o.d" -o ${OBJECTDIR}/_ext/897492065/kernel_runner.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/kernel_runner.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/kernel_util_micro.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/kernel_util_micro.cc  .generated_files/flags/default/e873841ff52c99c3e9be5b34bd9c5b84796e5d8a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/kernel_util_micro.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/kernel_util_micro.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/kernel_util_micro.o.d" -o ${OBJECTDIR}/_ext/897492065/kernel_util_micro.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/kernel_util_micro.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/l2norm.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/l2norm.cc  .generated_files/flags/default/af438c37045e8ee65772b81f117d87d3298dba37 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/l2norm.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/l2norm.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/l2norm.o.d" -o ${OBJECTDIR}/_ext/897492065/l2norm.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/l2norm.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/l2_pool_2d.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/l2_pool_2d.cc  .generated_files/flags/default/1e0e1f7ccb591166798ca09e2fda268e752bb9e3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/l2_pool_2d.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/l2_pool_2d.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/l2_pool_2d.o.d" -o ${OBJECTDIR}/_ext/897492065/l2_pool_2d.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/l2_pool_2d.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/leaky_relu.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/leaky_relu.cc  .generated_files/flags/default/fdb8667c73c17eb14de3bc6d548a9be22e743906 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/leaky_relu.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/leaky_relu.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/leaky_relu.o.d" -o ${OBJECTDIR}/_ext/897492065/leaky_relu.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/leaky_relu.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/leaky_relu_common.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/leaky_relu_common.cc  .generated_files/flags/default/74c9a70de98c23eb84fd789a9e339e3fd4cf6968 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/leaky_relu_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/leaky_relu_common.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/leaky_relu_common.o.d" -o ${OBJECTDIR}/_ext/897492065/leaky_relu_common.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/leaky_relu_common.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/logical.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/logical.cc  .generated_files/flags/default/c76cf7775e387263c6d470488a2a1ff1265753b4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/logical.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/logical.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/logical.o.d" -o ${OBJECTDIR}/_ext/897492065/logical.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/logical.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/logical_common.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/logical_common.cc  .generated_files/flags/default/99e9e8e6397825db3c8747c6e577c299ed29083 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/logical_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/logical_common.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/logical_common.o.d" -o ${OBJECTDIR}/_ext/897492065/logical_common.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/logical_common.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/logistic.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/logistic.cc  .generated_files/flags/default/94df4a11d0afe351a8a845b28f32f49c7d430852 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/logistic.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/logistic.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/logistic.o.d" -o ${OBJECTDIR}/_ext/897492065/logistic.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/logistic.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/logistic_common.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/logistic_common.cc  .generated_files/flags/default/c0ce7a9982e111c5de8556dbae0e39e9e325f8ca .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/logistic_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/logistic_common.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/logistic_common.o.d" -o ${OBJECTDIR}/_ext/897492065/logistic_common.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/logistic_common.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/log_softmax.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/log_softmax.cc  .generated_files/flags/default/2eab5f9f9df07e141f38794fd47799e3d3c5113a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/log_softmax.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/log_softmax.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/log_softmax.o.d" -o ${OBJECTDIR}/_ext/897492065/log_softmax.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/log_softmax.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/lstm_eval.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/lstm_eval.cc  .generated_files/flags/default/202ac039e7f18bc99526934cc689d975a0630b64 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/lstm_eval.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/lstm_eval.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/lstm_eval.o.d" -o ${OBJECTDIR}/_ext/897492065/lstm_eval.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/lstm_eval.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/maximum_minimum.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/maximum_minimum.cc  .generated_files/flags/default/a583e6603a89bc3b9d5062a06a9b264606de84f6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/maximum_minimum.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/maximum_minimum.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/maximum_minimum.o.d" -o ${OBJECTDIR}/_ext/897492065/maximum_minimum.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/maximum_minimum.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/micro_tensor_utils.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/micro_tensor_utils.cc  .generated_files/flags/default/d67ea3ff807465bb3e555ec0569d02ca860c1c39 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/micro_tensor_utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/micro_tensor_utils.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/micro_tensor_utils.o.d" -o ${OBJECTDIR}/_ext/897492065/micro_tensor_utils.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/micro_tensor_utils.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/mirror_pad.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/mirror_pad.cc  .generated_files/flags/default/e7bdbe337b9b2ec421f50e0e09792a15ff574841 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/mirror_pad.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/mirror_pad.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/mirror_pad.o.d" -o ${OBJECTDIR}/_ext/897492065/mirror_pad.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/mirror_pad.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/mli_interface.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/mli_interface.cc  .generated_files/flags/default/652f13a166c1c7ebe0e9a5714009067267afd083 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/mli_interface.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/mli_interface.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/mli_interface.o.d" -o ${OBJECTDIR}/_ext/897492065/mli_interface.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/mli_interface.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/mli_slicers.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/mli_slicers.cc  .generated_files/flags/default/cff064cd02c26720ecb32370a2e5f881c00962ce .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/mli_slicers.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/mli_slicers.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/mli_slicers.o.d" -o ${OBJECTDIR}/_ext/897492065/mli_slicers.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/mli_slicers.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/mul.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/mul.cc  .generated_files/flags/default/1cc227faed519c05a3151984e824591c8876c76a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/mul.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/mul.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/mul.o.d" -o ${OBJECTDIR}/_ext/897492065/mul.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/mul.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/mul_common.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/mul_common.cc  .generated_files/flags/default/6c4a4f0f27d83665abfe879baa295f75082edb53 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/mul_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/mul_common.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/mul_common.o.d" -o ${OBJECTDIR}/_ext/897492065/mul_common.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/mul_common.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/neg.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/neg.cc  .generated_files/flags/default/d2f88c57803a547debf47ad9e7f8f322a051f22f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/neg.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/neg.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/neg.o.d" -o ${OBJECTDIR}/_ext/897492065/neg.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/neg.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/pack.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/pack.cc  .generated_files/flags/default/7b89568727cff1c5d5d4b6f7612485743a0a524 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/pack.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/pack.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/pack.o.d" -o ${OBJECTDIR}/_ext/897492065/pack.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/pack.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/pad.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/pad.cc  .generated_files/flags/default/a1cd1925c3fc01096bbb47eddadbd6724c9b48d0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/pad.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/pad.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/pad.o.d" -o ${OBJECTDIR}/_ext/897492065/pad.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/pad.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/pooling.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/pooling.cc  .generated_files/flags/default/8ca89b78498c8a830f9f95e90f14b9bcaab8a77f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/pooling.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/pooling.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/pooling.o.d" -o ${OBJECTDIR}/_ext/897492065/pooling.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/pooling.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/pooling_common.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/pooling_common.cc  .generated_files/flags/default/c15d6de05e3f5121166c9b2a96993c437e99adbb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/pooling_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/pooling_common.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/pooling_common.o.d" -o ${OBJECTDIR}/_ext/897492065/pooling_common.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/pooling_common.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/prelu.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/prelu.cc  .generated_files/flags/default/2089f95964529791ce0538052c1191177e8ed594 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/prelu.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/prelu.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/prelu.o.d" -o ${OBJECTDIR}/_ext/897492065/prelu.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/prelu.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/prelu_common.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/prelu_common.cc  .generated_files/flags/default/7488d4eb4ac18daea2674d82566b6ee875248e0e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/prelu_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/prelu_common.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/prelu_common.o.d" -o ${OBJECTDIR}/_ext/897492065/prelu_common.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/prelu_common.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/quantize.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/quantize.cc  .generated_files/flags/default/72d186409bf4733fb1cc38159ac833cd998a39b8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/quantize.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/quantize.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/quantize.o.d" -o ${OBJECTDIR}/_ext/897492065/quantize.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/quantize.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/quantize_common.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/quantize_common.cc  .generated_files/flags/default/dd47e4204674a6220c9316d2fe7acc61f733be78 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/quantize_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/quantize_common.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/quantize_common.o.d" -o ${OBJECTDIR}/_ext/897492065/quantize_common.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/quantize_common.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/read_variable.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/read_variable.cc  .generated_files/flags/default/cb945d90ec8f4dc35d2aaf622a7295fc2f8dac3d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/read_variable.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/read_variable.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/read_variable.o.d" -o ${OBJECTDIR}/_ext/897492065/read_variable.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/read_variable.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/real.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/real.cc  .generated_files/flags/default/36eb7c4c03ecc6fe0ed7431baa05cdb1757b41 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/real.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/real.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/real.o.d" -o ${OBJECTDIR}/_ext/897492065/real.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/real.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/reduce.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/reduce.cc  .generated_files/flags/default/3f46bc331245ec9b18f4fb996d867fdc0b4fd4f0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/reduce.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/reduce.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/reduce.o.d" -o ${OBJECTDIR}/_ext/897492065/reduce.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/reduce.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/reduce_common.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/reduce_common.cc  .generated_files/flags/default/73aff74a55e732e7a5a69fa3a045a9a87504d01a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/reduce_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/reduce_common.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/reduce_common.o.d" -o ${OBJECTDIR}/_ext/897492065/reduce_common.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/reduce_common.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/reshape.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/reshape.cc  .generated_files/flags/default/8f10d1843d4c921e332352c35ef63c97f7985431 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/reshape.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/reshape.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/reshape.o.d" -o ${OBJECTDIR}/_ext/897492065/reshape.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/reshape.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/resize_bilinear.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/resize_bilinear.cc  .generated_files/flags/default/995eb5e9c9048e53c51c0101b295cca2eae45b2d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/resize_bilinear.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/resize_bilinear.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/resize_bilinear.o.d" -o ${OBJECTDIR}/_ext/897492065/resize_bilinear.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/resize_bilinear.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/resize_nearest_neighbor.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/resize_nearest_neighbor.cc  .generated_files/flags/default/29f25bbcea8432b38118345c672391601caef4a3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/resize_nearest_neighbor.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/resize_nearest_neighbor.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/resize_nearest_neighbor.o.d" -o ${OBJECTDIR}/_ext/897492065/resize_nearest_neighbor.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/resize_nearest_neighbor.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/rfft2d.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/rfft2d.cc  .generated_files/flags/default/91658e9b299e8c8fa7436977c5ba74276d0a55ce .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/rfft2d.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/rfft2d.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/rfft2d.o.d" -o ${OBJECTDIR}/_ext/897492065/rfft2d.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/rfft2d.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/round.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/round.cc  .generated_files/flags/default/b227a698ec76423d75206e678497621475e09877 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/round.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/round.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/round.o.d" -o ${OBJECTDIR}/_ext/897492065/round.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/round.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/scatter_nd.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/scatter_nd.cc  .generated_files/flags/default/eb16993bfded78e7b294bf58d1d58f9c3461c58b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/scatter_nd.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/scatter_nd.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/scatter_nd.o.d" -o ${OBJECTDIR}/_ext/897492065/scatter_nd.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/scatter_nd.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/scratch_buffers.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/scratch_buffers.cc  .generated_files/flags/default/8849a995899ec0920cafb79f5247fa1fba3d8898 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/scratch_buffers.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/scratch_buffers.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/scratch_buffers.o.d" -o ${OBJECTDIR}/_ext/897492065/scratch_buffers.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/scratch_buffers.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/scratch_buf_mgr.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/scratch_buf_mgr.cc  .generated_files/flags/default/c5385f961d3beb10092abf3c6819a8421eb3ca1b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/scratch_buf_mgr.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/scratch_buf_mgr.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/scratch_buf_mgr.o.d" -o ${OBJECTDIR}/_ext/897492065/scratch_buf_mgr.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/scratch_buf_mgr.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/select.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/select.cc  .generated_files/flags/default/d098bc41baa16b443aefb0c928de1f7373e51246 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/select.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/select.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/select.o.d" -o ${OBJECTDIR}/_ext/897492065/select.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/select.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/shape.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/shape.cc  .generated_files/flags/default/62ba9392a11004a463bf3247219488585102a28f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/shape.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/shape.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/shape.o.d" -o ${OBJECTDIR}/_ext/897492065/shape.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/shape.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/slice.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/slice.cc  .generated_files/flags/default/171a6afb7a914512b3e50004660551c6ee213829 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/slice.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/slice.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/slice.o.d" -o ${OBJECTDIR}/_ext/897492065/slice.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/slice.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/softmax.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/softmax.cc  .generated_files/flags/default/2a571079b1de080889660c467d2b7a74148e10ca .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/softmax.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/softmax.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/softmax.o.d" -o ${OBJECTDIR}/_ext/897492065/softmax.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/softmax.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/softmax_common.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/softmax_common.cc  .generated_files/flags/default/ee672ed3d854361fa020ababc75c2253695ed6e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/softmax_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/softmax_common.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/softmax_common.o.d" -o ${OBJECTDIR}/_ext/897492065/softmax_common.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/softmax_common.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/space_to_batch_nd.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/space_to_batch_nd.cc  .generated_files/flags/default/96d2de0eaa4ababc2e4a5cd1150097336c48997d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/space_to_batch_nd.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/space_to_batch_nd.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/space_to_batch_nd.o.d" -o ${OBJECTDIR}/_ext/897492065/space_to_batch_nd.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/space_to_batch_nd.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/space_to_depth.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/space_to_depth.cc  .generated_files/flags/default/cca0c72886d6d41bd4de3aa83d7b7c3d1bc494c1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/space_to_depth.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/space_to_depth.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/space_to_depth.o.d" -o ${OBJECTDIR}/_ext/897492065/space_to_depth.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/space_to_depth.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/split.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/split.cc  .generated_files/flags/default/1e3a3fe882f4d8e0653fdc6b8563aaf254ac09de .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/split.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/split.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/split.o.d" -o ${OBJECTDIR}/_ext/897492065/split.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/split.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/split_v.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/split_v.cc  .generated_files/flags/default/4cbace4f58b2e0e95a72cfdf56a5a5dad45670ff .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/split_v.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/split_v.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/split_v.o.d" -o ${OBJECTDIR}/_ext/897492065/split_v.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/split_v.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/squared_difference.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/squared_difference.cc  .generated_files/flags/default/e6aa8fbfff59fcc5364931cea7f990ac53d9435 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/squared_difference.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/squared_difference.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/squared_difference.o.d" -o ${OBJECTDIR}/_ext/897492065/squared_difference.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/squared_difference.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/squeeze.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/squeeze.cc  .generated_files/flags/default/9a8d634133a972e900af2225c28599f75520d98a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/squeeze.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/squeeze.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/squeeze.o.d" -o ${OBJECTDIR}/_ext/897492065/squeeze.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/squeeze.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/strided_slice.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/strided_slice.cc  .generated_files/flags/default/8866d89e1f143cf0cc6449badbe3fffbc6b36413 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/strided_slice.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/strided_slice.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/strided_slice.o.d" -o ${OBJECTDIR}/_ext/897492065/strided_slice.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/strided_slice.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/sub.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/sub.cc  .generated_files/flags/default/6ded5119fe10194ee726cb678b049eed6b3e92e2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/sub.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/sub.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/sub.o.d" -o ${OBJECTDIR}/_ext/897492065/sub.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/sub.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/sub_common.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/sub_common.cc  .generated_files/flags/default/56c006c2e0b5a83791fc717b3c99eae54a769ff8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/sub_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/sub_common.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/sub_common.o.d" -o ${OBJECTDIR}/_ext/897492065/sub_common.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/sub_common.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/svdf.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/svdf.cc  .generated_files/flags/default/bcf2a31e0074ebf440a1715da750834dee8d4f57 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/svdf.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/svdf.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/svdf.o.d" -o ${OBJECTDIR}/_ext/897492065/svdf.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/svdf.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/svdf_common.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/svdf_common.cc  .generated_files/flags/default/ed63e18c690ed027cd17c327e4fcb2e403a3b13d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/svdf_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/svdf_common.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/svdf_common.o.d" -o ${OBJECTDIR}/_ext/897492065/svdf_common.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/svdf_common.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/tanh.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/tanh.cc  .generated_files/flags/default/2180380bd8cd958a3ce501d1ffacf232a5c120f3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/tanh.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/tanh.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/tanh.o.d" -o ${OBJECTDIR}/_ext/897492065/tanh.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/tanh.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/tile.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/tile.cc  .generated_files/flags/default/6430dc53aaccc429fb809207d09192a917a07d9b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/tile.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/tile.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/tile.o.d" -o ${OBJECTDIR}/_ext/897492065/tile.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/tile.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/topk_v2.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/topk_v2.cc  .generated_files/flags/default/e2a8fc258ed39fbab017f47dc0b893ed77c36947 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/topk_v2.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/topk_v2.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/topk_v2.o.d" -o ${OBJECTDIR}/_ext/897492065/topk_v2.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/topk_v2.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/transpose.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/transpose.cc  .generated_files/flags/default/dfe2695238b03b40994120d36650b2afc976d205 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/transpose.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/transpose.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/transpose.o.d" -o ${OBJECTDIR}/_ext/897492065/transpose.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/transpose.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/transpose_conv.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/transpose_conv.cc  .generated_files/flags/default/9663275825144b24a1ac2b79fc0a559570f04317 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/transpose_conv.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/transpose_conv.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/transpose_conv.o.d" -o ${OBJECTDIR}/_ext/897492065/transpose_conv.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/transpose_conv.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/tree_ensemble_classifier.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/tree_ensemble_classifier.cc  .generated_files/flags/default/a9dd13ef0b69ae85da00451eef1518a13abd2762 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/tree_ensemble_classifier.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/tree_ensemble_classifier.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/tree_ensemble_classifier.o.d" -o ${OBJECTDIR}/_ext/897492065/tree_ensemble_classifier.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/tree_ensemble_classifier.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/unidirectional_sequence_lstm.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/unidirectional_sequence_lstm.cc  .generated_files/flags/default/7e10d8da0341e6b889256012fc0bdfc18068a87e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/unidirectional_sequence_lstm.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/unidirectional_sequence_lstm.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/unidirectional_sequence_lstm.o.d" -o ${OBJECTDIR}/_ext/897492065/unidirectional_sequence_lstm.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/unidirectional_sequence_lstm.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/unpack.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/unpack.cc  .generated_files/flags/default/11ec80e121ffa60bd4ea7485555a3bf879600070 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/unpack.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/unpack.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/unpack.o.d" -o ${OBJECTDIR}/_ext/897492065/unpack.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/unpack.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/var_handle.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/var_handle.cc  .generated_files/flags/default/b92c593561b11caf87ac76f7f6060e1cfa727a99 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/var_handle.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/var_handle.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/var_handle.o.d" -o ${OBJECTDIR}/_ext/897492065/var_handle.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/var_handle.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/while.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/while.cc  .generated_files/flags/default/335730ed947d288d0516adb839bd4c9955beb242 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/while.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/while.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/while.o.d" -o ${OBJECTDIR}/_ext/897492065/while.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/while.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/897492065/zeros_like.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/zeros_like.cc  .generated_files/flags/default/768fe41cabc5922c8d8ca00e0fbc950129b44fea .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/897492065" 
	@${RM} ${OBJECTDIR}/_ext/897492065/zeros_like.o.d 
	@${RM} ${OBJECTDIR}/_ext/897492065/zeros_like.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/897492065/zeros_like.o.d" -o ${OBJECTDIR}/_ext/897492065/zeros_like.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/kernels/zeros_like.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1004033623/greedy_memory_planner.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/memory_planner/greedy_memory_planner.cc  .generated_files/flags/default/92e2958ede83eed1cf21ab0a799167fd872a3bd6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1004033623" 
	@${RM} ${OBJECTDIR}/_ext/1004033623/greedy_memory_planner.o.d 
	@${RM} ${OBJECTDIR}/_ext/1004033623/greedy_memory_planner.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/1004033623/greedy_memory_planner.o.d" -o ${OBJECTDIR}/_ext/1004033623/greedy_memory_planner.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/memory_planner/greedy_memory_planner.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1004033623/linear_memory_planner.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/memory_planner/linear_memory_planner.cc  .generated_files/flags/default/6b1f7c4f84ac127721853cdb84a877b8ff306e76 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1004033623" 
	@${RM} ${OBJECTDIR}/_ext/1004033623/linear_memory_planner.o.d 
	@${RM} ${OBJECTDIR}/_ext/1004033623/linear_memory_planner.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/1004033623/linear_memory_planner.o.d" -o ${OBJECTDIR}/_ext/1004033623/linear_memory_planner.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/memory_planner/linear_memory_planner.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1004033623/non_persistent_buffer_planner_shim.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/memory_planner/non_persistent_buffer_planner_shim.cc  .generated_files/flags/default/828a890fef7b67a94382749f7d5f069799b99e2f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1004033623" 
	@${RM} ${OBJECTDIR}/_ext/1004033623/non_persistent_buffer_planner_shim.o.d 
	@${RM} ${OBJECTDIR}/_ext/1004033623/non_persistent_buffer_planner_shim.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/1004033623/non_persistent_buffer_planner_shim.o.d" -o ${OBJECTDIR}/_ext/1004033623/non_persistent_buffer_planner_shim.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/memory_planner/non_persistent_buffer_planner_shim.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/165452390/all_ops_resolver.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/all_ops_resolver.cc  .generated_files/flags/default/3a1a24e3842dac84f87d57f24ce01cfea34a05e0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165452390" 
	@${RM} ${OBJECTDIR}/_ext/165452390/all_ops_resolver.o.d 
	@${RM} ${OBJECTDIR}/_ext/165452390/all_ops_resolver.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/165452390/all_ops_resolver.o.d" -o ${OBJECTDIR}/_ext/165452390/all_ops_resolver.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/all_ops_resolver.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/165452390/fake_micro_context.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/fake_micro_context.cc  .generated_files/flags/default/cebe00bb0d59860f1de9ea524c5a87a405c7ca34 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165452390" 
	@${RM} ${OBJECTDIR}/_ext/165452390/fake_micro_context.o.d 
	@${RM} ${OBJECTDIR}/_ext/165452390/fake_micro_context.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/165452390/fake_micro_context.o.d" -o ${OBJECTDIR}/_ext/165452390/fake_micro_context.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/fake_micro_context.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/165452390/flatbuffer_conversions_bridge.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/flatbuffer_conversions_bridge.cc  .generated_files/flags/default/8b939ae3f2a912b1a22f5a582b63388e5a2e02e7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165452390" 
	@${RM} ${OBJECTDIR}/_ext/165452390/flatbuffer_conversions_bridge.o.d 
	@${RM} ${OBJECTDIR}/_ext/165452390/flatbuffer_conversions_bridge.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/165452390/flatbuffer_conversions_bridge.o.d" -o ${OBJECTDIR}/_ext/165452390/flatbuffer_conversions_bridge.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/flatbuffer_conversions_bridge.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/165452390/flatbuffer_utils.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/flatbuffer_utils.cc  .generated_files/flags/default/7eee67f9138f3ad98df3c4e7371392d654126328 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165452390" 
	@${RM} ${OBJECTDIR}/_ext/165452390/flatbuffer_utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/165452390/flatbuffer_utils.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/165452390/flatbuffer_utils.o.d" -o ${OBJECTDIR}/_ext/165452390/flatbuffer_utils.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/flatbuffer_utils.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/165452390/memory_helpers.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/memory_helpers.cc  .generated_files/flags/default/3ad669994dbcb6162b7dea867b599fa7078e4af9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165452390" 
	@${RM} ${OBJECTDIR}/_ext/165452390/memory_helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/165452390/memory_helpers.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/165452390/memory_helpers.o.d" -o ${OBJECTDIR}/_ext/165452390/memory_helpers.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/memory_helpers.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/165452390/micro_allocation_info.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/micro_allocation_info.cc  .generated_files/flags/default/eee068dd71646ea9d240673e2f9781f317b77805 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165452390" 
	@${RM} ${OBJECTDIR}/_ext/165452390/micro_allocation_info.o.d 
	@${RM} ${OBJECTDIR}/_ext/165452390/micro_allocation_info.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/165452390/micro_allocation_info.o.d" -o ${OBJECTDIR}/_ext/165452390/micro_allocation_info.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/micro_allocation_info.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/165452390/micro_allocator.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/micro_allocator.cc  .generated_files/flags/default/6ee07c8f1d85c6d2aeebc3c8e811d6472153763f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165452390" 
	@${RM} ${OBJECTDIR}/_ext/165452390/micro_allocator.o.d 
	@${RM} ${OBJECTDIR}/_ext/165452390/micro_allocator.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/165452390/micro_allocator.o.d" -o ${OBJECTDIR}/_ext/165452390/micro_allocator.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/micro_allocator.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/165452390/micro_context.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/micro_context.cc  .generated_files/flags/default/7648d0ca8d3cb33df865fdbf7b56043465b5c831 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165452390" 
	@${RM} ${OBJECTDIR}/_ext/165452390/micro_context.o.d 
	@${RM} ${OBJECTDIR}/_ext/165452390/micro_context.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/165452390/micro_context.o.d" -o ${OBJECTDIR}/_ext/165452390/micro_context.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/micro_context.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/165452390/micro_error_reporter.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/micro_error_reporter.cc  .generated_files/flags/default/124cc0669998b7caa7c852123beb60fb1dfeeb93 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165452390" 
	@${RM} ${OBJECTDIR}/_ext/165452390/micro_error_reporter.o.d 
	@${RM} ${OBJECTDIR}/_ext/165452390/micro_error_reporter.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/165452390/micro_error_reporter.o.d" -o ${OBJECTDIR}/_ext/165452390/micro_error_reporter.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/micro_error_reporter.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/165452390/micro_graph.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/micro_graph.cc  .generated_files/flags/default/331f343c22a6395365780aebb5d372738f69adaf .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165452390" 
	@${RM} ${OBJECTDIR}/_ext/165452390/micro_graph.o.d 
	@${RM} ${OBJECTDIR}/_ext/165452390/micro_graph.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/165452390/micro_graph.o.d" -o ${OBJECTDIR}/_ext/165452390/micro_graph.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/micro_graph.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/165452390/micro_interpreter.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/micro_interpreter.cc  .generated_files/flags/default/a75588dbd02da8b35f2f97116d0631855bf116f0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165452390" 
	@${RM} ${OBJECTDIR}/_ext/165452390/micro_interpreter.o.d 
	@${RM} ${OBJECTDIR}/_ext/165452390/micro_interpreter.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/165452390/micro_interpreter.o.d" -o ${OBJECTDIR}/_ext/165452390/micro_interpreter.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/micro_interpreter.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/165452390/micro_log.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/micro_log.cc  .generated_files/flags/default/7bfab0c2401b5226d28ff87137ae59c7656eb803 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165452390" 
	@${RM} ${OBJECTDIR}/_ext/165452390/micro_log.o.d 
	@${RM} ${OBJECTDIR}/_ext/165452390/micro_log.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/165452390/micro_log.o.d" -o ${OBJECTDIR}/_ext/165452390/micro_log.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/micro_log.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/165452390/micro_profiler.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/micro_profiler.cc  .generated_files/flags/default/4056c89d60114a1e32a3a383ef458509ee8933be .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165452390" 
	@${RM} ${OBJECTDIR}/_ext/165452390/micro_profiler.o.d 
	@${RM} ${OBJECTDIR}/_ext/165452390/micro_profiler.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/165452390/micro_profiler.o.d" -o ${OBJECTDIR}/_ext/165452390/micro_profiler.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/micro_profiler.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/165452390/micro_resource_variable.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/micro_resource_variable.cc  .generated_files/flags/default/98d5363fca8eb228c7a9c329af146b60af5f054b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165452390" 
	@${RM} ${OBJECTDIR}/_ext/165452390/micro_resource_variable.o.d 
	@${RM} ${OBJECTDIR}/_ext/165452390/micro_resource_variable.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/165452390/micro_resource_variable.o.d" -o ${OBJECTDIR}/_ext/165452390/micro_resource_variable.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/micro_resource_variable.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/165452390/micro_string.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/micro_string.cc  .generated_files/flags/default/9357898265a8be37e1316b696e0e7d4d59675dd4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165452390" 
	@${RM} ${OBJECTDIR}/_ext/165452390/micro_string.o.d 
	@${RM} ${OBJECTDIR}/_ext/165452390/micro_string.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/165452390/micro_string.o.d" -o ${OBJECTDIR}/_ext/165452390/micro_string.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/micro_string.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/165452390/micro_time.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/micro_time.cc  .generated_files/flags/default/771e476da12a05f9e9b987e73cec2b675b5a7b26 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165452390" 
	@${RM} ${OBJECTDIR}/_ext/165452390/micro_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/165452390/micro_time.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/165452390/micro_time.o.d" -o ${OBJECTDIR}/_ext/165452390/micro_time.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/micro_time.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/165452390/micro_utils.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/micro_utils.cc  .generated_files/flags/default/936c424255cabfbcf4958b3d64d611eb35f6ab6e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165452390" 
	@${RM} ${OBJECTDIR}/_ext/165452390/micro_utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/165452390/micro_utils.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/165452390/micro_utils.o.d" -o ${OBJECTDIR}/_ext/165452390/micro_utils.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/micro_utils.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/165452390/mock_micro_graph.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/mock_micro_graph.cc  .generated_files/flags/default/4309fa8b32054ae89fb0d6072303e40a0a63fd27 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165452390" 
	@${RM} ${OBJECTDIR}/_ext/165452390/mock_micro_graph.o.d 
	@${RM} ${OBJECTDIR}/_ext/165452390/mock_micro_graph.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/165452390/mock_micro_graph.o.d" -o ${OBJECTDIR}/_ext/165452390/mock_micro_graph.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/mock_micro_graph.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/165452390/non_persistent_arena_buffer_allocator.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/non_persistent_arena_buffer_allocator.cc  .generated_files/flags/default/dc187833daf50957926bf6ec26fdf8152de6ef26 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165452390" 
	@${RM} ${OBJECTDIR}/_ext/165452390/non_persistent_arena_buffer_allocator.o.d 
	@${RM} ${OBJECTDIR}/_ext/165452390/non_persistent_arena_buffer_allocator.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/165452390/non_persistent_arena_buffer_allocator.o.d" -o ${OBJECTDIR}/_ext/165452390/non_persistent_arena_buffer_allocator.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/non_persistent_arena_buffer_allocator.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/165452390/op_resolver_bridge.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/op_resolver_bridge.cc  .generated_files/flags/default/f7414a3d38babe57c787fac4a901d883d5889138 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165452390" 
	@${RM} ${OBJECTDIR}/_ext/165452390/op_resolver_bridge.o.d 
	@${RM} ${OBJECTDIR}/_ext/165452390/op_resolver_bridge.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/165452390/op_resolver_bridge.o.d" -o ${OBJECTDIR}/_ext/165452390/op_resolver_bridge.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/op_resolver_bridge.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/165452390/persistent_arena_buffer_allocator.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/persistent_arena_buffer_allocator.cc  .generated_files/flags/default/51dd6437384d932f9cda13378756e84535b26311 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165452390" 
	@${RM} ${OBJECTDIR}/_ext/165452390/persistent_arena_buffer_allocator.o.d 
	@${RM} ${OBJECTDIR}/_ext/165452390/persistent_arena_buffer_allocator.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/165452390/persistent_arena_buffer_allocator.o.d" -o ${OBJECTDIR}/_ext/165452390/persistent_arena_buffer_allocator.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/persistent_arena_buffer_allocator.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/165452390/recording_micro_allocator.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/recording_micro_allocator.cc  .generated_files/flags/default/f6ac74b6435ebd97d7bb302bb06b5e627c0bf6e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165452390" 
	@${RM} ${OBJECTDIR}/_ext/165452390/recording_micro_allocator.o.d 
	@${RM} ${OBJECTDIR}/_ext/165452390/recording_micro_allocator.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/165452390/recording_micro_allocator.o.d" -o ${OBJECTDIR}/_ext/165452390/recording_micro_allocator.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/recording_micro_allocator.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/165452390/recording_single_arena_buffer_allocator.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/recording_single_arena_buffer_allocator.cc  .generated_files/flags/default/3666e5f62e361b6be1a9e4970d06c633b8275bea .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165452390" 
	@${RM} ${OBJECTDIR}/_ext/165452390/recording_single_arena_buffer_allocator.o.d 
	@${RM} ${OBJECTDIR}/_ext/165452390/recording_single_arena_buffer_allocator.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/165452390/recording_single_arena_buffer_allocator.o.d" -o ${OBJECTDIR}/_ext/165452390/recording_single_arena_buffer_allocator.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/recording_single_arena_buffer_allocator.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/165452390/schema_utils.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/schema_utils.cc  .generated_files/flags/default/aa0913b4f9bf7ac3209ee662b7e867ed831cc821 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165452390" 
	@${RM} ${OBJECTDIR}/_ext/165452390/schema_utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/165452390/schema_utils.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/165452390/schema_utils.o.d" -o ${OBJECTDIR}/_ext/165452390/schema_utils.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/schema_utils.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/165452390/single_arena_buffer_allocator.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/single_arena_buffer_allocator.cc  .generated_files/flags/default/5d5a1c41c68c0671e9e54b50e4e0c18c5345bbcf .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165452390" 
	@${RM} ${OBJECTDIR}/_ext/165452390/single_arena_buffer_allocator.o.d 
	@${RM} ${OBJECTDIR}/_ext/165452390/single_arena_buffer_allocator.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/165452390/single_arena_buffer_allocator.o.d" -o ${OBJECTDIR}/_ext/165452390/single_arena_buffer_allocator.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/single_arena_buffer_allocator.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/165452390/system_setup.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/system_setup.cc  .generated_files/flags/default/c3a4179060fa5e7e3bc54c07bf6755a498cde02 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165452390" 
	@${RM} ${OBJECTDIR}/_ext/165452390/system_setup.o.d 
	@${RM} ${OBJECTDIR}/_ext/165452390/system_setup.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/165452390/system_setup.o.d" -o ${OBJECTDIR}/_ext/165452390/system_setup.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/system_setup.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/165452390/test_helpers.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/test_helpers.cc  .generated_files/flags/default/8f6fd0722ad16aab1819c455febb5c2f9854b625 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165452390" 
	@${RM} ${OBJECTDIR}/_ext/165452390/test_helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/165452390/test_helpers.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/165452390/test_helpers.o.d" -o ${OBJECTDIR}/_ext/165452390/test_helpers.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/test_helpers.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/165452390/test_helper_custom_ops.o: ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/test_helper_custom_ops.cc  .generated_files/flags/default/881e386b812c4137f03986cf51e074cfcd08f529 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165452390" 
	@${RM} ${OBJECTDIR}/_ext/165452390/test_helper_custom_ops.o.d 
	@${RM} ${OBJECTDIR}/_ext/165452390/test_helper_custom_ops.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/165452390/test_helper_custom_ops.o.d" -o ${OBJECTDIR}/_ext/165452390/test_helper_custom_ops.o ../ai-code/edge-impulse-sdk/tensorflow/lite/micro/test_helper_custom_ops.cc   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1889185960/tflite_learn_950386_5_compiled.o: ../ai-code/tflite-model/tflite_learn_950386_5_compiled.cpp  .generated_files/flags/default/fb5a8f5e31144bee22582b2cb61a5be011ef73fa .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1889185960" 
	@${RM} ${OBJECTDIR}/_ext/1889185960/tflite_learn_950386_5_compiled.o.d 
	@${RM} ${OBJECTDIR}/_ext/1889185960/tflite_learn_950386_5_compiled.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/1889185960/tflite_learn_950386_5_compiled.o.d" -o ${OBJECTDIR}/_ext/1889185960/tflite_learn_950386_5_compiled.o ../ai-code/tflite-model/tflite_learn_950386_5_compiled.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/Main.o: Main.cpp  .generated_files/flags/default/7349b78f67913bb045e41c41e3992b2fa2badb6f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Main.o.d 
	@${RM} ${OBJECTDIR}/Main.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/Main.o.d" -o ${OBJECTDIR}/Main.o Main.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1558683427/ei_pic32_porting.o: ../ai-code/ei_pic32_porting.cpp  .generated_files/flags/default/1efcd9052538a28edb1314055f874930b6d56094 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1558683427" 
	@${RM} ${OBJECTDIR}/_ext/1558683427/ei_pic32_porting.o.d 
	@${RM} ${OBJECTDIR}/_ext/1558683427/ei_pic32_porting.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"." -I"../src" -I"../src/config/default" -I"../ai-code" -MP -MMD -MF "${OBJECTDIR}/_ext/1558683427/ei_pic32_porting.o.d" -o ${OBJECTDIR}/_ext/1558683427/ei_pic32_porting.o ../ai-code/ei_pic32_porting.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/MagicStick.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/config/default/p32MX270F256B.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CPPC} $(MP_EXTRA_LD_PRE) -g -mdebugger -D__MPLAB_DEBUGGER_SNAP=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/MagicStick.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)   -mreserve=data@0x0:0x1FC -mreserve=boot@0x1FC00490:0x1FC00BEF  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_SNAP=1,--defsym=_min_heap_size=512,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/MagicStick.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/default/p32MX270F256B.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CPPC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/MagicStick.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=512,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/MagicStick.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
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
