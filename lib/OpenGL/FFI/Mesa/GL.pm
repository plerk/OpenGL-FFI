use strict;
use warnings;
use 5.014;

package OpenGL::FFI::Mesa::GL {

  use FFI::Platypus ();
  use FFI::CheckLib ();

  use constant {

#=head1 CONSTANTS
#
#=head2 GL_1PASS_EXT
#
#=cut

    GL_1PASS_EXT => 0x80A1,

#=head2 GL_1PASS_SGIS
#
#=cut

    GL_1PASS_SGIS => 0x80A1,

#=head2 GL_2D
#
#=cut

    GL_2D => 0x0600,

#=head2 GL_2PASS_0_EXT
#
#=cut

    GL_2PASS_0_EXT => 0x80A2,

#=head2 GL_2PASS_0_SGIS
#
#=cut

    GL_2PASS_0_SGIS => 0x80A2,

#=head2 GL_2PASS_1_EXT
#
#=cut

    GL_2PASS_1_EXT => 0x80A3,

#=head2 GL_2PASS_1_SGIS
#
#=cut

    GL_2PASS_1_SGIS => 0x80A3,

#=head2 GL_2X_BIT_ATI
#
#=cut

    GL_2X_BIT_ATI => 0x00000001,

#=head2 GL_2_BYTES
#
#=cut

    GL_2_BYTES => 0x1407,

#=head2 GL_2_BYTES_NV
#
#=cut

    GL_2_BYTES_NV => 0x1407,

#=head2 GL_3D
#
#=cut

    GL_3D => 0x0601,

#=head2 GL_3DFX_multisample
#
#=cut

    GL_3DFX_multisample => 1,

#=head2 GL_3DFX_tbuffer
#
#=cut

    GL_3DFX_tbuffer => 1,

#=head2 GL_3DFX_texture_compression_FXT1
#
#=cut

    GL_3DFX_texture_compression_FXT1 => 1,

#=head2 GL_3D_COLOR
#
#=cut

    GL_3D_COLOR => 0x0602,

#=head2 GL_3D_COLOR_TEXTURE
#
#=cut

    GL_3D_COLOR_TEXTURE => 0x0603,

#=head2 GL_3_BYTES
#
#=cut

    GL_3_BYTES => 0x1408,

#=head2 GL_3_BYTES_NV
#
#=cut

    GL_3_BYTES_NV => 0x1408,

#=head2 GL_422_AVERAGE_EXT
#
#=cut

    GL_422_AVERAGE_EXT => 0x80CE,

#=head2 GL_422_EXT
#
#=cut

    GL_422_EXT => 0x80CC,

#=head2 GL_422_REV_AVERAGE_EXT
#
#=cut

    GL_422_REV_AVERAGE_EXT => 0x80CF,

#=head2 GL_422_REV_EXT
#
#=cut

    GL_422_REV_EXT => 0x80CD,

#=head2 GL_4D_COLOR_TEXTURE
#
#=cut

    GL_4D_COLOR_TEXTURE => 0x0604,

#=head2 GL_4PASS_0_EXT
#
#=cut

    GL_4PASS_0_EXT => 0x80A4,

#=head2 GL_4PASS_0_SGIS
#
#=cut

    GL_4PASS_0_SGIS => 0x80A4,

#=head2 GL_4PASS_1_EXT
#
#=cut

    GL_4PASS_1_EXT => 0x80A5,

#=head2 GL_4PASS_1_SGIS
#
#=cut

    GL_4PASS_1_SGIS => 0x80A5,

#=head2 GL_4PASS_2_EXT
#
#=cut

    GL_4PASS_2_EXT => 0x80A6,

#=head2 GL_4PASS_2_SGIS
#
#=cut

    GL_4PASS_2_SGIS => 0x80A6,

#=head2 GL_4PASS_3_EXT
#
#=cut

    GL_4PASS_3_EXT => 0x80A7,

#=head2 GL_4PASS_3_SGIS
#
#=cut

    GL_4PASS_3_SGIS => 0x80A7,

#=head2 GL_4X_BIT_ATI
#
#=cut

    GL_4X_BIT_ATI => 0x00000002,

#=head2 GL_4_BYTES
#
#=cut

    GL_4_BYTES => 0x1409,

#=head2 GL_4_BYTES_NV
#
#=cut

    GL_4_BYTES_NV => 0x1409,

#=head2 GL_8X_BIT_ATI
#
#=cut

    GL_8X_BIT_ATI => 0x00000004,

#=head2 GL_ABGR_EXT
#
#=cut

    GL_ABGR_EXT => 0x8000,

#=head2 GL_ACCUM
#
#=cut

    GL_ACCUM => 0x0100,

#=head2 GL_ACCUM_ADJACENT_PAIRS_NV
#
#=cut

    GL_ACCUM_ADJACENT_PAIRS_NV => 0x90AD,

#=head2 GL_ACCUM_ALPHA_BITS
#
#=cut

    GL_ACCUM_ALPHA_BITS => 0x0D5B,

#=head2 GL_ACCUM_BLUE_BITS
#
#=cut

    GL_ACCUM_BLUE_BITS => 0x0D5A,

#=head2 GL_ACCUM_BUFFER_BIT
#
#=cut

    GL_ACCUM_BUFFER_BIT => 0x00000200,

#=head2 GL_ACCUM_CLEAR_VALUE
#
#=cut

    GL_ACCUM_CLEAR_VALUE => 0x0B80,

#=head2 GL_ACCUM_GREEN_BITS
#
#=cut

    GL_ACCUM_GREEN_BITS => 0x0D59,

#=head2 GL_ACCUM_RED_BITS
#
#=cut

    GL_ACCUM_RED_BITS => 0x0D58,

#=head2 GL_ACTIVE_ATOMIC_COUNTER_BUFFERS
#
#=cut

    GL_ACTIVE_ATOMIC_COUNTER_BUFFERS => 0x92D9,

#=head2 GL_ACTIVE_ATTRIBUTES
#
#=cut

    GL_ACTIVE_ATTRIBUTES => 0x8B89,

#=head2 GL_ACTIVE_ATTRIBUTE_MAX_LENGTH
#
#=cut

    GL_ACTIVE_ATTRIBUTE_MAX_LENGTH => 0x8B8A,

#=head2 GL_ACTIVE_PROGRAM
#
#=cut

    GL_ACTIVE_PROGRAM => 0x8259,

#=head2 GL_ACTIVE_PROGRAM_EXT
#
#=cut

    GL_ACTIVE_PROGRAM_EXT => 0x8B8D,

#=head2 GL_ACTIVE_RESOURCES
#
#=cut

    GL_ACTIVE_RESOURCES => 0x92F5,

#=head2 GL_ACTIVE_STENCIL_FACE_EXT
#
#=cut

    GL_ACTIVE_STENCIL_FACE_EXT => 0x8911,

#=head2 GL_ACTIVE_SUBROUTINES
#
#=cut

    GL_ACTIVE_SUBROUTINES => 0x8DE5,

#=head2 GL_ACTIVE_SUBROUTINE_MAX_LENGTH
#
#=cut

    GL_ACTIVE_SUBROUTINE_MAX_LENGTH => 0x8E48,

#=head2 GL_ACTIVE_SUBROUTINE_UNIFORMS
#
#=cut

    GL_ACTIVE_SUBROUTINE_UNIFORMS => 0x8DE6,

#=head2 GL_ACTIVE_SUBROUTINE_UNIFORM_LOCATIONS
#
#=cut

    GL_ACTIVE_SUBROUTINE_UNIFORM_LOCATIONS => 0x8E47,

#=head2 GL_ACTIVE_SUBROUTINE_UNIFORM_MAX_LENGTH
#
#=cut

    GL_ACTIVE_SUBROUTINE_UNIFORM_MAX_LENGTH => 0x8E49,

#=head2 GL_ACTIVE_TEXTURE
#
#=cut

    GL_ACTIVE_TEXTURE => 0x84E0,

#=head2 GL_ACTIVE_TEXTURE_ARB
#
#=cut

    GL_ACTIVE_TEXTURE_ARB => 0x84E0,

#=head2 GL_ACTIVE_UNIFORMS
#
#=cut

    GL_ACTIVE_UNIFORMS => 0x8B86,

#=head2 GL_ACTIVE_UNIFORM_BLOCKS
#
#=cut

    GL_ACTIVE_UNIFORM_BLOCKS => 0x8A36,

#=head2 GL_ACTIVE_UNIFORM_BLOCK_MAX_NAME_LENGTH
#
#=cut

    GL_ACTIVE_UNIFORM_BLOCK_MAX_NAME_LENGTH => 0x8A35,

#=head2 GL_ACTIVE_UNIFORM_MAX_LENGTH
#
#=cut

    GL_ACTIVE_UNIFORM_MAX_LENGTH => 0x8B87,

#=head2 GL_ACTIVE_VARIABLES
#
#=cut

    GL_ACTIVE_VARIABLES => 0x9305,

#=head2 GL_ACTIVE_VARYINGS_NV
#
#=cut

    GL_ACTIVE_VARYINGS_NV => 0x8C81,

#=head2 GL_ACTIVE_VARYING_MAX_LENGTH_NV
#
#=cut

    GL_ACTIVE_VARYING_MAX_LENGTH_NV => 0x8C82,

#=head2 GL_ACTIVE_VERTEX_UNITS_ARB
#
#=cut

    GL_ACTIVE_VERTEX_UNITS_ARB => 0x86A5,

#=head2 GL_ADD
#
#=cut

    GL_ADD => 0x0104,

#=head2 GL_ADD_ATI
#
#=cut

    GL_ADD_ATI => 0x8963,

#=head2 GL_ADD_SIGNED
#
#=cut

    GL_ADD_SIGNED => 0x8574,

#=head2 GL_ADD_SIGNED_ARB
#
#=cut

    GL_ADD_SIGNED_ARB => 0x8574,

#=head2 GL_ADD_SIGNED_EXT
#
#=cut

    GL_ADD_SIGNED_EXT => 0x8574,

#=head2 GL_ADJACENT_PAIRS_NV
#
#=cut

    GL_ADJACENT_PAIRS_NV => 0x90AE,

#=head2 GL_AFFINE_2D_NV
#
#=cut

    GL_AFFINE_2D_NV => 0x9092,

#=head2 GL_AFFINE_3D_NV
#
#=cut

    GL_AFFINE_3D_NV => 0x9094,

#=head2 GL_ALIASED_LINE_WIDTH_RANGE
#
#=cut

    GL_ALIASED_LINE_WIDTH_RANGE => 0x846E,

#=head2 GL_ALIASED_POINT_SIZE_RANGE
#
#=cut

    GL_ALIASED_POINT_SIZE_RANGE => 0x846D,

#=head2 GL_ALLOW_DRAW_FRG_HINT_PGI
#
#=cut

    GL_ALLOW_DRAW_FRG_HINT_PGI => 0x1A210,

#=head2 GL_ALLOW_DRAW_MEM_HINT_PGI
#
#=cut

    GL_ALLOW_DRAW_MEM_HINT_PGI => 0x1A211,

#=head2 GL_ALLOW_DRAW_OBJ_HINT_PGI
#
#=cut

    GL_ALLOW_DRAW_OBJ_HINT_PGI => 0x1A20E,

#=head2 GL_ALLOW_DRAW_WIN_HINT_PGI
#
#=cut

    GL_ALLOW_DRAW_WIN_HINT_PGI => 0x1A20F,

#=head2 GL_ALL_ATTRIB_BITS
#
#=cut

    GL_ALL_ATTRIB_BITS => 0xFFFFFFFF,

#=head2 GL_ALL_BARRIER_BITS
#
#=cut

    GL_ALL_BARRIER_BITS => 0xFFFFFFFF,

#=head2 GL_ALL_BARRIER_BITS_EXT
#
#=cut

    GL_ALL_BARRIER_BITS_EXT => 0xFFFFFFFF,

#=head2 GL_ALL_CLIENT_ATTRIB_BITS
#
#=cut

    GL_ALL_CLIENT_ATTRIB_BITS => 0xFFFFFFFF,

#=head2 GL_ALL_COMPLETED_NV
#
#=cut

    GL_ALL_COMPLETED_NV => 0x84F2,

#=head2 GL_ALL_SHADER_BITS
#
#=cut

    GL_ALL_SHADER_BITS => 0xFFFFFFFF,

#=head2 GL_ALL_STATIC_DATA_IBM
#
#=cut

    GL_ALL_STATIC_DATA_IBM => 103060,

#=head2 GL_ALPHA
#
#=cut

    GL_ALPHA => 0x1906,

#=head2 GL_ALPHA12
#
#=cut

    GL_ALPHA12 => 0x803D,

#=head2 GL_ALPHA12_EXT
#
#=cut

    GL_ALPHA12_EXT => 0x803D,

#=head2 GL_ALPHA16
#
#=cut

    GL_ALPHA16 => 0x803E,

#=head2 GL_ALPHA16F_ARB
#
#=cut

    GL_ALPHA16F_ARB => 0x881C,

#=head2 GL_ALPHA16I_EXT
#
#=cut

    GL_ALPHA16I_EXT => 0x8D8A,

#=head2 GL_ALPHA16UI_EXT
#
#=cut

    GL_ALPHA16UI_EXT => 0x8D78,

#=head2 GL_ALPHA16_EXT
#
#=cut

    GL_ALPHA16_EXT => 0x803E,

#=head2 GL_ALPHA16_SNORM
#
#=cut

    GL_ALPHA16_SNORM => 0x9018,

#=head2 GL_ALPHA32F_ARB
#
#=cut

    GL_ALPHA32F_ARB => 0x8816,

#=head2 GL_ALPHA32I_EXT
#
#=cut

    GL_ALPHA32I_EXT => 0x8D84,

#=head2 GL_ALPHA32UI_EXT
#
#=cut

    GL_ALPHA32UI_EXT => 0x8D72,

#=head2 GL_ALPHA4
#
#=cut

    GL_ALPHA4 => 0x803B,

#=head2 GL_ALPHA4_EXT
#
#=cut

    GL_ALPHA4_EXT => 0x803B,

#=head2 GL_ALPHA8
#
#=cut

    GL_ALPHA8 => 0x803C,

#=head2 GL_ALPHA8I_EXT
#
#=cut

    GL_ALPHA8I_EXT => 0x8D90,

#=head2 GL_ALPHA8UI_EXT
#
#=cut

    GL_ALPHA8UI_EXT => 0x8D7E,

#=head2 GL_ALPHA8_EXT
#
#=cut

    GL_ALPHA8_EXT => 0x803C,

#=head2 GL_ALPHA8_SNORM
#
#=cut

    GL_ALPHA8_SNORM => 0x9014,

#=head2 GL_ALPHA_BIAS
#
#=cut

    GL_ALPHA_BIAS => 0x0D1D,

#=head2 GL_ALPHA_BITS
#
#=cut

    GL_ALPHA_BITS => 0x0D55,

#=head2 GL_ALPHA_BLEND_EQUATION_ATI
#
#=cut

    GL_ALPHA_BLEND_EQUATION_ATI => 0x883D,

#=head2 GL_ALPHA_FLOAT16_APPLE
#
#=cut

    GL_ALPHA_FLOAT16_APPLE => 0x881C,

#=head2 GL_ALPHA_FLOAT16_ATI
#
#=cut

    GL_ALPHA_FLOAT16_ATI => 0x881C,

#=head2 GL_ALPHA_FLOAT32_APPLE
#
#=cut

    GL_ALPHA_FLOAT32_APPLE => 0x8816,

#=head2 GL_ALPHA_FLOAT32_ATI
#
#=cut

    GL_ALPHA_FLOAT32_ATI => 0x8816,

#=head2 GL_ALPHA_INTEGER
#
#=cut

    GL_ALPHA_INTEGER => 0x8D97,

#=head2 GL_ALPHA_INTEGER_EXT
#
#=cut

    GL_ALPHA_INTEGER_EXT => 0x8D97,

#=head2 GL_ALPHA_MAX_CLAMP_INGR
#
#=cut

    GL_ALPHA_MAX_CLAMP_INGR => 0x8567,

#=head2 GL_ALPHA_MAX_SGIX
#
#=cut

    GL_ALPHA_MAX_SGIX => 0x8321,

#=head2 GL_ALPHA_MIN_CLAMP_INGR
#
#=cut

    GL_ALPHA_MIN_CLAMP_INGR => 0x8563,

#=head2 GL_ALPHA_MIN_SGIX
#
#=cut

    GL_ALPHA_MIN_SGIX => 0x8320,

#=head2 GL_ALPHA_SCALE
#
#=cut

    GL_ALPHA_SCALE => 0x0D1C,

#=head2 GL_ALPHA_SNORM
#
#=cut

    GL_ALPHA_SNORM => 0x9010,

#=head2 GL_ALPHA_TEST
#
#=cut

    GL_ALPHA_TEST => 0x0BC0,

#=head2 GL_ALPHA_TEST_FUNC
#
#=cut

    GL_ALPHA_TEST_FUNC => 0x0BC1,

#=head2 GL_ALPHA_TEST_REF
#
#=cut

    GL_ALPHA_TEST_REF => 0x0BC2,

#=head2 GL_ALREADY_SIGNALED
#
#=cut

    GL_ALREADY_SIGNALED => 0x911A,

#=head2 GL_ALWAYS
#
#=cut

    GL_ALWAYS => 0x0207,

#=head2 GL_ALWAYS_FAST_HINT_PGI
#
#=cut

    GL_ALWAYS_FAST_HINT_PGI => 0x1A20C,

#=head2 GL_ALWAYS_SOFT_HINT_PGI
#
#=cut

    GL_ALWAYS_SOFT_HINT_PGI => 0x1A20D,

#=head2 GL_AMBIENT
#
#=cut

    GL_AMBIENT => 0x1200,

#=head2 GL_AMBIENT_AND_DIFFUSE
#
#=cut

    GL_AMBIENT_AND_DIFFUSE => 0x1602,

#=head2 GL_AMD_blend_minmax_factor
#
#=cut

    GL_AMD_blend_minmax_factor => 1,

#=head2 GL_AMD_conservative_depth
#
#=cut

    GL_AMD_conservative_depth => 1,

#=head2 GL_AMD_debug_output
#
#=cut

    GL_AMD_debug_output => 1,

#=head2 GL_AMD_depth_clamp_separate
#
#=cut

    GL_AMD_depth_clamp_separate => 1,

#=head2 GL_AMD_draw_buffers_blend
#
#=cut

    GL_AMD_draw_buffers_blend => 1,

#=head2 GL_AMD_gcn_shader
#
#=cut

    GL_AMD_gcn_shader => 1,

#=head2 GL_AMD_gpu_shader_int64
#
#=cut

    GL_AMD_gpu_shader_int64 => 1,

#=head2 GL_AMD_interleaved_elements
#
#=cut

    GL_AMD_interleaved_elements => 1,

#=head2 GL_AMD_multi_draw_indirect
#
#=cut

    GL_AMD_multi_draw_indirect => 1,

#=head2 GL_AMD_name_gen_delete
#
#=cut

    GL_AMD_name_gen_delete => 1,

#=head2 GL_AMD_occlusion_query_event
#
#=cut

    GL_AMD_occlusion_query_event => 1,

#=head2 GL_AMD_performance_monitor
#
#=cut

    GL_AMD_performance_monitor => 1,

#=head2 GL_AMD_pinned_memory
#
#=cut

    GL_AMD_pinned_memory => 1,

#=head2 GL_AMD_query_buffer_object
#
#=cut

    GL_AMD_query_buffer_object => 1,

#=head2 GL_AMD_sample_positions
#
#=cut

    GL_AMD_sample_positions => 1,

#=head2 GL_AMD_seamless_cubemap_per_texture
#
#=cut

    GL_AMD_seamless_cubemap_per_texture => 1,

#=head2 GL_AMD_shader_atomic_counter_ops
#
#=cut

    GL_AMD_shader_atomic_counter_ops => 1,

#=head2 GL_AMD_shader_stencil_export
#
#=cut

    GL_AMD_shader_stencil_export => 1,

#=head2 GL_AMD_shader_trinary_minmax
#
#=cut

    GL_AMD_shader_trinary_minmax => 1,

#=head2 GL_AMD_sparse_texture
#
#=cut

    GL_AMD_sparse_texture => 1,

#=head2 GL_AMD_stencil_operation_extended
#
#=cut

    GL_AMD_stencil_operation_extended => 1,

#=head2 GL_AMD_texture_texture4
#
#=cut

    GL_AMD_texture_texture4 => 1,

#=head2 GL_AMD_transform_feedback3_lines_triangles
#
#=cut

    GL_AMD_transform_feedback3_lines_triangles => 1,

#=head2 GL_AMD_transform_feedback4
#
#=cut

    GL_AMD_transform_feedback4 => 1,

#=head2 GL_AMD_vertex_shader_layer
#
#=cut

    GL_AMD_vertex_shader_layer => 1,

#=head2 GL_AMD_vertex_shader_tessellator
#
#=cut

    GL_AMD_vertex_shader_tessellator => 1,

#=head2 GL_AMD_vertex_shader_viewport_index
#
#=cut

    GL_AMD_vertex_shader_viewport_index => 1,

#=head2 GL_AND
#
#=cut

    GL_AND => 0x1501,

#=head2 GL_AND_INVERTED
#
#=cut

    GL_AND_INVERTED => 0x1504,

#=head2 GL_AND_REVERSE
#
#=cut

    GL_AND_REVERSE => 0x1502,

#=head2 GL_ANY_SAMPLES_PASSED
#
#=cut

    GL_ANY_SAMPLES_PASSED => 0x8C2F,

#=head2 GL_ANY_SAMPLES_PASSED_CONSERVATIVE
#
#=cut

    GL_ANY_SAMPLES_PASSED_CONSERVATIVE => 0x8D6A,

#=head2 GL_APPLE_aux_depth_stencil
#
#=cut

    GL_APPLE_aux_depth_stencil => 1,

#=head2 GL_APPLE_client_storage
#
#=cut

    GL_APPLE_client_storage => 1,

#=head2 GL_APPLE_element_array
#
#=cut

    GL_APPLE_element_array => 1,

#=head2 GL_APPLE_fence
#
#=cut

    GL_APPLE_fence => 1,

#=head2 GL_APPLE_float_pixels
#
#=cut

    GL_APPLE_float_pixels => 1,

#=head2 GL_APPLE_flush_buffer_range
#
#=cut

    GL_APPLE_flush_buffer_range => 1,

#=head2 GL_APPLE_object_purgeable
#
#=cut

    GL_APPLE_object_purgeable => 1,

#=head2 GL_APPLE_rgb_422
#
#=cut

    GL_APPLE_rgb_422 => 1,

#=head2 GL_APPLE_row_bytes
#
#=cut

    GL_APPLE_row_bytes => 1,

#=head2 GL_APPLE_specular_vector
#
#=cut

    GL_APPLE_specular_vector => 1,

#=head2 GL_APPLE_texture_range
#
#=cut

    GL_APPLE_texture_range => 1,

#=head2 GL_APPLE_transform_hint
#
#=cut

    GL_APPLE_transform_hint => 1,

#=head2 GL_APPLE_vertex_array_object
#
#=cut

    GL_APPLE_vertex_array_object => 1,

#=head2 GL_APPLE_vertex_array_range
#
#=cut

    GL_APPLE_vertex_array_range => 1,

#=head2 GL_APPLE_vertex_program_evaluators
#
#=cut

    GL_APPLE_vertex_program_evaluators => 1,

#=head2 GL_APPLE_ycbcr_422
#
#=cut

    GL_APPLE_ycbcr_422 => 1,

#=head2 GL_ARB_ES2_compatibility
#
#=cut

    GL_ARB_ES2_compatibility => 1,

#=head2 GL_ARB_ES3_1_compatibility
#
#=cut

    GL_ARB_ES3_1_compatibility => 1,

#=head2 GL_ARB_ES3_compatibility
#
#=cut

    GL_ARB_ES3_compatibility => 1,

#=head2 GL_ARB_arrays_of_arrays
#
#=cut

    GL_ARB_arrays_of_arrays => 1,

#=head2 GL_ARB_base_instance
#
#=cut

    GL_ARB_base_instance => 1,

#=head2 GL_ARB_bindless_texture
#
#=cut

    GL_ARB_bindless_texture => 1,

#=head2 GL_ARB_blend_func_extended
#
#=cut

    GL_ARB_blend_func_extended => 1,

#=head2 GL_ARB_buffer_storage
#
#=cut

    GL_ARB_buffer_storage => 1,

#=head2 GL_ARB_cl_event
#
#=cut

    GL_ARB_cl_event => 1,

#=head2 GL_ARB_clear_buffer_object
#
#=cut

    GL_ARB_clear_buffer_object => 1,

#=head2 GL_ARB_clear_texture
#
#=cut

    GL_ARB_clear_texture => 1,

#=head2 GL_ARB_clip_control
#
#=cut

    GL_ARB_clip_control => 1,

#=head2 GL_ARB_color_buffer_float
#
#=cut

    GL_ARB_color_buffer_float => 1,

#=head2 GL_ARB_compatibility
#
#=cut

    GL_ARB_compatibility => 1,

#=head2 GL_ARB_compressed_texture_pixel_storage
#
#=cut

    GL_ARB_compressed_texture_pixel_storage => 1,

#=head2 GL_ARB_compute_shader
#
#=cut

    GL_ARB_compute_shader => 1,

#=head2 GL_ARB_compute_variable_group_size
#
#=cut

    GL_ARB_compute_variable_group_size => 1,

#=head2 GL_ARB_conditional_render_inverted
#
#=cut

    GL_ARB_conditional_render_inverted => 1,

#=head2 GL_ARB_conservative_depth
#
#=cut

    GL_ARB_conservative_depth => 1,

#=head2 GL_ARB_copy_buffer
#
#=cut

    GL_ARB_copy_buffer => 1,

#=head2 GL_ARB_copy_image
#
#=cut

    GL_ARB_copy_image => 1,

#=head2 GL_ARB_cull_distance
#
#=cut

    GL_ARB_cull_distance => 1,

#=head2 GL_ARB_debug_output
#
#=cut

    GL_ARB_debug_output => 1,

#=head2 GL_ARB_depth_buffer_float
#
#=cut

    GL_ARB_depth_buffer_float => 1,

#=head2 GL_ARB_depth_clamp
#
#=cut

    GL_ARB_depth_clamp => 1,

#=head2 GL_ARB_depth_texture
#
#=cut

    GL_ARB_depth_texture => 1,

#=head2 GL_ARB_derivative_control
#
#=cut

    GL_ARB_derivative_control => 1,

#=head2 GL_ARB_direct_state_access
#
#=cut

    GL_ARB_direct_state_access => 1,

#=head2 GL_ARB_draw_buffers
#
#=cut

    GL_ARB_draw_buffers => 1,

#=head2 GL_ARB_draw_buffers_blend
#
#=cut

    GL_ARB_draw_buffers_blend => 1,

#=head2 GL_ARB_draw_elements_base_vertex
#
#=cut

    GL_ARB_draw_elements_base_vertex => 1,

#=head2 GL_ARB_draw_indirect
#
#=cut

    GL_ARB_draw_indirect => 1,

#=head2 GL_ARB_draw_instanced
#
#=cut

    GL_ARB_draw_instanced => 1,

#=head2 GL_ARB_enhanced_layouts
#
#=cut

    GL_ARB_enhanced_layouts => 1,

#=head2 GL_ARB_explicit_attrib_location
#
#=cut

    GL_ARB_explicit_attrib_location => 1,

#=head2 GL_ARB_explicit_uniform_location
#
#=cut

    GL_ARB_explicit_uniform_location => 1,

#=head2 GL_ARB_fragment_coord_conventions
#
#=cut

    GL_ARB_fragment_coord_conventions => 1,

#=head2 GL_ARB_fragment_layer_viewport
#
#=cut

    GL_ARB_fragment_layer_viewport => 1,

#=head2 GL_ARB_fragment_program
#
#=cut

    GL_ARB_fragment_program => 1,

#=head2 GL_ARB_fragment_program_shadow
#
#=cut

    GL_ARB_fragment_program_shadow => 1,

#=head2 GL_ARB_fragment_shader
#
#=cut

    GL_ARB_fragment_shader => 1,

#=head2 GL_ARB_framebuffer_no_attachments
#
#=cut

    GL_ARB_framebuffer_no_attachments => 1,

#=head2 GL_ARB_framebuffer_object
#
#=cut

    GL_ARB_framebuffer_object => 1,

#=head2 GL_ARB_framebuffer_sRGB
#
#=cut

    GL_ARB_framebuffer_sRGB => 1,

#=head2 GL_ARB_geometry_shader4
#
#=cut

    GL_ARB_geometry_shader4 => 1,

#=head2 GL_ARB_get_program_binary
#
#=cut

    GL_ARB_get_program_binary => 1,

#=head2 GL_ARB_get_texture_sub_image
#
#=cut

    GL_ARB_get_texture_sub_image => 1,

#=head2 GL_ARB_gpu_shader5
#
#=cut

    GL_ARB_gpu_shader5 => 1,

#=head2 GL_ARB_gpu_shader_fp64
#
#=cut

    GL_ARB_gpu_shader_fp64 => 1,

#=head2 GL_ARB_half_float_pixel
#
#=cut

    GL_ARB_half_float_pixel => 1,

#=head2 GL_ARB_half_float_vertex
#
#=cut

    GL_ARB_half_float_vertex => 1,

#=head2 GL_ARB_imaging
#
#=cut

    GL_ARB_imaging => 1,

#=head2 GL_ARB_indirect_parameters
#
#=cut

    GL_ARB_indirect_parameters => 1,

#=head2 GL_ARB_instanced_arrays
#
#=cut

    GL_ARB_instanced_arrays => 1,

#=head2 GL_ARB_internalformat_query
#
#=cut

    GL_ARB_internalformat_query => 1,

#=head2 GL_ARB_internalformat_query2
#
#=cut

    GL_ARB_internalformat_query2 => 1,

#=head2 GL_ARB_invalidate_subdata
#
#=cut

    GL_ARB_invalidate_subdata => 1,

#=head2 GL_ARB_map_buffer_alignment
#
#=cut

    GL_ARB_map_buffer_alignment => 1,

#=head2 GL_ARB_map_buffer_range
#
#=cut

    GL_ARB_map_buffer_range => 1,

#=head2 GL_ARB_matrix_palette
#
#=cut

    GL_ARB_matrix_palette => 1,

#=head2 GL_ARB_multi_bind
#
#=cut

    GL_ARB_multi_bind => 1,

#=head2 GL_ARB_multi_draw_indirect
#
#=cut

    GL_ARB_multi_draw_indirect => 1,

#=head2 GL_ARB_multisample
#
#=cut

    GL_ARB_multisample => 1,

#=head2 GL_ARB_multitexture
#
#=cut

    GL_ARB_multitexture => 1,

#=head2 GL_ARB_occlusion_query
#
#=cut

    GL_ARB_occlusion_query => 1,

#=head2 GL_ARB_occlusion_query2
#
#=cut

    GL_ARB_occlusion_query2 => 1,

#=head2 GL_ARB_pipeline_statistics_query
#
#=cut

    GL_ARB_pipeline_statistics_query => 1,

#=head2 GL_ARB_pixel_buffer_object
#
#=cut

    GL_ARB_pixel_buffer_object => 1,

#=head2 GL_ARB_point_parameters
#
#=cut

    GL_ARB_point_parameters => 1,

#=head2 GL_ARB_point_sprite
#
#=cut

    GL_ARB_point_sprite => 1,

#=head2 GL_ARB_program_interface_query
#
#=cut

    GL_ARB_program_interface_query => 1,

#=head2 GL_ARB_provoking_vertex
#
#=cut

    GL_ARB_provoking_vertex => 1,

#=head2 GL_ARB_query_buffer_object
#
#=cut

    GL_ARB_query_buffer_object => 1,

#=head2 GL_ARB_robust_buffer_access_behavior
#
#=cut

    GL_ARB_robust_buffer_access_behavior => 1,

#=head2 GL_ARB_robustness
#
#=cut

    GL_ARB_robustness => 1,

#=head2 GL_ARB_robustness_isolation
#
#=cut

    GL_ARB_robustness_isolation => 1,

#=head2 GL_ARB_sample_shading
#
#=cut

    GL_ARB_sample_shading => 1,

#=head2 GL_ARB_sampler_objects
#
#=cut

    GL_ARB_sampler_objects => 1,

#=head2 GL_ARB_seamless_cube_map
#
#=cut

    GL_ARB_seamless_cube_map => 1,

#=head2 GL_ARB_seamless_cubemap_per_texture
#
#=cut

    GL_ARB_seamless_cubemap_per_texture => 1,

#=head2 GL_ARB_separate_shader_objects
#
#=cut

    GL_ARB_separate_shader_objects => 1,

#=head2 GL_ARB_shader_atomic_counters
#
#=cut

    GL_ARB_shader_atomic_counters => 1,

#=head2 GL_ARB_shader_bit_encoding
#
#=cut

    GL_ARB_shader_bit_encoding => 1,

#=head2 GL_ARB_shader_draw_parameters
#
#=cut

    GL_ARB_shader_draw_parameters => 1,

#=head2 GL_ARB_shader_group_vote
#
#=cut

    GL_ARB_shader_group_vote => 1,

#=head2 GL_ARB_shader_image_load_store
#
#=cut

    GL_ARB_shader_image_load_store => 1,

#=head2 GL_ARB_shader_image_size
#
#=cut

    GL_ARB_shader_image_size => 1,

#=head2 GL_ARB_shader_objects
#
#=cut

    GL_ARB_shader_objects => 1,

#=head2 GL_ARB_shader_precision
#
#=cut

    GL_ARB_shader_precision => 1,

#=head2 GL_ARB_shader_stencil_export
#
#=cut

    GL_ARB_shader_stencil_export => 1,

#=head2 GL_ARB_shader_storage_buffer_object
#
#=cut

    GL_ARB_shader_storage_buffer_object => 1,

#=head2 GL_ARB_shader_subroutine
#
#=cut

    GL_ARB_shader_subroutine => 1,

#=head2 GL_ARB_shader_texture_image_samples
#
#=cut

    GL_ARB_shader_texture_image_samples => 1,

#=head2 GL_ARB_shader_texture_lod
#
#=cut

    GL_ARB_shader_texture_lod => 1,

#=head2 GL_ARB_shading_language_100
#
#=cut

    GL_ARB_shading_language_100 => 1,

#=head2 GL_ARB_shading_language_420pack
#
#=cut

    GL_ARB_shading_language_420pack => 1,

#=head2 GL_ARB_shading_language_include
#
#=cut

    GL_ARB_shading_language_include => 1,

#=head2 GL_ARB_shading_language_packing
#
#=cut

    GL_ARB_shading_language_packing => 1,

#=head2 GL_ARB_shadow
#
#=cut

    GL_ARB_shadow => 1,

#=head2 GL_ARB_shadow_ambient
#
#=cut

    GL_ARB_shadow_ambient => 1,

#=head2 GL_ARB_sparse_buffer
#
#=cut

    GL_ARB_sparse_buffer => 1,

#=head2 GL_ARB_sparse_texture
#
#=cut

    GL_ARB_sparse_texture => 1,

#=head2 GL_ARB_stencil_texturing
#
#=cut

    GL_ARB_stencil_texturing => 1,

#=head2 GL_ARB_sync
#
#=cut

    GL_ARB_sync => 1,

#=head2 GL_ARB_tessellation_shader
#
#=cut

    GL_ARB_tessellation_shader => 1,

#=head2 GL_ARB_texture_barrier
#
#=cut

    GL_ARB_texture_barrier => 1,

#=head2 GL_ARB_texture_border_clamp
#
#=cut

    GL_ARB_texture_border_clamp => 1,

#=head2 GL_ARB_texture_buffer_object
#
#=cut

    GL_ARB_texture_buffer_object => 1,

#=head2 GL_ARB_texture_buffer_object_rgb32
#
#=cut

    GL_ARB_texture_buffer_object_rgb32 => 1,

#=head2 GL_ARB_texture_buffer_range
#
#=cut

    GL_ARB_texture_buffer_range => 1,

#=head2 GL_ARB_texture_compression
#
#=cut

    GL_ARB_texture_compression => 1,

#=head2 GL_ARB_texture_compression_bptc
#
#=cut

    GL_ARB_texture_compression_bptc => 1,

#=head2 GL_ARB_texture_compression_rgtc
#
#=cut

    GL_ARB_texture_compression_rgtc => 1,

#=head2 GL_ARB_texture_cube_map
#
#=cut

    GL_ARB_texture_cube_map => 1,

#=head2 GL_ARB_texture_cube_map_array
#
#=cut

    GL_ARB_texture_cube_map_array => 1,

#=head2 GL_ARB_texture_env_add
#
#=cut

    GL_ARB_texture_env_add => 1,

#=head2 GL_ARB_texture_env_combine
#
#=cut

    GL_ARB_texture_env_combine => 1,

#=head2 GL_ARB_texture_env_crossbar
#
#=cut

    GL_ARB_texture_env_crossbar => 1,

#=head2 GL_ARB_texture_env_dot3
#
#=cut

    GL_ARB_texture_env_dot3 => 1,

#=head2 GL_ARB_texture_float
#
#=cut

    GL_ARB_texture_float => 1,

#=head2 GL_ARB_texture_gather
#
#=cut

    GL_ARB_texture_gather => 1,

#=head2 GL_ARB_texture_mirror_clamp_to_edge
#
#=cut

    GL_ARB_texture_mirror_clamp_to_edge => 1,

#=head2 GL_ARB_texture_mirrored_repeat
#
#=cut

    GL_ARB_texture_mirrored_repeat => 1,

#=head2 GL_ARB_texture_multisample
#
#=cut

    GL_ARB_texture_multisample => 1,

#=head2 GL_ARB_texture_non_power_of_two
#
#=cut

    GL_ARB_texture_non_power_of_two => 1,

#=head2 GL_ARB_texture_query_levels
#
#=cut

    GL_ARB_texture_query_levels => 1,

#=head2 GL_ARB_texture_query_lod
#
#=cut

    GL_ARB_texture_query_lod => 1,

#=head2 GL_ARB_texture_rectangle
#
#=cut

    GL_ARB_texture_rectangle => 1,

#=head2 GL_ARB_texture_rg
#
#=cut

    GL_ARB_texture_rg => 1,

#=head2 GL_ARB_texture_rgb10_a2ui
#
#=cut

    GL_ARB_texture_rgb10_a2ui => 1,

#=head2 GL_ARB_texture_stencil8
#
#=cut

    GL_ARB_texture_stencil8 => 1,

#=head2 GL_ARB_texture_storage
#
#=cut

    GL_ARB_texture_storage => 1,

#=head2 GL_ARB_texture_storage_multisample
#
#=cut

    GL_ARB_texture_storage_multisample => 1,

#=head2 GL_ARB_texture_swizzle
#
#=cut

    GL_ARB_texture_swizzle => 1,

#=head2 GL_ARB_texture_view
#
#=cut

    GL_ARB_texture_view => 1,

#=head2 GL_ARB_timer_query
#
#=cut

    GL_ARB_timer_query => 1,

#=head2 GL_ARB_transform_feedback2
#
#=cut

    GL_ARB_transform_feedback2 => 1,

#=head2 GL_ARB_transform_feedback3
#
#=cut

    GL_ARB_transform_feedback3 => 1,

#=head2 GL_ARB_transform_feedback_instanced
#
#=cut

    GL_ARB_transform_feedback_instanced => 1,

#=head2 GL_ARB_transform_feedback_overflow_query
#
#=cut

    GL_ARB_transform_feedback_overflow_query => 1,

#=head2 GL_ARB_transpose_matrix
#
#=cut

    GL_ARB_transpose_matrix => 1,

#=head2 GL_ARB_uniform_buffer_object
#
#=cut

    GL_ARB_uniform_buffer_object => 1,

#=head2 GL_ARB_vertex_array_bgra
#
#=cut

    GL_ARB_vertex_array_bgra => 1,

#=head2 GL_ARB_vertex_array_object
#
#=cut

    GL_ARB_vertex_array_object => 1,

#=head2 GL_ARB_vertex_attrib_64bit
#
#=cut

    GL_ARB_vertex_attrib_64bit => 1,

#=head2 GL_ARB_vertex_attrib_binding
#
#=cut

    GL_ARB_vertex_attrib_binding => 1,

#=head2 GL_ARB_vertex_blend
#
#=cut

    GL_ARB_vertex_blend => 1,

#=head2 GL_ARB_vertex_buffer_object
#
#=cut

    GL_ARB_vertex_buffer_object => 1,

#=head2 GL_ARB_vertex_program
#
#=cut

    GL_ARB_vertex_program => 1,

#=head2 GL_ARB_vertex_shader
#
#=cut

    GL_ARB_vertex_shader => 1,

#=head2 GL_ARB_vertex_type_10f_11f_11f_rev
#
#=cut

    GL_ARB_vertex_type_10f_11f_11f_rev => 1,

#=head2 GL_ARB_vertex_type_2_10_10_10_rev
#
#=cut

    GL_ARB_vertex_type_2_10_10_10_rev => 1,

#=head2 GL_ARB_viewport_array
#
#=cut

    GL_ARB_viewport_array => 1,

#=head2 GL_ARB_window_pos
#
#=cut

    GL_ARB_window_pos => 1,

#=head2 GL_ARC_TO_NV
#
#=cut

    GL_ARC_TO_NV => 0xFE,

#=head2 GL_ARRAY_BUFFER
#
#=cut

    GL_ARRAY_BUFFER => 0x8892,

#=head2 GL_ARRAY_BUFFER_ARB
#
#=cut

    GL_ARRAY_BUFFER_ARB => 0x8892,

#=head2 GL_ARRAY_BUFFER_BINDING
#
#=cut

    GL_ARRAY_BUFFER_BINDING => 0x8894,

#=head2 GL_ARRAY_BUFFER_BINDING_ARB
#
#=cut

    GL_ARRAY_BUFFER_BINDING_ARB => 0x8894,

#=head2 GL_ARRAY_ELEMENT_LOCK_COUNT_EXT
#
#=cut

    GL_ARRAY_ELEMENT_LOCK_COUNT_EXT => 0x81A9,

#=head2 GL_ARRAY_ELEMENT_LOCK_FIRST_EXT
#
#=cut

    GL_ARRAY_ELEMENT_LOCK_FIRST_EXT => 0x81A8,

#=head2 GL_ARRAY_OBJECT_BUFFER_ATI
#
#=cut

    GL_ARRAY_OBJECT_BUFFER_ATI => 0x8766,

#=head2 GL_ARRAY_OBJECT_OFFSET_ATI
#
#=cut

    GL_ARRAY_OBJECT_OFFSET_ATI => 0x8767,

#=head2 GL_ARRAY_SIZE
#
#=cut

    GL_ARRAY_SIZE => 0x92FB,

#=head2 GL_ARRAY_STRIDE
#
#=cut

    GL_ARRAY_STRIDE => 0x92FE,

#=head2 GL_ASYNC_DRAW_PIXELS_SGIX
#
#=cut

    GL_ASYNC_DRAW_PIXELS_SGIX => 0x835D,

#=head2 GL_ASYNC_HISTOGRAM_SGIX
#
#=cut

    GL_ASYNC_HISTOGRAM_SGIX => 0x832C,

#=head2 GL_ASYNC_MARKER_SGIX
#
#=cut

    GL_ASYNC_MARKER_SGIX => 0x8329,

#=head2 GL_ASYNC_READ_PIXELS_SGIX
#
#=cut

    GL_ASYNC_READ_PIXELS_SGIX => 0x835E,

#=head2 GL_ASYNC_TEX_IMAGE_SGIX
#
#=cut

    GL_ASYNC_TEX_IMAGE_SGIX => 0x835C,

#=head2 GL_ATI_blend_equation_separate
#
#=cut

    GL_ATI_blend_equation_separate => 1,

#=head2 GL_ATI_draw_buffers
#
#=cut

    GL_ATI_draw_buffers => 1,

#=head2 GL_ATI_element_array
#
#=cut

    GL_ATI_element_array => 1,

#=head2 GL_ATI_envmap_bumpmap
#
#=cut

    GL_ATI_envmap_bumpmap => 1,

#=head2 GL_ATI_fragment_shader
#
#=cut

    GL_ATI_fragment_shader => 1,

#=head2 GL_ATI_map_object_buffer
#
#=cut

    GL_ATI_map_object_buffer => 1,

#=head2 GL_ATI_meminfo
#
#=cut

    GL_ATI_meminfo => 1,

#=head2 GL_ATI_pixel_format_float
#
#=cut

    GL_ATI_pixel_format_float => 1,

#=head2 GL_ATI_pn_triangles
#
#=cut

    GL_ATI_pn_triangles => 1,

#=head2 GL_ATI_separate_stencil
#
#=cut

    GL_ATI_separate_stencil => 1,

#=head2 GL_ATI_text_fragment_shader
#
#=cut

    GL_ATI_text_fragment_shader => 1,

#=head2 GL_ATI_texture_env_combine3
#
#=cut

    GL_ATI_texture_env_combine3 => 1,

#=head2 GL_ATI_texture_float
#
#=cut

    GL_ATI_texture_float => 1,

#=head2 GL_ATI_texture_mirror_once
#
#=cut

    GL_ATI_texture_mirror_once => 1,

#=head2 GL_ATI_vertex_array_object
#
#=cut

    GL_ATI_vertex_array_object => 1,

#=head2 GL_ATI_vertex_attrib_array_object
#
#=cut

    GL_ATI_vertex_attrib_array_object => 1,

#=head2 GL_ATI_vertex_streams
#
#=cut

    GL_ATI_vertex_streams => 1,

#=head2 GL_ATOMIC_COUNTER_BARRIER_BIT
#
#=cut

    GL_ATOMIC_COUNTER_BARRIER_BIT => 0x00001000,

#=head2 GL_ATOMIC_COUNTER_BARRIER_BIT_EXT
#
#=cut

    GL_ATOMIC_COUNTER_BARRIER_BIT_EXT => 0x00001000,

#=head2 GL_ATOMIC_COUNTER_BUFFER
#
#=cut

    GL_ATOMIC_COUNTER_BUFFER => 0x92C0,

#=head2 GL_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTERS
#
#=cut

    GL_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTERS => 0x92C5,

#=head2 GL_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTER_INDICES
#
#=cut

    GL_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTER_INDICES => 0x92C6,

#=head2 GL_ATOMIC_COUNTER_BUFFER_BINDING
#
#=cut

    GL_ATOMIC_COUNTER_BUFFER_BINDING => 0x92C1,

#=head2 GL_ATOMIC_COUNTER_BUFFER_DATA_SIZE
#
#=cut

    GL_ATOMIC_COUNTER_BUFFER_DATA_SIZE => 0x92C4,

#=head2 GL_ATOMIC_COUNTER_BUFFER_INDEX
#
#=cut

    GL_ATOMIC_COUNTER_BUFFER_INDEX => 0x9301,

#=head2 GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_COMPUTE_SHADER
#
#=cut

    GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_COMPUTE_SHADER => 0x90ED,

#=head2 GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_FRAGMENT_SHADER
#
#=cut

    GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_FRAGMENT_SHADER => 0x92CB,

#=head2 GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_GEOMETRY_SHADER
#
#=cut

    GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_GEOMETRY_SHADER => 0x92CA,

#=head2 GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_CONTROL_SHADER
#
#=cut

    GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_CONTROL_SHADER => 0x92C8,

#=head2 GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_EVALUATION_SHADER
#
#=cut

    GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_EVALUATION_SHADER => 0x92C9,

#=head2 GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_VERTEX_SHADER
#
#=cut

    GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_VERTEX_SHADER => 0x92C7,

#=head2 GL_ATOMIC_COUNTER_BUFFER_SIZE
#
#=cut

    GL_ATOMIC_COUNTER_BUFFER_SIZE => 0x92C3,

#=head2 GL_ATOMIC_COUNTER_BUFFER_START
#
#=cut

    GL_ATOMIC_COUNTER_BUFFER_START => 0x92C2,

#=head2 GL_ATTACHED_SHADERS
#
#=cut

    GL_ATTACHED_SHADERS => 0x8B85,

#=head2 GL_ATTENUATION_EXT
#
#=cut

    GL_ATTENUATION_EXT => 0x834D,

#=head2 GL_ATTRIB_ARRAY_POINTER_NV
#
#=cut

    GL_ATTRIB_ARRAY_POINTER_NV => 0x8645,

#=head2 GL_ATTRIB_ARRAY_SIZE_NV
#
#=cut

    GL_ATTRIB_ARRAY_SIZE_NV => 0x8623,

#=head2 GL_ATTRIB_ARRAY_STRIDE_NV
#
#=cut

    GL_ATTRIB_ARRAY_STRIDE_NV => 0x8624,

#=head2 GL_ATTRIB_ARRAY_TYPE_NV
#
#=cut

    GL_ATTRIB_ARRAY_TYPE_NV => 0x8625,

#=head2 GL_ATTRIB_STACK_DEPTH
#
#=cut

    GL_ATTRIB_STACK_DEPTH => 0x0BB0,

#=head2 GL_AUTO_GENERATE_MIPMAP
#
#=cut

    GL_AUTO_GENERATE_MIPMAP => 0x8295,

#=head2 GL_AUTO_NORMAL
#
#=cut

    GL_AUTO_NORMAL => 0x0D80,

#=head2 GL_AUX0
#
#=cut

    GL_AUX0 => 0x0409,

#=head2 GL_AUX1
#
#=cut

    GL_AUX1 => 0x040A,

#=head2 GL_AUX2
#
#=cut

    GL_AUX2 => 0x040B,

#=head2 GL_AUX3
#
#=cut

    GL_AUX3 => 0x040C,

#=head2 GL_AUX_BUFFERS
#
#=cut

    GL_AUX_BUFFERS => 0x0C00,

#=head2 GL_AUX_DEPTH_STENCIL_APPLE
#
#=cut

    GL_AUX_DEPTH_STENCIL_APPLE => 0x8A14,

#=head2 GL_AVERAGE_EXT
#
#=cut

    GL_AVERAGE_EXT => 0x8335,

#=head2 GL_AVERAGE_HP
#
#=cut

    GL_AVERAGE_HP => 0x8160,

#=head2 GL_BACK
#
#=cut

    GL_BACK => 0x0405,

#=head2 GL_BACK_LEFT
#
#=cut

    GL_BACK_LEFT => 0x0402,

#=head2 GL_BACK_NORMALS_HINT_PGI
#
#=cut

    GL_BACK_NORMALS_HINT_PGI => 0x1A223,

#=head2 GL_BACK_PRIMARY_COLOR_NV
#
#=cut

    GL_BACK_PRIMARY_COLOR_NV => 0x8C77,

#=head2 GL_BACK_RIGHT
#
#=cut

    GL_BACK_RIGHT => 0x0403,

#=head2 GL_BACK_SECONDARY_COLOR_NV
#
#=cut

    GL_BACK_SECONDARY_COLOR_NV => 0x8C78,

#=head2 GL_BEVEL_NV
#
#=cut

    GL_BEVEL_NV => 0x90A6,

#=head2 GL_BGR
#
#=cut

    GL_BGR => 0x80E0,

#=head2 GL_BGRA
#
#=cut

    GL_BGRA => 0x80E1,

#=head2 GL_BGRA_EXT
#
#=cut

    GL_BGRA_EXT => 0x80E1,

#=head2 GL_BGRA_INTEGER
#
#=cut

    GL_BGRA_INTEGER => 0x8D9B,

#=head2 GL_BGRA_INTEGER_EXT
#
#=cut

    GL_BGRA_INTEGER_EXT => 0x8D9B,

#=head2 GL_BGR_EXT
#
#=cut

    GL_BGR_EXT => 0x80E0,

#=head2 GL_BGR_INTEGER
#
#=cut

    GL_BGR_INTEGER => 0x8D9A,

#=head2 GL_BGR_INTEGER_EXT
#
#=cut

    GL_BGR_INTEGER_EXT => 0x8D9A,

#=head2 GL_BIAS_BIT_ATI
#
#=cut

    GL_BIAS_BIT_ATI => 0x00000008,

#=head2 GL_BIAS_BY_NEGATIVE_ONE_HALF_NV
#
#=cut

    GL_BIAS_BY_NEGATIVE_ONE_HALF_NV => 0x8541,

#=head2 GL_BINORMAL_ARRAY_EXT
#
#=cut

    GL_BINORMAL_ARRAY_EXT => 0x843A,

#=head2 GL_BINORMAL_ARRAY_POINTER_EXT
#
#=cut

    GL_BINORMAL_ARRAY_POINTER_EXT => 0x8443,

#=head2 GL_BINORMAL_ARRAY_STRIDE_EXT
#
#=cut

    GL_BINORMAL_ARRAY_STRIDE_EXT => 0x8441,

#=head2 GL_BINORMAL_ARRAY_TYPE_EXT
#
#=cut

    GL_BINORMAL_ARRAY_TYPE_EXT => 0x8440,

#=head2 GL_BITMAP
#
#=cut

    GL_BITMAP => 0x1A00,

#=head2 GL_BITMAP_TOKEN
#
#=cut

    GL_BITMAP_TOKEN => 0x0704,

#=head2 GL_BLEND
#
#=cut

    GL_BLEND => 0x0BE2,

#=head2 GL_BLEND_ADVANCED_COHERENT_KHR
#
#=cut

    GL_BLEND_ADVANCED_COHERENT_KHR => 0x9285,

#=head2 GL_BLEND_ADVANCED_COHERENT_NV
#
#=cut

    GL_BLEND_ADVANCED_COHERENT_NV => 0x9285,

#=head2 GL_BLEND_COLOR
#
#=cut

    GL_BLEND_COLOR => 0x8005,

#=head2 GL_BLEND_COLOR_EXT
#
#=cut

    GL_BLEND_COLOR_EXT => 0x8005,

#=head2 GL_BLEND_DST
#
#=cut

    GL_BLEND_DST => 0x0BE0,

#=head2 GL_BLEND_DST_ALPHA
#
#=cut

    GL_BLEND_DST_ALPHA => 0x80CA,

#=head2 GL_BLEND_DST_ALPHA_EXT
#
#=cut

    GL_BLEND_DST_ALPHA_EXT => 0x80CA,

#=head2 GL_BLEND_DST_RGB
#
#=cut

    GL_BLEND_DST_RGB => 0x80C8,

#=head2 GL_BLEND_DST_RGB_EXT
#
#=cut

    GL_BLEND_DST_RGB_EXT => 0x80C8,

#=head2 GL_BLEND_EQUATION
#
#=cut

    GL_BLEND_EQUATION => 0x8009,

#=head2 GL_BLEND_EQUATION_ALPHA
#
#=cut

    GL_BLEND_EQUATION_ALPHA => 0x883D,

#=head2 GL_BLEND_EQUATION_ALPHA_EXT
#
#=cut

    GL_BLEND_EQUATION_ALPHA_EXT => 0x883D,

#=head2 GL_BLEND_EQUATION_EXT
#
#=cut

    GL_BLEND_EQUATION_EXT => 0x8009,

#=head2 GL_BLEND_EQUATION_RGB
#
#=cut

    GL_BLEND_EQUATION_RGB => 0x8009,

#=head2 GL_BLEND_EQUATION_RGB_EXT
#
#=cut

    GL_BLEND_EQUATION_RGB_EXT => 0x8009,

#=head2 GL_BLEND_OVERLAP_NV
#
#=cut

    GL_BLEND_OVERLAP_NV => 0x9281,

#=head2 GL_BLEND_PREMULTIPLIED_SRC_NV
#
#=cut

    GL_BLEND_PREMULTIPLIED_SRC_NV => 0x9280,

#=head2 GL_BLEND_SRC
#
#=cut

    GL_BLEND_SRC => 0x0BE1,

#=head2 GL_BLEND_SRC_ALPHA
#
#=cut

    GL_BLEND_SRC_ALPHA => 0x80CB,

#=head2 GL_BLEND_SRC_ALPHA_EXT
#
#=cut

    GL_BLEND_SRC_ALPHA_EXT => 0x80CB,

#=head2 GL_BLEND_SRC_RGB
#
#=cut

    GL_BLEND_SRC_RGB => 0x80C9,

#=head2 GL_BLEND_SRC_RGB_EXT
#
#=cut

    GL_BLEND_SRC_RGB_EXT => 0x80C9,

#=head2 GL_BLOCK_INDEX
#
#=cut

    GL_BLOCK_INDEX => 0x92FD,

#=head2 GL_BLUE
#
#=cut

    GL_BLUE => 0x1905,

#=head2 GL_BLUE_BIAS
#
#=cut

    GL_BLUE_BIAS => 0x0D1B,

#=head2 GL_BLUE_BITS
#
#=cut

    GL_BLUE_BITS => 0x0D54,

#=head2 GL_BLUE_BIT_ATI
#
#=cut

    GL_BLUE_BIT_ATI => 0x00000004,

#=head2 GL_BLUE_INTEGER
#
#=cut

    GL_BLUE_INTEGER => 0x8D96,

#=head2 GL_BLUE_INTEGER_EXT
#
#=cut

    GL_BLUE_INTEGER_EXT => 0x8D96,

#=head2 GL_BLUE_MAX_CLAMP_INGR
#
#=cut

    GL_BLUE_MAX_CLAMP_INGR => 0x8566,

#=head2 GL_BLUE_MIN_CLAMP_INGR
#
#=cut

    GL_BLUE_MIN_CLAMP_INGR => 0x8562,

#=head2 GL_BLUE_NV
#
#=cut

    GL_BLUE_NV => 0x1905,

#=head2 GL_BLUE_SCALE
#
#=cut

    GL_BLUE_SCALE => 0x0D1A,

#=head2 GL_BOLD_BIT_NV
#
#=cut

    GL_BOLD_BIT_NV => 0x01,

#=head2 GL_BOOL
#
#=cut

    GL_BOOL => 0x8B56,

#=head2 GL_BOOL_ARB
#
#=cut

    GL_BOOL_ARB => 0x8B56,

#=head2 GL_BOOL_VEC2
#
#=cut

    GL_BOOL_VEC2 => 0x8B57,

#=head2 GL_BOOL_VEC2_ARB
#
#=cut

    GL_BOOL_VEC2_ARB => 0x8B57,

#=head2 GL_BOOL_VEC3
#
#=cut

    GL_BOOL_VEC3 => 0x8B58,

#=head2 GL_BOOL_VEC3_ARB
#
#=cut

    GL_BOOL_VEC3_ARB => 0x8B58,

#=head2 GL_BOOL_VEC4
#
#=cut

    GL_BOOL_VEC4 => 0x8B59,

#=head2 GL_BOOL_VEC4_ARB
#
#=cut

    GL_BOOL_VEC4_ARB => 0x8B59,

#=head2 GL_BOUNDING_BOX_NV
#
#=cut

    GL_BOUNDING_BOX_NV => 0x908D,

#=head2 GL_BOUNDING_BOX_OF_BOUNDING_BOXES_NV
#
#=cut

    GL_BOUNDING_BOX_OF_BOUNDING_BOXES_NV => 0x909C,

#=head2 GL_BUFFER
#
#=cut

    GL_BUFFER => 0x82E0,

#=head2 GL_BUFFER_ACCESS
#
#=cut

    GL_BUFFER_ACCESS => 0x88BB,

#=head2 GL_BUFFER_ACCESS_ARB
#
#=cut

    GL_BUFFER_ACCESS_ARB => 0x88BB,

#=head2 GL_BUFFER_ACCESS_FLAGS
#
#=cut

    GL_BUFFER_ACCESS_FLAGS => 0x911F,

#=head2 GL_BUFFER_BINDING
#
#=cut

    GL_BUFFER_BINDING => 0x9302,

#=head2 GL_BUFFER_DATA_SIZE
#
#=cut

    GL_BUFFER_DATA_SIZE => 0x9303,

#=head2 GL_BUFFER_FLUSHING_UNMAP_APPLE
#
#=cut

    GL_BUFFER_FLUSHING_UNMAP_APPLE => 0x8A13,

#=head2 GL_BUFFER_GPU_ADDRESS_NV
#
#=cut

    GL_BUFFER_GPU_ADDRESS_NV => 0x8F1D,

#=head2 GL_BUFFER_IMMUTABLE_STORAGE
#
#=cut

    GL_BUFFER_IMMUTABLE_STORAGE => 0x821F,

#=head2 GL_BUFFER_MAPPED
#
#=cut

    GL_BUFFER_MAPPED => 0x88BC,

#=head2 GL_BUFFER_MAPPED_ARB
#
#=cut

    GL_BUFFER_MAPPED_ARB => 0x88BC,

#=head2 GL_BUFFER_MAP_LENGTH
#
#=cut

    GL_BUFFER_MAP_LENGTH => 0x9120,

#=head2 GL_BUFFER_MAP_OFFSET
#
#=cut

    GL_BUFFER_MAP_OFFSET => 0x9121,

#=head2 GL_BUFFER_MAP_POINTER
#
#=cut

    GL_BUFFER_MAP_POINTER => 0x88BD,

#=head2 GL_BUFFER_MAP_POINTER_ARB
#
#=cut

    GL_BUFFER_MAP_POINTER_ARB => 0x88BD,

#=head2 GL_BUFFER_OBJECT_APPLE
#
#=cut

    GL_BUFFER_OBJECT_APPLE => 0x85B3,

#=head2 GL_BUFFER_OBJECT_EXT
#
#=cut

    GL_BUFFER_OBJECT_EXT => 0x9151,

#=head2 GL_BUFFER_SERIALIZED_MODIFY_APPLE
#
#=cut

    GL_BUFFER_SERIALIZED_MODIFY_APPLE => 0x8A12,

#=head2 GL_BUFFER_SIZE
#
#=cut

    GL_BUFFER_SIZE => 0x8764,

#=head2 GL_BUFFER_SIZE_ARB
#
#=cut

    GL_BUFFER_SIZE_ARB => 0x8764,

#=head2 GL_BUFFER_STORAGE_FLAGS
#
#=cut

    GL_BUFFER_STORAGE_FLAGS => 0x8220,

#=head2 GL_BUFFER_UPDATE_BARRIER_BIT
#
#=cut

    GL_BUFFER_UPDATE_BARRIER_BIT => 0x00000200,

#=head2 GL_BUFFER_UPDATE_BARRIER_BIT_EXT
#
#=cut

    GL_BUFFER_UPDATE_BARRIER_BIT_EXT => 0x00000200,

#=head2 GL_BUFFER_USAGE
#
#=cut

    GL_BUFFER_USAGE => 0x8765,

#=head2 GL_BUFFER_USAGE_ARB
#
#=cut

    GL_BUFFER_USAGE_ARB => 0x8765,

#=head2 GL_BUFFER_VARIABLE
#
#=cut

    GL_BUFFER_VARIABLE => 0x92E5,

#=head2 GL_BUMP_ENVMAP_ATI
#
#=cut

    GL_BUMP_ENVMAP_ATI => 0x877B,

#=head2 GL_BUMP_NUM_TEX_UNITS_ATI
#
#=cut

    GL_BUMP_NUM_TEX_UNITS_ATI => 0x8777,

#=head2 GL_BUMP_ROT_MATRIX_ATI
#
#=cut

    GL_BUMP_ROT_MATRIX_ATI => 0x8775,

#=head2 GL_BUMP_ROT_MATRIX_SIZE_ATI
#
#=cut

    GL_BUMP_ROT_MATRIX_SIZE_ATI => 0x8776,

#=head2 GL_BUMP_TARGET_ATI
#
#=cut

    GL_BUMP_TARGET_ATI => 0x877C,

#=head2 GL_BUMP_TEX_UNITS_ATI
#
#=cut

    GL_BUMP_TEX_UNITS_ATI => 0x8778,

#=head2 GL_BYTE
#
#=cut

    GL_BYTE => 0x1400,

#=head2 GL_C3F_V3F
#
#=cut

    GL_C3F_V3F => 0x2A24,

#=head2 GL_C4F_N3F_V3F
#
#=cut

    GL_C4F_N3F_V3F => 0x2A26,

#=head2 GL_C4UB_V2F
#
#=cut

    GL_C4UB_V2F => 0x2A22,

#=head2 GL_C4UB_V3F
#
#=cut

    GL_C4UB_V3F => 0x2A23,

#=head2 GL_CALLIGRAPHIC_FRAGMENT_SGIX
#
#=cut

    GL_CALLIGRAPHIC_FRAGMENT_SGIX => 0x8183,

#=head2 GL_CAVEAT_SUPPORT
#
#=cut

    GL_CAVEAT_SUPPORT => 0x82B8,

#=head2 GL_CCW
#
#=cut

    GL_CCW => 0x0901,

#=head2 GL_CIRCULAR_CCW_ARC_TO_NV
#
#=cut

    GL_CIRCULAR_CCW_ARC_TO_NV => 0xF8,

#=head2 GL_CIRCULAR_CW_ARC_TO_NV
#
#=cut

    GL_CIRCULAR_CW_ARC_TO_NV => 0xFA,

#=head2 GL_CIRCULAR_TANGENT_ARC_TO_NV
#
#=cut

    GL_CIRCULAR_TANGENT_ARC_TO_NV => 0xFC,

#=head2 GL_CLAMP
#
#=cut

    GL_CLAMP => 0x2900,

#=head2 GL_CLAMP_FRAGMENT_COLOR
#
#=cut

    GL_CLAMP_FRAGMENT_COLOR => 0x891B,

#=head2 GL_CLAMP_FRAGMENT_COLOR_ARB
#
#=cut

    GL_CLAMP_FRAGMENT_COLOR_ARB => 0x891B,

#=head2 GL_CLAMP_READ_COLOR
#
#=cut

    GL_CLAMP_READ_COLOR => 0x891C,

#=head2 GL_CLAMP_READ_COLOR_ARB
#
#=cut

    GL_CLAMP_READ_COLOR_ARB => 0x891C,

#=head2 GL_CLAMP_TO_BORDER
#
#=cut

    GL_CLAMP_TO_BORDER => 0x812D,

#=head2 GL_CLAMP_TO_BORDER_ARB
#
#=cut

    GL_CLAMP_TO_BORDER_ARB => 0x812D,

#=head2 GL_CLAMP_TO_BORDER_SGIS
#
#=cut

    GL_CLAMP_TO_BORDER_SGIS => 0x812D,

#=head2 GL_CLAMP_TO_EDGE
#
#=cut

    GL_CLAMP_TO_EDGE => 0x812F,

#=head2 GL_CLAMP_TO_EDGE_SGIS
#
#=cut

    GL_CLAMP_TO_EDGE_SGIS => 0x812F,

#=head2 GL_CLAMP_VERTEX_COLOR
#
#=cut

    GL_CLAMP_VERTEX_COLOR => 0x891A,

#=head2 GL_CLAMP_VERTEX_COLOR_ARB
#
#=cut

    GL_CLAMP_VERTEX_COLOR_ARB => 0x891A,

#=head2 GL_CLEAR
#
#=cut

    GL_CLEAR => 0x1500,

#=head2 GL_CLEAR_BUFFER
#
#=cut

    GL_CLEAR_BUFFER => 0x82B4,

#=head2 GL_CLEAR_TEXTURE
#
#=cut

    GL_CLEAR_TEXTURE => 0x9365,

#=head2 GL_CLIENT_ACTIVE_TEXTURE
#
#=cut

    GL_CLIENT_ACTIVE_TEXTURE => 0x84E1,

#=head2 GL_CLIENT_ACTIVE_TEXTURE_ARB
#
#=cut

    GL_CLIENT_ACTIVE_TEXTURE_ARB => 0x84E1,

#=head2 GL_CLIENT_ALL_ATTRIB_BITS
#
#=cut

    GL_CLIENT_ALL_ATTRIB_BITS => 0xFFFFFFFF,

#=head2 GL_CLIENT_ATTRIB_STACK_DEPTH
#
#=cut

    GL_CLIENT_ATTRIB_STACK_DEPTH => 0x0BB1,

#=head2 GL_CLIENT_MAPPED_BUFFER_BARRIER_BIT
#
#=cut

    GL_CLIENT_MAPPED_BUFFER_BARRIER_BIT => 0x00004000,

#=head2 GL_CLIENT_PIXEL_STORE_BIT
#
#=cut

    GL_CLIENT_PIXEL_STORE_BIT => 0x00000001,

#=head2 GL_CLIENT_STORAGE_BIT
#
#=cut

    GL_CLIENT_STORAGE_BIT => 0x0200,

#=head2 GL_CLIENT_VERTEX_ARRAY_BIT
#
#=cut

    GL_CLIENT_VERTEX_ARRAY_BIT => 0x00000002,

#=head2 GL_CLIPPING_INPUT_PRIMITIVES_ARB
#
#=cut

    GL_CLIPPING_INPUT_PRIMITIVES_ARB => 0x82F6,

#=head2 GL_CLIPPING_OUTPUT_PRIMITIVES_ARB
#
#=cut

    GL_CLIPPING_OUTPUT_PRIMITIVES_ARB => 0x82F7,

#=head2 GL_CLIP_DEPTH_MODE
#
#=cut

    GL_CLIP_DEPTH_MODE => 0x935D,

#=head2 GL_CLIP_DISTANCE0
#
#=cut

    GL_CLIP_DISTANCE0 => 0x3000,

#=head2 GL_CLIP_DISTANCE1
#
#=cut

    GL_CLIP_DISTANCE1 => 0x3001,

#=head2 GL_CLIP_DISTANCE2
#
#=cut

    GL_CLIP_DISTANCE2 => 0x3002,

#=head2 GL_CLIP_DISTANCE3
#
#=cut

    GL_CLIP_DISTANCE3 => 0x3003,

#=head2 GL_CLIP_DISTANCE4
#
#=cut

    GL_CLIP_DISTANCE4 => 0x3004,

#=head2 GL_CLIP_DISTANCE5
#
#=cut

    GL_CLIP_DISTANCE5 => 0x3005,

#=head2 GL_CLIP_DISTANCE6
#
#=cut

    GL_CLIP_DISTANCE6 => 0x3006,

#=head2 GL_CLIP_DISTANCE7
#
#=cut

    GL_CLIP_DISTANCE7 => 0x3007,

#=head2 GL_CLIP_DISTANCE_NV
#
#=cut

    GL_CLIP_DISTANCE_NV => 0x8C7A,

#=head2 GL_CLIP_FAR_HINT_PGI
#
#=cut

    GL_CLIP_FAR_HINT_PGI => 0x1A221,

#=head2 GL_CLIP_NEAR_HINT_PGI
#
#=cut

    GL_CLIP_NEAR_HINT_PGI => 0x1A220,

#=head2 GL_CLIP_ORIGIN
#
#=cut

    GL_CLIP_ORIGIN => 0x935C,

#=head2 GL_CLIP_PLANE0
#
#=cut

    GL_CLIP_PLANE0 => 0x3000,

#=head2 GL_CLIP_PLANE1
#
#=cut

    GL_CLIP_PLANE1 => 0x3001,

#=head2 GL_CLIP_PLANE2
#
#=cut

    GL_CLIP_PLANE2 => 0x3002,

#=head2 GL_CLIP_PLANE3
#
#=cut

    GL_CLIP_PLANE3 => 0x3003,

#=head2 GL_CLIP_PLANE4
#
#=cut

    GL_CLIP_PLANE4 => 0x3004,

#=head2 GL_CLIP_PLANE5
#
#=cut

    GL_CLIP_PLANE5 => 0x3005,

#=head2 GL_CLIP_VOLUME_CLIPPING_HINT_EXT
#
#=cut

    GL_CLIP_VOLUME_CLIPPING_HINT_EXT => 0x80F0,

#=head2 GL_CLOSE_PATH_NV
#
#=cut

    GL_CLOSE_PATH_NV => 0x00,

#=head2 GL_CMYKA_EXT
#
#=cut

    GL_CMYKA_EXT => 0x800D,

#=head2 GL_CMYK_EXT
#
#=cut

    GL_CMYK_EXT => 0x800C,

#=head2 GL_CND0_ATI
#
#=cut

    GL_CND0_ATI => 0x896B,

#=head2 GL_CND_ATI
#
#=cut

    GL_CND_ATI => 0x896A,

#=head2 GL_COEFF
#
#=cut

    GL_COEFF => 0x0A00,

#=head2 GL_COLOR
#
#=cut

    GL_COLOR => 0x1800,

#=head2 GL_COLOR3_BIT_PGI
#
#=cut

    GL_COLOR3_BIT_PGI => 0x00010000,

#=head2 GL_COLOR4_BIT_PGI
#
#=cut

    GL_COLOR4_BIT_PGI => 0x00020000,

#=head2 GL_COLORBURN_KHR
#
#=cut

    GL_COLORBURN_KHR => 0x929A,

#=head2 GL_COLORBURN_NV
#
#=cut

    GL_COLORBURN_NV => 0x929A,

#=head2 GL_COLORDODGE_KHR
#
#=cut

    GL_COLORDODGE_KHR => 0x9299,

#=head2 GL_COLORDODGE_NV
#
#=cut

    GL_COLORDODGE_NV => 0x9299,

#=head2 GL_COLOR_ALPHA_PAIRING_ATI
#
#=cut

    GL_COLOR_ALPHA_PAIRING_ATI => 0x8975,

#=head2 GL_COLOR_ARRAY
#
#=cut

    GL_COLOR_ARRAY => 0x8076,

#=head2 GL_COLOR_ARRAY_ADDRESS_NV
#
#=cut

    GL_COLOR_ARRAY_ADDRESS_NV => 0x8F23,

#=head2 GL_COLOR_ARRAY_BUFFER_BINDING
#
#=cut

    GL_COLOR_ARRAY_BUFFER_BINDING => 0x8898,

#=head2 GL_COLOR_ARRAY_BUFFER_BINDING_ARB
#
#=cut

    GL_COLOR_ARRAY_BUFFER_BINDING_ARB => 0x8898,

#=head2 GL_COLOR_ARRAY_COUNT_EXT
#
#=cut

    GL_COLOR_ARRAY_COUNT_EXT => 0x8084,

#=head2 GL_COLOR_ARRAY_EXT
#
#=cut

    GL_COLOR_ARRAY_EXT => 0x8076,

#=head2 GL_COLOR_ARRAY_LENGTH_NV
#
#=cut

    GL_COLOR_ARRAY_LENGTH_NV => 0x8F2D,

#=head2 GL_COLOR_ARRAY_LIST_IBM
#
#=cut

    GL_COLOR_ARRAY_LIST_IBM => 103072,

#=head2 GL_COLOR_ARRAY_LIST_STRIDE_IBM
#
#=cut

    GL_COLOR_ARRAY_LIST_STRIDE_IBM => 103082,

#=head2 GL_COLOR_ARRAY_PARALLEL_POINTERS_INTEL
#
#=cut

    GL_COLOR_ARRAY_PARALLEL_POINTERS_INTEL => 0x83F7,

#=head2 GL_COLOR_ARRAY_POINTER
#
#=cut

    GL_COLOR_ARRAY_POINTER => 0x8090,

#=head2 GL_COLOR_ARRAY_POINTER_EXT
#
#=cut

    GL_COLOR_ARRAY_POINTER_EXT => 0x8090,

#=head2 GL_COLOR_ARRAY_SIZE
#
#=cut

    GL_COLOR_ARRAY_SIZE => 0x8081,

#=head2 GL_COLOR_ARRAY_SIZE_EXT
#
#=cut

    GL_COLOR_ARRAY_SIZE_EXT => 0x8081,

#=head2 GL_COLOR_ARRAY_STRIDE
#
#=cut

    GL_COLOR_ARRAY_STRIDE => 0x8083,

#=head2 GL_COLOR_ARRAY_STRIDE_EXT
#
#=cut

    GL_COLOR_ARRAY_STRIDE_EXT => 0x8083,

#=head2 GL_COLOR_ARRAY_TYPE
#
#=cut

    GL_COLOR_ARRAY_TYPE => 0x8082,

#=head2 GL_COLOR_ARRAY_TYPE_EXT
#
#=cut

    GL_COLOR_ARRAY_TYPE_EXT => 0x8082,

#=head2 GL_COLOR_ATTACHMENT0
#
#=cut

    GL_COLOR_ATTACHMENT0 => 0x8CE0,

#=head2 GL_COLOR_ATTACHMENT0_EXT
#
#=cut

    GL_COLOR_ATTACHMENT0_EXT => 0x8CE0,

#=head2 GL_COLOR_ATTACHMENT1
#
#=cut

    GL_COLOR_ATTACHMENT1 => 0x8CE1,

#=head2 GL_COLOR_ATTACHMENT10
#
#=cut

    GL_COLOR_ATTACHMENT10 => 0x8CEA,

#=head2 GL_COLOR_ATTACHMENT10_EXT
#
#=cut

    GL_COLOR_ATTACHMENT10_EXT => 0x8CEA,

#=head2 GL_COLOR_ATTACHMENT11
#
#=cut

    GL_COLOR_ATTACHMENT11 => 0x8CEB,

#=head2 GL_COLOR_ATTACHMENT11_EXT
#
#=cut

    GL_COLOR_ATTACHMENT11_EXT => 0x8CEB,

#=head2 GL_COLOR_ATTACHMENT12
#
#=cut

    GL_COLOR_ATTACHMENT12 => 0x8CEC,

#=head2 GL_COLOR_ATTACHMENT12_EXT
#
#=cut

    GL_COLOR_ATTACHMENT12_EXT => 0x8CEC,

#=head2 GL_COLOR_ATTACHMENT13
#
#=cut

    GL_COLOR_ATTACHMENT13 => 0x8CED,

#=head2 GL_COLOR_ATTACHMENT13_EXT
#
#=cut

    GL_COLOR_ATTACHMENT13_EXT => 0x8CED,

#=head2 GL_COLOR_ATTACHMENT14
#
#=cut

    GL_COLOR_ATTACHMENT14 => 0x8CEE,

#=head2 GL_COLOR_ATTACHMENT14_EXT
#
#=cut

    GL_COLOR_ATTACHMENT14_EXT => 0x8CEE,

#=head2 GL_COLOR_ATTACHMENT15
#
#=cut

    GL_COLOR_ATTACHMENT15 => 0x8CEF,

#=head2 GL_COLOR_ATTACHMENT15_EXT
#
#=cut

    GL_COLOR_ATTACHMENT15_EXT => 0x8CEF,

#=head2 GL_COLOR_ATTACHMENT1_EXT
#
#=cut

    GL_COLOR_ATTACHMENT1_EXT => 0x8CE1,

#=head2 GL_COLOR_ATTACHMENT2
#
#=cut

    GL_COLOR_ATTACHMENT2 => 0x8CE2,

#=head2 GL_COLOR_ATTACHMENT2_EXT
#
#=cut

    GL_COLOR_ATTACHMENT2_EXT => 0x8CE2,

#=head2 GL_COLOR_ATTACHMENT3
#
#=cut

    GL_COLOR_ATTACHMENT3 => 0x8CE3,

#=head2 GL_COLOR_ATTACHMENT3_EXT
#
#=cut

    GL_COLOR_ATTACHMENT3_EXT => 0x8CE3,

#=head2 GL_COLOR_ATTACHMENT4
#
#=cut

    GL_COLOR_ATTACHMENT4 => 0x8CE4,

#=head2 GL_COLOR_ATTACHMENT4_EXT
#
#=cut

    GL_COLOR_ATTACHMENT4_EXT => 0x8CE4,

#=head2 GL_COLOR_ATTACHMENT5
#
#=cut

    GL_COLOR_ATTACHMENT5 => 0x8CE5,

#=head2 GL_COLOR_ATTACHMENT5_EXT
#
#=cut

    GL_COLOR_ATTACHMENT5_EXT => 0x8CE5,

#=head2 GL_COLOR_ATTACHMENT6
#
#=cut

    GL_COLOR_ATTACHMENT6 => 0x8CE6,

#=head2 GL_COLOR_ATTACHMENT6_EXT
#
#=cut

    GL_COLOR_ATTACHMENT6_EXT => 0x8CE6,

#=head2 GL_COLOR_ATTACHMENT7
#
#=cut

    GL_COLOR_ATTACHMENT7 => 0x8CE7,

#=head2 GL_COLOR_ATTACHMENT7_EXT
#
#=cut

    GL_COLOR_ATTACHMENT7_EXT => 0x8CE7,

#=head2 GL_COLOR_ATTACHMENT8
#
#=cut

    GL_COLOR_ATTACHMENT8 => 0x8CE8,

#=head2 GL_COLOR_ATTACHMENT8_EXT
#
#=cut

    GL_COLOR_ATTACHMENT8_EXT => 0x8CE8,

#=head2 GL_COLOR_ATTACHMENT9
#
#=cut

    GL_COLOR_ATTACHMENT9 => 0x8CE9,

#=head2 GL_COLOR_ATTACHMENT9_EXT
#
#=cut

    GL_COLOR_ATTACHMENT9_EXT => 0x8CE9,

#=head2 GL_COLOR_BUFFER_BIT
#
#=cut

    GL_COLOR_BUFFER_BIT => 0x00004000,

#=head2 GL_COLOR_CLEAR_UNCLAMPED_VALUE_ATI
#
#=cut

    GL_COLOR_CLEAR_UNCLAMPED_VALUE_ATI => 0x8835,

#=head2 GL_COLOR_CLEAR_VALUE
#
#=cut

    GL_COLOR_CLEAR_VALUE => 0x0C22,

#=head2 GL_COLOR_COMPONENTS
#
#=cut

    GL_COLOR_COMPONENTS => 0x8283,

#=head2 GL_COLOR_ENCODING
#
#=cut

    GL_COLOR_ENCODING => 0x8296,

#=head2 GL_COLOR_FLOAT_APPLE
#
#=cut

    GL_COLOR_FLOAT_APPLE => 0x8A0F,

#=head2 GL_COLOR_INDEX
#
#=cut

    GL_COLOR_INDEX => 0x1900,

#=head2 GL_COLOR_INDEX12_EXT
#
#=cut

    GL_COLOR_INDEX12_EXT => 0x80E6,

#=head2 GL_COLOR_INDEX16_EXT
#
#=cut

    GL_COLOR_INDEX16_EXT => 0x80E7,

#=head2 GL_COLOR_INDEX1_EXT
#
#=cut

    GL_COLOR_INDEX1_EXT => 0x80E2,

#=head2 GL_COLOR_INDEX2_EXT
#
#=cut

    GL_COLOR_INDEX2_EXT => 0x80E3,

#=head2 GL_COLOR_INDEX4_EXT
#
#=cut

    GL_COLOR_INDEX4_EXT => 0x80E4,

#=head2 GL_COLOR_INDEX8_EXT
#
#=cut

    GL_COLOR_INDEX8_EXT => 0x80E5,

#=head2 GL_COLOR_INDEXES
#
#=cut

    GL_COLOR_INDEXES => 0x1603,

#=head2 GL_COLOR_LOGIC_OP
#
#=cut

    GL_COLOR_LOGIC_OP => 0x0BF2,

#=head2 GL_COLOR_MATERIAL
#
#=cut

    GL_COLOR_MATERIAL => 0x0B57,

#=head2 GL_COLOR_MATERIAL_FACE
#
#=cut

    GL_COLOR_MATERIAL_FACE => 0x0B55,

#=head2 GL_COLOR_MATERIAL_PARAMETER
#
#=cut

    GL_COLOR_MATERIAL_PARAMETER => 0x0B56,

#=head2 GL_COLOR_MATRIX
#
#=cut

    GL_COLOR_MATRIX => 0x80B1,

#=head2 GL_COLOR_MATRIX_SGI
#
#=cut

    GL_COLOR_MATRIX_SGI => 0x80B1,

#=head2 GL_COLOR_MATRIX_STACK_DEPTH
#
#=cut

    GL_COLOR_MATRIX_STACK_DEPTH => 0x80B2,

#=head2 GL_COLOR_MATRIX_STACK_DEPTH_SGI
#
#=cut

    GL_COLOR_MATRIX_STACK_DEPTH_SGI => 0x80B2,

#=head2 GL_COLOR_RENDERABLE
#
#=cut

    GL_COLOR_RENDERABLE => 0x8286,

#=head2 GL_COLOR_SAMPLES_NV
#
#=cut

    GL_COLOR_SAMPLES_NV => 0x8E20,

#=head2 GL_COLOR_SUM
#
#=cut

    GL_COLOR_SUM => 0x8458,

#=head2 GL_COLOR_SUM_ARB
#
#=cut

    GL_COLOR_SUM_ARB => 0x8458,

#=head2 GL_COLOR_SUM_CLAMP_NV
#
#=cut

    GL_COLOR_SUM_CLAMP_NV => 0x854F,

#=head2 GL_COLOR_SUM_EXT
#
#=cut

    GL_COLOR_SUM_EXT => 0x8458,

#=head2 GL_COLOR_TABLE
#
#=cut

    GL_COLOR_TABLE => 0x80D0,

#=head2 GL_COLOR_TABLE_ALPHA_SIZE
#
#=cut

    GL_COLOR_TABLE_ALPHA_SIZE => 0x80DD,

#=head2 GL_COLOR_TABLE_ALPHA_SIZE_SGI
#
#=cut

    GL_COLOR_TABLE_ALPHA_SIZE_SGI => 0x80DD,

#=head2 GL_COLOR_TABLE_BIAS
#
#=cut

    GL_COLOR_TABLE_BIAS => 0x80D7,

#=head2 GL_COLOR_TABLE_BIAS_SGI
#
#=cut

    GL_COLOR_TABLE_BIAS_SGI => 0x80D7,

#=head2 GL_COLOR_TABLE_BLUE_SIZE
#
#=cut

    GL_COLOR_TABLE_BLUE_SIZE => 0x80DC,

#=head2 GL_COLOR_TABLE_BLUE_SIZE_SGI
#
#=cut

    GL_COLOR_TABLE_BLUE_SIZE_SGI => 0x80DC,

#=head2 GL_COLOR_TABLE_FORMAT
#
#=cut

    GL_COLOR_TABLE_FORMAT => 0x80D8,

#=head2 GL_COLOR_TABLE_FORMAT_SGI
#
#=cut

    GL_COLOR_TABLE_FORMAT_SGI => 0x80D8,

#=head2 GL_COLOR_TABLE_GREEN_SIZE
#
#=cut

    GL_COLOR_TABLE_GREEN_SIZE => 0x80DB,

#=head2 GL_COLOR_TABLE_GREEN_SIZE_SGI
#
#=cut

    GL_COLOR_TABLE_GREEN_SIZE_SGI => 0x80DB,

#=head2 GL_COLOR_TABLE_INTENSITY_SIZE
#
#=cut

    GL_COLOR_TABLE_INTENSITY_SIZE => 0x80DF,

#=head2 GL_COLOR_TABLE_INTENSITY_SIZE_SGI
#
#=cut

    GL_COLOR_TABLE_INTENSITY_SIZE_SGI => 0x80DF,

#=head2 GL_COLOR_TABLE_LUMINANCE_SIZE
#
#=cut

    GL_COLOR_TABLE_LUMINANCE_SIZE => 0x80DE,

#=head2 GL_COLOR_TABLE_LUMINANCE_SIZE_SGI
#
#=cut

    GL_COLOR_TABLE_LUMINANCE_SIZE_SGI => 0x80DE,

#=head2 GL_COLOR_TABLE_RED_SIZE
#
#=cut

    GL_COLOR_TABLE_RED_SIZE => 0x80DA,

#=head2 GL_COLOR_TABLE_RED_SIZE_SGI
#
#=cut

    GL_COLOR_TABLE_RED_SIZE_SGI => 0x80DA,

#=head2 GL_COLOR_TABLE_SCALE
#
#=cut

    GL_COLOR_TABLE_SCALE => 0x80D6,

#=head2 GL_COLOR_TABLE_SCALE_SGI
#
#=cut

    GL_COLOR_TABLE_SCALE_SGI => 0x80D6,

#=head2 GL_COLOR_TABLE_SGI
#
#=cut

    GL_COLOR_TABLE_SGI => 0x80D0,

#=head2 GL_COLOR_TABLE_WIDTH
#
#=cut

    GL_COLOR_TABLE_WIDTH => 0x80D9,

#=head2 GL_COLOR_TABLE_WIDTH_SGI
#
#=cut

    GL_COLOR_TABLE_WIDTH_SGI => 0x80D9,

#=head2 GL_COLOR_WRITEMASK
#
#=cut

    GL_COLOR_WRITEMASK => 0x0C23,

#=head2 GL_COMBINE
#
#=cut

    GL_COMBINE => 0x8570,

#=head2 GL_COMBINE4_NV
#
#=cut

    GL_COMBINE4_NV => 0x8503,

#=head2 GL_COMBINER0_NV
#
#=cut

    GL_COMBINER0_NV => 0x8550,

#=head2 GL_COMBINER1_NV
#
#=cut

    GL_COMBINER1_NV => 0x8551,

#=head2 GL_COMBINER2_NV
#
#=cut

    GL_COMBINER2_NV => 0x8552,

#=head2 GL_COMBINER3_NV
#
#=cut

    GL_COMBINER3_NV => 0x8553,

#=head2 GL_COMBINER4_NV
#
#=cut

    GL_COMBINER4_NV => 0x8554,

#=head2 GL_COMBINER5_NV
#
#=cut

    GL_COMBINER5_NV => 0x8555,

#=head2 GL_COMBINER6_NV
#
#=cut

    GL_COMBINER6_NV => 0x8556,

#=head2 GL_COMBINER7_NV
#
#=cut

    GL_COMBINER7_NV => 0x8557,

#=head2 GL_COMBINER_AB_DOT_PRODUCT_NV
#
#=cut

    GL_COMBINER_AB_DOT_PRODUCT_NV => 0x8545,

#=head2 GL_COMBINER_AB_OUTPUT_NV
#
#=cut

    GL_COMBINER_AB_OUTPUT_NV => 0x854A,

#=head2 GL_COMBINER_BIAS_NV
#
#=cut

    GL_COMBINER_BIAS_NV => 0x8549,

#=head2 GL_COMBINER_CD_DOT_PRODUCT_NV
#
#=cut

    GL_COMBINER_CD_DOT_PRODUCT_NV => 0x8546,

#=head2 GL_COMBINER_CD_OUTPUT_NV
#
#=cut

    GL_COMBINER_CD_OUTPUT_NV => 0x854B,

#=head2 GL_COMBINER_COMPONENT_USAGE_NV
#
#=cut

    GL_COMBINER_COMPONENT_USAGE_NV => 0x8544,

#=head2 GL_COMBINER_INPUT_NV
#
#=cut

    GL_COMBINER_INPUT_NV => 0x8542,

#=head2 GL_COMBINER_MAPPING_NV
#
#=cut

    GL_COMBINER_MAPPING_NV => 0x8543,

#=head2 GL_COMBINER_MUX_SUM_NV
#
#=cut

    GL_COMBINER_MUX_SUM_NV => 0x8547,

#=head2 GL_COMBINER_SCALE_NV
#
#=cut

    GL_COMBINER_SCALE_NV => 0x8548,

#=head2 GL_COMBINER_SUM_OUTPUT_NV
#
#=cut

    GL_COMBINER_SUM_OUTPUT_NV => 0x854C,

#=head2 GL_COMBINE_ALPHA
#
#=cut

    GL_COMBINE_ALPHA => 0x8572,

#=head2 GL_COMBINE_ALPHA_ARB
#
#=cut

    GL_COMBINE_ALPHA_ARB => 0x8572,

#=head2 GL_COMBINE_ALPHA_EXT
#
#=cut

    GL_COMBINE_ALPHA_EXT => 0x8572,

#=head2 GL_COMBINE_ARB
#
#=cut

    GL_COMBINE_ARB => 0x8570,

#=head2 GL_COMBINE_EXT
#
#=cut

    GL_COMBINE_EXT => 0x8570,

#=head2 GL_COMBINE_RGB
#
#=cut

    GL_COMBINE_RGB => 0x8571,

#=head2 GL_COMBINE_RGB_ARB
#
#=cut

    GL_COMBINE_RGB_ARB => 0x8571,

#=head2 GL_COMBINE_RGB_EXT
#
#=cut

    GL_COMBINE_RGB_EXT => 0x8571,

#=head2 GL_COMMAND_BARRIER_BIT
#
#=cut

    GL_COMMAND_BARRIER_BIT => 0x00000040,

#=head2 GL_COMMAND_BARRIER_BIT_EXT
#
#=cut

    GL_COMMAND_BARRIER_BIT_EXT => 0x00000040,

#=head2 GL_COMPARE_REF_DEPTH_TO_TEXTURE_EXT
#
#=cut

    GL_COMPARE_REF_DEPTH_TO_TEXTURE_EXT => 0x884E,

#=head2 GL_COMPARE_REF_TO_TEXTURE
#
#=cut

    GL_COMPARE_REF_TO_TEXTURE => 0x884E,

#=head2 GL_COMPARE_R_TO_TEXTURE
#
#=cut

    GL_COMPARE_R_TO_TEXTURE => 0x884E,

#=head2 GL_COMPARE_R_TO_TEXTURE_ARB
#
#=cut

    GL_COMPARE_R_TO_TEXTURE_ARB => 0x884E,

#=head2 GL_COMPATIBLE_SUBROUTINES
#
#=cut

    GL_COMPATIBLE_SUBROUTINES => 0x8E4B,

#=head2 GL_COMPILE
#
#=cut

    GL_COMPILE => 0x1300,

#=head2 GL_COMPILE_AND_EXECUTE
#
#=cut

    GL_COMPILE_AND_EXECUTE => 0x1301,

#=head2 GL_COMPILE_STATUS
#
#=cut

    GL_COMPILE_STATUS => 0x8B81,

#=head2 GL_COMPRESSED_ALPHA
#
#=cut

    GL_COMPRESSED_ALPHA => 0x84E9,

#=head2 GL_COMPRESSED_ALPHA_ARB
#
#=cut

    GL_COMPRESSED_ALPHA_ARB => 0x84E9,

#=head2 GL_COMPRESSED_INTENSITY
#
#=cut

    GL_COMPRESSED_INTENSITY => 0x84EC,

#=head2 GL_COMPRESSED_INTENSITY_ARB
#
#=cut

    GL_COMPRESSED_INTENSITY_ARB => 0x84EC,

#=head2 GL_COMPRESSED_LUMINANCE
#
#=cut

    GL_COMPRESSED_LUMINANCE => 0x84EA,

#=head2 GL_COMPRESSED_LUMINANCE_ALPHA
#
#=cut

    GL_COMPRESSED_LUMINANCE_ALPHA => 0x84EB,

#=head2 GL_COMPRESSED_LUMINANCE_ALPHA_ARB
#
#=cut

    GL_COMPRESSED_LUMINANCE_ALPHA_ARB => 0x84EB,

#=head2 GL_COMPRESSED_LUMINANCE_ALPHA_LATC2_EXT
#
#=cut

    GL_COMPRESSED_LUMINANCE_ALPHA_LATC2_EXT => 0x8C72,

#=head2 GL_COMPRESSED_LUMINANCE_ARB
#
#=cut

    GL_COMPRESSED_LUMINANCE_ARB => 0x84EA,

#=head2 GL_COMPRESSED_LUMINANCE_LATC1_EXT
#
#=cut

    GL_COMPRESSED_LUMINANCE_LATC1_EXT => 0x8C70,

#=head2 GL_COMPRESSED_R11_EAC
#
#=cut

    GL_COMPRESSED_R11_EAC => 0x9270,

#=head2 GL_COMPRESSED_RED
#
#=cut

    GL_COMPRESSED_RED => 0x8225,

#=head2 GL_COMPRESSED_RED_GREEN_RGTC2_EXT
#
#=cut

    GL_COMPRESSED_RED_GREEN_RGTC2_EXT => 0x8DBD,

#=head2 GL_COMPRESSED_RED_RGTC1
#
#=cut

    GL_COMPRESSED_RED_RGTC1 => 0x8DBB,

#=head2 GL_COMPRESSED_RED_RGTC1_EXT
#
#=cut

    GL_COMPRESSED_RED_RGTC1_EXT => 0x8DBB,

#=head2 GL_COMPRESSED_RG
#
#=cut

    GL_COMPRESSED_RG => 0x8226,

#=head2 GL_COMPRESSED_RG11_EAC
#
#=cut

    GL_COMPRESSED_RG11_EAC => 0x9272,

#=head2 GL_COMPRESSED_RGB
#
#=cut

    GL_COMPRESSED_RGB => 0x84ED,

#=head2 GL_COMPRESSED_RGB8_ETC2
#
#=cut

    GL_COMPRESSED_RGB8_ETC2 => 0x9274,

#=head2 GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2
#
#=cut

    GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2 => 0x9276,

#=head2 GL_COMPRESSED_RGBA
#
#=cut

    GL_COMPRESSED_RGBA => 0x84EE,

#=head2 GL_COMPRESSED_RGBA8_ETC2_EAC
#
#=cut

    GL_COMPRESSED_RGBA8_ETC2_EAC => 0x9278,

#=head2 GL_COMPRESSED_RGBA_ARB
#
#=cut

    GL_COMPRESSED_RGBA_ARB => 0x84EE,

#=head2 GL_COMPRESSED_RGBA_ASTC_10x10_KHR
#
#=cut

    GL_COMPRESSED_RGBA_ASTC_10x10_KHR => 0x93BB,

#=head2 GL_COMPRESSED_RGBA_ASTC_10x5_KHR
#
#=cut

    GL_COMPRESSED_RGBA_ASTC_10x5_KHR => 0x93B8,

#=head2 GL_COMPRESSED_RGBA_ASTC_10x6_KHR
#
#=cut

    GL_COMPRESSED_RGBA_ASTC_10x6_KHR => 0x93B9,

#=head2 GL_COMPRESSED_RGBA_ASTC_10x8_KHR
#
#=cut

    GL_COMPRESSED_RGBA_ASTC_10x8_KHR => 0x93BA,

#=head2 GL_COMPRESSED_RGBA_ASTC_12x10_KHR
#
#=cut

    GL_COMPRESSED_RGBA_ASTC_12x10_KHR => 0x93BC,

#=head2 GL_COMPRESSED_RGBA_ASTC_12x12_KHR
#
#=cut

    GL_COMPRESSED_RGBA_ASTC_12x12_KHR => 0x93BD,

#=head2 GL_COMPRESSED_RGBA_ASTC_4x4_KHR
#
#=cut

    GL_COMPRESSED_RGBA_ASTC_4x4_KHR => 0x93B0,

#=head2 GL_COMPRESSED_RGBA_ASTC_5x4_KHR
#
#=cut

    GL_COMPRESSED_RGBA_ASTC_5x4_KHR => 0x93B1,

#=head2 GL_COMPRESSED_RGBA_ASTC_5x5_KHR
#
#=cut

    GL_COMPRESSED_RGBA_ASTC_5x5_KHR => 0x93B2,

#=head2 GL_COMPRESSED_RGBA_ASTC_6x5_KHR
#
#=cut

    GL_COMPRESSED_RGBA_ASTC_6x5_KHR => 0x93B3,

#=head2 GL_COMPRESSED_RGBA_ASTC_6x6_KHR
#
#=cut

    GL_COMPRESSED_RGBA_ASTC_6x6_KHR => 0x93B4,

#=head2 GL_COMPRESSED_RGBA_ASTC_8x5_KHR
#
#=cut

    GL_COMPRESSED_RGBA_ASTC_8x5_KHR => 0x93B5,

#=head2 GL_COMPRESSED_RGBA_ASTC_8x6_KHR
#
#=cut

    GL_COMPRESSED_RGBA_ASTC_8x6_KHR => 0x93B6,

#=head2 GL_COMPRESSED_RGBA_ASTC_8x8_KHR
#
#=cut

    GL_COMPRESSED_RGBA_ASTC_8x8_KHR => 0x93B7,

#=head2 GL_COMPRESSED_RGBA_BPTC_UNORM
#
#=cut

    GL_COMPRESSED_RGBA_BPTC_UNORM => 0x8E8C,

#=head2 GL_COMPRESSED_RGBA_BPTC_UNORM_ARB
#
#=cut

    GL_COMPRESSED_RGBA_BPTC_UNORM_ARB => 0x8E8C,

#=head2 GL_COMPRESSED_RGBA_FXT1_3DFX
#
#=cut

    GL_COMPRESSED_RGBA_FXT1_3DFX => 0x86B1,

#=head2 GL_COMPRESSED_RGBA_S3TC_DXT1_EXT
#
#=cut

    GL_COMPRESSED_RGBA_S3TC_DXT1_EXT => 0x83F1,

#=head2 GL_COMPRESSED_RGBA_S3TC_DXT3_EXT
#
#=cut

    GL_COMPRESSED_RGBA_S3TC_DXT3_EXT => 0x83F2,

#=head2 GL_COMPRESSED_RGBA_S3TC_DXT5_EXT
#
#=cut

    GL_COMPRESSED_RGBA_S3TC_DXT5_EXT => 0x83F3,

#=head2 GL_COMPRESSED_RGB_ARB
#
#=cut

    GL_COMPRESSED_RGB_ARB => 0x84ED,

#=head2 GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT
#
#=cut

    GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT => 0x8E8E,

#=head2 GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT_ARB
#
#=cut

    GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT_ARB => 0x8E8E,

#=head2 GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT
#
#=cut

    GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT => 0x8E8F,

#=head2 GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT_ARB
#
#=cut

    GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT_ARB => 0x8E8F,

#=head2 GL_COMPRESSED_RGB_FXT1_3DFX
#
#=cut

    GL_COMPRESSED_RGB_FXT1_3DFX => 0x86B0,

#=head2 GL_COMPRESSED_RGB_S3TC_DXT1_EXT
#
#=cut

    GL_COMPRESSED_RGB_S3TC_DXT1_EXT => 0x83F0,

#=head2 GL_COMPRESSED_RG_RGTC2
#
#=cut

    GL_COMPRESSED_RG_RGTC2 => 0x8DBD,

#=head2 GL_COMPRESSED_SIGNED_LUMINANCE_ALPHA_LATC2_EXT
#
#=cut

    GL_COMPRESSED_SIGNED_LUMINANCE_ALPHA_LATC2_EXT => 0x8C73,

#=head2 GL_COMPRESSED_SIGNED_LUMINANCE_LATC1_EXT
#
#=cut

    GL_COMPRESSED_SIGNED_LUMINANCE_LATC1_EXT => 0x8C71,

#=head2 GL_COMPRESSED_SIGNED_R11_EAC
#
#=cut

    GL_COMPRESSED_SIGNED_R11_EAC => 0x9271,

#=head2 GL_COMPRESSED_SIGNED_RED_GREEN_RGTC2_EXT
#
#=cut

    GL_COMPRESSED_SIGNED_RED_GREEN_RGTC2_EXT => 0x8DBE,

#=head2 GL_COMPRESSED_SIGNED_RED_RGTC1
#
#=cut

    GL_COMPRESSED_SIGNED_RED_RGTC1 => 0x8DBC,

#=head2 GL_COMPRESSED_SIGNED_RED_RGTC1_EXT
#
#=cut

    GL_COMPRESSED_SIGNED_RED_RGTC1_EXT => 0x8DBC,

#=head2 GL_COMPRESSED_SIGNED_RG11_EAC
#
#=cut

    GL_COMPRESSED_SIGNED_RG11_EAC => 0x9273,

#=head2 GL_COMPRESSED_SIGNED_RG_RGTC2
#
#=cut

    GL_COMPRESSED_SIGNED_RG_RGTC2 => 0x8DBE,

#=head2 GL_COMPRESSED_SLUMINANCE
#
#=cut

    GL_COMPRESSED_SLUMINANCE => 0x8C4A,

#=head2 GL_COMPRESSED_SLUMINANCE_ALPHA
#
#=cut

    GL_COMPRESSED_SLUMINANCE_ALPHA => 0x8C4B,

#=head2 GL_COMPRESSED_SLUMINANCE_ALPHA_EXT
#
#=cut

    GL_COMPRESSED_SLUMINANCE_ALPHA_EXT => 0x8C4B,

#=head2 GL_COMPRESSED_SLUMINANCE_EXT
#
#=cut

    GL_COMPRESSED_SLUMINANCE_EXT => 0x8C4A,

#=head2 GL_COMPRESSED_SRGB
#
#=cut

    GL_COMPRESSED_SRGB => 0x8C48,

#=head2 GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x10_KHR
#
#=cut

    GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x10_KHR => 0x93DB,

#=head2 GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x5_KHR
#
#=cut

    GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x5_KHR => 0x93D8,

#=head2 GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x6_KHR
#
#=cut

    GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x6_KHR => 0x93D9,

#=head2 GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x8_KHR
#
#=cut

    GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x8_KHR => 0x93DA,

#=head2 GL_COMPRESSED_SRGB8_ALPHA8_ASTC_12x10_KHR
#
#=cut

    GL_COMPRESSED_SRGB8_ALPHA8_ASTC_12x10_KHR => 0x93DC,

#=head2 GL_COMPRESSED_SRGB8_ALPHA8_ASTC_12x12_KHR
#
#=cut

    GL_COMPRESSED_SRGB8_ALPHA8_ASTC_12x12_KHR => 0x93DD,

#=head2 GL_COMPRESSED_SRGB8_ALPHA8_ASTC_4x4_KHR
#
#=cut

    GL_COMPRESSED_SRGB8_ALPHA8_ASTC_4x4_KHR => 0x93D0,

#=head2 GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x4_KHR
#
#=cut

    GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x4_KHR => 0x93D1,

#=head2 GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x5_KHR
#
#=cut

    GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x5_KHR => 0x93D2,

#=head2 GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x5_KHR
#
#=cut

    GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x5_KHR => 0x93D3,

#=head2 GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x6_KHR
#
#=cut

    GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x6_KHR => 0x93D4,

#=head2 GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x5_KHR
#
#=cut

    GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x5_KHR => 0x93D5,

#=head2 GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x6_KHR
#
#=cut

    GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x6_KHR => 0x93D6,

#=head2 GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x8_KHR
#
#=cut

    GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x8_KHR => 0x93D7,

#=head2 GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC
#
#=cut

    GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC => 0x9279,

#=head2 GL_COMPRESSED_SRGB8_ETC2
#
#=cut

    GL_COMPRESSED_SRGB8_ETC2 => 0x9275,

#=head2 GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2
#
#=cut

    GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2 => 0x9277,

#=head2 GL_COMPRESSED_SRGB_ALPHA
#
#=cut

    GL_COMPRESSED_SRGB_ALPHA => 0x8C49,

#=head2 GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM
#
#=cut

    GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM => 0x8E8D,

#=head2 GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM_ARB
#
#=cut

    GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM_ARB => 0x8E8D,

#=head2 GL_COMPRESSED_SRGB_ALPHA_EXT
#
#=cut

    GL_COMPRESSED_SRGB_ALPHA_EXT => 0x8C49,

#=head2 GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT1_EXT
#
#=cut

    GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT1_EXT => 0x8C4D,

#=head2 GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT3_EXT
#
#=cut

    GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT3_EXT => 0x8C4E,

#=head2 GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT5_EXT
#
#=cut

    GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT5_EXT => 0x8C4F,

#=head2 GL_COMPRESSED_SRGB_EXT
#
#=cut

    GL_COMPRESSED_SRGB_EXT => 0x8C48,

#=head2 GL_COMPRESSED_SRGB_S3TC_DXT1_EXT
#
#=cut

    GL_COMPRESSED_SRGB_S3TC_DXT1_EXT => 0x8C4C,

#=head2 GL_COMPRESSED_TEXTURE_FORMATS
#
#=cut

    GL_COMPRESSED_TEXTURE_FORMATS => 0x86A3,

#=head2 GL_COMPRESSED_TEXTURE_FORMATS_ARB
#
#=cut

    GL_COMPRESSED_TEXTURE_FORMATS_ARB => 0x86A3,

#=head2 GL_COMPUTE_PROGRAM_NV
#
#=cut

    GL_COMPUTE_PROGRAM_NV => 0x90FB,

#=head2 GL_COMPUTE_PROGRAM_PARAMETER_BUFFER_NV
#
#=cut

    GL_COMPUTE_PROGRAM_PARAMETER_BUFFER_NV => 0x90FC,

#=head2 GL_COMPUTE_SHADER
#
#=cut

    GL_COMPUTE_SHADER => 0x91B9,

#=head2 GL_COMPUTE_SHADER_BIT
#
#=cut

    GL_COMPUTE_SHADER_BIT => 0x00000020,

#=head2 GL_COMPUTE_SHADER_INVOCATIONS_ARB
#
#=cut

    GL_COMPUTE_SHADER_INVOCATIONS_ARB => 0x82F5,

#=head2 GL_COMPUTE_SUBROUTINE
#
#=cut

    GL_COMPUTE_SUBROUTINE => 0x92ED,

#=head2 GL_COMPUTE_SUBROUTINE_UNIFORM
#
#=cut

    GL_COMPUTE_SUBROUTINE_UNIFORM => 0x92F3,

#=head2 GL_COMPUTE_TEXTURE
#
#=cut

    GL_COMPUTE_TEXTURE => 0x82A0,

#=head2 GL_COMPUTE_WORK_GROUP_SIZE
#
#=cut

    GL_COMPUTE_WORK_GROUP_SIZE => 0x8267,

#=head2 GL_COMP_BIT_ATI
#
#=cut

    GL_COMP_BIT_ATI => 0x00000002,

#=head2 GL_CONDITION_SATISFIED
#
#=cut

    GL_CONDITION_SATISFIED => 0x911C,

#=head2 GL_CONIC_CURVE_TO_NV
#
#=cut

    GL_CONIC_CURVE_TO_NV => 0x1A,

#=head2 GL_CONJOINT_NV
#
#=cut

    GL_CONJOINT_NV => 0x9284,

#=head2 GL_CONSERVE_MEMORY_HINT_PGI
#
#=cut

    GL_CONSERVE_MEMORY_HINT_PGI => 0x1A1FD,

#=head2 GL_CONSTANT
#
#=cut

    GL_CONSTANT => 0x8576,

#=head2 GL_CONSTANT_ALPHA
#
#=cut

    GL_CONSTANT_ALPHA => 0x8003,

#=head2 GL_CONSTANT_ALPHA_EXT
#
#=cut

    GL_CONSTANT_ALPHA_EXT => 0x8003,

#=head2 GL_CONSTANT_ARB
#
#=cut

    GL_CONSTANT_ARB => 0x8576,

#=head2 GL_CONSTANT_ATTENUATION
#
#=cut

    GL_CONSTANT_ATTENUATION => 0x1207,

#=head2 GL_CONSTANT_BORDER
#
#=cut

    GL_CONSTANT_BORDER => 0x8151,

#=head2 GL_CONSTANT_BORDER_HP
#
#=cut

    GL_CONSTANT_BORDER_HP => 0x8151,

#=head2 GL_CONSTANT_COLOR
#
#=cut

    GL_CONSTANT_COLOR => 0x8001,

#=head2 GL_CONSTANT_COLOR0_NV
#
#=cut

    GL_CONSTANT_COLOR0_NV => 0x852A,

#=head2 GL_CONSTANT_COLOR1_NV
#
#=cut

    GL_CONSTANT_COLOR1_NV => 0x852B,

#=head2 GL_CONSTANT_COLOR_EXT
#
#=cut

    GL_CONSTANT_COLOR_EXT => 0x8001,

#=head2 GL_CONSTANT_EXT
#
#=cut

    GL_CONSTANT_EXT => 0x8576,

#=head2 GL_CONSTANT_NV
#
#=cut

    GL_CONSTANT_NV => 0x8576,

#=head2 GL_CONST_EYE_NV
#
#=cut

    GL_CONST_EYE_NV => 0x86E5,

#=head2 GL_CONTEXT_COMPATIBILITY_PROFILE_BIT
#
#=cut

    GL_CONTEXT_COMPATIBILITY_PROFILE_BIT => 0x00000002,

#=head2 GL_CONTEXT_CORE_PROFILE_BIT
#
#=cut

    GL_CONTEXT_CORE_PROFILE_BIT => 0x00000001,

#=head2 GL_CONTEXT_FLAGS
#
#=cut

    GL_CONTEXT_FLAGS => 0x821E,

#=head2 GL_CONTEXT_FLAG_DEBUG_BIT
#
#=cut

    GL_CONTEXT_FLAG_DEBUG_BIT => 0x00000002,

#=head2 GL_CONTEXT_FLAG_FORWARD_COMPATIBLE_BIT
#
#=cut

    GL_CONTEXT_FLAG_FORWARD_COMPATIBLE_BIT => 0x00000001,

#=head2 GL_CONTEXT_FLAG_ROBUST_ACCESS_BIT
#
#=cut

    GL_CONTEXT_FLAG_ROBUST_ACCESS_BIT => 0x00000004,

#=head2 GL_CONTEXT_FLAG_ROBUST_ACCESS_BIT_ARB
#
#=cut

    GL_CONTEXT_FLAG_ROBUST_ACCESS_BIT_ARB => 0x00000004,

#=head2 GL_CONTEXT_LOST
#
#=cut

    GL_CONTEXT_LOST => 0x0507,

#=head2 GL_CONTEXT_PROFILE_MASK
#
#=cut

    GL_CONTEXT_PROFILE_MASK => 0x9126,

#=head2 GL_CONTEXT_RELEASE_BEHAVIOR
#
#=cut

    GL_CONTEXT_RELEASE_BEHAVIOR => 0x82FB,

#=head2 GL_CONTEXT_RELEASE_BEHAVIOR_FLUSH
#
#=cut

    GL_CONTEXT_RELEASE_BEHAVIOR_FLUSH => 0x82FC,

#=head2 GL_CONTEXT_ROBUST_ACCESS
#
#=cut

    GL_CONTEXT_ROBUST_ACCESS => 0x90F3,

#=head2 GL_CONTINUOUS_AMD
#
#=cut

    GL_CONTINUOUS_AMD => 0x9007,

#=head2 GL_CONTRAST_NV
#
#=cut

    GL_CONTRAST_NV => 0x92A1,

#=head2 GL_CONVEX_HULL_NV
#
#=cut

    GL_CONVEX_HULL_NV => 0x908B,

#=head2 GL_CONVOLUTION_1D
#
#=cut

    GL_CONVOLUTION_1D => 0x8010,

#=head2 GL_CONVOLUTION_1D_EXT
#
#=cut

    GL_CONVOLUTION_1D_EXT => 0x8010,

#=head2 GL_CONVOLUTION_2D
#
#=cut

    GL_CONVOLUTION_2D => 0x8011,

#=head2 GL_CONVOLUTION_2D_EXT
#
#=cut

    GL_CONVOLUTION_2D_EXT => 0x8011,

#=head2 GL_CONVOLUTION_BORDER_COLOR
#
#=cut

    GL_CONVOLUTION_BORDER_COLOR => 0x8154,

#=head2 GL_CONVOLUTION_BORDER_COLOR_HP
#
#=cut

    GL_CONVOLUTION_BORDER_COLOR_HP => 0x8154,

#=head2 GL_CONVOLUTION_BORDER_MODE
#
#=cut

    GL_CONVOLUTION_BORDER_MODE => 0x8013,

#=head2 GL_CONVOLUTION_BORDER_MODE_EXT
#
#=cut

    GL_CONVOLUTION_BORDER_MODE_EXT => 0x8013,

#=head2 GL_CONVOLUTION_FILTER_BIAS
#
#=cut

    GL_CONVOLUTION_FILTER_BIAS => 0x8015,

#=head2 GL_CONVOLUTION_FILTER_BIAS_EXT
#
#=cut

    GL_CONVOLUTION_FILTER_BIAS_EXT => 0x8015,

#=head2 GL_CONVOLUTION_FILTER_SCALE
#
#=cut

    GL_CONVOLUTION_FILTER_SCALE => 0x8014,

#=head2 GL_CONVOLUTION_FILTER_SCALE_EXT
#
#=cut

    GL_CONVOLUTION_FILTER_SCALE_EXT => 0x8014,

#=head2 GL_CONVOLUTION_FORMAT
#
#=cut

    GL_CONVOLUTION_FORMAT => 0x8017,

#=head2 GL_CONVOLUTION_FORMAT_EXT
#
#=cut

    GL_CONVOLUTION_FORMAT_EXT => 0x8017,

#=head2 GL_CONVOLUTION_HEIGHT
#
#=cut

    GL_CONVOLUTION_HEIGHT => 0x8019,

#=head2 GL_CONVOLUTION_HEIGHT_EXT
#
#=cut

    GL_CONVOLUTION_HEIGHT_EXT => 0x8019,

#=head2 GL_CONVOLUTION_HINT_SGIX
#
#=cut

    GL_CONVOLUTION_HINT_SGIX => 0x8316,

#=head2 GL_CONVOLUTION_WIDTH
#
#=cut

    GL_CONVOLUTION_WIDTH => 0x8018,

#=head2 GL_CONVOLUTION_WIDTH_EXT
#
#=cut

    GL_CONVOLUTION_WIDTH_EXT => 0x8018,

#=head2 GL_CON_0_ATI
#
#=cut

    GL_CON_0_ATI => 0x8941,

#=head2 GL_CON_10_ATI
#
#=cut

    GL_CON_10_ATI => 0x894B,

#=head2 GL_CON_11_ATI
#
#=cut

    GL_CON_11_ATI => 0x894C,

#=head2 GL_CON_12_ATI
#
#=cut

    GL_CON_12_ATI => 0x894D,

#=head2 GL_CON_13_ATI
#
#=cut

    GL_CON_13_ATI => 0x894E,

#=head2 GL_CON_14_ATI
#
#=cut

    GL_CON_14_ATI => 0x894F,

#=head2 GL_CON_15_ATI
#
#=cut

    GL_CON_15_ATI => 0x8950,

#=head2 GL_CON_16_ATI
#
#=cut

    GL_CON_16_ATI => 0x8951,

#=head2 GL_CON_17_ATI
#
#=cut

    GL_CON_17_ATI => 0x8952,

#=head2 GL_CON_18_ATI
#
#=cut

    GL_CON_18_ATI => 0x8953,

#=head2 GL_CON_19_ATI
#
#=cut

    GL_CON_19_ATI => 0x8954,

#=head2 GL_CON_1_ATI
#
#=cut

    GL_CON_1_ATI => 0x8942,

#=head2 GL_CON_20_ATI
#
#=cut

    GL_CON_20_ATI => 0x8955,

#=head2 GL_CON_21_ATI
#
#=cut

    GL_CON_21_ATI => 0x8956,

#=head2 GL_CON_22_ATI
#
#=cut

    GL_CON_22_ATI => 0x8957,

#=head2 GL_CON_23_ATI
#
#=cut

    GL_CON_23_ATI => 0x8958,

#=head2 GL_CON_24_ATI
#
#=cut

    GL_CON_24_ATI => 0x8959,

#=head2 GL_CON_25_ATI
#
#=cut

    GL_CON_25_ATI => 0x895A,

#=head2 GL_CON_26_ATI
#
#=cut

    GL_CON_26_ATI => 0x895B,

#=head2 GL_CON_27_ATI
#
#=cut

    GL_CON_27_ATI => 0x895C,

#=head2 GL_CON_28_ATI
#
#=cut

    GL_CON_28_ATI => 0x895D,

#=head2 GL_CON_29_ATI
#
#=cut

    GL_CON_29_ATI => 0x895E,

#=head2 GL_CON_2_ATI
#
#=cut

    GL_CON_2_ATI => 0x8943,

#=head2 GL_CON_30_ATI
#
#=cut

    GL_CON_30_ATI => 0x895F,

#=head2 GL_CON_31_ATI
#
#=cut

    GL_CON_31_ATI => 0x8960,

#=head2 GL_CON_3_ATI
#
#=cut

    GL_CON_3_ATI => 0x8944,

#=head2 GL_CON_4_ATI
#
#=cut

    GL_CON_4_ATI => 0x8945,

#=head2 GL_CON_5_ATI
#
#=cut

    GL_CON_5_ATI => 0x8946,

#=head2 GL_CON_6_ATI
#
#=cut

    GL_CON_6_ATI => 0x8947,

#=head2 GL_CON_7_ATI
#
#=cut

    GL_CON_7_ATI => 0x8948,

#=head2 GL_CON_8_ATI
#
#=cut

    GL_CON_8_ATI => 0x8949,

#=head2 GL_CON_9_ATI
#
#=cut

    GL_CON_9_ATI => 0x894A,

#=head2 GL_COORD_REPLACE
#
#=cut

    GL_COORD_REPLACE => 0x8862,

#=head2 GL_COORD_REPLACE_ARB
#
#=cut

    GL_COORD_REPLACE_ARB => 0x8862,

#=head2 GL_COORD_REPLACE_NV
#
#=cut

    GL_COORD_REPLACE_NV => 0x8862,

#=head2 GL_COPY
#
#=cut

    GL_COPY => 0x1503,

#=head2 GL_COPY_INVERTED
#
#=cut

    GL_COPY_INVERTED => 0x150C,

#=head2 GL_COPY_PIXEL_TOKEN
#
#=cut

    GL_COPY_PIXEL_TOKEN => 0x0706,

#=head2 GL_COPY_READ_BUFFER
#
#=cut

    GL_COPY_READ_BUFFER => 0x8F36,

#=head2 GL_COPY_READ_BUFFER_BINDING
#
#=cut

    GL_COPY_READ_BUFFER_BINDING => 0x8F36,

#=head2 GL_COPY_WRITE_BUFFER
#
#=cut

    GL_COPY_WRITE_BUFFER => 0x8F37,

#=head2 GL_COPY_WRITE_BUFFER_BINDING
#
#=cut

    GL_COPY_WRITE_BUFFER_BINDING => 0x8F37,

#=head2 GL_COUNTER_RANGE_AMD
#
#=cut

    GL_COUNTER_RANGE_AMD => 0x8BC1,

#=head2 GL_COUNTER_TYPE_AMD
#
#=cut

    GL_COUNTER_TYPE_AMD => 0x8BC0,

#=head2 GL_COUNT_DOWN_NV
#
#=cut

    GL_COUNT_DOWN_NV => 0x9089,

#=head2 GL_COUNT_UP_NV
#
#=cut

    GL_COUNT_UP_NV => 0x9088,

#=head2 GL_CUBIC_CURVE_TO_NV
#
#=cut

    GL_CUBIC_CURVE_TO_NV => 0x0C,

#=head2 GL_CUBIC_EXT
#
#=cut

    GL_CUBIC_EXT => 0x8334,

#=head2 GL_CUBIC_HP
#
#=cut

    GL_CUBIC_HP => 0x815F,

#=head2 GL_CULL_FACE
#
#=cut

    GL_CULL_FACE => 0x0B44,

#=head2 GL_CULL_FACE_MODE
#
#=cut

    GL_CULL_FACE_MODE => 0x0B45,

#=head2 GL_CULL_FRAGMENT_NV
#
#=cut

    GL_CULL_FRAGMENT_NV => 0x86E7,

#=head2 GL_CULL_MODES_NV
#
#=cut

    GL_CULL_MODES_NV => 0x86E0,

#=head2 GL_CULL_VERTEX_EXT
#
#=cut

    GL_CULL_VERTEX_EXT => 0x81AA,

#=head2 GL_CULL_VERTEX_EYE_POSITION_EXT
#
#=cut

    GL_CULL_VERTEX_EYE_POSITION_EXT => 0x81AB,

#=head2 GL_CULL_VERTEX_IBM
#
#=cut

    GL_CULL_VERTEX_IBM => 103050,

#=head2 GL_CULL_VERTEX_OBJECT_POSITION_EXT
#
#=cut

    GL_CULL_VERTEX_OBJECT_POSITION_EXT => 0x81AC,

#=head2 GL_CURRENT_ATTRIB_NV
#
#=cut

    GL_CURRENT_ATTRIB_NV => 0x8626,

#=head2 GL_CURRENT_BINORMAL_EXT
#
#=cut

    GL_CURRENT_BINORMAL_EXT => 0x843C,

#=head2 GL_CURRENT_BIT
#
#=cut

    GL_CURRENT_BIT => 0x00000001,

#=head2 GL_CURRENT_COLOR
#
#=cut

    GL_CURRENT_COLOR => 0x0B00,

#=head2 GL_CURRENT_FOG_COORD
#
#=cut

    GL_CURRENT_FOG_COORD => 0x8453,

#=head2 GL_CURRENT_FOG_COORDINATE
#
#=cut

    GL_CURRENT_FOG_COORDINATE => 0x8453,

#=head2 GL_CURRENT_FOG_COORDINATE_EXT
#
#=cut

    GL_CURRENT_FOG_COORDINATE_EXT => 0x8453,

#=head2 GL_CURRENT_INDEX
#
#=cut

    GL_CURRENT_INDEX => 0x0B01,

#=head2 GL_CURRENT_MATRIX_ARB
#
#=cut

    GL_CURRENT_MATRIX_ARB => 0x8641,

#=head2 GL_CURRENT_MATRIX_INDEX_ARB
#
#=cut

    GL_CURRENT_MATRIX_INDEX_ARB => 0x8845,

#=head2 GL_CURRENT_MATRIX_NV
#
#=cut

    GL_CURRENT_MATRIX_NV => 0x8641,

#=head2 GL_CURRENT_MATRIX_STACK_DEPTH_ARB
#
#=cut

    GL_CURRENT_MATRIX_STACK_DEPTH_ARB => 0x8640,

#=head2 GL_CURRENT_MATRIX_STACK_DEPTH_NV
#
#=cut

    GL_CURRENT_MATRIX_STACK_DEPTH_NV => 0x8640,

#=head2 GL_CURRENT_NORMAL
#
#=cut

    GL_CURRENT_NORMAL => 0x0B02,

#=head2 GL_CURRENT_OCCLUSION_QUERY_ID_NV
#
#=cut

    GL_CURRENT_OCCLUSION_QUERY_ID_NV => 0x8865,

#=head2 GL_CURRENT_PALETTE_MATRIX_ARB
#
#=cut

    GL_CURRENT_PALETTE_MATRIX_ARB => 0x8843,

#=head2 GL_CURRENT_PROGRAM
#
#=cut

    GL_CURRENT_PROGRAM => 0x8B8D,

#=head2 GL_CURRENT_QUERY
#
#=cut

    GL_CURRENT_QUERY => 0x8865,

#=head2 GL_CURRENT_QUERY_ARB
#
#=cut

    GL_CURRENT_QUERY_ARB => 0x8865,

#=head2 GL_CURRENT_RASTER_COLOR
#
#=cut

    GL_CURRENT_RASTER_COLOR => 0x0B04,

#=head2 GL_CURRENT_RASTER_DISTANCE
#
#=cut

    GL_CURRENT_RASTER_DISTANCE => 0x0B09,

#=head2 GL_CURRENT_RASTER_INDEX
#
#=cut

    GL_CURRENT_RASTER_INDEX => 0x0B05,

#=head2 GL_CURRENT_RASTER_NORMAL_SGIX
#
#=cut

    GL_CURRENT_RASTER_NORMAL_SGIX => 0x8406,

#=head2 GL_CURRENT_RASTER_POSITION
#
#=cut

    GL_CURRENT_RASTER_POSITION => 0x0B07,

#=head2 GL_CURRENT_RASTER_POSITION_VALID
#
#=cut

    GL_CURRENT_RASTER_POSITION_VALID => 0x0B08,

#=head2 GL_CURRENT_RASTER_SECONDARY_COLOR
#
#=cut

    GL_CURRENT_RASTER_SECONDARY_COLOR => 0x845F,

#=head2 GL_CURRENT_RASTER_TEXTURE_COORDS
#
#=cut

    GL_CURRENT_RASTER_TEXTURE_COORDS => 0x0B06,

#=head2 GL_CURRENT_SECONDARY_COLOR
#
#=cut

    GL_CURRENT_SECONDARY_COLOR => 0x8459,

#=head2 GL_CURRENT_SECONDARY_COLOR_EXT
#
#=cut

    GL_CURRENT_SECONDARY_COLOR_EXT => 0x8459,

#=head2 GL_CURRENT_TANGENT_EXT
#
#=cut

    GL_CURRENT_TANGENT_EXT => 0x843B,

#=head2 GL_CURRENT_TEXTURE_COORDS
#
#=cut

    GL_CURRENT_TEXTURE_COORDS => 0x0B03,

#=head2 GL_CURRENT_TIME_NV
#
#=cut

    GL_CURRENT_TIME_NV => 0x8E28,

#=head2 GL_CURRENT_VERTEX_ATTRIB
#
#=cut

    GL_CURRENT_VERTEX_ATTRIB => 0x8626,

#=head2 GL_CURRENT_VERTEX_ATTRIB_ARB
#
#=cut

    GL_CURRENT_VERTEX_ATTRIB_ARB => 0x8626,

#=head2 GL_CURRENT_VERTEX_EXT
#
#=cut

    GL_CURRENT_VERTEX_EXT => 0x87E2,

#=head2 GL_CURRENT_VERTEX_WEIGHT_EXT
#
#=cut

    GL_CURRENT_VERTEX_WEIGHT_EXT => 0x850B,

#=head2 GL_CURRENT_WEIGHT_ARB
#
#=cut

    GL_CURRENT_WEIGHT_ARB => 0x86A8,

#=head2 GL_CW
#
#=cut

    GL_CW => 0x0900,

#=head2 GL_DARKEN_KHR
#
#=cut

    GL_DARKEN_KHR => 0x9297,

#=head2 GL_DARKEN_NV
#
#=cut

    GL_DARKEN_NV => 0x9297,

#=head2 GL_DATA_BUFFER_AMD
#
#=cut

    GL_DATA_BUFFER_AMD => 0x9151,

#=head2 GL_DEBUG_CALLBACK_FUNCTION
#
#=cut

    GL_DEBUG_CALLBACK_FUNCTION => 0x8244,

#=head2 GL_DEBUG_CALLBACK_FUNCTION_ARB
#
#=cut

    GL_DEBUG_CALLBACK_FUNCTION_ARB => 0x8244,

#=head2 GL_DEBUG_CALLBACK_USER_PARAM
#
#=cut

    GL_DEBUG_CALLBACK_USER_PARAM => 0x8245,

#=head2 GL_DEBUG_CALLBACK_USER_PARAM_ARB
#
#=cut

    GL_DEBUG_CALLBACK_USER_PARAM_ARB => 0x8245,

#=head2 GL_DEBUG_CATEGORY_API_ERROR_AMD
#
#=cut

    GL_DEBUG_CATEGORY_API_ERROR_AMD => 0x9149,

#=head2 GL_DEBUG_CATEGORY_APPLICATION_AMD
#
#=cut

    GL_DEBUG_CATEGORY_APPLICATION_AMD => 0x914F,

#=head2 GL_DEBUG_CATEGORY_DEPRECATION_AMD
#
#=cut

    GL_DEBUG_CATEGORY_DEPRECATION_AMD => 0x914B,

#=head2 GL_DEBUG_CATEGORY_OTHER_AMD
#
#=cut

    GL_DEBUG_CATEGORY_OTHER_AMD => 0x9150,

#=head2 GL_DEBUG_CATEGORY_PERFORMANCE_AMD
#
#=cut

    GL_DEBUG_CATEGORY_PERFORMANCE_AMD => 0x914D,

#=head2 GL_DEBUG_CATEGORY_SHADER_COMPILER_AMD
#
#=cut

    GL_DEBUG_CATEGORY_SHADER_COMPILER_AMD => 0x914E,

#=head2 GL_DEBUG_CATEGORY_UNDEFINED_BEHAVIOR_AMD
#
#=cut

    GL_DEBUG_CATEGORY_UNDEFINED_BEHAVIOR_AMD => 0x914C,

#=head2 GL_DEBUG_CATEGORY_WINDOW_SYSTEM_AMD
#
#=cut

    GL_DEBUG_CATEGORY_WINDOW_SYSTEM_AMD => 0x914A,

#=head2 GL_DEBUG_GROUP_STACK_DEPTH
#
#=cut

    GL_DEBUG_GROUP_STACK_DEPTH => 0x826D,

#=head2 GL_DEBUG_LOGGED_MESSAGES
#
#=cut

    GL_DEBUG_LOGGED_MESSAGES => 0x9145,

#=head2 GL_DEBUG_LOGGED_MESSAGES_AMD
#
#=cut

    GL_DEBUG_LOGGED_MESSAGES_AMD => 0x9145,

#=head2 GL_DEBUG_LOGGED_MESSAGES_ARB
#
#=cut

    GL_DEBUG_LOGGED_MESSAGES_ARB => 0x9145,

#=head2 GL_DEBUG_NEXT_LOGGED_MESSAGE_LENGTH
#
#=cut

    GL_DEBUG_NEXT_LOGGED_MESSAGE_LENGTH => 0x8243,

#=head2 GL_DEBUG_NEXT_LOGGED_MESSAGE_LENGTH_ARB
#
#=cut

    GL_DEBUG_NEXT_LOGGED_MESSAGE_LENGTH_ARB => 0x8243,

#=head2 GL_DEBUG_OUTPUT
#
#=cut

    GL_DEBUG_OUTPUT => 0x92E0,

#=head2 GL_DEBUG_OUTPUT_SYNCHRONOUS
#
#=cut

    GL_DEBUG_OUTPUT_SYNCHRONOUS => 0x8242,

#=head2 GL_DEBUG_OUTPUT_SYNCHRONOUS_ARB
#
#=cut

    GL_DEBUG_OUTPUT_SYNCHRONOUS_ARB => 0x8242,

#=head2 GL_DEBUG_SEVERITY_HIGH
#
#=cut

    GL_DEBUG_SEVERITY_HIGH => 0x9146,

#=head2 GL_DEBUG_SEVERITY_HIGH_AMD
#
#=cut

    GL_DEBUG_SEVERITY_HIGH_AMD => 0x9146,

#=head2 GL_DEBUG_SEVERITY_HIGH_ARB
#
#=cut

    GL_DEBUG_SEVERITY_HIGH_ARB => 0x9146,

#=head2 GL_DEBUG_SEVERITY_LOW
#
#=cut

    GL_DEBUG_SEVERITY_LOW => 0x9148,

#=head2 GL_DEBUG_SEVERITY_LOW_AMD
#
#=cut

    GL_DEBUG_SEVERITY_LOW_AMD => 0x9148,

#=head2 GL_DEBUG_SEVERITY_LOW_ARB
#
#=cut

    GL_DEBUG_SEVERITY_LOW_ARB => 0x9148,

#=head2 GL_DEBUG_SEVERITY_MEDIUM
#
#=cut

    GL_DEBUG_SEVERITY_MEDIUM => 0x9147,

#=head2 GL_DEBUG_SEVERITY_MEDIUM_AMD
#
#=cut

    GL_DEBUG_SEVERITY_MEDIUM_AMD => 0x9147,

#=head2 GL_DEBUG_SEVERITY_MEDIUM_ARB
#
#=cut

    GL_DEBUG_SEVERITY_MEDIUM_ARB => 0x9147,

#=head2 GL_DEBUG_SEVERITY_NOTIFICATION
#
#=cut

    GL_DEBUG_SEVERITY_NOTIFICATION => 0x826B,

#=head2 GL_DEBUG_SOURCE_API
#
#=cut

    GL_DEBUG_SOURCE_API => 0x8246,

#=head2 GL_DEBUG_SOURCE_API_ARB
#
#=cut

    GL_DEBUG_SOURCE_API_ARB => 0x8246,

#=head2 GL_DEBUG_SOURCE_APPLICATION
#
#=cut

    GL_DEBUG_SOURCE_APPLICATION => 0x824A,

#=head2 GL_DEBUG_SOURCE_APPLICATION_ARB
#
#=cut

    GL_DEBUG_SOURCE_APPLICATION_ARB => 0x824A,

#=head2 GL_DEBUG_SOURCE_OTHER
#
#=cut

    GL_DEBUG_SOURCE_OTHER => 0x824B,

#=head2 GL_DEBUG_SOURCE_OTHER_ARB
#
#=cut

    GL_DEBUG_SOURCE_OTHER_ARB => 0x824B,

#=head2 GL_DEBUG_SOURCE_SHADER_COMPILER
#
#=cut

    GL_DEBUG_SOURCE_SHADER_COMPILER => 0x8248,

#=head2 GL_DEBUG_SOURCE_SHADER_COMPILER_ARB
#
#=cut

    GL_DEBUG_SOURCE_SHADER_COMPILER_ARB => 0x8248,

#=head2 GL_DEBUG_SOURCE_THIRD_PARTY
#
#=cut

    GL_DEBUG_SOURCE_THIRD_PARTY => 0x8249,

#=head2 GL_DEBUG_SOURCE_THIRD_PARTY_ARB
#
#=cut

    GL_DEBUG_SOURCE_THIRD_PARTY_ARB => 0x8249,

#=head2 GL_DEBUG_SOURCE_WINDOW_SYSTEM
#
#=cut

    GL_DEBUG_SOURCE_WINDOW_SYSTEM => 0x8247,

#=head2 GL_DEBUG_SOURCE_WINDOW_SYSTEM_ARB
#
#=cut

    GL_DEBUG_SOURCE_WINDOW_SYSTEM_ARB => 0x8247,

#=head2 GL_DEBUG_TYPE_DEPRECATED_BEHAVIOR
#
#=cut

    GL_DEBUG_TYPE_DEPRECATED_BEHAVIOR => 0x824D,

#=head2 GL_DEBUG_TYPE_DEPRECATED_BEHAVIOR_ARB
#
#=cut

    GL_DEBUG_TYPE_DEPRECATED_BEHAVIOR_ARB => 0x824D,

#=head2 GL_DEBUG_TYPE_ERROR
#
#=cut

    GL_DEBUG_TYPE_ERROR => 0x824C,

#=head2 GL_DEBUG_TYPE_ERROR_ARB
#
#=cut

    GL_DEBUG_TYPE_ERROR_ARB => 0x824C,

#=head2 GL_DEBUG_TYPE_MARKER
#
#=cut

    GL_DEBUG_TYPE_MARKER => 0x8268,

#=head2 GL_DEBUG_TYPE_OTHER
#
#=cut

    GL_DEBUG_TYPE_OTHER => 0x8251,

#=head2 GL_DEBUG_TYPE_OTHER_ARB
#
#=cut

    GL_DEBUG_TYPE_OTHER_ARB => 0x8251,

#=head2 GL_DEBUG_TYPE_PERFORMANCE
#
#=cut

    GL_DEBUG_TYPE_PERFORMANCE => 0x8250,

#=head2 GL_DEBUG_TYPE_PERFORMANCE_ARB
#
#=cut

    GL_DEBUG_TYPE_PERFORMANCE_ARB => 0x8250,

#=head2 GL_DEBUG_TYPE_POP_GROUP
#
#=cut

    GL_DEBUG_TYPE_POP_GROUP => 0x826A,

#=head2 GL_DEBUG_TYPE_PORTABILITY
#
#=cut

    GL_DEBUG_TYPE_PORTABILITY => 0x824F,

#=head2 GL_DEBUG_TYPE_PORTABILITY_ARB
#
#=cut

    GL_DEBUG_TYPE_PORTABILITY_ARB => 0x824F,

#=head2 GL_DEBUG_TYPE_PUSH_GROUP
#
#=cut

    GL_DEBUG_TYPE_PUSH_GROUP => 0x8269,

#=head2 GL_DEBUG_TYPE_UNDEFINED_BEHAVIOR
#
#=cut

    GL_DEBUG_TYPE_UNDEFINED_BEHAVIOR => 0x824E,

#=head2 GL_DEBUG_TYPE_UNDEFINED_BEHAVIOR_ARB
#
#=cut

    GL_DEBUG_TYPE_UNDEFINED_BEHAVIOR_ARB => 0x824E,

#=head2 GL_DECAL
#
#=cut

    GL_DECAL => 0x2101,

#=head2 GL_DECODE_EXT
#
#=cut

    GL_DECODE_EXT => 0x8A49,

#=head2 GL_DECR
#
#=cut

    GL_DECR => 0x1E03,

#=head2 GL_DECR_WRAP
#
#=cut

    GL_DECR_WRAP => 0x8508,

#=head2 GL_DECR_WRAP_EXT
#
#=cut

    GL_DECR_WRAP_EXT => 0x8508,

#=head2 GL_DEFORMATIONS_MASK_SGIX
#
#=cut

    GL_DEFORMATIONS_MASK_SGIX => 0x8196,

#=head2 GL_DELETE_STATUS
#
#=cut

    GL_DELETE_STATUS => 0x8B80,

#=head2 GL_DEPENDENT_AR_TEXTURE_2D_NV
#
#=cut

    GL_DEPENDENT_AR_TEXTURE_2D_NV => 0x86E9,

#=head2 GL_DEPENDENT_GB_TEXTURE_2D_NV
#
#=cut

    GL_DEPENDENT_GB_TEXTURE_2D_NV => 0x86EA,

#=head2 GL_DEPENDENT_HILO_TEXTURE_2D_NV
#
#=cut

    GL_DEPENDENT_HILO_TEXTURE_2D_NV => 0x8858,

#=head2 GL_DEPENDENT_RGB_TEXTURE_3D_NV
#
#=cut

    GL_DEPENDENT_RGB_TEXTURE_3D_NV => 0x8859,

#=head2 GL_DEPENDENT_RGB_TEXTURE_CUBE_MAP_NV
#
#=cut

    GL_DEPENDENT_RGB_TEXTURE_CUBE_MAP_NV => 0x885A,

#=head2 GL_DEPTH
#
#=cut

    GL_DEPTH => 0x1801,

#=head2 GL_DEPTH24_STENCIL8
#
#=cut

    GL_DEPTH24_STENCIL8 => 0x88F0,

#=head2 GL_DEPTH24_STENCIL8_EXT
#
#=cut

    GL_DEPTH24_STENCIL8_EXT => 0x88F0,

#=head2 GL_DEPTH32F_STENCIL8
#
#=cut

    GL_DEPTH32F_STENCIL8 => 0x8CAD,

#=head2 GL_DEPTH32F_STENCIL8_NV
#
#=cut

    GL_DEPTH32F_STENCIL8_NV => 0x8DAC,

#=head2 GL_DEPTH_ATTACHMENT
#
#=cut

    GL_DEPTH_ATTACHMENT => 0x8D00,

#=head2 GL_DEPTH_ATTACHMENT_EXT
#
#=cut

    GL_DEPTH_ATTACHMENT_EXT => 0x8D00,

#=head2 GL_DEPTH_BIAS
#
#=cut

    GL_DEPTH_BIAS => 0x0D1F,

#=head2 GL_DEPTH_BITS
#
#=cut

    GL_DEPTH_BITS => 0x0D56,

#=head2 GL_DEPTH_BOUNDS_EXT
#
#=cut

    GL_DEPTH_BOUNDS_EXT => 0x8891,

#=head2 GL_DEPTH_BOUNDS_TEST_EXT
#
#=cut

    GL_DEPTH_BOUNDS_TEST_EXT => 0x8890,

#=head2 GL_DEPTH_BUFFER_BIT
#
#=cut

    GL_DEPTH_BUFFER_BIT => 0x00000100,

#=head2 GL_DEPTH_BUFFER_FLOAT_MODE_NV
#
#=cut

    GL_DEPTH_BUFFER_FLOAT_MODE_NV => 0x8DAF,

#=head2 GL_DEPTH_CLAMP
#
#=cut

    GL_DEPTH_CLAMP => 0x864F,

#=head2 GL_DEPTH_CLAMP_FAR_AMD
#
#=cut

    GL_DEPTH_CLAMP_FAR_AMD => 0x901F,

#=head2 GL_DEPTH_CLAMP_NEAR_AMD
#
#=cut

    GL_DEPTH_CLAMP_NEAR_AMD => 0x901E,

#=head2 GL_DEPTH_CLAMP_NV
#
#=cut

    GL_DEPTH_CLAMP_NV => 0x864F,

#=head2 GL_DEPTH_CLEAR_VALUE
#
#=cut

    GL_DEPTH_CLEAR_VALUE => 0x0B73,

#=head2 GL_DEPTH_COMPONENT
#
#=cut

    GL_DEPTH_COMPONENT => 0x1902,

#=head2 GL_DEPTH_COMPONENT16
#
#=cut

    GL_DEPTH_COMPONENT16 => 0x81A5,

#=head2 GL_DEPTH_COMPONENT16_ARB
#
#=cut

    GL_DEPTH_COMPONENT16_ARB => 0x81A5,

#=head2 GL_DEPTH_COMPONENT16_SGIX
#
#=cut

    GL_DEPTH_COMPONENT16_SGIX => 0x81A5,

#=head2 GL_DEPTH_COMPONENT24
#
#=cut

    GL_DEPTH_COMPONENT24 => 0x81A6,

#=head2 GL_DEPTH_COMPONENT24_ARB
#
#=cut

    GL_DEPTH_COMPONENT24_ARB => 0x81A6,

#=head2 GL_DEPTH_COMPONENT24_SGIX
#
#=cut

    GL_DEPTH_COMPONENT24_SGIX => 0x81A6,

#=head2 GL_DEPTH_COMPONENT32
#
#=cut

    GL_DEPTH_COMPONENT32 => 0x81A7,

#=head2 GL_DEPTH_COMPONENT32F
#
#=cut

    GL_DEPTH_COMPONENT32F => 0x8CAC,

#=head2 GL_DEPTH_COMPONENT32F_NV
#
#=cut

    GL_DEPTH_COMPONENT32F_NV => 0x8DAB,

#=head2 GL_DEPTH_COMPONENT32_ARB
#
#=cut

    GL_DEPTH_COMPONENT32_ARB => 0x81A7,

#=head2 GL_DEPTH_COMPONENT32_SGIX
#
#=cut

    GL_DEPTH_COMPONENT32_SGIX => 0x81A7,

#=head2 GL_DEPTH_COMPONENTS
#
#=cut

    GL_DEPTH_COMPONENTS => 0x8284,

#=head2 GL_DEPTH_FUNC
#
#=cut

    GL_DEPTH_FUNC => 0x0B74,

#=head2 GL_DEPTH_RANGE
#
#=cut

    GL_DEPTH_RANGE => 0x0B70,

#=head2 GL_DEPTH_RENDERABLE
#
#=cut

    GL_DEPTH_RENDERABLE => 0x8287,

#=head2 GL_DEPTH_SCALE
#
#=cut

    GL_DEPTH_SCALE => 0x0D1E,

#=head2 GL_DEPTH_STENCIL
#
#=cut

    GL_DEPTH_STENCIL => 0x84F9,

#=head2 GL_DEPTH_STENCIL_ATTACHMENT
#
#=cut

    GL_DEPTH_STENCIL_ATTACHMENT => 0x821A,

#=head2 GL_DEPTH_STENCIL_EXT
#
#=cut

    GL_DEPTH_STENCIL_EXT => 0x84F9,

#=head2 GL_DEPTH_STENCIL_MESA
#
#=cut

    GL_DEPTH_STENCIL_MESA => 0x8750,

#=head2 GL_DEPTH_STENCIL_NV
#
#=cut

    GL_DEPTH_STENCIL_NV => 0x84F9,

#=head2 GL_DEPTH_STENCIL_TEXTURE_MODE
#
#=cut

    GL_DEPTH_STENCIL_TEXTURE_MODE => 0x90EA,

#=head2 GL_DEPTH_STENCIL_TO_BGRA_NV
#
#=cut

    GL_DEPTH_STENCIL_TO_BGRA_NV => 0x886F,

#=head2 GL_DEPTH_STENCIL_TO_RGBA_NV
#
#=cut

    GL_DEPTH_STENCIL_TO_RGBA_NV => 0x886E,

#=head2 GL_DEPTH_TEST
#
#=cut

    GL_DEPTH_TEST => 0x0B71,

#=head2 GL_DEPTH_TEXTURE_MODE
#
#=cut

    GL_DEPTH_TEXTURE_MODE => 0x884B,

#=head2 GL_DEPTH_TEXTURE_MODE_ARB
#
#=cut

    GL_DEPTH_TEXTURE_MODE_ARB => 0x884B,

#=head2 GL_DEPTH_WRITEMASK
#
#=cut

    GL_DEPTH_WRITEMASK => 0x0B72,

#=head2 GL_DETAIL_TEXTURE_2D_BINDING_SGIS
#
#=cut

    GL_DETAIL_TEXTURE_2D_BINDING_SGIS => 0x8096,

#=head2 GL_DETAIL_TEXTURE_2D_SGIS
#
#=cut

    GL_DETAIL_TEXTURE_2D_SGIS => 0x8095,

#=head2 GL_DETAIL_TEXTURE_FUNC_POINTS_SGIS
#
#=cut

    GL_DETAIL_TEXTURE_FUNC_POINTS_SGIS => 0x809C,

#=head2 GL_DETAIL_TEXTURE_LEVEL_SGIS
#
#=cut

    GL_DETAIL_TEXTURE_LEVEL_SGIS => 0x809A,

#=head2 GL_DETAIL_TEXTURE_MODE_SGIS
#
#=cut

    GL_DETAIL_TEXTURE_MODE_SGIS => 0x809B,

#=head2 GL_DIFFERENCE_KHR
#
#=cut

    GL_DIFFERENCE_KHR => 0x929E,

#=head2 GL_DIFFERENCE_NV
#
#=cut

    GL_DIFFERENCE_NV => 0x929E,

#=head2 GL_DIFFUSE
#
#=cut

    GL_DIFFUSE => 0x1201,

#=head2 GL_DISCARD_ATI
#
#=cut

    GL_DISCARD_ATI => 0x8763,

#=head2 GL_DISCARD_NV
#
#=cut

    GL_DISCARD_NV => 0x8530,

#=head2 GL_DISCRETE_AMD
#
#=cut

    GL_DISCRETE_AMD => 0x9006,

#=head2 GL_DISJOINT_NV
#
#=cut

    GL_DISJOINT_NV => 0x9283,

#=head2 GL_DISPATCH_INDIRECT_BUFFER
#
#=cut

    GL_DISPATCH_INDIRECT_BUFFER => 0x90EE,

#=head2 GL_DISPATCH_INDIRECT_BUFFER_BINDING
#
#=cut

    GL_DISPATCH_INDIRECT_BUFFER_BINDING => 0x90EF,

#=head2 GL_DISPLAY_LIST
#
#=cut

    GL_DISPLAY_LIST => 0x82E7,

#=head2 GL_DISTANCE_ATTENUATION_EXT
#
#=cut

    GL_DISTANCE_ATTENUATION_EXT => 0x8129,

#=head2 GL_DISTANCE_ATTENUATION_SGIS
#
#=cut

    GL_DISTANCE_ATTENUATION_SGIS => 0x8129,

#=head2 GL_DITHER
#
#=cut

    GL_DITHER => 0x0BD0,

#=head2 GL_DOMAIN
#
#=cut

    GL_DOMAIN => 0x0A02,

#=head2 GL_DONT_CARE
#
#=cut

    GL_DONT_CARE => 0x1100,

#=head2 GL_DOT2_ADD_ATI
#
#=cut

    GL_DOT2_ADD_ATI => 0x896C,

#=head2 GL_DOT3_ATI
#
#=cut

    GL_DOT3_ATI => 0x8966,

#=head2 GL_DOT3_RGB
#
#=cut

    GL_DOT3_RGB => 0x86AE,

#=head2 GL_DOT3_RGBA
#
#=cut

    GL_DOT3_RGBA => 0x86AF,

#=head2 GL_DOT3_RGBA_ARB
#
#=cut

    GL_DOT3_RGBA_ARB => 0x86AF,

#=head2 GL_DOT3_RGBA_EXT
#
#=cut

    GL_DOT3_RGBA_EXT => 0x8741,

#=head2 GL_DOT3_RGB_ARB
#
#=cut

    GL_DOT3_RGB_ARB => 0x86AE,

#=head2 GL_DOT3_RGB_EXT
#
#=cut

    GL_DOT3_RGB_EXT => 0x8740,

#=head2 GL_DOT4_ATI
#
#=cut

    GL_DOT4_ATI => 0x8967,

#=head2 GL_DOT_PRODUCT_AFFINE_DEPTH_REPLACE_NV
#
#=cut

    GL_DOT_PRODUCT_AFFINE_DEPTH_REPLACE_NV => 0x885D,

#=head2 GL_DOT_PRODUCT_CONST_EYE_REFLECT_CUBE_MAP_NV
#
#=cut

    GL_DOT_PRODUCT_CONST_EYE_REFLECT_CUBE_MAP_NV => 0x86F3,

#=head2 GL_DOT_PRODUCT_DEPTH_REPLACE_NV
#
#=cut

    GL_DOT_PRODUCT_DEPTH_REPLACE_NV => 0x86ED,

#=head2 GL_DOT_PRODUCT_DIFFUSE_CUBE_MAP_NV
#
#=cut

    GL_DOT_PRODUCT_DIFFUSE_CUBE_MAP_NV => 0x86F1,

#=head2 GL_DOT_PRODUCT_NV
#
#=cut

    GL_DOT_PRODUCT_NV => 0x86EC,

#=head2 GL_DOT_PRODUCT_PASS_THROUGH_NV
#
#=cut

    GL_DOT_PRODUCT_PASS_THROUGH_NV => 0x885B,

#=head2 GL_DOT_PRODUCT_REFLECT_CUBE_MAP_NV
#
#=cut

    GL_DOT_PRODUCT_REFLECT_CUBE_MAP_NV => 0x86F2,

#=head2 GL_DOT_PRODUCT_TEXTURE_1D_NV
#
#=cut

    GL_DOT_PRODUCT_TEXTURE_1D_NV => 0x885C,

#=head2 GL_DOT_PRODUCT_TEXTURE_2D_NV
#
#=cut

    GL_DOT_PRODUCT_TEXTURE_2D_NV => 0x86EE,

#=head2 GL_DOT_PRODUCT_TEXTURE_3D_NV
#
#=cut

    GL_DOT_PRODUCT_TEXTURE_3D_NV => 0x86EF,

#=head2 GL_DOT_PRODUCT_TEXTURE_CUBE_MAP_NV
#
#=cut

    GL_DOT_PRODUCT_TEXTURE_CUBE_MAP_NV => 0x86F0,

#=head2 GL_DOT_PRODUCT_TEXTURE_RECTANGLE_NV
#
#=cut

    GL_DOT_PRODUCT_TEXTURE_RECTANGLE_NV => 0x864E,

#=head2 GL_DOUBLE
#
#=cut

    GL_DOUBLE => 0x140A,

#=head2 GL_DOUBLEBUFFER
#
#=cut

    GL_DOUBLEBUFFER => 0x0C32,

#=head2 GL_DOUBLE_MAT2
#
#=cut

    GL_DOUBLE_MAT2 => 0x8F46,

#=head2 GL_DOUBLE_MAT2_EXT
#
#=cut

    GL_DOUBLE_MAT2_EXT => 0x8F46,

#=head2 GL_DOUBLE_MAT2x3
#
#=cut

    GL_DOUBLE_MAT2x3 => 0x8F49,

#=head2 GL_DOUBLE_MAT2x3_EXT
#
#=cut

    GL_DOUBLE_MAT2x3_EXT => 0x8F49,

#=head2 GL_DOUBLE_MAT2x4
#
#=cut

    GL_DOUBLE_MAT2x4 => 0x8F4A,

#=head2 GL_DOUBLE_MAT2x4_EXT
#
#=cut

    GL_DOUBLE_MAT2x4_EXT => 0x8F4A,

#=head2 GL_DOUBLE_MAT3
#
#=cut

    GL_DOUBLE_MAT3 => 0x8F47,

#=head2 GL_DOUBLE_MAT3_EXT
#
#=cut

    GL_DOUBLE_MAT3_EXT => 0x8F47,

#=head2 GL_DOUBLE_MAT3x2
#
#=cut

    GL_DOUBLE_MAT3x2 => 0x8F4B,

#=head2 GL_DOUBLE_MAT3x2_EXT
#
#=cut

    GL_DOUBLE_MAT3x2_EXT => 0x8F4B,

#=head2 GL_DOUBLE_MAT3x4
#
#=cut

    GL_DOUBLE_MAT3x4 => 0x8F4C,

#=head2 GL_DOUBLE_MAT3x4_EXT
#
#=cut

    GL_DOUBLE_MAT3x4_EXT => 0x8F4C,

#=head2 GL_DOUBLE_MAT4
#
#=cut

    GL_DOUBLE_MAT4 => 0x8F48,

#=head2 GL_DOUBLE_MAT4_EXT
#
#=cut

    GL_DOUBLE_MAT4_EXT => 0x8F48,

#=head2 GL_DOUBLE_MAT4x2
#
#=cut

    GL_DOUBLE_MAT4x2 => 0x8F4D,

#=head2 GL_DOUBLE_MAT4x2_EXT
#
#=cut

    GL_DOUBLE_MAT4x2_EXT => 0x8F4D,

#=head2 GL_DOUBLE_MAT4x3
#
#=cut

    GL_DOUBLE_MAT4x3 => 0x8F4E,

#=head2 GL_DOUBLE_MAT4x3_EXT
#
#=cut

    GL_DOUBLE_MAT4x3_EXT => 0x8F4E,

#=head2 GL_DOUBLE_VEC2
#
#=cut

    GL_DOUBLE_VEC2 => 0x8FFC,

#=head2 GL_DOUBLE_VEC2_EXT
#
#=cut

    GL_DOUBLE_VEC2_EXT => 0x8FFC,

#=head2 GL_DOUBLE_VEC3
#
#=cut

    GL_DOUBLE_VEC3 => 0x8FFD,

#=head2 GL_DOUBLE_VEC3_EXT
#
#=cut

    GL_DOUBLE_VEC3_EXT => 0x8FFD,

#=head2 GL_DOUBLE_VEC4
#
#=cut

    GL_DOUBLE_VEC4 => 0x8FFE,

#=head2 GL_DOUBLE_VEC4_EXT
#
#=cut

    GL_DOUBLE_VEC4_EXT => 0x8FFE,

#=head2 GL_DRAW_BUFFER
#
#=cut

    GL_DRAW_BUFFER => 0x0C01,

#=head2 GL_DRAW_BUFFER0
#
#=cut

    GL_DRAW_BUFFER0 => 0x8825,

#=head2 GL_DRAW_BUFFER0_ARB
#
#=cut

    GL_DRAW_BUFFER0_ARB => 0x8825,

#=head2 GL_DRAW_BUFFER0_ATI
#
#=cut

    GL_DRAW_BUFFER0_ATI => 0x8825,

#=head2 GL_DRAW_BUFFER1
#
#=cut

    GL_DRAW_BUFFER1 => 0x8826,

#=head2 GL_DRAW_BUFFER10
#
#=cut

    GL_DRAW_BUFFER10 => 0x882F,

#=head2 GL_DRAW_BUFFER10_ARB
#
#=cut

    GL_DRAW_BUFFER10_ARB => 0x882F,

#=head2 GL_DRAW_BUFFER10_ATI
#
#=cut

    GL_DRAW_BUFFER10_ATI => 0x882F,

#=head2 GL_DRAW_BUFFER11
#
#=cut

    GL_DRAW_BUFFER11 => 0x8830,

#=head2 GL_DRAW_BUFFER11_ARB
#
#=cut

    GL_DRAW_BUFFER11_ARB => 0x8830,

#=head2 GL_DRAW_BUFFER11_ATI
#
#=cut

    GL_DRAW_BUFFER11_ATI => 0x8830,

#=head2 GL_DRAW_BUFFER12
#
#=cut

    GL_DRAW_BUFFER12 => 0x8831,

#=head2 GL_DRAW_BUFFER12_ARB
#
#=cut

    GL_DRAW_BUFFER12_ARB => 0x8831,

#=head2 GL_DRAW_BUFFER12_ATI
#
#=cut

    GL_DRAW_BUFFER12_ATI => 0x8831,

#=head2 GL_DRAW_BUFFER13
#
#=cut

    GL_DRAW_BUFFER13 => 0x8832,

#=head2 GL_DRAW_BUFFER13_ARB
#
#=cut

    GL_DRAW_BUFFER13_ARB => 0x8832,

#=head2 GL_DRAW_BUFFER13_ATI
#
#=cut

    GL_DRAW_BUFFER13_ATI => 0x8832,

#=head2 GL_DRAW_BUFFER14
#
#=cut

    GL_DRAW_BUFFER14 => 0x8833,

#=head2 GL_DRAW_BUFFER14_ARB
#
#=cut

    GL_DRAW_BUFFER14_ARB => 0x8833,

#=head2 GL_DRAW_BUFFER14_ATI
#
#=cut

    GL_DRAW_BUFFER14_ATI => 0x8833,

#=head2 GL_DRAW_BUFFER15
#
#=cut

    GL_DRAW_BUFFER15 => 0x8834,

#=head2 GL_DRAW_BUFFER15_ARB
#
#=cut

    GL_DRAW_BUFFER15_ARB => 0x8834,

#=head2 GL_DRAW_BUFFER15_ATI
#
#=cut

    GL_DRAW_BUFFER15_ATI => 0x8834,

#=head2 GL_DRAW_BUFFER1_ARB
#
#=cut

    GL_DRAW_BUFFER1_ARB => 0x8826,

#=head2 GL_DRAW_BUFFER1_ATI
#
#=cut

    GL_DRAW_BUFFER1_ATI => 0x8826,

#=head2 GL_DRAW_BUFFER2
#
#=cut

    GL_DRAW_BUFFER2 => 0x8827,

#=head2 GL_DRAW_BUFFER2_ARB
#
#=cut

    GL_DRAW_BUFFER2_ARB => 0x8827,

#=head2 GL_DRAW_BUFFER2_ATI
#
#=cut

    GL_DRAW_BUFFER2_ATI => 0x8827,

#=head2 GL_DRAW_BUFFER3
#
#=cut

    GL_DRAW_BUFFER3 => 0x8828,

#=head2 GL_DRAW_BUFFER3_ARB
#
#=cut

    GL_DRAW_BUFFER3_ARB => 0x8828,

#=head2 GL_DRAW_BUFFER3_ATI
#
#=cut

    GL_DRAW_BUFFER3_ATI => 0x8828,

#=head2 GL_DRAW_BUFFER4
#
#=cut

    GL_DRAW_BUFFER4 => 0x8829,

#=head2 GL_DRAW_BUFFER4_ARB
#
#=cut

    GL_DRAW_BUFFER4_ARB => 0x8829,

#=head2 GL_DRAW_BUFFER4_ATI
#
#=cut

    GL_DRAW_BUFFER4_ATI => 0x8829,

#=head2 GL_DRAW_BUFFER5
#
#=cut

    GL_DRAW_BUFFER5 => 0x882A,

#=head2 GL_DRAW_BUFFER5_ARB
#
#=cut

    GL_DRAW_BUFFER5_ARB => 0x882A,

#=head2 GL_DRAW_BUFFER5_ATI
#
#=cut

    GL_DRAW_BUFFER5_ATI => 0x882A,

#=head2 GL_DRAW_BUFFER6
#
#=cut

    GL_DRAW_BUFFER6 => 0x882B,

#=head2 GL_DRAW_BUFFER6_ARB
#
#=cut

    GL_DRAW_BUFFER6_ARB => 0x882B,

#=head2 GL_DRAW_BUFFER6_ATI
#
#=cut

    GL_DRAW_BUFFER6_ATI => 0x882B,

#=head2 GL_DRAW_BUFFER7
#
#=cut

    GL_DRAW_BUFFER7 => 0x882C,

#=head2 GL_DRAW_BUFFER7_ARB
#
#=cut

    GL_DRAW_BUFFER7_ARB => 0x882C,

#=head2 GL_DRAW_BUFFER7_ATI
#
#=cut

    GL_DRAW_BUFFER7_ATI => 0x882C,

#=head2 GL_DRAW_BUFFER8
#
#=cut

    GL_DRAW_BUFFER8 => 0x882D,

#=head2 GL_DRAW_BUFFER8_ARB
#
#=cut

    GL_DRAW_BUFFER8_ARB => 0x882D,

#=head2 GL_DRAW_BUFFER8_ATI
#
#=cut

    GL_DRAW_BUFFER8_ATI => 0x882D,

#=head2 GL_DRAW_BUFFER9
#
#=cut

    GL_DRAW_BUFFER9 => 0x882E,

#=head2 GL_DRAW_BUFFER9_ARB
#
#=cut

    GL_DRAW_BUFFER9_ARB => 0x882E,

#=head2 GL_DRAW_BUFFER9_ATI
#
#=cut

    GL_DRAW_BUFFER9_ATI => 0x882E,

#=head2 GL_DRAW_FRAMEBUFFER
#
#=cut

    GL_DRAW_FRAMEBUFFER => 0x8CA9,

#=head2 GL_DRAW_FRAMEBUFFER_BINDING
#
#=cut

    GL_DRAW_FRAMEBUFFER_BINDING => 0x8CA6,

#=head2 GL_DRAW_FRAMEBUFFER_BINDING_EXT
#
#=cut

    GL_DRAW_FRAMEBUFFER_BINDING_EXT => 0x8CA6,

#=head2 GL_DRAW_FRAMEBUFFER_EXT
#
#=cut

    GL_DRAW_FRAMEBUFFER_EXT => 0x8CA9,

#=head2 GL_DRAW_INDIRECT_ADDRESS_NV
#
#=cut

    GL_DRAW_INDIRECT_ADDRESS_NV => 0x8F41,

#=head2 GL_DRAW_INDIRECT_BUFFER
#
#=cut

    GL_DRAW_INDIRECT_BUFFER => 0x8F3F,

#=head2 GL_DRAW_INDIRECT_BUFFER_BINDING
#
#=cut

    GL_DRAW_INDIRECT_BUFFER_BINDING => 0x8F43,

#=head2 GL_DRAW_INDIRECT_LENGTH_NV
#
#=cut

    GL_DRAW_INDIRECT_LENGTH_NV => 0x8F42,

#=head2 GL_DRAW_INDIRECT_UNIFIED_NV
#
#=cut

    GL_DRAW_INDIRECT_UNIFIED_NV => 0x8F40,

#=head2 GL_DRAW_PIXELS_APPLE
#
#=cut

    GL_DRAW_PIXELS_APPLE => 0x8A0A,

#=head2 GL_DRAW_PIXEL_TOKEN
#
#=cut

    GL_DRAW_PIXEL_TOKEN => 0x0705,

#=head2 GL_DSDT8_MAG8_INTENSITY8_NV
#
#=cut

    GL_DSDT8_MAG8_INTENSITY8_NV => 0x870B,

#=head2 GL_DSDT8_MAG8_NV
#
#=cut

    GL_DSDT8_MAG8_NV => 0x870A,

#=head2 GL_DSDT8_NV
#
#=cut

    GL_DSDT8_NV => 0x8709,

#=head2 GL_DSDT_MAG_INTENSITY_NV
#
#=cut

    GL_DSDT_MAG_INTENSITY_NV => 0x86DC,

#=head2 GL_DSDT_MAG_NV
#
#=cut

    GL_DSDT_MAG_NV => 0x86F6,

#=head2 GL_DSDT_MAG_VIB_NV
#
#=cut

    GL_DSDT_MAG_VIB_NV => 0x86F7,

#=head2 GL_DSDT_NV
#
#=cut

    GL_DSDT_NV => 0x86F5,

#=head2 GL_DST_ALPHA
#
#=cut

    GL_DST_ALPHA => 0x0304,

#=head2 GL_DST_ATOP_NV
#
#=cut

    GL_DST_ATOP_NV => 0x928F,

#=head2 GL_DST_COLOR
#
#=cut

    GL_DST_COLOR => 0x0306,

#=head2 GL_DST_IN_NV
#
#=cut

    GL_DST_IN_NV => 0x928B,

#=head2 GL_DST_NV
#
#=cut

    GL_DST_NV => 0x9287,

#=head2 GL_DST_OUT_NV
#
#=cut

    GL_DST_OUT_NV => 0x928D,

#=head2 GL_DST_OVER_NV
#
#=cut

    GL_DST_OVER_NV => 0x9289,

#=head2 GL_DS_BIAS_NV
#
#=cut

    GL_DS_BIAS_NV => 0x8716,

#=head2 GL_DS_SCALE_NV
#
#=cut

    GL_DS_SCALE_NV => 0x8710,

#=head2 GL_DT_BIAS_NV
#
#=cut

    GL_DT_BIAS_NV => 0x8717,

#=head2 GL_DT_SCALE_NV
#
#=cut

    GL_DT_SCALE_NV => 0x8711,

#=head2 GL_DU8DV8_ATI
#
#=cut

    GL_DU8DV8_ATI => 0x877A,

#=head2 GL_DUAL_ALPHA12_SGIS
#
#=cut

    GL_DUAL_ALPHA12_SGIS => 0x8112,

#=head2 GL_DUAL_ALPHA16_SGIS
#
#=cut

    GL_DUAL_ALPHA16_SGIS => 0x8113,

#=head2 GL_DUAL_ALPHA4_SGIS
#
#=cut

    GL_DUAL_ALPHA4_SGIS => 0x8110,

#=head2 GL_DUAL_ALPHA8_SGIS
#
#=cut

    GL_DUAL_ALPHA8_SGIS => 0x8111,

#=head2 GL_DUAL_INTENSITY12_SGIS
#
#=cut

    GL_DUAL_INTENSITY12_SGIS => 0x811A,

#=head2 GL_DUAL_INTENSITY16_SGIS
#
#=cut

    GL_DUAL_INTENSITY16_SGIS => 0x811B,

#=head2 GL_DUAL_INTENSITY4_SGIS
#
#=cut

    GL_DUAL_INTENSITY4_SGIS => 0x8118,

#=head2 GL_DUAL_INTENSITY8_SGIS
#
#=cut

    GL_DUAL_INTENSITY8_SGIS => 0x8119,

#=head2 GL_DUAL_LUMINANCE12_SGIS
#
#=cut

    GL_DUAL_LUMINANCE12_SGIS => 0x8116,

#=head2 GL_DUAL_LUMINANCE16_SGIS
#
#=cut

    GL_DUAL_LUMINANCE16_SGIS => 0x8117,

#=head2 GL_DUAL_LUMINANCE4_SGIS
#
#=cut

    GL_DUAL_LUMINANCE4_SGIS => 0x8114,

#=head2 GL_DUAL_LUMINANCE8_SGIS
#
#=cut

    GL_DUAL_LUMINANCE8_SGIS => 0x8115,

#=head2 GL_DUAL_LUMINANCE_ALPHA4_SGIS
#
#=cut

    GL_DUAL_LUMINANCE_ALPHA4_SGIS => 0x811C,

#=head2 GL_DUAL_LUMINANCE_ALPHA8_SGIS
#
#=cut

    GL_DUAL_LUMINANCE_ALPHA8_SGIS => 0x811D,

#=head2 GL_DUAL_TEXTURE_SELECT_SGIS
#
#=cut

    GL_DUAL_TEXTURE_SELECT_SGIS => 0x8124,

#=head2 GL_DUDV_ATI
#
#=cut

    GL_DUDV_ATI => 0x8779,

#=head2 GL_DUP_FIRST_CUBIC_CURVE_TO_NV
#
#=cut

    GL_DUP_FIRST_CUBIC_CURVE_TO_NV => 0xF2,

#=head2 GL_DUP_LAST_CUBIC_CURVE_TO_NV
#
#=cut

    GL_DUP_LAST_CUBIC_CURVE_TO_NV => 0xF4,

#=head2 GL_DYNAMIC_ATI
#
#=cut

    GL_DYNAMIC_ATI => 0x8761,

#=head2 GL_DYNAMIC_COPY
#
#=cut

    GL_DYNAMIC_COPY => 0x88EA,

#=head2 GL_DYNAMIC_COPY_ARB
#
#=cut

    GL_DYNAMIC_COPY_ARB => 0x88EA,

#=head2 GL_DYNAMIC_DRAW
#
#=cut

    GL_DYNAMIC_DRAW => 0x88E8,

#=head2 GL_DYNAMIC_DRAW_ARB
#
#=cut

    GL_DYNAMIC_DRAW_ARB => 0x88E8,

#=head2 GL_DYNAMIC_READ
#
#=cut

    GL_DYNAMIC_READ => 0x88E9,

#=head2 GL_DYNAMIC_READ_ARB
#
#=cut

    GL_DYNAMIC_READ_ARB => 0x88E9,

#=head2 GL_DYNAMIC_STORAGE_BIT
#
#=cut

    GL_DYNAMIC_STORAGE_BIT => 0x0100,

#=head2 GL_EDGEFLAG_BIT_PGI
#
#=cut

    GL_EDGEFLAG_BIT_PGI => 0x00040000,

#=head2 GL_EDGE_FLAG
#
#=cut

    GL_EDGE_FLAG => 0x0B43,

#=head2 GL_EDGE_FLAG_ARRAY
#
#=cut

    GL_EDGE_FLAG_ARRAY => 0x8079,

#=head2 GL_EDGE_FLAG_ARRAY_ADDRESS_NV
#
#=cut

    GL_EDGE_FLAG_ARRAY_ADDRESS_NV => 0x8F26,

#=head2 GL_EDGE_FLAG_ARRAY_BUFFER_BINDING
#
#=cut

    GL_EDGE_FLAG_ARRAY_BUFFER_BINDING => 0x889B,

#=head2 GL_EDGE_FLAG_ARRAY_BUFFER_BINDING_ARB
#
#=cut

    GL_EDGE_FLAG_ARRAY_BUFFER_BINDING_ARB => 0x889B,

#=head2 GL_EDGE_FLAG_ARRAY_COUNT_EXT
#
#=cut

    GL_EDGE_FLAG_ARRAY_COUNT_EXT => 0x808D,

#=head2 GL_EDGE_FLAG_ARRAY_EXT
#
#=cut

    GL_EDGE_FLAG_ARRAY_EXT => 0x8079,

#=head2 GL_EDGE_FLAG_ARRAY_LENGTH_NV
#
#=cut

    GL_EDGE_FLAG_ARRAY_LENGTH_NV => 0x8F30,

#=head2 GL_EDGE_FLAG_ARRAY_LIST_IBM
#
#=cut

    GL_EDGE_FLAG_ARRAY_LIST_IBM => 103075,

#=head2 GL_EDGE_FLAG_ARRAY_LIST_STRIDE_IBM
#
#=cut

    GL_EDGE_FLAG_ARRAY_LIST_STRIDE_IBM => 103085,

#=head2 GL_EDGE_FLAG_ARRAY_POINTER
#
#=cut

    GL_EDGE_FLAG_ARRAY_POINTER => 0x8093,

#=head2 GL_EDGE_FLAG_ARRAY_POINTER_EXT
#
#=cut

    GL_EDGE_FLAG_ARRAY_POINTER_EXT => 0x8093,

#=head2 GL_EDGE_FLAG_ARRAY_STRIDE
#
#=cut

    GL_EDGE_FLAG_ARRAY_STRIDE => 0x808C,

#=head2 GL_EDGE_FLAG_ARRAY_STRIDE_EXT
#
#=cut

    GL_EDGE_FLAG_ARRAY_STRIDE_EXT => 0x808C,

#=head2 GL_EIGHTH_BIT_ATI
#
#=cut

    GL_EIGHTH_BIT_ATI => 0x00000020,

#=head2 GL_ELEMENT_ARRAY_ADDRESS_NV
#
#=cut

    GL_ELEMENT_ARRAY_ADDRESS_NV => 0x8F29,

#=head2 GL_ELEMENT_ARRAY_APPLE
#
#=cut

    GL_ELEMENT_ARRAY_APPLE => 0x8A0C,

#=head2 GL_ELEMENT_ARRAY_ATI
#
#=cut

    GL_ELEMENT_ARRAY_ATI => 0x8768,

#=head2 GL_ELEMENT_ARRAY_BARRIER_BIT
#
#=cut

    GL_ELEMENT_ARRAY_BARRIER_BIT => 0x00000002,

#=head2 GL_ELEMENT_ARRAY_BARRIER_BIT_EXT
#
#=cut

    GL_ELEMENT_ARRAY_BARRIER_BIT_EXT => 0x00000002,

#=head2 GL_ELEMENT_ARRAY_BUFFER
#
#=cut

    GL_ELEMENT_ARRAY_BUFFER => 0x8893,

#=head2 GL_ELEMENT_ARRAY_BUFFER_ARB
#
#=cut

    GL_ELEMENT_ARRAY_BUFFER_ARB => 0x8893,

#=head2 GL_ELEMENT_ARRAY_BUFFER_BINDING
#
#=cut

    GL_ELEMENT_ARRAY_BUFFER_BINDING => 0x8895,

#=head2 GL_ELEMENT_ARRAY_BUFFER_BINDING_ARB
#
#=cut

    GL_ELEMENT_ARRAY_BUFFER_BINDING_ARB => 0x8895,

#=head2 GL_ELEMENT_ARRAY_LENGTH_NV
#
#=cut

    GL_ELEMENT_ARRAY_LENGTH_NV => 0x8F33,

#=head2 GL_ELEMENT_ARRAY_POINTER_APPLE
#
#=cut

    GL_ELEMENT_ARRAY_POINTER_APPLE => 0x8A0E,

#=head2 GL_ELEMENT_ARRAY_POINTER_ATI
#
#=cut

    GL_ELEMENT_ARRAY_POINTER_ATI => 0x876A,

#=head2 GL_ELEMENT_ARRAY_TYPE_APPLE
#
#=cut

    GL_ELEMENT_ARRAY_TYPE_APPLE => 0x8A0D,

#=head2 GL_ELEMENT_ARRAY_TYPE_ATI
#
#=cut

    GL_ELEMENT_ARRAY_TYPE_ATI => 0x8769,

#=head2 GL_ELEMENT_ARRAY_UNIFIED_NV
#
#=cut

    GL_ELEMENT_ARRAY_UNIFIED_NV => 0x8F1F,

#=head2 GL_EMBOSS_CONSTANT_NV
#
#=cut

    GL_EMBOSS_CONSTANT_NV => 0x855E,

#=head2 GL_EMBOSS_LIGHT_NV
#
#=cut

    GL_EMBOSS_LIGHT_NV => 0x855D,

#=head2 GL_EMBOSS_MAP_NV
#
#=cut

    GL_EMBOSS_MAP_NV => 0x855F,

#=head2 GL_EMISSION
#
#=cut

    GL_EMISSION => 0x1600,

#=head2 GL_ENABLE_BIT
#
#=cut

    GL_ENABLE_BIT => 0x00002000,

#=head2 GL_EQUAL
#
#=cut

    GL_EQUAL => 0x0202,

#=head2 GL_EQUIV
#
#=cut

    GL_EQUIV => 0x1509,

#=head2 GL_EVAL_2D_NV
#
#=cut

    GL_EVAL_2D_NV => 0x86C0,

#=head2 GL_EVAL_BIT
#
#=cut

    GL_EVAL_BIT => 0x00010000,

#=head2 GL_EVAL_FRACTIONAL_TESSELLATION_NV
#
#=cut

    GL_EVAL_FRACTIONAL_TESSELLATION_NV => 0x86C5,

#=head2 GL_EVAL_TRIANGULAR_2D_NV
#
#=cut

    GL_EVAL_TRIANGULAR_2D_NV => 0x86C1,

#=head2 GL_EVAL_VERTEX_ATTRIB0_NV
#
#=cut

    GL_EVAL_VERTEX_ATTRIB0_NV => 0x86C6,

#=head2 GL_EVAL_VERTEX_ATTRIB10_NV
#
#=cut

    GL_EVAL_VERTEX_ATTRIB10_NV => 0x86D0,

#=head2 GL_EVAL_VERTEX_ATTRIB11_NV
#
#=cut

    GL_EVAL_VERTEX_ATTRIB11_NV => 0x86D1,

#=head2 GL_EVAL_VERTEX_ATTRIB12_NV
#
#=cut

    GL_EVAL_VERTEX_ATTRIB12_NV => 0x86D2,

#=head2 GL_EVAL_VERTEX_ATTRIB13_NV
#
#=cut

    GL_EVAL_VERTEX_ATTRIB13_NV => 0x86D3,

#=head2 GL_EVAL_VERTEX_ATTRIB14_NV
#
#=cut

    GL_EVAL_VERTEX_ATTRIB14_NV => 0x86D4,

#=head2 GL_EVAL_VERTEX_ATTRIB15_NV
#
#=cut

    GL_EVAL_VERTEX_ATTRIB15_NV => 0x86D5,

#=head2 GL_EVAL_VERTEX_ATTRIB1_NV
#
#=cut

    GL_EVAL_VERTEX_ATTRIB1_NV => 0x86C7,

#=head2 GL_EVAL_VERTEX_ATTRIB2_NV
#
#=cut

    GL_EVAL_VERTEX_ATTRIB2_NV => 0x86C8,

#=head2 GL_EVAL_VERTEX_ATTRIB3_NV
#
#=cut

    GL_EVAL_VERTEX_ATTRIB3_NV => 0x86C9,

#=head2 GL_EVAL_VERTEX_ATTRIB4_NV
#
#=cut

    GL_EVAL_VERTEX_ATTRIB4_NV => 0x86CA,

#=head2 GL_EVAL_VERTEX_ATTRIB5_NV
#
#=cut

    GL_EVAL_VERTEX_ATTRIB5_NV => 0x86CB,

#=head2 GL_EVAL_VERTEX_ATTRIB6_NV
#
#=cut

    GL_EVAL_VERTEX_ATTRIB6_NV => 0x86CC,

#=head2 GL_EVAL_VERTEX_ATTRIB7_NV
#
#=cut

    GL_EVAL_VERTEX_ATTRIB7_NV => 0x86CD,

#=head2 GL_EVAL_VERTEX_ATTRIB8_NV
#
#=cut

    GL_EVAL_VERTEX_ATTRIB8_NV => 0x86CE,

#=head2 GL_EVAL_VERTEX_ATTRIB9_NV
#
#=cut

    GL_EVAL_VERTEX_ATTRIB9_NV => 0x86CF,

#=head2 GL_EXCLUSION_KHR
#
#=cut

    GL_EXCLUSION_KHR => 0x92A0,

#=head2 GL_EXCLUSION_NV
#
#=cut

    GL_EXCLUSION_NV => 0x92A0,

#=head2 GL_EXP
#
#=cut

    GL_EXP => 0x0800,

#=head2 GL_EXP2
#
#=cut

    GL_EXP2 => 0x0801,

#=head2 GL_EXPAND_NEGATE_NV
#
#=cut

    GL_EXPAND_NEGATE_NV => 0x8539,

#=head2 GL_EXPAND_NORMAL_NV
#
#=cut

    GL_EXPAND_NORMAL_NV => 0x8538,

#=head2 GL_EXTENSIONS
#
#=cut

    GL_EXTENSIONS => 0x1F03,

#=head2 GL_EXTERNAL_VIRTUAL_MEMORY_BUFFER_AMD
#
#=cut

    GL_EXTERNAL_VIRTUAL_MEMORY_BUFFER_AMD => 0x9160,

#=head2 GL_EXT_422_pixels
#
#=cut

    GL_EXT_422_pixels => 1,

#=head2 GL_EXT_abgr
#
#=cut

    GL_EXT_abgr => 1,

#=head2 GL_EXT_bgra
#
#=cut

    GL_EXT_bgra => 1,

#=head2 GL_EXT_bindable_uniform
#
#=cut

    GL_EXT_bindable_uniform => 1,

#=head2 GL_EXT_blend_color
#
#=cut

    GL_EXT_blend_color => 1,

#=head2 GL_EXT_blend_equation_separate
#
#=cut

    GL_EXT_blend_equation_separate => 1,

#=head2 GL_EXT_blend_func_separate
#
#=cut

    GL_EXT_blend_func_separate => 1,

#=head2 GL_EXT_blend_logic_op
#
#=cut

    GL_EXT_blend_logic_op => 1,

#=head2 GL_EXT_blend_minmax
#
#=cut

    GL_EXT_blend_minmax => 1,

#=head2 GL_EXT_blend_subtract
#
#=cut

    GL_EXT_blend_subtract => 1,

#=head2 GL_EXT_clip_volume_hint
#
#=cut

    GL_EXT_clip_volume_hint => 1,

#=head2 GL_EXT_cmyka
#
#=cut

    GL_EXT_cmyka => 1,

#=head2 GL_EXT_color_subtable
#
#=cut

    GL_EXT_color_subtable => 1,

#=head2 GL_EXT_compiled_vertex_array
#
#=cut

    GL_EXT_compiled_vertex_array => 1,

#=head2 GL_EXT_convolution
#
#=cut

    GL_EXT_convolution => 1,

#=head2 GL_EXT_coordinate_frame
#
#=cut

    GL_EXT_coordinate_frame => 1,

#=head2 GL_EXT_copy_texture
#
#=cut

    GL_EXT_copy_texture => 1,

#=head2 GL_EXT_cull_vertex
#
#=cut

    GL_EXT_cull_vertex => 1,

#=head2 GL_EXT_debug_label
#
#=cut

    GL_EXT_debug_label => 1,

#=head2 GL_EXT_debug_marker
#
#=cut

    GL_EXT_debug_marker => 1,

#=head2 GL_EXT_depth_bounds_test
#
#=cut

    GL_EXT_depth_bounds_test => 1,

#=head2 GL_EXT_direct_state_access
#
#=cut

    GL_EXT_direct_state_access => 1,

#=head2 GL_EXT_draw_buffers2
#
#=cut

    GL_EXT_draw_buffers2 => 1,

#=head2 GL_EXT_draw_instanced
#
#=cut

    GL_EXT_draw_instanced => 1,

#=head2 GL_EXT_draw_range_elements
#
#=cut

    GL_EXT_draw_range_elements => 1,

#=head2 GL_EXT_fog_coord
#
#=cut

    GL_EXT_fog_coord => 1,

#=head2 GL_EXT_framebuffer_blit
#
#=cut

    GL_EXT_framebuffer_blit => 1,

#=head2 GL_EXT_framebuffer_multisample
#
#=cut

    GL_EXT_framebuffer_multisample => 1,

#=head2 GL_EXT_framebuffer_multisample_blit_scaled
#
#=cut

    GL_EXT_framebuffer_multisample_blit_scaled => 1,

#=head2 GL_EXT_framebuffer_object
#
#=cut

    GL_EXT_framebuffer_object => 1,

#=head2 GL_EXT_framebuffer_sRGB
#
#=cut

    GL_EXT_framebuffer_sRGB => 1,

#=head2 GL_EXT_geometry_shader4
#
#=cut

    GL_EXT_geometry_shader4 => 1,

#=head2 GL_EXT_gpu_program_parameters
#
#=cut

    GL_EXT_gpu_program_parameters => 1,

#=head2 GL_EXT_gpu_shader4
#
#=cut

    GL_EXT_gpu_shader4 => 1,

#=head2 GL_EXT_histogram
#
#=cut

    GL_EXT_histogram => 1,

#=head2 GL_EXT_index_array_formats
#
#=cut

    GL_EXT_index_array_formats => 1,

#=head2 GL_EXT_index_func
#
#=cut

    GL_EXT_index_func => 1,

#=head2 GL_EXT_index_material
#
#=cut

    GL_EXT_index_material => 1,

#=head2 GL_EXT_index_texture
#
#=cut

    GL_EXT_index_texture => 1,

#=head2 GL_EXT_light_texture
#
#=cut

    GL_EXT_light_texture => 1,

#=head2 GL_EXT_misc_attribute
#
#=cut

    GL_EXT_misc_attribute => 1,

#=head2 GL_EXT_multi_draw_arrays
#
#=cut

    GL_EXT_multi_draw_arrays => 1,

#=head2 GL_EXT_multisample
#
#=cut

    GL_EXT_multisample => 1,

#=head2 GL_EXT_packed_depth_stencil
#
#=cut

    GL_EXT_packed_depth_stencil => 1,

#=head2 GL_EXT_packed_float
#
#=cut

    GL_EXT_packed_float => 1,

#=head2 GL_EXT_packed_pixels
#
#=cut

    GL_EXT_packed_pixels => 1,

#=head2 GL_EXT_paletted_texture
#
#=cut

    GL_EXT_paletted_texture => 1,

#=head2 GL_EXT_pixel_buffer_object
#
#=cut

    GL_EXT_pixel_buffer_object => 1,

#=head2 GL_EXT_pixel_transform
#
#=cut

    GL_EXT_pixel_transform => 1,

#=head2 GL_EXT_pixel_transform_color_table
#
#=cut

    GL_EXT_pixel_transform_color_table => 1,

#=head2 GL_EXT_point_parameters
#
#=cut

    GL_EXT_point_parameters => 1,

#=head2 GL_EXT_polygon_offset
#
#=cut

    GL_EXT_polygon_offset => 1,

#=head2 GL_EXT_provoking_vertex
#
#=cut

    GL_EXT_provoking_vertex => 1,

#=head2 GL_EXT_rescale_normal
#
#=cut

    GL_EXT_rescale_normal => 1,

#=head2 GL_EXT_secondary_color
#
#=cut

    GL_EXT_secondary_color => 1,

#=head2 GL_EXT_separate_shader_objects
#
#=cut

    GL_EXT_separate_shader_objects => 1,

#=head2 GL_EXT_separate_specular_color
#
#=cut

    GL_EXT_separate_specular_color => 1,

#=head2 GL_EXT_shader_image_load_formatted
#
#=cut

    GL_EXT_shader_image_load_formatted => 1,

#=head2 GL_EXT_shader_image_load_store
#
#=cut

    GL_EXT_shader_image_load_store => 1,

#=head2 GL_EXT_shader_integer_mix
#
#=cut

    GL_EXT_shader_integer_mix => 1,

#=head2 GL_EXT_shadow_funcs
#
#=cut

    GL_EXT_shadow_funcs => 1,

#=head2 GL_EXT_shared_texture_palette
#
#=cut

    GL_EXT_shared_texture_palette => 1,

#=head2 GL_EXT_stencil_clear_tag
#
#=cut

    GL_EXT_stencil_clear_tag => 1,

#=head2 GL_EXT_stencil_two_side
#
#=cut

    GL_EXT_stencil_two_side => 1,

#=head2 GL_EXT_stencil_wrap
#
#=cut

    GL_EXT_stencil_wrap => 1,

#=head2 GL_EXT_subtexture
#
#=cut

    GL_EXT_subtexture => 1,

#=head2 GL_EXT_texture
#
#=cut

    GL_EXT_texture => 1,

#=head2 GL_EXT_texture3D
#
#=cut

    GL_EXT_texture3D => 1,

#=head2 GL_EXT_texture_array
#
#=cut

    GL_EXT_texture_array => 1,

#=head2 GL_EXT_texture_buffer_object
#
#=cut

    GL_EXT_texture_buffer_object => 1,

#=head2 GL_EXT_texture_compression_latc
#
#=cut

    GL_EXT_texture_compression_latc => 1,

#=head2 GL_EXT_texture_compression_rgtc
#
#=cut

    GL_EXT_texture_compression_rgtc => 1,

#=head2 GL_EXT_texture_compression_s3tc
#
#=cut

    GL_EXT_texture_compression_s3tc => 1,

#=head2 GL_EXT_texture_cube_map
#
#=cut

    GL_EXT_texture_cube_map => 1,

#=head2 GL_EXT_texture_env_add
#
#=cut

    GL_EXT_texture_env_add => 1,

#=head2 GL_EXT_texture_env_combine
#
#=cut

    GL_EXT_texture_env_combine => 1,

#=head2 GL_EXT_texture_env_dot3
#
#=cut

    GL_EXT_texture_env_dot3 => 1,

#=head2 GL_EXT_texture_filter_anisotropic
#
#=cut

    GL_EXT_texture_filter_anisotropic => 1,

#=head2 GL_EXT_texture_integer
#
#=cut

    GL_EXT_texture_integer => 1,

#=head2 GL_EXT_texture_lod_bias
#
#=cut

    GL_EXT_texture_lod_bias => 1,

#=head2 GL_EXT_texture_mirror_clamp
#
#=cut

    GL_EXT_texture_mirror_clamp => 1,

#=head2 GL_EXT_texture_object
#
#=cut

    GL_EXT_texture_object => 1,

#=head2 GL_EXT_texture_perturb_normal
#
#=cut

    GL_EXT_texture_perturb_normal => 1,

#=head2 GL_EXT_texture_sRGB
#
#=cut

    GL_EXT_texture_sRGB => 1,

#=head2 GL_EXT_texture_sRGB_decode
#
#=cut

    GL_EXT_texture_sRGB_decode => 1,

#=head2 GL_EXT_texture_shared_exponent
#
#=cut

    GL_EXT_texture_shared_exponent => 1,

#=head2 GL_EXT_texture_snorm
#
#=cut

    GL_EXT_texture_snorm => 1,

#=head2 GL_EXT_texture_swizzle
#
#=cut

    GL_EXT_texture_swizzle => 1,

#=head2 GL_EXT_timer_query
#
#=cut

    GL_EXT_timer_query => 1,

#=head2 GL_EXT_transform_feedback
#
#=cut

    GL_EXT_transform_feedback => 1,

#=head2 GL_EXT_vertex_array
#
#=cut

    GL_EXT_vertex_array => 1,

#=head2 GL_EXT_vertex_array_bgra
#
#=cut

    GL_EXT_vertex_array_bgra => 1,

#=head2 GL_EXT_vertex_attrib_64bit
#
#=cut

    GL_EXT_vertex_attrib_64bit => 1,

#=head2 GL_EXT_vertex_shader
#
#=cut

    GL_EXT_vertex_shader => 1,

#=head2 GL_EXT_vertex_weighting
#
#=cut

    GL_EXT_vertex_weighting => 1,

#=head2 GL_EXT_x11_sync_object
#
#=cut

    GL_EXT_x11_sync_object => 1,

#=head2 GL_EYE_DISTANCE_TO_LINE_SGIS
#
#=cut

    GL_EYE_DISTANCE_TO_LINE_SGIS => 0x81F2,

#=head2 GL_EYE_DISTANCE_TO_POINT_SGIS
#
#=cut

    GL_EYE_DISTANCE_TO_POINT_SGIS => 0x81F0,

#=head2 GL_EYE_LINEAR
#
#=cut

    GL_EYE_LINEAR => 0x2400,

#=head2 GL_EYE_LINEAR_NV
#
#=cut

    GL_EYE_LINEAR_NV => 0x2400,

#=head2 GL_EYE_LINE_SGIS
#
#=cut

    GL_EYE_LINE_SGIS => 0x81F6,

#=head2 GL_EYE_PLANE
#
#=cut

    GL_EYE_PLANE => 0x2502,

#=head2 GL_EYE_PLANE_ABSOLUTE_NV
#
#=cut

    GL_EYE_PLANE_ABSOLUTE_NV => 0x855C,

#=head2 GL_EYE_POINT_SGIS
#
#=cut

    GL_EYE_POINT_SGIS => 0x81F4,

#=head2 GL_EYE_RADIAL_NV
#
#=cut

    GL_EYE_RADIAL_NV => 0x855B,

#=head2 GL_E_TIMES_F_NV
#
#=cut

    GL_E_TIMES_F_NV => 0x8531,

#=head2 GL_FACTOR_MAX_AMD
#
#=cut

    GL_FACTOR_MAX_AMD => 0x901D,

#=head2 GL_FACTOR_MIN_AMD
#
#=cut

    GL_FACTOR_MIN_AMD => 0x901C,

#=head2 GL_FAILURE_NV
#
#=cut

    GL_FAILURE_NV => 0x9030,

#=head2 GL_FALSE
#
#=cut

    GL_FALSE => 0,

#=head2 GL_FASTEST
#
#=cut

    GL_FASTEST => 0x1101,

#=head2 GL_FEEDBACK
#
#=cut

    GL_FEEDBACK => 0x1C01,

#=head2 GL_FEEDBACK_BUFFER_POINTER
#
#=cut

    GL_FEEDBACK_BUFFER_POINTER => 0x0DF0,

#=head2 GL_FEEDBACK_BUFFER_SIZE
#
#=cut

    GL_FEEDBACK_BUFFER_SIZE => 0x0DF1,

#=head2 GL_FEEDBACK_BUFFER_TYPE
#
#=cut

    GL_FEEDBACK_BUFFER_TYPE => 0x0DF2,

#=head2 GL_FENCE_APPLE
#
#=cut

    GL_FENCE_APPLE => 0x8A0B,

#=head2 GL_FENCE_CONDITION_NV
#
#=cut

    GL_FENCE_CONDITION_NV => 0x84F4,

#=head2 GL_FENCE_STATUS_NV
#
#=cut

    GL_FENCE_STATUS_NV => 0x84F3,

#=head2 GL_FIELDS_NV
#
#=cut

    GL_FIELDS_NV => 0x8E27,

#=head2 GL_FIELD_LOWER_NV
#
#=cut

    GL_FIELD_LOWER_NV => 0x9023,

#=head2 GL_FIELD_UPPER_NV
#
#=cut

    GL_FIELD_UPPER_NV => 0x9022,

#=head2 GL_FILE_NAME_NV
#
#=cut

    GL_FILE_NAME_NV => 0x9074,

#=head2 GL_FILL
#
#=cut

    GL_FILL => 0x1B02,

#=head2 GL_FILTER
#
#=cut

    GL_FILTER => 0x829A,

#=head2 GL_FILTER4_SGIS
#
#=cut

    GL_FILTER4_SGIS => 0x8146,

#=head2 GL_FIRST_TO_REST_NV
#
#=cut

    GL_FIRST_TO_REST_NV => 0x90AF,

#=head2 GL_FIRST_VERTEX_CONVENTION
#
#=cut

    GL_FIRST_VERTEX_CONVENTION => 0x8E4D,

#=head2 GL_FIRST_VERTEX_CONVENTION_EXT
#
#=cut

    GL_FIRST_VERTEX_CONVENTION_EXT => 0x8E4D,

#=head2 GL_FIXED
#
#=cut

    GL_FIXED => 0x140C,

#=head2 GL_FIXED_OES
#
#=cut

    GL_FIXED_OES => 0x140C,

#=head2 GL_FIXED_ONLY
#
#=cut

    GL_FIXED_ONLY => 0x891D,

#=head2 GL_FIXED_ONLY_ARB
#
#=cut

    GL_FIXED_ONLY_ARB => 0x891D,

#=head2 GL_FLAT
#
#=cut

    GL_FLAT => 0x1D00,

#=head2 GL_FLOAT
#
#=cut

    GL_FLOAT => 0x1406,

#=head2 GL_FLOAT16_NV
#
#=cut

    GL_FLOAT16_NV => 0x8FF8,

#=head2 GL_FLOAT16_VEC2_NV
#
#=cut

    GL_FLOAT16_VEC2_NV => 0x8FF9,

#=head2 GL_FLOAT16_VEC3_NV
#
#=cut

    GL_FLOAT16_VEC3_NV => 0x8FFA,

#=head2 GL_FLOAT16_VEC4_NV
#
#=cut

    GL_FLOAT16_VEC4_NV => 0x8FFB,

#=head2 GL_FLOAT_32_UNSIGNED_INT_24_8_REV
#
#=cut

    GL_FLOAT_32_UNSIGNED_INT_24_8_REV => 0x8DAD,

#=head2 GL_FLOAT_32_UNSIGNED_INT_24_8_REV_NV
#
#=cut

    GL_FLOAT_32_UNSIGNED_INT_24_8_REV_NV => 0x8DAD,

#=head2 GL_FLOAT_CLEAR_COLOR_VALUE_NV
#
#=cut

    GL_FLOAT_CLEAR_COLOR_VALUE_NV => 0x888D,

#=head2 GL_FLOAT_MAT2
#
#=cut

    GL_FLOAT_MAT2 => 0x8B5A,

#=head2 GL_FLOAT_MAT2_ARB
#
#=cut

    GL_FLOAT_MAT2_ARB => 0x8B5A,

#=head2 GL_FLOAT_MAT2x3
#
#=cut

    GL_FLOAT_MAT2x3 => 0x8B65,

#=head2 GL_FLOAT_MAT2x4
#
#=cut

    GL_FLOAT_MAT2x4 => 0x8B66,

#=head2 GL_FLOAT_MAT3
#
#=cut

    GL_FLOAT_MAT3 => 0x8B5B,

#=head2 GL_FLOAT_MAT3_ARB
#
#=cut

    GL_FLOAT_MAT3_ARB => 0x8B5B,

#=head2 GL_FLOAT_MAT3x2
#
#=cut

    GL_FLOAT_MAT3x2 => 0x8B67,

#=head2 GL_FLOAT_MAT3x4
#
#=cut

    GL_FLOAT_MAT3x4 => 0x8B68,

#=head2 GL_FLOAT_MAT4
#
#=cut

    GL_FLOAT_MAT4 => 0x8B5C,

#=head2 GL_FLOAT_MAT4_ARB
#
#=cut

    GL_FLOAT_MAT4_ARB => 0x8B5C,

#=head2 GL_FLOAT_MAT4x2
#
#=cut

    GL_FLOAT_MAT4x2 => 0x8B69,

#=head2 GL_FLOAT_MAT4x3
#
#=cut

    GL_FLOAT_MAT4x3 => 0x8B6A,

#=head2 GL_FLOAT_R16_NV
#
#=cut

    GL_FLOAT_R16_NV => 0x8884,

#=head2 GL_FLOAT_R32_NV
#
#=cut

    GL_FLOAT_R32_NV => 0x8885,

#=head2 GL_FLOAT_RG16_NV
#
#=cut

    GL_FLOAT_RG16_NV => 0x8886,

#=head2 GL_FLOAT_RG32_NV
#
#=cut

    GL_FLOAT_RG32_NV => 0x8887,

#=head2 GL_FLOAT_RGB16_NV
#
#=cut

    GL_FLOAT_RGB16_NV => 0x8888,

#=head2 GL_FLOAT_RGB32_NV
#
#=cut

    GL_FLOAT_RGB32_NV => 0x8889,

#=head2 GL_FLOAT_RGBA16_NV
#
#=cut

    GL_FLOAT_RGBA16_NV => 0x888A,

#=head2 GL_FLOAT_RGBA32_NV
#
#=cut

    GL_FLOAT_RGBA32_NV => 0x888B,

#=head2 GL_FLOAT_RGBA_MODE_NV
#
#=cut

    GL_FLOAT_RGBA_MODE_NV => 0x888E,

#=head2 GL_FLOAT_RGBA_NV
#
#=cut

    GL_FLOAT_RGBA_NV => 0x8883,

#=head2 GL_FLOAT_RGB_NV
#
#=cut

    GL_FLOAT_RGB_NV => 0x8882,

#=head2 GL_FLOAT_RG_NV
#
#=cut

    GL_FLOAT_RG_NV => 0x8881,

#=head2 GL_FLOAT_R_NV
#
#=cut

    GL_FLOAT_R_NV => 0x8880,

#=head2 GL_FLOAT_VEC2
#
#=cut

    GL_FLOAT_VEC2 => 0x8B50,

#=head2 GL_FLOAT_VEC2_ARB
#
#=cut

    GL_FLOAT_VEC2_ARB => 0x8B50,

#=head2 GL_FLOAT_VEC3
#
#=cut

    GL_FLOAT_VEC3 => 0x8B51,

#=head2 GL_FLOAT_VEC3_ARB
#
#=cut

    GL_FLOAT_VEC3_ARB => 0x8B51,

#=head2 GL_FLOAT_VEC4
#
#=cut

    GL_FLOAT_VEC4 => 0x8B52,

#=head2 GL_FLOAT_VEC4_ARB
#
#=cut

    GL_FLOAT_VEC4_ARB => 0x8B52,

#=head2 GL_FOG
#
#=cut

    GL_FOG => 0x0B60,

#=head2 GL_FOG_BIT
#
#=cut

    GL_FOG_BIT => 0x00000080,

#=head2 GL_FOG_COLOR
#
#=cut

    GL_FOG_COLOR => 0x0B66,

#=head2 GL_FOG_COORD
#
#=cut

    GL_FOG_COORD => 0x8451,

#=head2 GL_FOG_COORDINATE
#
#=cut

    GL_FOG_COORDINATE => 0x8451,

#=head2 GL_FOG_COORDINATE_ARRAY
#
#=cut

    GL_FOG_COORDINATE_ARRAY => 0x8457,

#=head2 GL_FOG_COORDINATE_ARRAY_BUFFER_BINDING
#
#=cut

    GL_FOG_COORDINATE_ARRAY_BUFFER_BINDING => 0x889D,

#=head2 GL_FOG_COORDINATE_ARRAY_BUFFER_BINDING_ARB
#
#=cut

    GL_FOG_COORDINATE_ARRAY_BUFFER_BINDING_ARB => 0x889D,

#=head2 GL_FOG_COORDINATE_ARRAY_EXT
#
#=cut

    GL_FOG_COORDINATE_ARRAY_EXT => 0x8457,

#=head2 GL_FOG_COORDINATE_ARRAY_LIST_IBM
#
#=cut

    GL_FOG_COORDINATE_ARRAY_LIST_IBM => 103076,

#=head2 GL_FOG_COORDINATE_ARRAY_LIST_STRIDE_IBM
#
#=cut

    GL_FOG_COORDINATE_ARRAY_LIST_STRIDE_IBM => 103086,

#=head2 GL_FOG_COORDINATE_ARRAY_POINTER
#
#=cut

    GL_FOG_COORDINATE_ARRAY_POINTER => 0x8456,

#=head2 GL_FOG_COORDINATE_ARRAY_POINTER_EXT
#
#=cut

    GL_FOG_COORDINATE_ARRAY_POINTER_EXT => 0x8456,

#=head2 GL_FOG_COORDINATE_ARRAY_STRIDE
#
#=cut

    GL_FOG_COORDINATE_ARRAY_STRIDE => 0x8455,

#=head2 GL_FOG_COORDINATE_ARRAY_STRIDE_EXT
#
#=cut

    GL_FOG_COORDINATE_ARRAY_STRIDE_EXT => 0x8455,

#=head2 GL_FOG_COORDINATE_ARRAY_TYPE
#
#=cut

    GL_FOG_COORDINATE_ARRAY_TYPE => 0x8454,

#=head2 GL_FOG_COORDINATE_ARRAY_TYPE_EXT
#
#=cut

    GL_FOG_COORDINATE_ARRAY_TYPE_EXT => 0x8454,

#=head2 GL_FOG_COORDINATE_EXT
#
#=cut

    GL_FOG_COORDINATE_EXT => 0x8451,

#=head2 GL_FOG_COORDINATE_SOURCE
#
#=cut

    GL_FOG_COORDINATE_SOURCE => 0x8450,

#=head2 GL_FOG_COORDINATE_SOURCE_EXT
#
#=cut

    GL_FOG_COORDINATE_SOURCE_EXT => 0x8450,

#=head2 GL_FOG_COORD_ARRAY
#
#=cut

    GL_FOG_COORD_ARRAY => 0x8457,

#=head2 GL_FOG_COORD_ARRAY_ADDRESS_NV
#
#=cut

    GL_FOG_COORD_ARRAY_ADDRESS_NV => 0x8F28,

#=head2 GL_FOG_COORD_ARRAY_BUFFER_BINDING
#
#=cut

    GL_FOG_COORD_ARRAY_BUFFER_BINDING => 0x889D,

#=head2 GL_FOG_COORD_ARRAY_LENGTH_NV
#
#=cut

    GL_FOG_COORD_ARRAY_LENGTH_NV => 0x8F32,

#=head2 GL_FOG_COORD_ARRAY_POINTER
#
#=cut

    GL_FOG_COORD_ARRAY_POINTER => 0x8456,

#=head2 GL_FOG_COORD_ARRAY_STRIDE
#
#=cut

    GL_FOG_COORD_ARRAY_STRIDE => 0x8455,

#=head2 GL_FOG_COORD_ARRAY_TYPE
#
#=cut

    GL_FOG_COORD_ARRAY_TYPE => 0x8454,

#=head2 GL_FOG_COORD_SRC
#
#=cut

    GL_FOG_COORD_SRC => 0x8450,

#=head2 GL_FOG_DENSITY
#
#=cut

    GL_FOG_DENSITY => 0x0B62,

#=head2 GL_FOG_DISTANCE_MODE_NV
#
#=cut

    GL_FOG_DISTANCE_MODE_NV => 0x855A,

#=head2 GL_FOG_END
#
#=cut

    GL_FOG_END => 0x0B64,

#=head2 GL_FOG_FUNC_POINTS_SGIS
#
#=cut

    GL_FOG_FUNC_POINTS_SGIS => 0x812B,

#=head2 GL_FOG_FUNC_SGIS
#
#=cut

    GL_FOG_FUNC_SGIS => 0x812A,

#=head2 GL_FOG_HINT
#
#=cut

    GL_FOG_HINT => 0x0C54,

#=head2 GL_FOG_INDEX
#
#=cut

    GL_FOG_INDEX => 0x0B61,

#=head2 GL_FOG_MODE
#
#=cut

    GL_FOG_MODE => 0x0B65,

#=head2 GL_FOG_OFFSET_SGIX
#
#=cut

    GL_FOG_OFFSET_SGIX => 0x8198,

#=head2 GL_FOG_OFFSET_VALUE_SGIX
#
#=cut

    GL_FOG_OFFSET_VALUE_SGIX => 0x8199,

#=head2 GL_FOG_SPECULAR_TEXTURE_WIN
#
#=cut

    GL_FOG_SPECULAR_TEXTURE_WIN => 0x80EC,

#=head2 GL_FOG_START
#
#=cut

    GL_FOG_START => 0x0B63,

#=head2 GL_FONT_ASCENDER_BIT_NV
#
#=cut

    GL_FONT_ASCENDER_BIT_NV => 0x00200000,

#=head2 GL_FONT_DESCENDER_BIT_NV
#
#=cut

    GL_FONT_DESCENDER_BIT_NV => 0x00400000,

#=head2 GL_FONT_GLYPHS_AVAILABLE_NV
#
#=cut

    GL_FONT_GLYPHS_AVAILABLE_NV => 0x9368,

#=head2 GL_FONT_HAS_KERNING_BIT_NV
#
#=cut

    GL_FONT_HAS_KERNING_BIT_NV => 0x10000000,

#=head2 GL_FONT_HEIGHT_BIT_NV
#
#=cut

    GL_FONT_HEIGHT_BIT_NV => 0x00800000,

#=head2 GL_FONT_MAX_ADVANCE_HEIGHT_BIT_NV
#
#=cut

    GL_FONT_MAX_ADVANCE_HEIGHT_BIT_NV => 0x02000000,

#=head2 GL_FONT_MAX_ADVANCE_WIDTH_BIT_NV
#
#=cut

    GL_FONT_MAX_ADVANCE_WIDTH_BIT_NV => 0x01000000,

#=head2 GL_FONT_NUM_GLYPH_INDICES_BIT_NV
#
#=cut

    GL_FONT_NUM_GLYPH_INDICES_BIT_NV => 0x20000000,

#=head2 GL_FONT_TARGET_UNAVAILABLE_NV
#
#=cut

    GL_FONT_TARGET_UNAVAILABLE_NV => 0x9369,

#=head2 GL_FONT_UNAVAILABLE_NV
#
#=cut

    GL_FONT_UNAVAILABLE_NV => 0x936A,

#=head2 GL_FONT_UNDERLINE_POSITION_BIT_NV
#
#=cut

    GL_FONT_UNDERLINE_POSITION_BIT_NV => 0x04000000,

#=head2 GL_FONT_UNDERLINE_THICKNESS_BIT_NV
#
#=cut

    GL_FONT_UNDERLINE_THICKNESS_BIT_NV => 0x08000000,

#=head2 GL_FONT_UNINTELLIGIBLE_NV
#
#=cut

    GL_FONT_UNINTELLIGIBLE_NV => 0x936B,

#=head2 GL_FONT_UNITS_PER_EM_BIT_NV
#
#=cut

    GL_FONT_UNITS_PER_EM_BIT_NV => 0x00100000,

#=head2 GL_FONT_X_MAX_BOUNDS_BIT_NV
#
#=cut

    GL_FONT_X_MAX_BOUNDS_BIT_NV => 0x00040000,

#=head2 GL_FONT_X_MIN_BOUNDS_BIT_NV
#
#=cut

    GL_FONT_X_MIN_BOUNDS_BIT_NV => 0x00010000,

#=head2 GL_FONT_Y_MAX_BOUNDS_BIT_NV
#
#=cut

    GL_FONT_Y_MAX_BOUNDS_BIT_NV => 0x00080000,

#=head2 GL_FONT_Y_MIN_BOUNDS_BIT_NV
#
#=cut

    GL_FONT_Y_MIN_BOUNDS_BIT_NV => 0x00020000,

#=head2 GL_FORCE_BLUE_TO_ONE_NV
#
#=cut

    GL_FORCE_BLUE_TO_ONE_NV => 0x8860,

#=head2 GL_FORMAT_SUBSAMPLE_244_244_OML
#
#=cut

    GL_FORMAT_SUBSAMPLE_244_244_OML => 0x8983,

#=head2 GL_FORMAT_SUBSAMPLE_24_24_OML
#
#=cut

    GL_FORMAT_SUBSAMPLE_24_24_OML => 0x8982,

#=head2 GL_FRACTIONAL_EVEN
#
#=cut

    GL_FRACTIONAL_EVEN => 0x8E7C,

#=head2 GL_FRACTIONAL_ODD
#
#=cut

    GL_FRACTIONAL_ODD => 0x8E7B,

#=head2 GL_FRAGMENT_COLOR_EXT
#
#=cut

    GL_FRAGMENT_COLOR_EXT => 0x834C,

#=head2 GL_FRAGMENT_COLOR_MATERIAL_FACE_SGIX
#
#=cut

    GL_FRAGMENT_COLOR_MATERIAL_FACE_SGIX => 0x8402,

#=head2 GL_FRAGMENT_COLOR_MATERIAL_PARAMETER_SGIX
#
#=cut

    GL_FRAGMENT_COLOR_MATERIAL_PARAMETER_SGIX => 0x8403,

#=head2 GL_FRAGMENT_COLOR_MATERIAL_SGIX
#
#=cut

    GL_FRAGMENT_COLOR_MATERIAL_SGIX => 0x8401,

#=head2 GL_FRAGMENT_DEPTH
#
#=cut

    GL_FRAGMENT_DEPTH => 0x8452,

#=head2 GL_FRAGMENT_DEPTH_EXT
#
#=cut

    GL_FRAGMENT_DEPTH_EXT => 0x8452,

#=head2 GL_FRAGMENT_INPUT_NV
#
#=cut

    GL_FRAGMENT_INPUT_NV => 0x936D,

#=head2 GL_FRAGMENT_INTERPOLATION_OFFSET_BITS
#
#=cut

    GL_FRAGMENT_INTERPOLATION_OFFSET_BITS => 0x8E5D,

#=head2 GL_FRAGMENT_LIGHT0_SGIX
#
#=cut

    GL_FRAGMENT_LIGHT0_SGIX => 0x840C,

#=head2 GL_FRAGMENT_LIGHT1_SGIX
#
#=cut

    GL_FRAGMENT_LIGHT1_SGIX => 0x840D,

#=head2 GL_FRAGMENT_LIGHT2_SGIX
#
#=cut

    GL_FRAGMENT_LIGHT2_SGIX => 0x840E,

#=head2 GL_FRAGMENT_LIGHT3_SGIX
#
#=cut

    GL_FRAGMENT_LIGHT3_SGIX => 0x840F,

#=head2 GL_FRAGMENT_LIGHT4_SGIX
#
#=cut

    GL_FRAGMENT_LIGHT4_SGIX => 0x8410,

#=head2 GL_FRAGMENT_LIGHT5_SGIX
#
#=cut

    GL_FRAGMENT_LIGHT5_SGIX => 0x8411,

#=head2 GL_FRAGMENT_LIGHT6_SGIX
#
#=cut

    GL_FRAGMENT_LIGHT6_SGIX => 0x8412,

#=head2 GL_FRAGMENT_LIGHT7_SGIX
#
#=cut

    GL_FRAGMENT_LIGHT7_SGIX => 0x8413,

#=head2 GL_FRAGMENT_LIGHTING_SGIX
#
#=cut

    GL_FRAGMENT_LIGHTING_SGIX => 0x8400,

#=head2 GL_FRAGMENT_LIGHT_MODEL_AMBIENT_SGIX
#
#=cut

    GL_FRAGMENT_LIGHT_MODEL_AMBIENT_SGIX => 0x840A,

#=head2 GL_FRAGMENT_LIGHT_MODEL_LOCAL_VIEWER_SGIX
#
#=cut

    GL_FRAGMENT_LIGHT_MODEL_LOCAL_VIEWER_SGIX => 0x8408,

#=head2 GL_FRAGMENT_LIGHT_MODEL_NORMAL_INTERPOLATION_SGIX
#
#=cut

    GL_FRAGMENT_LIGHT_MODEL_NORMAL_INTERPOLATION_SGIX => 0x840B,

#=head2 GL_FRAGMENT_LIGHT_MODEL_TWO_SIDE_SGIX
#
#=cut

    GL_FRAGMENT_LIGHT_MODEL_TWO_SIDE_SGIX => 0x8409,

#=head2 GL_FRAGMENT_MATERIAL_EXT
#
#=cut

    GL_FRAGMENT_MATERIAL_EXT => 0x8349,

#=head2 GL_FRAGMENT_NORMAL_EXT
#
#=cut

    GL_FRAGMENT_NORMAL_EXT => 0x834A,

#=head2 GL_FRAGMENT_PROGRAM_ARB
#
#=cut

    GL_FRAGMENT_PROGRAM_ARB => 0x8804,

#=head2 GL_FRAGMENT_PROGRAM_BINDING_NV
#
#=cut

    GL_FRAGMENT_PROGRAM_BINDING_NV => 0x8873,

#=head2 GL_FRAGMENT_PROGRAM_INTERPOLATION_OFFSET_BITS_NV
#
#=cut

    GL_FRAGMENT_PROGRAM_INTERPOLATION_OFFSET_BITS_NV => 0x8E5D,

#=head2 GL_FRAGMENT_PROGRAM_NV
#
#=cut

    GL_FRAGMENT_PROGRAM_NV => 0x8870,

#=head2 GL_FRAGMENT_PROGRAM_PARAMETER_BUFFER_NV
#
#=cut

    GL_FRAGMENT_PROGRAM_PARAMETER_BUFFER_NV => 0x8DA4,

#=head2 GL_FRAGMENT_SHADER
#
#=cut

    GL_FRAGMENT_SHADER => 0x8B30,

#=head2 GL_FRAGMENT_SHADER_ARB
#
#=cut

    GL_FRAGMENT_SHADER_ARB => 0x8B30,

#=head2 GL_FRAGMENT_SHADER_ATI
#
#=cut

    GL_FRAGMENT_SHADER_ATI => 0x8920,

#=head2 GL_FRAGMENT_SHADER_BIT
#
#=cut

    GL_FRAGMENT_SHADER_BIT => 0x00000002,

#=head2 GL_FRAGMENT_SHADER_DERIVATIVE_HINT
#
#=cut

    GL_FRAGMENT_SHADER_DERIVATIVE_HINT => 0x8B8B,

#=head2 GL_FRAGMENT_SHADER_DERIVATIVE_HINT_ARB
#
#=cut

    GL_FRAGMENT_SHADER_DERIVATIVE_HINT_ARB => 0x8B8B,

#=head2 GL_FRAGMENT_SHADER_INVOCATIONS_ARB
#
#=cut

    GL_FRAGMENT_SHADER_INVOCATIONS_ARB => 0x82F4,

#=head2 GL_FRAGMENT_SUBROUTINE
#
#=cut

    GL_FRAGMENT_SUBROUTINE => 0x92EC,

#=head2 GL_FRAGMENT_SUBROUTINE_UNIFORM
#
#=cut

    GL_FRAGMENT_SUBROUTINE_UNIFORM => 0x92F2,

#=head2 GL_FRAGMENT_TEXTURE
#
#=cut

    GL_FRAGMENT_TEXTURE => 0x829F,

#=head2 GL_FRAMEBUFFER
#
#=cut

    GL_FRAMEBUFFER => 0x8D40,

#=head2 GL_FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE
#
#=cut

    GL_FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE => 0x8215,

#=head2 GL_FRAMEBUFFER_ATTACHMENT_BLUE_SIZE
#
#=cut

    GL_FRAMEBUFFER_ATTACHMENT_BLUE_SIZE => 0x8214,

#=head2 GL_FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING
#
#=cut

    GL_FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING => 0x8210,

#=head2 GL_FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE
#
#=cut

    GL_FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE => 0x8211,

#=head2 GL_FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE
#
#=cut

    GL_FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE => 0x8216,

#=head2 GL_FRAMEBUFFER_ATTACHMENT_GREEN_SIZE
#
#=cut

    GL_FRAMEBUFFER_ATTACHMENT_GREEN_SIZE => 0x8213,

#=head2 GL_FRAMEBUFFER_ATTACHMENT_LAYERED
#
#=cut

    GL_FRAMEBUFFER_ATTACHMENT_LAYERED => 0x8DA7,

#=head2 GL_FRAMEBUFFER_ATTACHMENT_LAYERED_ARB
#
#=cut

    GL_FRAMEBUFFER_ATTACHMENT_LAYERED_ARB => 0x8DA7,

#=head2 GL_FRAMEBUFFER_ATTACHMENT_LAYERED_EXT
#
#=cut

    GL_FRAMEBUFFER_ATTACHMENT_LAYERED_EXT => 0x8DA7,

#=head2 GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME
#
#=cut

    GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME => 0x8CD1,

#=head2 GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME_EXT
#
#=cut

    GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME_EXT => 0x8CD1,

#=head2 GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE
#
#=cut

    GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE => 0x8CD0,

#=head2 GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE_EXT
#
#=cut

    GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE_EXT => 0x8CD0,

#=head2 GL_FRAMEBUFFER_ATTACHMENT_RED_SIZE
#
#=cut

    GL_FRAMEBUFFER_ATTACHMENT_RED_SIZE => 0x8212,

#=head2 GL_FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE
#
#=cut

    GL_FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE => 0x8217,

#=head2 GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_3D_ZOFFSET_EXT
#
#=cut

    GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_3D_ZOFFSET_EXT => 0x8CD4,

#=head2 GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE
#
#=cut

    GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE => 0x8CD3,

#=head2 GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE_EXT
#
#=cut

    GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE_EXT => 0x8CD3,

#=head2 GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER
#
#=cut

    GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER => 0x8CD4,

#=head2 GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER_EXT
#
#=cut

    GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER_EXT => 0x8CD4,

#=head2 GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL
#
#=cut

    GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL => 0x8CD2,

#=head2 GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL_EXT
#
#=cut

    GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL_EXT => 0x8CD2,

#=head2 GL_FRAMEBUFFER_BARRIER_BIT
#
#=cut

    GL_FRAMEBUFFER_BARRIER_BIT => 0x00000400,

#=head2 GL_FRAMEBUFFER_BARRIER_BIT_EXT
#
#=cut

    GL_FRAMEBUFFER_BARRIER_BIT_EXT => 0x00000400,

#=head2 GL_FRAMEBUFFER_BINDING
#
#=cut

    GL_FRAMEBUFFER_BINDING => 0x8CA6,

#=head2 GL_FRAMEBUFFER_BINDING_EXT
#
#=cut

    GL_FRAMEBUFFER_BINDING_EXT => 0x8CA6,

#=head2 GL_FRAMEBUFFER_BLEND
#
#=cut

    GL_FRAMEBUFFER_BLEND => 0x828B,

#=head2 GL_FRAMEBUFFER_COMPLETE
#
#=cut

    GL_FRAMEBUFFER_COMPLETE => 0x8CD5,

#=head2 GL_FRAMEBUFFER_COMPLETE_EXT
#
#=cut

    GL_FRAMEBUFFER_COMPLETE_EXT => 0x8CD5,

#=head2 GL_FRAMEBUFFER_DEFAULT
#
#=cut

    GL_FRAMEBUFFER_DEFAULT => 0x8218,

#=head2 GL_FRAMEBUFFER_DEFAULT_FIXED_SAMPLE_LOCATIONS
#
#=cut

    GL_FRAMEBUFFER_DEFAULT_FIXED_SAMPLE_LOCATIONS => 0x9314,

#=head2 GL_FRAMEBUFFER_DEFAULT_HEIGHT
#
#=cut

    GL_FRAMEBUFFER_DEFAULT_HEIGHT => 0x9311,

#=head2 GL_FRAMEBUFFER_DEFAULT_LAYERS
#
#=cut

    GL_FRAMEBUFFER_DEFAULT_LAYERS => 0x9312,

#=head2 GL_FRAMEBUFFER_DEFAULT_SAMPLES
#
#=cut

    GL_FRAMEBUFFER_DEFAULT_SAMPLES => 0x9313,

#=head2 GL_FRAMEBUFFER_DEFAULT_WIDTH
#
#=cut

    GL_FRAMEBUFFER_DEFAULT_WIDTH => 0x9310,

#=head2 GL_FRAMEBUFFER_EXT
#
#=cut

    GL_FRAMEBUFFER_EXT => 0x8D40,

#=head2 GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT
#
#=cut

    GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT => 0x8CD6,

#=head2 GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT_EXT
#
#=cut

    GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT_EXT => 0x8CD6,

#=head2 GL_FRAMEBUFFER_INCOMPLETE_DIMENSIONS_EXT
#
#=cut

    GL_FRAMEBUFFER_INCOMPLETE_DIMENSIONS_EXT => 0x8CD9,

#=head2 GL_FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER
#
#=cut

    GL_FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER => 0x8CDB,

#=head2 GL_FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER_EXT
#
#=cut

    GL_FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER_EXT => 0x8CDB,

#=head2 GL_FRAMEBUFFER_INCOMPLETE_FORMATS_EXT
#
#=cut

    GL_FRAMEBUFFER_INCOMPLETE_FORMATS_EXT => 0x8CDA,

#=head2 GL_FRAMEBUFFER_INCOMPLETE_LAYER_COUNT_ARB
#
#=cut

    GL_FRAMEBUFFER_INCOMPLETE_LAYER_COUNT_ARB => 0x8DA9,

#=head2 GL_FRAMEBUFFER_INCOMPLETE_LAYER_COUNT_EXT
#
#=cut

    GL_FRAMEBUFFER_INCOMPLETE_LAYER_COUNT_EXT => 0x8DA9,

#=head2 GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS
#
#=cut

    GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS => 0x8DA8,

#=head2 GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS_ARB
#
#=cut

    GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS_ARB => 0x8DA8,

#=head2 GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS_EXT
#
#=cut

    GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS_EXT => 0x8DA8,

#=head2 GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT
#
#=cut

    GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT => 0x8CD7,

#=head2 GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT_EXT
#
#=cut

    GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT_EXT => 0x8CD7,

#=head2 GL_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE
#
#=cut

    GL_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE => 0x8D56,

#=head2 GL_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE_EXT
#
#=cut

    GL_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE_EXT => 0x8D56,

#=head2 GL_FRAMEBUFFER_INCOMPLETE_READ_BUFFER
#
#=cut

    GL_FRAMEBUFFER_INCOMPLETE_READ_BUFFER => 0x8CDC,

#=head2 GL_FRAMEBUFFER_INCOMPLETE_READ_BUFFER_EXT
#
#=cut

    GL_FRAMEBUFFER_INCOMPLETE_READ_BUFFER_EXT => 0x8CDC,

#=head2 GL_FRAMEBUFFER_RENDERABLE
#
#=cut

    GL_FRAMEBUFFER_RENDERABLE => 0x8289,

#=head2 GL_FRAMEBUFFER_RENDERABLE_LAYERED
#
#=cut

    GL_FRAMEBUFFER_RENDERABLE_LAYERED => 0x828A,

#=head2 GL_FRAMEBUFFER_SRGB
#
#=cut

    GL_FRAMEBUFFER_SRGB => 0x8DB9,

#=head2 GL_FRAMEBUFFER_SRGB_CAPABLE_EXT
#
#=cut

    GL_FRAMEBUFFER_SRGB_CAPABLE_EXT => 0x8DBA,

#=head2 GL_FRAMEBUFFER_SRGB_EXT
#
#=cut

    GL_FRAMEBUFFER_SRGB_EXT => 0x8DB9,

#=head2 GL_FRAMEBUFFER_UNDEFINED
#
#=cut

    GL_FRAMEBUFFER_UNDEFINED => 0x8219,

#=head2 GL_FRAMEBUFFER_UNSUPPORTED
#
#=cut

    GL_FRAMEBUFFER_UNSUPPORTED => 0x8CDD,

#=head2 GL_FRAMEBUFFER_UNSUPPORTED_EXT
#
#=cut

    GL_FRAMEBUFFER_UNSUPPORTED_EXT => 0x8CDD,

#=head2 GL_FRAMEZOOM_FACTOR_SGIX
#
#=cut

    GL_FRAMEZOOM_FACTOR_SGIX => 0x818C,

#=head2 GL_FRAMEZOOM_SGIX
#
#=cut

    GL_FRAMEZOOM_SGIX => 0x818B,

#=head2 GL_FRAME_NV
#
#=cut

    GL_FRAME_NV => 0x8E26,

#=head2 GL_FRONT
#
#=cut

    GL_FRONT => 0x0404,

#=head2 GL_FRONT_AND_BACK
#
#=cut

    GL_FRONT_AND_BACK => 0x0408,

#=head2 GL_FRONT_FACE
#
#=cut

    GL_FRONT_FACE => 0x0B46,

#=head2 GL_FRONT_LEFT
#
#=cut

    GL_FRONT_LEFT => 0x0400,

#=head2 GL_FRONT_RIGHT
#
#=cut

    GL_FRONT_RIGHT => 0x0401,

#=head2 GL_FULL_RANGE_EXT
#
#=cut

    GL_FULL_RANGE_EXT => 0x87E1,

#=head2 GL_FULL_STIPPLE_HINT_PGI
#
#=cut

    GL_FULL_STIPPLE_HINT_PGI => 0x1A219,

#=head2 GL_FULL_SUPPORT
#
#=cut

    GL_FULL_SUPPORT => 0x82B7,

#=head2 GL_FUNC_ADD
#
#=cut

    GL_FUNC_ADD => 0x8006,

#=head2 GL_FUNC_ADD_EXT
#
#=cut

    GL_FUNC_ADD_EXT => 0x8006,

#=head2 GL_FUNC_REVERSE_SUBTRACT
#
#=cut

    GL_FUNC_REVERSE_SUBTRACT => 0x800B,

#=head2 GL_FUNC_REVERSE_SUBTRACT_EXT
#
#=cut

    GL_FUNC_REVERSE_SUBTRACT_EXT => 0x800B,

#=head2 GL_FUNC_SUBTRACT
#
#=cut

    GL_FUNC_SUBTRACT => 0x800A,

#=head2 GL_FUNC_SUBTRACT_EXT
#
#=cut

    GL_FUNC_SUBTRACT_EXT => 0x800A,

#=head2 GL_GENERATE_MIPMAP
#
#=cut

    GL_GENERATE_MIPMAP => 0x8191,

#=head2 GL_GENERATE_MIPMAP_HINT
#
#=cut

    GL_GENERATE_MIPMAP_HINT => 0x8192,

#=head2 GL_GENERATE_MIPMAP_HINT_SGIS
#
#=cut

    GL_GENERATE_MIPMAP_HINT_SGIS => 0x8192,

#=head2 GL_GENERATE_MIPMAP_SGIS
#
#=cut

    GL_GENERATE_MIPMAP_SGIS => 0x8191,

#=head2 GL_GENERIC_ATTRIB_NV
#
#=cut

    GL_GENERIC_ATTRIB_NV => 0x8C7D,

#=head2 GL_GEOMETRY_DEFORMATION_BIT_SGIX
#
#=cut

    GL_GEOMETRY_DEFORMATION_BIT_SGIX => 0x00000002,

#=head2 GL_GEOMETRY_DEFORMATION_SGIX
#
#=cut

    GL_GEOMETRY_DEFORMATION_SGIX => 0x8194,

#=head2 GL_GEOMETRY_INPUT_TYPE
#
#=cut

    GL_GEOMETRY_INPUT_TYPE => 0x8917,

#=head2 GL_GEOMETRY_INPUT_TYPE_ARB
#
#=cut

    GL_GEOMETRY_INPUT_TYPE_ARB => 0x8DDB,

#=head2 GL_GEOMETRY_INPUT_TYPE_EXT
#
#=cut

    GL_GEOMETRY_INPUT_TYPE_EXT => 0x8DDB,

#=head2 GL_GEOMETRY_OUTPUT_TYPE
#
#=cut

    GL_GEOMETRY_OUTPUT_TYPE => 0x8918,

#=head2 GL_GEOMETRY_OUTPUT_TYPE_ARB
#
#=cut

    GL_GEOMETRY_OUTPUT_TYPE_ARB => 0x8DDC,

#=head2 GL_GEOMETRY_OUTPUT_TYPE_EXT
#
#=cut

    GL_GEOMETRY_OUTPUT_TYPE_EXT => 0x8DDC,

#=head2 GL_GEOMETRY_PROGRAM_NV
#
#=cut

    GL_GEOMETRY_PROGRAM_NV => 0x8C26,

#=head2 GL_GEOMETRY_PROGRAM_PARAMETER_BUFFER_NV
#
#=cut

    GL_GEOMETRY_PROGRAM_PARAMETER_BUFFER_NV => 0x8DA3,

#=head2 GL_GEOMETRY_SHADER
#
#=cut

    GL_GEOMETRY_SHADER => 0x8DD9,

#=head2 GL_GEOMETRY_SHADER_ARB
#
#=cut

    GL_GEOMETRY_SHADER_ARB => 0x8DD9,

#=head2 GL_GEOMETRY_SHADER_BIT
#
#=cut

    GL_GEOMETRY_SHADER_BIT => 0x00000004,

#=head2 GL_GEOMETRY_SHADER_EXT
#
#=cut

    GL_GEOMETRY_SHADER_EXT => 0x8DD9,

#=head2 GL_GEOMETRY_SHADER_INVOCATIONS
#
#=cut

    GL_GEOMETRY_SHADER_INVOCATIONS => 0x887F,

#=head2 GL_GEOMETRY_SHADER_PRIMITIVES_EMITTED_ARB
#
#=cut

    GL_GEOMETRY_SHADER_PRIMITIVES_EMITTED_ARB => 0x82F3,

#=head2 GL_GEOMETRY_SUBROUTINE
#
#=cut

    GL_GEOMETRY_SUBROUTINE => 0x92EB,

#=head2 GL_GEOMETRY_SUBROUTINE_UNIFORM
#
#=cut

    GL_GEOMETRY_SUBROUTINE_UNIFORM => 0x92F1,

#=head2 GL_GEOMETRY_TEXTURE
#
#=cut

    GL_GEOMETRY_TEXTURE => 0x829E,

#=head2 GL_GEOMETRY_VERTICES_OUT
#
#=cut

    GL_GEOMETRY_VERTICES_OUT => 0x8916,

#=head2 GL_GEOMETRY_VERTICES_OUT_ARB
#
#=cut

    GL_GEOMETRY_VERTICES_OUT_ARB => 0x8DDA,

#=head2 GL_GEOMETRY_VERTICES_OUT_EXT
#
#=cut

    GL_GEOMETRY_VERTICES_OUT_EXT => 0x8DDA,

#=head2 GL_GEQUAL
#
#=cut

    GL_GEQUAL => 0x0206,

#=head2 GL_GET_TEXTURE_IMAGE_FORMAT
#
#=cut

    GL_GET_TEXTURE_IMAGE_FORMAT => 0x8291,

#=head2 GL_GET_TEXTURE_IMAGE_TYPE
#
#=cut

    GL_GET_TEXTURE_IMAGE_TYPE => 0x8292,

#=head2 GL_GLEXT_VERSION
#
#=cut

    GL_GLEXT_VERSION => 20140810,

#=head2 GL_GLOBAL_ALPHA_FACTOR_SUN
#
#=cut

    GL_GLOBAL_ALPHA_FACTOR_SUN => 0x81DA,

#=head2 GL_GLOBAL_ALPHA_SUN
#
#=cut

    GL_GLOBAL_ALPHA_SUN => 0x81D9,

#=head2 GL_GLYPH_HAS_KERNING_BIT_NV
#
#=cut

    GL_GLYPH_HAS_KERNING_BIT_NV => 0x100,

#=head2 GL_GLYPH_HEIGHT_BIT_NV
#
#=cut

    GL_GLYPH_HEIGHT_BIT_NV => 0x02,

#=head2 GL_GLYPH_HORIZONTAL_BEARING_ADVANCE_BIT_NV
#
#=cut

    GL_GLYPH_HORIZONTAL_BEARING_ADVANCE_BIT_NV => 0x10,

#=head2 GL_GLYPH_HORIZONTAL_BEARING_X_BIT_NV
#
#=cut

    GL_GLYPH_HORIZONTAL_BEARING_X_BIT_NV => 0x04,

#=head2 GL_GLYPH_HORIZONTAL_BEARING_Y_BIT_NV
#
#=cut

    GL_GLYPH_HORIZONTAL_BEARING_Y_BIT_NV => 0x08,

#=head2 GL_GLYPH_VERTICAL_BEARING_ADVANCE_BIT_NV
#
#=cut

    GL_GLYPH_VERTICAL_BEARING_ADVANCE_BIT_NV => 0x80,

#=head2 GL_GLYPH_VERTICAL_BEARING_X_BIT_NV
#
#=cut

    GL_GLYPH_VERTICAL_BEARING_X_BIT_NV => 0x20,

#=head2 GL_GLYPH_VERTICAL_BEARING_Y_BIT_NV
#
#=cut

    GL_GLYPH_VERTICAL_BEARING_Y_BIT_NV => 0x40,

#=head2 GL_GLYPH_WIDTH_BIT_NV
#
#=cut

    GL_GLYPH_WIDTH_BIT_NV => 0x01,

#=head2 GL_GPU_ADDRESS_NV
#
#=cut

    GL_GPU_ADDRESS_NV => 0x8F34,

#=head2 GL_GPU_MEMORY_INFO_CURRENT_AVAILABLE_VIDMEM_NVX
#
#=cut

    GL_GPU_MEMORY_INFO_CURRENT_AVAILABLE_VIDMEM_NVX => 0x9049,

#=head2 GL_GPU_MEMORY_INFO_DEDICATED_VIDMEM_NVX
#
#=cut

    GL_GPU_MEMORY_INFO_DEDICATED_VIDMEM_NVX => 0x9047,

#=head2 GL_GPU_MEMORY_INFO_EVICTED_MEMORY_NVX
#
#=cut

    GL_GPU_MEMORY_INFO_EVICTED_MEMORY_NVX => 0x904B,

#=head2 GL_GPU_MEMORY_INFO_EVICTION_COUNT_NVX
#
#=cut

    GL_GPU_MEMORY_INFO_EVICTION_COUNT_NVX => 0x904A,

#=head2 GL_GPU_MEMORY_INFO_TOTAL_AVAILABLE_MEMORY_NVX
#
#=cut

    GL_GPU_MEMORY_INFO_TOTAL_AVAILABLE_MEMORY_NVX => 0x9048,

#=head2 GL_GREATER
#
#=cut

    GL_GREATER => 0x0204,

#=head2 GL_GREEN
#
#=cut

    GL_GREEN => 0x1904,

#=head2 GL_GREEN_BIAS
#
#=cut

    GL_GREEN_BIAS => 0x0D19,

#=head2 GL_GREEN_BITS
#
#=cut

    GL_GREEN_BITS => 0x0D53,

#=head2 GL_GREEN_BIT_ATI
#
#=cut

    GL_GREEN_BIT_ATI => 0x00000002,

#=head2 GL_GREEN_INTEGER
#
#=cut

    GL_GREEN_INTEGER => 0x8D95,

#=head2 GL_GREEN_INTEGER_EXT
#
#=cut

    GL_GREEN_INTEGER_EXT => 0x8D95,

#=head2 GL_GREEN_MAX_CLAMP_INGR
#
#=cut

    GL_GREEN_MAX_CLAMP_INGR => 0x8565,

#=head2 GL_GREEN_MIN_CLAMP_INGR
#
#=cut

    GL_GREEN_MIN_CLAMP_INGR => 0x8561,

#=head2 GL_GREEN_NV
#
#=cut

    GL_GREEN_NV => 0x1904,

#=head2 GL_GREEN_SCALE
#
#=cut

    GL_GREEN_SCALE => 0x0D18,

#=head2 GL_GREMEDY_frame_terminator
#
#=cut

    GL_GREMEDY_frame_terminator => 1,

#=head2 GL_GREMEDY_string_marker
#
#=cut

    GL_GREMEDY_string_marker => 1,

#=head2 GL_GUILTY_CONTEXT_RESET
#
#=cut

    GL_GUILTY_CONTEXT_RESET => 0x8253,

#=head2 GL_GUILTY_CONTEXT_RESET_ARB
#
#=cut

    GL_GUILTY_CONTEXT_RESET_ARB => 0x8253,

#=head2 GL_HALF_APPLE
#
#=cut

    GL_HALF_APPLE => 0x140B,

#=head2 GL_HALF_BIAS_NEGATE_NV
#
#=cut

    GL_HALF_BIAS_NEGATE_NV => 0x853B,

#=head2 GL_HALF_BIAS_NORMAL_NV
#
#=cut

    GL_HALF_BIAS_NORMAL_NV => 0x853A,

#=head2 GL_HALF_BIT_ATI
#
#=cut

    GL_HALF_BIT_ATI => 0x00000008,

#=head2 GL_HALF_FLOAT
#
#=cut

    GL_HALF_FLOAT => 0x140B,

#=head2 GL_HALF_FLOAT_ARB
#
#=cut

    GL_HALF_FLOAT_ARB => 0x140B,

#=head2 GL_HALF_FLOAT_NV
#
#=cut

    GL_HALF_FLOAT_NV => 0x140B,

#=head2 GL_HARDLIGHT_KHR
#
#=cut

    GL_HARDLIGHT_KHR => 0x929B,

#=head2 GL_HARDLIGHT_NV
#
#=cut

    GL_HARDLIGHT_NV => 0x929B,

#=head2 GL_HARDMIX_NV
#
#=cut

    GL_HARDMIX_NV => 0x92A9,

#=head2 GL_HIGH_FLOAT
#
#=cut

    GL_HIGH_FLOAT => 0x8DF2,

#=head2 GL_HIGH_INT
#
#=cut

    GL_HIGH_INT => 0x8DF5,

#=head2 GL_HILO16_NV
#
#=cut

    GL_HILO16_NV => 0x86F8,

#=head2 GL_HILO8_NV
#
#=cut

    GL_HILO8_NV => 0x885E,

#=head2 GL_HILO_NV
#
#=cut

    GL_HILO_NV => 0x86F4,

#=head2 GL_HINT_BIT
#
#=cut

    GL_HINT_BIT => 0x00008000,

#=head2 GL_HISTOGRAM
#
#=cut

    GL_HISTOGRAM => 0x8024,

#=head2 GL_HISTOGRAM_ALPHA_SIZE
#
#=cut

    GL_HISTOGRAM_ALPHA_SIZE => 0x802B,

#=head2 GL_HISTOGRAM_ALPHA_SIZE_EXT
#
#=cut

    GL_HISTOGRAM_ALPHA_SIZE_EXT => 0x802B,

#=head2 GL_HISTOGRAM_BLUE_SIZE
#
#=cut

    GL_HISTOGRAM_BLUE_SIZE => 0x802A,

#=head2 GL_HISTOGRAM_BLUE_SIZE_EXT
#
#=cut

    GL_HISTOGRAM_BLUE_SIZE_EXT => 0x802A,

#=head2 GL_HISTOGRAM_EXT
#
#=cut

    GL_HISTOGRAM_EXT => 0x8024,

#=head2 GL_HISTOGRAM_FORMAT
#
#=cut

    GL_HISTOGRAM_FORMAT => 0x8027,

#=head2 GL_HISTOGRAM_FORMAT_EXT
#
#=cut

    GL_HISTOGRAM_FORMAT_EXT => 0x8027,

#=head2 GL_HISTOGRAM_GREEN_SIZE
#
#=cut

    GL_HISTOGRAM_GREEN_SIZE => 0x8029,

#=head2 GL_HISTOGRAM_GREEN_SIZE_EXT
#
#=cut

    GL_HISTOGRAM_GREEN_SIZE_EXT => 0x8029,

#=head2 GL_HISTOGRAM_LUMINANCE_SIZE
#
#=cut

    GL_HISTOGRAM_LUMINANCE_SIZE => 0x802C,

#=head2 GL_HISTOGRAM_LUMINANCE_SIZE_EXT
#
#=cut

    GL_HISTOGRAM_LUMINANCE_SIZE_EXT => 0x802C,

#=head2 GL_HISTOGRAM_RED_SIZE
#
#=cut

    GL_HISTOGRAM_RED_SIZE => 0x8028,

#=head2 GL_HISTOGRAM_RED_SIZE_EXT
#
#=cut

    GL_HISTOGRAM_RED_SIZE_EXT => 0x8028,

#=head2 GL_HISTOGRAM_SINK
#
#=cut

    GL_HISTOGRAM_SINK => 0x802D,

#=head2 GL_HISTOGRAM_SINK_EXT
#
#=cut

    GL_HISTOGRAM_SINK_EXT => 0x802D,

#=head2 GL_HISTOGRAM_WIDTH
#
#=cut

    GL_HISTOGRAM_WIDTH => 0x8026,

#=head2 GL_HISTOGRAM_WIDTH_EXT
#
#=cut

    GL_HISTOGRAM_WIDTH_EXT => 0x8026,

#=head2 GL_HI_BIAS_NV
#
#=cut

    GL_HI_BIAS_NV => 0x8714,

#=head2 GL_HI_SCALE_NV
#
#=cut

    GL_HI_SCALE_NV => 0x870E,

#=head2 GL_HORIZONTAL_LINE_TO_NV
#
#=cut

    GL_HORIZONTAL_LINE_TO_NV => 0x06,

#=head2 GL_HP_convolution_border_modes
#
#=cut

    GL_HP_convolution_border_modes => 1,

#=head2 GL_HP_image_transform
#
#=cut

    GL_HP_image_transform => 1,

#=head2 GL_HP_occlusion_test
#
#=cut

    GL_HP_occlusion_test => 1,

#=head2 GL_HP_texture_lighting
#
#=cut

    GL_HP_texture_lighting => 1,

#=head2 GL_HSL_COLOR_KHR
#
#=cut

    GL_HSL_COLOR_KHR => 0x92AF,

#=head2 GL_HSL_COLOR_NV
#
#=cut

    GL_HSL_COLOR_NV => 0x92AF,

#=head2 GL_HSL_HUE_KHR
#
#=cut

    GL_HSL_HUE_KHR => 0x92AD,

#=head2 GL_HSL_HUE_NV
#
#=cut

    GL_HSL_HUE_NV => 0x92AD,

#=head2 GL_HSL_LUMINOSITY_KHR
#
#=cut

    GL_HSL_LUMINOSITY_KHR => 0x92B0,

#=head2 GL_HSL_LUMINOSITY_NV
#
#=cut

    GL_HSL_LUMINOSITY_NV => 0x92B0,

#=head2 GL_HSL_SATURATION_KHR
#
#=cut

    GL_HSL_SATURATION_KHR => 0x92AE,

#=head2 GL_HSL_SATURATION_NV
#
#=cut

    GL_HSL_SATURATION_NV => 0x92AE,

#=head2 GL_IBM_cull_vertex
#
#=cut

    GL_IBM_cull_vertex => 1,

#=head2 GL_IBM_multimode_draw_arrays
#
#=cut

    GL_IBM_multimode_draw_arrays => 1,

#=head2 GL_IBM_rasterpos_clip
#
#=cut

    GL_IBM_rasterpos_clip => 1,

#=head2 GL_IBM_static_data
#
#=cut

    GL_IBM_static_data => 1,

#=head2 GL_IBM_texture_mirrored_repeat
#
#=cut

    GL_IBM_texture_mirrored_repeat => 1,

#=head2 GL_IBM_vertex_array_lists
#
#=cut

    GL_IBM_vertex_array_lists => 1,

#=head2 GL_IDENTITY_NV
#
#=cut

    GL_IDENTITY_NV => 0x862A,

#=head2 GL_IGNORE_BORDER_HP
#
#=cut

    GL_IGNORE_BORDER_HP => 0x8150,

#=head2 GL_IMAGE_1D
#
#=cut

    GL_IMAGE_1D => 0x904C,

#=head2 GL_IMAGE_1D_ARRAY
#
#=cut

    GL_IMAGE_1D_ARRAY => 0x9052,

#=head2 GL_IMAGE_1D_ARRAY_EXT
#
#=cut

    GL_IMAGE_1D_ARRAY_EXT => 0x9052,

#=head2 GL_IMAGE_1D_EXT
#
#=cut

    GL_IMAGE_1D_EXT => 0x904C,

#=head2 GL_IMAGE_2D
#
#=cut

    GL_IMAGE_2D => 0x904D,

#=head2 GL_IMAGE_2D_ARRAY
#
#=cut

    GL_IMAGE_2D_ARRAY => 0x9053,

#=head2 GL_IMAGE_2D_ARRAY_EXT
#
#=cut

    GL_IMAGE_2D_ARRAY_EXT => 0x9053,

#=head2 GL_IMAGE_2D_EXT
#
#=cut

    GL_IMAGE_2D_EXT => 0x904D,

#=head2 GL_IMAGE_2D_MULTISAMPLE
#
#=cut

    GL_IMAGE_2D_MULTISAMPLE => 0x9055,

#=head2 GL_IMAGE_2D_MULTISAMPLE_ARRAY
#
#=cut

    GL_IMAGE_2D_MULTISAMPLE_ARRAY => 0x9056,

#=head2 GL_IMAGE_2D_MULTISAMPLE_ARRAY_EXT
#
#=cut

    GL_IMAGE_2D_MULTISAMPLE_ARRAY_EXT => 0x9056,

#=head2 GL_IMAGE_2D_MULTISAMPLE_EXT
#
#=cut

    GL_IMAGE_2D_MULTISAMPLE_EXT => 0x9055,

#=head2 GL_IMAGE_2D_RECT
#
#=cut

    GL_IMAGE_2D_RECT => 0x904F,

#=head2 GL_IMAGE_2D_RECT_EXT
#
#=cut

    GL_IMAGE_2D_RECT_EXT => 0x904F,

#=head2 GL_IMAGE_3D
#
#=cut

    GL_IMAGE_3D => 0x904E,

#=head2 GL_IMAGE_3D_EXT
#
#=cut

    GL_IMAGE_3D_EXT => 0x904E,

#=head2 GL_IMAGE_BINDING_ACCESS
#
#=cut

    GL_IMAGE_BINDING_ACCESS => 0x8F3E,

#=head2 GL_IMAGE_BINDING_ACCESS_EXT
#
#=cut

    GL_IMAGE_BINDING_ACCESS_EXT => 0x8F3E,

#=head2 GL_IMAGE_BINDING_FORMAT
#
#=cut

    GL_IMAGE_BINDING_FORMAT => 0x906E,

#=head2 GL_IMAGE_BINDING_FORMAT_EXT
#
#=cut

    GL_IMAGE_BINDING_FORMAT_EXT => 0x906E,

#=head2 GL_IMAGE_BINDING_LAYER
#
#=cut

    GL_IMAGE_BINDING_LAYER => 0x8F3D,

#=head2 GL_IMAGE_BINDING_LAYERED
#
#=cut

    GL_IMAGE_BINDING_LAYERED => 0x8F3C,

#=head2 GL_IMAGE_BINDING_LAYERED_EXT
#
#=cut

    GL_IMAGE_BINDING_LAYERED_EXT => 0x8F3C,

#=head2 GL_IMAGE_BINDING_LAYER_EXT
#
#=cut

    GL_IMAGE_BINDING_LAYER_EXT => 0x8F3D,

#=head2 GL_IMAGE_BINDING_LEVEL
#
#=cut

    GL_IMAGE_BINDING_LEVEL => 0x8F3B,

#=head2 GL_IMAGE_BINDING_LEVEL_EXT
#
#=cut

    GL_IMAGE_BINDING_LEVEL_EXT => 0x8F3B,

#=head2 GL_IMAGE_BINDING_NAME
#
#=cut

    GL_IMAGE_BINDING_NAME => 0x8F3A,

#=head2 GL_IMAGE_BINDING_NAME_EXT
#
#=cut

    GL_IMAGE_BINDING_NAME_EXT => 0x8F3A,

#=head2 GL_IMAGE_BUFFER
#
#=cut

    GL_IMAGE_BUFFER => 0x9051,

#=head2 GL_IMAGE_BUFFER_EXT
#
#=cut

    GL_IMAGE_BUFFER_EXT => 0x9051,

#=head2 GL_IMAGE_CLASS_10_10_10_2
#
#=cut

    GL_IMAGE_CLASS_10_10_10_2 => 0x82C3,

#=head2 GL_IMAGE_CLASS_11_11_10
#
#=cut

    GL_IMAGE_CLASS_11_11_10 => 0x82C2,

#=head2 GL_IMAGE_CLASS_1_X_16
#
#=cut

    GL_IMAGE_CLASS_1_X_16 => 0x82BE,

#=head2 GL_IMAGE_CLASS_1_X_32
#
#=cut

    GL_IMAGE_CLASS_1_X_32 => 0x82BB,

#=head2 GL_IMAGE_CLASS_1_X_8
#
#=cut

    GL_IMAGE_CLASS_1_X_8 => 0x82C1,

#=head2 GL_IMAGE_CLASS_2_X_16
#
#=cut

    GL_IMAGE_CLASS_2_X_16 => 0x82BD,

#=head2 GL_IMAGE_CLASS_2_X_32
#
#=cut

    GL_IMAGE_CLASS_2_X_32 => 0x82BA,

#=head2 GL_IMAGE_CLASS_2_X_8
#
#=cut

    GL_IMAGE_CLASS_2_X_8 => 0x82C0,

#=head2 GL_IMAGE_CLASS_4_X_16
#
#=cut

    GL_IMAGE_CLASS_4_X_16 => 0x82BC,

#=head2 GL_IMAGE_CLASS_4_X_32
#
#=cut

    GL_IMAGE_CLASS_4_X_32 => 0x82B9,

#=head2 GL_IMAGE_CLASS_4_X_8
#
#=cut

    GL_IMAGE_CLASS_4_X_8 => 0x82BF,

#=head2 GL_IMAGE_COMPATIBILITY_CLASS
#
#=cut

    GL_IMAGE_COMPATIBILITY_CLASS => 0x82A8,

#=head2 GL_IMAGE_CUBE
#
#=cut

    GL_IMAGE_CUBE => 0x9050,

#=head2 GL_IMAGE_CUBE_EXT
#
#=cut

    GL_IMAGE_CUBE_EXT => 0x9050,

#=head2 GL_IMAGE_CUBE_MAP_ARRAY
#
#=cut

    GL_IMAGE_CUBE_MAP_ARRAY => 0x9054,

#=head2 GL_IMAGE_CUBE_MAP_ARRAY_EXT
#
#=cut

    GL_IMAGE_CUBE_MAP_ARRAY_EXT => 0x9054,

#=head2 GL_IMAGE_CUBIC_WEIGHT_HP
#
#=cut

    GL_IMAGE_CUBIC_WEIGHT_HP => 0x815E,

#=head2 GL_IMAGE_FORMAT_COMPATIBILITY_BY_CLASS
#
#=cut

    GL_IMAGE_FORMAT_COMPATIBILITY_BY_CLASS => 0x90C9,

#=head2 GL_IMAGE_FORMAT_COMPATIBILITY_BY_SIZE
#
#=cut

    GL_IMAGE_FORMAT_COMPATIBILITY_BY_SIZE => 0x90C8,

#=head2 GL_IMAGE_FORMAT_COMPATIBILITY_TYPE
#
#=cut

    GL_IMAGE_FORMAT_COMPATIBILITY_TYPE => 0x90C7,

#=head2 GL_IMAGE_MAG_FILTER_HP
#
#=cut

    GL_IMAGE_MAG_FILTER_HP => 0x815C,

#=head2 GL_IMAGE_MIN_FILTER_HP
#
#=cut

    GL_IMAGE_MIN_FILTER_HP => 0x815D,

#=head2 GL_IMAGE_PIXEL_FORMAT
#
#=cut

    GL_IMAGE_PIXEL_FORMAT => 0x82A9,

#=head2 GL_IMAGE_PIXEL_TYPE
#
#=cut

    GL_IMAGE_PIXEL_TYPE => 0x82AA,

#=head2 GL_IMAGE_ROTATE_ANGLE_HP
#
#=cut

    GL_IMAGE_ROTATE_ANGLE_HP => 0x8159,

#=head2 GL_IMAGE_ROTATE_ORIGIN_X_HP
#
#=cut

    GL_IMAGE_ROTATE_ORIGIN_X_HP => 0x815A,

#=head2 GL_IMAGE_ROTATE_ORIGIN_Y_HP
#
#=cut

    GL_IMAGE_ROTATE_ORIGIN_Y_HP => 0x815B,

#=head2 GL_IMAGE_SCALE_X_HP
#
#=cut

    GL_IMAGE_SCALE_X_HP => 0x8155,

#=head2 GL_IMAGE_SCALE_Y_HP
#
#=cut

    GL_IMAGE_SCALE_Y_HP => 0x8156,

#=head2 GL_IMAGE_TEXEL_SIZE
#
#=cut

    GL_IMAGE_TEXEL_SIZE => 0x82A7,

#=head2 GL_IMAGE_TRANSFORM_2D_HP
#
#=cut

    GL_IMAGE_TRANSFORM_2D_HP => 0x8161,

#=head2 GL_IMAGE_TRANSLATE_X_HP
#
#=cut

    GL_IMAGE_TRANSLATE_X_HP => 0x8157,

#=head2 GL_IMAGE_TRANSLATE_Y_HP
#
#=cut

    GL_IMAGE_TRANSLATE_Y_HP => 0x8158,

#=head2 GL_IMPLEMENTATION_COLOR_READ_FORMAT
#
#=cut

    GL_IMPLEMENTATION_COLOR_READ_FORMAT => 0x8B9B,

#=head2 GL_IMPLEMENTATION_COLOR_READ_FORMAT_OES
#
#=cut

    GL_IMPLEMENTATION_COLOR_READ_FORMAT_OES => 0x8B9B,

#=head2 GL_IMPLEMENTATION_COLOR_READ_TYPE
#
#=cut

    GL_IMPLEMENTATION_COLOR_READ_TYPE => 0x8B9A,

#=head2 GL_IMPLEMENTATION_COLOR_READ_TYPE_OES
#
#=cut

    GL_IMPLEMENTATION_COLOR_READ_TYPE_OES => 0x8B9A,

#=head2 GL_INCR
#
#=cut

    GL_INCR => 0x1E02,

#=head2 GL_INCR_WRAP
#
#=cut

    GL_INCR_WRAP => 0x8507,

#=head2 GL_INCR_WRAP_EXT
#
#=cut

    GL_INCR_WRAP_EXT => 0x8507,

#=head2 GL_INDEX
#
#=cut

    GL_INDEX => 0x8222,

#=head2 GL_INDEX_ARRAY
#
#=cut

    GL_INDEX_ARRAY => 0x8077,

#=head2 GL_INDEX_ARRAY_ADDRESS_NV
#
#=cut

    GL_INDEX_ARRAY_ADDRESS_NV => 0x8F24,

#=head2 GL_INDEX_ARRAY_BUFFER_BINDING
#
#=cut

    GL_INDEX_ARRAY_BUFFER_BINDING => 0x8899,

#=head2 GL_INDEX_ARRAY_BUFFER_BINDING_ARB
#
#=cut

    GL_INDEX_ARRAY_BUFFER_BINDING_ARB => 0x8899,

#=head2 GL_INDEX_ARRAY_COUNT_EXT
#
#=cut

    GL_INDEX_ARRAY_COUNT_EXT => 0x8087,

#=head2 GL_INDEX_ARRAY_EXT
#
#=cut

    GL_INDEX_ARRAY_EXT => 0x8077,

#=head2 GL_INDEX_ARRAY_LENGTH_NV
#
#=cut

    GL_INDEX_ARRAY_LENGTH_NV => 0x8F2E,

#=head2 GL_INDEX_ARRAY_LIST_IBM
#
#=cut

    GL_INDEX_ARRAY_LIST_IBM => 103073,

#=head2 GL_INDEX_ARRAY_LIST_STRIDE_IBM
#
#=cut

    GL_INDEX_ARRAY_LIST_STRIDE_IBM => 103083,

#=head2 GL_INDEX_ARRAY_POINTER
#
#=cut

    GL_INDEX_ARRAY_POINTER => 0x8091,

#=head2 GL_INDEX_ARRAY_POINTER_EXT
#
#=cut

    GL_INDEX_ARRAY_POINTER_EXT => 0x8091,

#=head2 GL_INDEX_ARRAY_STRIDE
#
#=cut

    GL_INDEX_ARRAY_STRIDE => 0x8086,

#=head2 GL_INDEX_ARRAY_STRIDE_EXT
#
#=cut

    GL_INDEX_ARRAY_STRIDE_EXT => 0x8086,

#=head2 GL_INDEX_ARRAY_TYPE
#
#=cut

    GL_INDEX_ARRAY_TYPE => 0x8085,

#=head2 GL_INDEX_ARRAY_TYPE_EXT
#
#=cut

    GL_INDEX_ARRAY_TYPE_EXT => 0x8085,

#=head2 GL_INDEX_BITS
#
#=cut

    GL_INDEX_BITS => 0x0D51,

#=head2 GL_INDEX_BIT_PGI
#
#=cut

    GL_INDEX_BIT_PGI => 0x00080000,

#=head2 GL_INDEX_CLEAR_VALUE
#
#=cut

    GL_INDEX_CLEAR_VALUE => 0x0C20,

#=head2 GL_INDEX_LOGIC_OP
#
#=cut

    GL_INDEX_LOGIC_OP => 0x0BF1,

#=head2 GL_INDEX_MATERIAL_EXT
#
#=cut

    GL_INDEX_MATERIAL_EXT => 0x81B8,

#=head2 GL_INDEX_MATERIAL_FACE_EXT
#
#=cut

    GL_INDEX_MATERIAL_FACE_EXT => 0x81BA,

#=head2 GL_INDEX_MATERIAL_PARAMETER_EXT
#
#=cut

    GL_INDEX_MATERIAL_PARAMETER_EXT => 0x81B9,

#=head2 GL_INDEX_MODE
#
#=cut

    GL_INDEX_MODE => 0x0C30,

#=head2 GL_INDEX_OFFSET
#
#=cut

    GL_INDEX_OFFSET => 0x0D13,

#=head2 GL_INDEX_SHIFT
#
#=cut

    GL_INDEX_SHIFT => 0x0D12,

#=head2 GL_INDEX_TEST_EXT
#
#=cut

    GL_INDEX_TEST_EXT => 0x81B5,

#=head2 GL_INDEX_TEST_FUNC_EXT
#
#=cut

    GL_INDEX_TEST_FUNC_EXT => 0x81B6,

#=head2 GL_INDEX_TEST_REF_EXT
#
#=cut

    GL_INDEX_TEST_REF_EXT => 0x81B7,

#=head2 GL_INDEX_WRITEMASK
#
#=cut

    GL_INDEX_WRITEMASK => 0x0C21,

#=head2 GL_INFO_LOG_LENGTH
#
#=cut

    GL_INFO_LOG_LENGTH => 0x8B84,

#=head2 GL_INGR_blend_func_separate
#
#=cut

    GL_INGR_blend_func_separate => 1,

#=head2 GL_INGR_color_clamp
#
#=cut

    GL_INGR_color_clamp => 1,

#=head2 GL_INGR_interlace_read
#
#=cut

    GL_INGR_interlace_read => 1,

#=head2 GL_INNOCENT_CONTEXT_RESET
#
#=cut

    GL_INNOCENT_CONTEXT_RESET => 0x8254,

#=head2 GL_INNOCENT_CONTEXT_RESET_ARB
#
#=cut

    GL_INNOCENT_CONTEXT_RESET_ARB => 0x8254,

#=head2 GL_INSTRUMENT_BUFFER_POINTER_SGIX
#
#=cut

    GL_INSTRUMENT_BUFFER_POINTER_SGIX => 0x8180,

#=head2 GL_INSTRUMENT_MEASUREMENTS_SGIX
#
#=cut

    GL_INSTRUMENT_MEASUREMENTS_SGIX => 0x8181,

#=head2 GL_INT
#
#=cut

    GL_INT => 0x1404,

#=head2 GL_INT16_NV
#
#=cut

    GL_INT16_NV => 0x8FE4,

#=head2 GL_INT16_VEC2_NV
#
#=cut

    GL_INT16_VEC2_NV => 0x8FE5,

#=head2 GL_INT16_VEC3_NV
#
#=cut

    GL_INT16_VEC3_NV => 0x8FE6,

#=head2 GL_INT16_VEC4_NV
#
#=cut

    GL_INT16_VEC4_NV => 0x8FE7,

#=head2 GL_INT64_NV
#
#=cut

    GL_INT64_NV => 0x140E,

#=head2 GL_INT64_VEC2_NV
#
#=cut

    GL_INT64_VEC2_NV => 0x8FE9,

#=head2 GL_INT64_VEC3_NV
#
#=cut

    GL_INT64_VEC3_NV => 0x8FEA,

#=head2 GL_INT64_VEC4_NV
#
#=cut

    GL_INT64_VEC4_NV => 0x8FEB,

#=head2 GL_INT8_NV
#
#=cut

    GL_INT8_NV => 0x8FE0,

#=head2 GL_INT8_VEC2_NV
#
#=cut

    GL_INT8_VEC2_NV => 0x8FE1,

#=head2 GL_INT8_VEC3_NV
#
#=cut

    GL_INT8_VEC3_NV => 0x8FE2,

#=head2 GL_INT8_VEC4_NV
#
#=cut

    GL_INT8_VEC4_NV => 0x8FE3,

#=head2 GL_INTEL_fragment_shader_ordering
#
#=cut

    GL_INTEL_fragment_shader_ordering => 1,

#=head2 GL_INTEL_map_texture
#
#=cut

    GL_INTEL_map_texture => 1,

#=head2 GL_INTEL_parallel_arrays
#
#=cut

    GL_INTEL_parallel_arrays => 1,

#=head2 GL_INTEL_performance_query
#
#=cut

    GL_INTEL_performance_query => 1,

#=head2 GL_INTENSITY
#
#=cut

    GL_INTENSITY => 0x8049,

#=head2 GL_INTENSITY12
#
#=cut

    GL_INTENSITY12 => 0x804C,

#=head2 GL_INTENSITY12_EXT
#
#=cut

    GL_INTENSITY12_EXT => 0x804C,

#=head2 GL_INTENSITY16
#
#=cut

    GL_INTENSITY16 => 0x804D,

#=head2 GL_INTENSITY16F_ARB
#
#=cut

    GL_INTENSITY16F_ARB => 0x881D,

#=head2 GL_INTENSITY16I_EXT
#
#=cut

    GL_INTENSITY16I_EXT => 0x8D8B,

#=head2 GL_INTENSITY16UI_EXT
#
#=cut

    GL_INTENSITY16UI_EXT => 0x8D79,

#=head2 GL_INTENSITY16_EXT
#
#=cut

    GL_INTENSITY16_EXT => 0x804D,

#=head2 GL_INTENSITY16_SNORM
#
#=cut

    GL_INTENSITY16_SNORM => 0x901B,

#=head2 GL_INTENSITY32F_ARB
#
#=cut

    GL_INTENSITY32F_ARB => 0x8817,

#=head2 GL_INTENSITY32I_EXT
#
#=cut

    GL_INTENSITY32I_EXT => 0x8D85,

#=head2 GL_INTENSITY32UI_EXT
#
#=cut

    GL_INTENSITY32UI_EXT => 0x8D73,

#=head2 GL_INTENSITY4
#
#=cut

    GL_INTENSITY4 => 0x804A,

#=head2 GL_INTENSITY4_EXT
#
#=cut

    GL_INTENSITY4_EXT => 0x804A,

#=head2 GL_INTENSITY8
#
#=cut

    GL_INTENSITY8 => 0x804B,

#=head2 GL_INTENSITY8I_EXT
#
#=cut

    GL_INTENSITY8I_EXT => 0x8D91,

#=head2 GL_INTENSITY8UI_EXT
#
#=cut

    GL_INTENSITY8UI_EXT => 0x8D7F,

#=head2 GL_INTENSITY8_EXT
#
#=cut

    GL_INTENSITY8_EXT => 0x804B,

#=head2 GL_INTENSITY8_SNORM
#
#=cut

    GL_INTENSITY8_SNORM => 0x9017,

#=head2 GL_INTENSITY_EXT
#
#=cut

    GL_INTENSITY_EXT => 0x8049,

#=head2 GL_INTENSITY_FLOAT16_APPLE
#
#=cut

    GL_INTENSITY_FLOAT16_APPLE => 0x881D,

#=head2 GL_INTENSITY_FLOAT16_ATI
#
#=cut

    GL_INTENSITY_FLOAT16_ATI => 0x881D,

#=head2 GL_INTENSITY_FLOAT32_APPLE
#
#=cut

    GL_INTENSITY_FLOAT32_APPLE => 0x8817,

#=head2 GL_INTENSITY_FLOAT32_ATI
#
#=cut

    GL_INTENSITY_FLOAT32_ATI => 0x8817,

#=head2 GL_INTENSITY_SNORM
#
#=cut

    GL_INTENSITY_SNORM => 0x9013,

#=head2 GL_INTERLACE_OML
#
#=cut

    GL_INTERLACE_OML => 0x8980,

#=head2 GL_INTERLACE_READ_INGR
#
#=cut

    GL_INTERLACE_READ_INGR => 0x8568,

#=head2 GL_INTERLACE_READ_OML
#
#=cut

    GL_INTERLACE_READ_OML => 0x8981,

#=head2 GL_INTERLACE_SGIX
#
#=cut

    GL_INTERLACE_SGIX => 0x8094,

#=head2 GL_INTERLEAVED_ATTRIBS
#
#=cut

    GL_INTERLEAVED_ATTRIBS => 0x8C8C,

#=head2 GL_INTERLEAVED_ATTRIBS_EXT
#
#=cut

    GL_INTERLEAVED_ATTRIBS_EXT => 0x8C8C,

#=head2 GL_INTERLEAVED_ATTRIBS_NV
#
#=cut

    GL_INTERLEAVED_ATTRIBS_NV => 0x8C8C,

#=head2 GL_INTERNALFORMAT_ALPHA_SIZE
#
#=cut

    GL_INTERNALFORMAT_ALPHA_SIZE => 0x8274,

#=head2 GL_INTERNALFORMAT_ALPHA_TYPE
#
#=cut

    GL_INTERNALFORMAT_ALPHA_TYPE => 0x827B,

#=head2 GL_INTERNALFORMAT_BLUE_SIZE
#
#=cut

    GL_INTERNALFORMAT_BLUE_SIZE => 0x8273,

#=head2 GL_INTERNALFORMAT_BLUE_TYPE
#
#=cut

    GL_INTERNALFORMAT_BLUE_TYPE => 0x827A,

#=head2 GL_INTERNALFORMAT_DEPTH_SIZE
#
#=cut

    GL_INTERNALFORMAT_DEPTH_SIZE => 0x8275,

#=head2 GL_INTERNALFORMAT_DEPTH_TYPE
#
#=cut

    GL_INTERNALFORMAT_DEPTH_TYPE => 0x827C,

#=head2 GL_INTERNALFORMAT_GREEN_SIZE
#
#=cut

    GL_INTERNALFORMAT_GREEN_SIZE => 0x8272,

#=head2 GL_INTERNALFORMAT_GREEN_TYPE
#
#=cut

    GL_INTERNALFORMAT_GREEN_TYPE => 0x8279,

#=head2 GL_INTERNALFORMAT_PREFERRED
#
#=cut

    GL_INTERNALFORMAT_PREFERRED => 0x8270,

#=head2 GL_INTERNALFORMAT_RED_SIZE
#
#=cut

    GL_INTERNALFORMAT_RED_SIZE => 0x8271,

#=head2 GL_INTERNALFORMAT_RED_TYPE
#
#=cut

    GL_INTERNALFORMAT_RED_TYPE => 0x8278,

#=head2 GL_INTERNALFORMAT_SHARED_SIZE
#
#=cut

    GL_INTERNALFORMAT_SHARED_SIZE => 0x8277,

#=head2 GL_INTERNALFORMAT_STENCIL_SIZE
#
#=cut

    GL_INTERNALFORMAT_STENCIL_SIZE => 0x8276,

#=head2 GL_INTERNALFORMAT_STENCIL_TYPE
#
#=cut

    GL_INTERNALFORMAT_STENCIL_TYPE => 0x827D,

#=head2 GL_INTERNALFORMAT_SUPPORTED
#
#=cut

    GL_INTERNALFORMAT_SUPPORTED => 0x826F,

#=head2 GL_INTERPOLATE
#
#=cut

    GL_INTERPOLATE => 0x8575,

#=head2 GL_INTERPOLATE_ARB
#
#=cut

    GL_INTERPOLATE_ARB => 0x8575,

#=head2 GL_INTERPOLATE_EXT
#
#=cut

    GL_INTERPOLATE_EXT => 0x8575,

#=head2 GL_INT_2_10_10_10_REV
#
#=cut

    GL_INT_2_10_10_10_REV => 0x8D9F,

#=head2 GL_INT_IMAGE_1D
#
#=cut

    GL_INT_IMAGE_1D => 0x9057,

#=head2 GL_INT_IMAGE_1D_ARRAY
#
#=cut

    GL_INT_IMAGE_1D_ARRAY => 0x905D,

#=head2 GL_INT_IMAGE_1D_ARRAY_EXT
#
#=cut

    GL_INT_IMAGE_1D_ARRAY_EXT => 0x905D,

#=head2 GL_INT_IMAGE_1D_EXT
#
#=cut

    GL_INT_IMAGE_1D_EXT => 0x9057,

#=head2 GL_INT_IMAGE_2D
#
#=cut

    GL_INT_IMAGE_2D => 0x9058,

#=head2 GL_INT_IMAGE_2D_ARRAY
#
#=cut

    GL_INT_IMAGE_2D_ARRAY => 0x905E,

#=head2 GL_INT_IMAGE_2D_ARRAY_EXT
#
#=cut

    GL_INT_IMAGE_2D_ARRAY_EXT => 0x905E,

#=head2 GL_INT_IMAGE_2D_EXT
#
#=cut

    GL_INT_IMAGE_2D_EXT => 0x9058,

#=head2 GL_INT_IMAGE_2D_MULTISAMPLE
#
#=cut

    GL_INT_IMAGE_2D_MULTISAMPLE => 0x9060,

#=head2 GL_INT_IMAGE_2D_MULTISAMPLE_ARRAY
#
#=cut

    GL_INT_IMAGE_2D_MULTISAMPLE_ARRAY => 0x9061,

#=head2 GL_INT_IMAGE_2D_MULTISAMPLE_ARRAY_EXT
#
#=cut

    GL_INT_IMAGE_2D_MULTISAMPLE_ARRAY_EXT => 0x9061,

#=head2 GL_INT_IMAGE_2D_MULTISAMPLE_EXT
#
#=cut

    GL_INT_IMAGE_2D_MULTISAMPLE_EXT => 0x9060,

#=head2 GL_INT_IMAGE_2D_RECT
#
#=cut

    GL_INT_IMAGE_2D_RECT => 0x905A,

#=head2 GL_INT_IMAGE_2D_RECT_EXT
#
#=cut

    GL_INT_IMAGE_2D_RECT_EXT => 0x905A,

#=head2 GL_INT_IMAGE_3D
#
#=cut

    GL_INT_IMAGE_3D => 0x9059,

#=head2 GL_INT_IMAGE_3D_EXT
#
#=cut

    GL_INT_IMAGE_3D_EXT => 0x9059,

#=head2 GL_INT_IMAGE_BUFFER
#
#=cut

    GL_INT_IMAGE_BUFFER => 0x905C,

#=head2 GL_INT_IMAGE_BUFFER_EXT
#
#=cut

    GL_INT_IMAGE_BUFFER_EXT => 0x905C,

#=head2 GL_INT_IMAGE_CUBE
#
#=cut

    GL_INT_IMAGE_CUBE => 0x905B,

#=head2 GL_INT_IMAGE_CUBE_EXT
#
#=cut

    GL_INT_IMAGE_CUBE_EXT => 0x905B,

#=head2 GL_INT_IMAGE_CUBE_MAP_ARRAY
#
#=cut

    GL_INT_IMAGE_CUBE_MAP_ARRAY => 0x905F,

#=head2 GL_INT_IMAGE_CUBE_MAP_ARRAY_EXT
#
#=cut

    GL_INT_IMAGE_CUBE_MAP_ARRAY_EXT => 0x905F,

#=head2 GL_INT_SAMPLER_1D
#
#=cut

    GL_INT_SAMPLER_1D => 0x8DC9,

#=head2 GL_INT_SAMPLER_1D_ARRAY
#
#=cut

    GL_INT_SAMPLER_1D_ARRAY => 0x8DCE,

#=head2 GL_INT_SAMPLER_1D_ARRAY_EXT
#
#=cut

    GL_INT_SAMPLER_1D_ARRAY_EXT => 0x8DCE,

#=head2 GL_INT_SAMPLER_1D_EXT
#
#=cut

    GL_INT_SAMPLER_1D_EXT => 0x8DC9,

#=head2 GL_INT_SAMPLER_2D
#
#=cut

    GL_INT_SAMPLER_2D => 0x8DCA,

#=head2 GL_INT_SAMPLER_2D_ARRAY
#
#=cut

    GL_INT_SAMPLER_2D_ARRAY => 0x8DCF,

#=head2 GL_INT_SAMPLER_2D_ARRAY_EXT
#
#=cut

    GL_INT_SAMPLER_2D_ARRAY_EXT => 0x8DCF,

#=head2 GL_INT_SAMPLER_2D_EXT
#
#=cut

    GL_INT_SAMPLER_2D_EXT => 0x8DCA,

#=head2 GL_INT_SAMPLER_2D_MULTISAMPLE
#
#=cut

    GL_INT_SAMPLER_2D_MULTISAMPLE => 0x9109,

#=head2 GL_INT_SAMPLER_2D_MULTISAMPLE_ARRAY
#
#=cut

    GL_INT_SAMPLER_2D_MULTISAMPLE_ARRAY => 0x910C,

#=head2 GL_INT_SAMPLER_2D_RECT
#
#=cut

    GL_INT_SAMPLER_2D_RECT => 0x8DCD,

#=head2 GL_INT_SAMPLER_2D_RECT_EXT
#
#=cut

    GL_INT_SAMPLER_2D_RECT_EXT => 0x8DCD,

#=head2 GL_INT_SAMPLER_3D
#
#=cut

    GL_INT_SAMPLER_3D => 0x8DCB,

#=head2 GL_INT_SAMPLER_3D_EXT
#
#=cut

    GL_INT_SAMPLER_3D_EXT => 0x8DCB,

#=head2 GL_INT_SAMPLER_BUFFER
#
#=cut

    GL_INT_SAMPLER_BUFFER => 0x8DD0,

#=head2 GL_INT_SAMPLER_BUFFER_AMD
#
#=cut

    GL_INT_SAMPLER_BUFFER_AMD => 0x9002,

#=head2 GL_INT_SAMPLER_BUFFER_EXT
#
#=cut

    GL_INT_SAMPLER_BUFFER_EXT => 0x8DD0,

#=head2 GL_INT_SAMPLER_CUBE
#
#=cut

    GL_INT_SAMPLER_CUBE => 0x8DCC,

#=head2 GL_INT_SAMPLER_CUBE_EXT
#
#=cut

    GL_INT_SAMPLER_CUBE_EXT => 0x8DCC,

#=head2 GL_INT_SAMPLER_CUBE_MAP_ARRAY
#
#=cut

    GL_INT_SAMPLER_CUBE_MAP_ARRAY => 0x900E,

#=head2 GL_INT_SAMPLER_CUBE_MAP_ARRAY_ARB
#
#=cut

    GL_INT_SAMPLER_CUBE_MAP_ARRAY_ARB => 0x900E,

#=head2 GL_INT_SAMPLER_RENDERBUFFER_NV
#
#=cut

    GL_INT_SAMPLER_RENDERBUFFER_NV => 0x8E57,

#=head2 GL_INT_VEC2
#
#=cut

    GL_INT_VEC2 => 0x8B53,

#=head2 GL_INT_VEC2_ARB
#
#=cut

    GL_INT_VEC2_ARB => 0x8B53,

#=head2 GL_INT_VEC3
#
#=cut

    GL_INT_VEC3 => 0x8B54,

#=head2 GL_INT_VEC3_ARB
#
#=cut

    GL_INT_VEC3_ARB => 0x8B54,

#=head2 GL_INT_VEC4
#
#=cut

    GL_INT_VEC4 => 0x8B55,

#=head2 GL_INT_VEC4_ARB
#
#=cut

    GL_INT_VEC4_ARB => 0x8B55,

#=head2 GL_INVALID_ENUM
#
#=cut

    GL_INVALID_ENUM => 0x0500,

#=head2 GL_INVALID_FRAMEBUFFER_OPERATION
#
#=cut

    GL_INVALID_FRAMEBUFFER_OPERATION => 0x0506,

#=head2 GL_INVALID_FRAMEBUFFER_OPERATION_EXT
#
#=cut

    GL_INVALID_FRAMEBUFFER_OPERATION_EXT => 0x0506,

#=head2 GL_INVALID_INDEX
#
#=cut

    GL_INVALID_INDEX => 0xFFFFFFFF,

#=head2 GL_INVALID_OPERATION
#
#=cut

    GL_INVALID_OPERATION => 0x0502,

#=head2 GL_INVALID_VALUE
#
#=cut

    GL_INVALID_VALUE => 0x0501,

#=head2 GL_INVARIANT_DATATYPE_EXT
#
#=cut

    GL_INVARIANT_DATATYPE_EXT => 0x87EB,

#=head2 GL_INVARIANT_EXT
#
#=cut

    GL_INVARIANT_EXT => 0x87C2,

#=head2 GL_INVARIANT_VALUE_EXT
#
#=cut

    GL_INVARIANT_VALUE_EXT => 0x87EA,

#=head2 GL_INVERSE_NV
#
#=cut

    GL_INVERSE_NV => 0x862B,

#=head2 GL_INVERSE_TRANSPOSE_NV
#
#=cut

    GL_INVERSE_TRANSPOSE_NV => 0x862D,

#=head2 GL_INVERT
#
#=cut

    GL_INVERT => 0x150A,

#=head2 GL_INVERTED_SCREEN_W_REND
#
#=cut

    GL_INVERTED_SCREEN_W_REND => 0x8491,

#=head2 GL_INVERT_OVG_NV
#
#=cut

    GL_INVERT_OVG_NV => 0x92B4,

#=head2 GL_INVERT_RGB_NV
#
#=cut

    GL_INVERT_RGB_NV => 0x92A3,

#=head2 GL_IR_INSTRUMENT1_SGIX
#
#=cut

    GL_IR_INSTRUMENT1_SGIX => 0x817F,

#=head2 GL_ISOLINES
#
#=cut

    GL_ISOLINES => 0x8E7A,

#=head2 GL_IS_PER_PATCH
#
#=cut

    GL_IS_PER_PATCH => 0x92E7,

#=head2 GL_IS_ROW_MAJOR
#
#=cut

    GL_IS_ROW_MAJOR => 0x9300,

#=head2 GL_ITALIC_BIT_NV
#
#=cut

    GL_ITALIC_BIT_NV => 0x02,

#=head2 GL_IUI_N3F_V2F_EXT
#
#=cut

    GL_IUI_N3F_V2F_EXT => 0x81AF,

#=head2 GL_IUI_N3F_V3F_EXT
#
#=cut

    GL_IUI_N3F_V3F_EXT => 0x81B0,

#=head2 GL_IUI_V2F_EXT
#
#=cut

    GL_IUI_V2F_EXT => 0x81AD,

#=head2 GL_IUI_V3F_EXT
#
#=cut

    GL_IUI_V3F_EXT => 0x81AE,

#=head2 GL_KEEP
#
#=cut

    GL_KEEP => 0x1E00,

#=head2 GL_KHR_blend_equation_advanced
#
#=cut

    GL_KHR_blend_equation_advanced => 1,

#=head2 GL_KHR_blend_equation_advanced_coherent
#
#=cut

    GL_KHR_blend_equation_advanced_coherent => 1,

#=head2 GL_KHR_context_flush_control
#
#=cut

    GL_KHR_context_flush_control => 1,

#=head2 GL_KHR_debug
#
#=cut

    GL_KHR_debug => 1,

#=head2 GL_KHR_robust_buffer_access_behavior
#
#=cut

    GL_KHR_robust_buffer_access_behavior => 1,

#=head2 GL_KHR_robustness
#
#=cut

    GL_KHR_robustness => 1,

#=head2 GL_KHR_texture_compression_astc_hdr
#
#=cut

    GL_KHR_texture_compression_astc_hdr => 1,

#=head2 GL_KHR_texture_compression_astc_ldr
#
#=cut

    GL_KHR_texture_compression_astc_ldr => 1,

#=head2 GL_LARGE_CCW_ARC_TO_NV
#
#=cut

    GL_LARGE_CCW_ARC_TO_NV => 0x16,

#=head2 GL_LARGE_CW_ARC_TO_NV
#
#=cut

    GL_LARGE_CW_ARC_TO_NV => 0x18,

#=head2 GL_LAST_VERTEX_CONVENTION
#
#=cut

    GL_LAST_VERTEX_CONVENTION => 0x8E4E,

#=head2 GL_LAST_VERTEX_CONVENTION_EXT
#
#=cut

    GL_LAST_VERTEX_CONVENTION_EXT => 0x8E4E,

#=head2 GL_LAST_VIDEO_CAPTURE_STATUS_NV
#
#=cut

    GL_LAST_VIDEO_CAPTURE_STATUS_NV => 0x9027,

#=head2 GL_LAYER_NV
#
#=cut

    GL_LAYER_NV => 0x8DAA,

#=head2 GL_LAYER_PROVOKING_VERTEX
#
#=cut

    GL_LAYER_PROVOKING_VERTEX => 0x825E,

#=head2 GL_LAYOUT_DEFAULT_INTEL
#
#=cut

    GL_LAYOUT_DEFAULT_INTEL => 0,

#=head2 GL_LAYOUT_LINEAR_CPU_CACHED_INTEL
#
#=cut

    GL_LAYOUT_LINEAR_CPU_CACHED_INTEL => 2,

#=head2 GL_LAYOUT_LINEAR_INTEL
#
#=cut

    GL_LAYOUT_LINEAR_INTEL => 1,

#=head2 GL_LEFT
#
#=cut

    GL_LEFT => 0x0406,

#=head2 GL_LEQUAL
#
#=cut

    GL_LEQUAL => 0x0203,

#=head2 GL_LERP_ATI
#
#=cut

    GL_LERP_ATI => 0x8969,

#=head2 GL_LESS
#
#=cut

    GL_LESS => 0x0201,

#=head2 GL_LIGHT0
#
#=cut

    GL_LIGHT0 => 0x4000,

#=head2 GL_LIGHT1
#
#=cut

    GL_LIGHT1 => 0x4001,

#=head2 GL_LIGHT2
#
#=cut

    GL_LIGHT2 => 0x4002,

#=head2 GL_LIGHT3
#
#=cut

    GL_LIGHT3 => 0x4003,

#=head2 GL_LIGHT4
#
#=cut

    GL_LIGHT4 => 0x4004,

#=head2 GL_LIGHT5
#
#=cut

    GL_LIGHT5 => 0x4005,

#=head2 GL_LIGHT6
#
#=cut

    GL_LIGHT6 => 0x4006,

#=head2 GL_LIGHT7
#
#=cut

    GL_LIGHT7 => 0x4007,

#=head2 GL_LIGHTEN_KHR
#
#=cut

    GL_LIGHTEN_KHR => 0x9298,

#=head2 GL_LIGHTEN_NV
#
#=cut

    GL_LIGHTEN_NV => 0x9298,

#=head2 GL_LIGHTING
#
#=cut

    GL_LIGHTING => 0x0B50,

#=head2 GL_LIGHTING_BIT
#
#=cut

    GL_LIGHTING_BIT => 0x00000040,

#=head2 GL_LIGHT_ENV_MODE_SGIX
#
#=cut

    GL_LIGHT_ENV_MODE_SGIX => 0x8407,

#=head2 GL_LIGHT_MODEL_AMBIENT
#
#=cut

    GL_LIGHT_MODEL_AMBIENT => 0x0B53,

#=head2 GL_LIGHT_MODEL_COLOR_CONTROL
#
#=cut

    GL_LIGHT_MODEL_COLOR_CONTROL => 0x81F8,

#=head2 GL_LIGHT_MODEL_COLOR_CONTROL_EXT
#
#=cut

    GL_LIGHT_MODEL_COLOR_CONTROL_EXT => 0x81F8,

#=head2 GL_LIGHT_MODEL_LOCAL_VIEWER
#
#=cut

    GL_LIGHT_MODEL_LOCAL_VIEWER => 0x0B51,

#=head2 GL_LIGHT_MODEL_SPECULAR_VECTOR_APPLE
#
#=cut

    GL_LIGHT_MODEL_SPECULAR_VECTOR_APPLE => 0x85B0,

#=head2 GL_LIGHT_MODEL_TWO_SIDE
#
#=cut

    GL_LIGHT_MODEL_TWO_SIDE => 0x0B52,

#=head2 GL_LINE
#
#=cut

    GL_LINE => 0x1B01,

#=head2 GL_LINEAR
#
#=cut

    GL_LINEAR => 0x2601,

#=head2 GL_LINEARBURN_NV
#
#=cut

    GL_LINEARBURN_NV => 0x92A5,

#=head2 GL_LINEARDODGE_NV
#
#=cut

    GL_LINEARDODGE_NV => 0x92A4,

#=head2 GL_LINEARLIGHT_NV
#
#=cut

    GL_LINEARLIGHT_NV => 0x92A7,

#=head2 GL_LINEAR_ATTENUATION
#
#=cut

    GL_LINEAR_ATTENUATION => 0x1208,

#=head2 GL_LINEAR_CLIPMAP_LINEAR_SGIX
#
#=cut

    GL_LINEAR_CLIPMAP_LINEAR_SGIX => 0x8170,

#=head2 GL_LINEAR_CLIPMAP_NEAREST_SGIX
#
#=cut

    GL_LINEAR_CLIPMAP_NEAREST_SGIX => 0x844F,

#=head2 GL_LINEAR_DETAIL_ALPHA_SGIS
#
#=cut

    GL_LINEAR_DETAIL_ALPHA_SGIS => 0x8098,

#=head2 GL_LINEAR_DETAIL_COLOR_SGIS
#
#=cut

    GL_LINEAR_DETAIL_COLOR_SGIS => 0x8099,

#=head2 GL_LINEAR_DETAIL_SGIS
#
#=cut

    GL_LINEAR_DETAIL_SGIS => 0x8097,

#=head2 GL_LINEAR_MIPMAP_LINEAR
#
#=cut

    GL_LINEAR_MIPMAP_LINEAR => 0x2703,

#=head2 GL_LINEAR_MIPMAP_NEAREST
#
#=cut

    GL_LINEAR_MIPMAP_NEAREST => 0x2701,

#=head2 GL_LINEAR_SHARPEN_ALPHA_SGIS
#
#=cut

    GL_LINEAR_SHARPEN_ALPHA_SGIS => 0x80AE,

#=head2 GL_LINEAR_SHARPEN_COLOR_SGIS
#
#=cut

    GL_LINEAR_SHARPEN_COLOR_SGIS => 0x80AF,

#=head2 GL_LINEAR_SHARPEN_SGIS
#
#=cut

    GL_LINEAR_SHARPEN_SGIS => 0x80AD,

#=head2 GL_LINES
#
#=cut

    GL_LINES => 0x0001,

#=head2 GL_LINES_ADJACENCY
#
#=cut

    GL_LINES_ADJACENCY => 0x000A,

#=head2 GL_LINES_ADJACENCY_ARB
#
#=cut

    GL_LINES_ADJACENCY_ARB => 0x000A,

#=head2 GL_LINES_ADJACENCY_EXT
#
#=cut

    GL_LINES_ADJACENCY_EXT => 0x000A,

#=head2 GL_LINE_BIT
#
#=cut

    GL_LINE_BIT => 0x00000004,

#=head2 GL_LINE_LOOP
#
#=cut

    GL_LINE_LOOP => 0x0002,

#=head2 GL_LINE_RESET_TOKEN
#
#=cut

    GL_LINE_RESET_TOKEN => 0x0707,

#=head2 GL_LINE_SMOOTH
#
#=cut

    GL_LINE_SMOOTH => 0x0B20,

#=head2 GL_LINE_SMOOTH_HINT
#
#=cut

    GL_LINE_SMOOTH_HINT => 0x0C52,

#=head2 GL_LINE_STIPPLE
#
#=cut

    GL_LINE_STIPPLE => 0x0B24,

#=head2 GL_LINE_STIPPLE_PATTERN
#
#=cut

    GL_LINE_STIPPLE_PATTERN => 0x0B25,

#=head2 GL_LINE_STIPPLE_REPEAT
#
#=cut

    GL_LINE_STIPPLE_REPEAT => 0x0B26,

#=head2 GL_LINE_STRIP
#
#=cut

    GL_LINE_STRIP => 0x0003,

#=head2 GL_LINE_STRIP_ADJACENCY
#
#=cut

    GL_LINE_STRIP_ADJACENCY => 0x000B,

#=head2 GL_LINE_STRIP_ADJACENCY_ARB
#
#=cut

    GL_LINE_STRIP_ADJACENCY_ARB => 0x000B,

#=head2 GL_LINE_STRIP_ADJACENCY_EXT
#
#=cut

    GL_LINE_STRIP_ADJACENCY_EXT => 0x000B,

#=head2 GL_LINE_TOKEN
#
#=cut

    GL_LINE_TOKEN => 0x0702,

#=head2 GL_LINE_TO_NV
#
#=cut

    GL_LINE_TO_NV => 0x04,

#=head2 GL_LINE_WIDTH
#
#=cut

    GL_LINE_WIDTH => 0x0B21,

#=head2 GL_LINE_WIDTH_GRANULARITY
#
#=cut

    GL_LINE_WIDTH_GRANULARITY => 0x0B23,

#=head2 GL_LINE_WIDTH_RANGE
#
#=cut

    GL_LINE_WIDTH_RANGE => 0x0B22,

#=head2 GL_LINK_STATUS
#
#=cut

    GL_LINK_STATUS => 0x8B82,

#=head2 GL_LIST_BASE
#
#=cut

    GL_LIST_BASE => 0x0B32,

#=head2 GL_LIST_BIT
#
#=cut

    GL_LIST_BIT => 0x00020000,

#=head2 GL_LIST_INDEX
#
#=cut

    GL_LIST_INDEX => 0x0B33,

#=head2 GL_LIST_MODE
#
#=cut

    GL_LIST_MODE => 0x0B30,

#=head2 GL_LIST_PRIORITY_SGIX
#
#=cut

    GL_LIST_PRIORITY_SGIX => 0x8182,

#=head2 GL_LOAD
#
#=cut

    GL_LOAD => 0x0101,

#=head2 GL_LOCAL_CONSTANT_DATATYPE_EXT
#
#=cut

    GL_LOCAL_CONSTANT_DATATYPE_EXT => 0x87ED,

#=head2 GL_LOCAL_CONSTANT_EXT
#
#=cut

    GL_LOCAL_CONSTANT_EXT => 0x87C3,

#=head2 GL_LOCAL_CONSTANT_VALUE_EXT
#
#=cut

    GL_LOCAL_CONSTANT_VALUE_EXT => 0x87EC,

#=head2 GL_LOCAL_EXT
#
#=cut

    GL_LOCAL_EXT => 0x87C4,

#=head2 GL_LOCATION
#
#=cut

    GL_LOCATION => 0x930E,

#=head2 GL_LOCATION_COMPONENT
#
#=cut

    GL_LOCATION_COMPONENT => 0x934A,

#=head2 GL_LOCATION_INDEX
#
#=cut

    GL_LOCATION_INDEX => 0x930F,

#=head2 GL_LOGIC_OP
#
#=cut

    GL_LOGIC_OP => 0x0BF1,

#=head2 GL_LOGIC_OP_MODE
#
#=cut

    GL_LOGIC_OP_MODE => 0x0BF0,

#=head2 GL_LOSE_CONTEXT_ON_RESET
#
#=cut

    GL_LOSE_CONTEXT_ON_RESET => 0x8252,

#=head2 GL_LOSE_CONTEXT_ON_RESET_ARB
#
#=cut

    GL_LOSE_CONTEXT_ON_RESET_ARB => 0x8252,

#=head2 GL_LOWER_LEFT
#
#=cut

    GL_LOWER_LEFT => 0x8CA1,

#=head2 GL_LOW_FLOAT
#
#=cut

    GL_LOW_FLOAT => 0x8DF0,

#=head2 GL_LOW_INT
#
#=cut

    GL_LOW_INT => 0x8DF3,

#=head2 GL_LO_BIAS_NV
#
#=cut

    GL_LO_BIAS_NV => 0x8715,

#=head2 GL_LO_SCALE_NV
#
#=cut

    GL_LO_SCALE_NV => 0x870F,

#=head2 GL_LUMINANCE
#
#=cut

    GL_LUMINANCE => 0x1909,

#=head2 GL_LUMINANCE12
#
#=cut

    GL_LUMINANCE12 => 0x8041,

#=head2 GL_LUMINANCE12_ALPHA12
#
#=cut

    GL_LUMINANCE12_ALPHA12 => 0x8047,

#=head2 GL_LUMINANCE12_ALPHA12_EXT
#
#=cut

    GL_LUMINANCE12_ALPHA12_EXT => 0x8047,

#=head2 GL_LUMINANCE12_ALPHA4
#
#=cut

    GL_LUMINANCE12_ALPHA4 => 0x8046,

#=head2 GL_LUMINANCE12_ALPHA4_EXT
#
#=cut

    GL_LUMINANCE12_ALPHA4_EXT => 0x8046,

#=head2 GL_LUMINANCE12_EXT
#
#=cut

    GL_LUMINANCE12_EXT => 0x8041,

#=head2 GL_LUMINANCE16
#
#=cut

    GL_LUMINANCE16 => 0x8042,

#=head2 GL_LUMINANCE16F_ARB
#
#=cut

    GL_LUMINANCE16F_ARB => 0x881E,

#=head2 GL_LUMINANCE16I_EXT
#
#=cut

    GL_LUMINANCE16I_EXT => 0x8D8C,

#=head2 GL_LUMINANCE16UI_EXT
#
#=cut

    GL_LUMINANCE16UI_EXT => 0x8D7A,

#=head2 GL_LUMINANCE16_ALPHA16
#
#=cut

    GL_LUMINANCE16_ALPHA16 => 0x8048,

#=head2 GL_LUMINANCE16_ALPHA16_EXT
#
#=cut

    GL_LUMINANCE16_ALPHA16_EXT => 0x8048,

#=head2 GL_LUMINANCE16_ALPHA16_SNORM
#
#=cut

    GL_LUMINANCE16_ALPHA16_SNORM => 0x901A,

#=head2 GL_LUMINANCE16_EXT
#
#=cut

    GL_LUMINANCE16_EXT => 0x8042,

#=head2 GL_LUMINANCE16_SNORM
#
#=cut

    GL_LUMINANCE16_SNORM => 0x9019,

#=head2 GL_LUMINANCE32F_ARB
#
#=cut

    GL_LUMINANCE32F_ARB => 0x8818,

#=head2 GL_LUMINANCE32I_EXT
#
#=cut

    GL_LUMINANCE32I_EXT => 0x8D86,

#=head2 GL_LUMINANCE32UI_EXT
#
#=cut

    GL_LUMINANCE32UI_EXT => 0x8D74,

#=head2 GL_LUMINANCE4
#
#=cut

    GL_LUMINANCE4 => 0x803F,

#=head2 GL_LUMINANCE4_ALPHA4
#
#=cut

    GL_LUMINANCE4_ALPHA4 => 0x8043,

#=head2 GL_LUMINANCE4_ALPHA4_EXT
#
#=cut

    GL_LUMINANCE4_ALPHA4_EXT => 0x8043,

#=head2 GL_LUMINANCE4_EXT
#
#=cut

    GL_LUMINANCE4_EXT => 0x803F,

#=head2 GL_LUMINANCE6_ALPHA2
#
#=cut

    GL_LUMINANCE6_ALPHA2 => 0x8044,

#=head2 GL_LUMINANCE6_ALPHA2_EXT
#
#=cut

    GL_LUMINANCE6_ALPHA2_EXT => 0x8044,

#=head2 GL_LUMINANCE8
#
#=cut

    GL_LUMINANCE8 => 0x8040,

#=head2 GL_LUMINANCE8I_EXT
#
#=cut

    GL_LUMINANCE8I_EXT => 0x8D92,

#=head2 GL_LUMINANCE8UI_EXT
#
#=cut

    GL_LUMINANCE8UI_EXT => 0x8D80,

#=head2 GL_LUMINANCE8_ALPHA8
#
#=cut

    GL_LUMINANCE8_ALPHA8 => 0x8045,

#=head2 GL_LUMINANCE8_ALPHA8_EXT
#
#=cut

    GL_LUMINANCE8_ALPHA8_EXT => 0x8045,

#=head2 GL_LUMINANCE8_ALPHA8_SNORM
#
#=cut

    GL_LUMINANCE8_ALPHA8_SNORM => 0x9016,

#=head2 GL_LUMINANCE8_EXT
#
#=cut

    GL_LUMINANCE8_EXT => 0x8040,

#=head2 GL_LUMINANCE8_SNORM
#
#=cut

    GL_LUMINANCE8_SNORM => 0x9015,

#=head2 GL_LUMINANCE_ALPHA
#
#=cut

    GL_LUMINANCE_ALPHA => 0x190A,

#=head2 GL_LUMINANCE_ALPHA16F_ARB
#
#=cut

    GL_LUMINANCE_ALPHA16F_ARB => 0x881F,

#=head2 GL_LUMINANCE_ALPHA16I_EXT
#
#=cut

    GL_LUMINANCE_ALPHA16I_EXT => 0x8D8D,

#=head2 GL_LUMINANCE_ALPHA16UI_EXT
#
#=cut

    GL_LUMINANCE_ALPHA16UI_EXT => 0x8D7B,

#=head2 GL_LUMINANCE_ALPHA32F_ARB
#
#=cut

    GL_LUMINANCE_ALPHA32F_ARB => 0x8819,

#=head2 GL_LUMINANCE_ALPHA32I_EXT
#
#=cut

    GL_LUMINANCE_ALPHA32I_EXT => 0x8D87,

#=head2 GL_LUMINANCE_ALPHA32UI_EXT
#
#=cut

    GL_LUMINANCE_ALPHA32UI_EXT => 0x8D75,

#=head2 GL_LUMINANCE_ALPHA8I_EXT
#
#=cut

    GL_LUMINANCE_ALPHA8I_EXT => 0x8D93,

#=head2 GL_LUMINANCE_ALPHA8UI_EXT
#
#=cut

    GL_LUMINANCE_ALPHA8UI_EXT => 0x8D81,

#=head2 GL_LUMINANCE_ALPHA_FLOAT16_APPLE
#
#=cut

    GL_LUMINANCE_ALPHA_FLOAT16_APPLE => 0x881F,

#=head2 GL_LUMINANCE_ALPHA_FLOAT16_ATI
#
#=cut

    GL_LUMINANCE_ALPHA_FLOAT16_ATI => 0x881F,

#=head2 GL_LUMINANCE_ALPHA_FLOAT32_APPLE
#
#=cut

    GL_LUMINANCE_ALPHA_FLOAT32_APPLE => 0x8819,

#=head2 GL_LUMINANCE_ALPHA_FLOAT32_ATI
#
#=cut

    GL_LUMINANCE_ALPHA_FLOAT32_ATI => 0x8819,

#=head2 GL_LUMINANCE_ALPHA_INTEGER_EXT
#
#=cut

    GL_LUMINANCE_ALPHA_INTEGER_EXT => 0x8D9D,

#=head2 GL_LUMINANCE_ALPHA_SNORM
#
#=cut

    GL_LUMINANCE_ALPHA_SNORM => 0x9012,

#=head2 GL_LUMINANCE_FLOAT16_APPLE
#
#=cut

    GL_LUMINANCE_FLOAT16_APPLE => 0x881E,

#=head2 GL_LUMINANCE_FLOAT16_ATI
#
#=cut

    GL_LUMINANCE_FLOAT16_ATI => 0x881E,

#=head2 GL_LUMINANCE_FLOAT32_APPLE
#
#=cut

    GL_LUMINANCE_FLOAT32_APPLE => 0x8818,

#=head2 GL_LUMINANCE_FLOAT32_ATI
#
#=cut

    GL_LUMINANCE_FLOAT32_ATI => 0x8818,

#=head2 GL_LUMINANCE_INTEGER_EXT
#
#=cut

    GL_LUMINANCE_INTEGER_EXT => 0x8D9C,

#=head2 GL_LUMINANCE_SNORM
#
#=cut

    GL_LUMINANCE_SNORM => 0x9011,

#=head2 GL_MAD_ATI
#
#=cut

    GL_MAD_ATI => 0x8968,

#=head2 GL_MAGNITUDE_BIAS_NV
#
#=cut

    GL_MAGNITUDE_BIAS_NV => 0x8718,

#=head2 GL_MAGNITUDE_SCALE_NV
#
#=cut

    GL_MAGNITUDE_SCALE_NV => 0x8712,

#=head2 GL_MAJOR_VERSION
#
#=cut

    GL_MAJOR_VERSION => 0x821B,

#=head2 GL_MANUAL_GENERATE_MIPMAP
#
#=cut

    GL_MANUAL_GENERATE_MIPMAP => 0x8294,

#=head2 GL_MAP1_BINORMAL_EXT
#
#=cut

    GL_MAP1_BINORMAL_EXT => 0x8446,

#=head2 GL_MAP1_COLOR_4
#
#=cut

    GL_MAP1_COLOR_4 => 0x0D90,

#=head2 GL_MAP1_GRID_DOMAIN
#
#=cut

    GL_MAP1_GRID_DOMAIN => 0x0DD0,

#=head2 GL_MAP1_GRID_SEGMENTS
#
#=cut

    GL_MAP1_GRID_SEGMENTS => 0x0DD1,

#=head2 GL_MAP1_INDEX
#
#=cut

    GL_MAP1_INDEX => 0x0D91,

#=head2 GL_MAP1_NORMAL
#
#=cut

    GL_MAP1_NORMAL => 0x0D92,

#=head2 GL_MAP1_TANGENT_EXT
#
#=cut

    GL_MAP1_TANGENT_EXT => 0x8444,

#=head2 GL_MAP1_TEXTURE_COORD_1
#
#=cut

    GL_MAP1_TEXTURE_COORD_1 => 0x0D93,

#=head2 GL_MAP1_TEXTURE_COORD_2
#
#=cut

    GL_MAP1_TEXTURE_COORD_2 => 0x0D94,

#=head2 GL_MAP1_TEXTURE_COORD_3
#
#=cut

    GL_MAP1_TEXTURE_COORD_3 => 0x0D95,

#=head2 GL_MAP1_TEXTURE_COORD_4
#
#=cut

    GL_MAP1_TEXTURE_COORD_4 => 0x0D96,

#=head2 GL_MAP1_VERTEX_3
#
#=cut

    GL_MAP1_VERTEX_3 => 0x0D97,

#=head2 GL_MAP1_VERTEX_4
#
#=cut

    GL_MAP1_VERTEX_4 => 0x0D98,

#=head2 GL_MAP1_VERTEX_ATTRIB0_4_NV
#
#=cut

    GL_MAP1_VERTEX_ATTRIB0_4_NV => 0x8660,

#=head2 GL_MAP1_VERTEX_ATTRIB10_4_NV
#
#=cut

    GL_MAP1_VERTEX_ATTRIB10_4_NV => 0x866A,

#=head2 GL_MAP1_VERTEX_ATTRIB11_4_NV
#
#=cut

    GL_MAP1_VERTEX_ATTRIB11_4_NV => 0x866B,

#=head2 GL_MAP1_VERTEX_ATTRIB12_4_NV
#
#=cut

    GL_MAP1_VERTEX_ATTRIB12_4_NV => 0x866C,

#=head2 GL_MAP1_VERTEX_ATTRIB13_4_NV
#
#=cut

    GL_MAP1_VERTEX_ATTRIB13_4_NV => 0x866D,

#=head2 GL_MAP1_VERTEX_ATTRIB14_4_NV
#
#=cut

    GL_MAP1_VERTEX_ATTRIB14_4_NV => 0x866E,

#=head2 GL_MAP1_VERTEX_ATTRIB15_4_NV
#
#=cut

    GL_MAP1_VERTEX_ATTRIB15_4_NV => 0x866F,

#=head2 GL_MAP1_VERTEX_ATTRIB1_4_NV
#
#=cut

    GL_MAP1_VERTEX_ATTRIB1_4_NV => 0x8661,

#=head2 GL_MAP1_VERTEX_ATTRIB2_4_NV
#
#=cut

    GL_MAP1_VERTEX_ATTRIB2_4_NV => 0x8662,

#=head2 GL_MAP1_VERTEX_ATTRIB3_4_NV
#
#=cut

    GL_MAP1_VERTEX_ATTRIB3_4_NV => 0x8663,

#=head2 GL_MAP1_VERTEX_ATTRIB4_4_NV
#
#=cut

    GL_MAP1_VERTEX_ATTRIB4_4_NV => 0x8664,

#=head2 GL_MAP1_VERTEX_ATTRIB5_4_NV
#
#=cut

    GL_MAP1_VERTEX_ATTRIB5_4_NV => 0x8665,

#=head2 GL_MAP1_VERTEX_ATTRIB6_4_NV
#
#=cut

    GL_MAP1_VERTEX_ATTRIB6_4_NV => 0x8666,

#=head2 GL_MAP1_VERTEX_ATTRIB7_4_NV
#
#=cut

    GL_MAP1_VERTEX_ATTRIB7_4_NV => 0x8667,

#=head2 GL_MAP1_VERTEX_ATTRIB8_4_NV
#
#=cut

    GL_MAP1_VERTEX_ATTRIB8_4_NV => 0x8668,

#=head2 GL_MAP1_VERTEX_ATTRIB9_4_NV
#
#=cut

    GL_MAP1_VERTEX_ATTRIB9_4_NV => 0x8669,

#=head2 GL_MAP2_BINORMAL_EXT
#
#=cut

    GL_MAP2_BINORMAL_EXT => 0x8447,

#=head2 GL_MAP2_COLOR_4
#
#=cut

    GL_MAP2_COLOR_4 => 0x0DB0,

#=head2 GL_MAP2_GRID_DOMAIN
#
#=cut

    GL_MAP2_GRID_DOMAIN => 0x0DD2,

#=head2 GL_MAP2_GRID_SEGMENTS
#
#=cut

    GL_MAP2_GRID_SEGMENTS => 0x0DD3,

#=head2 GL_MAP2_INDEX
#
#=cut

    GL_MAP2_INDEX => 0x0DB1,

#=head2 GL_MAP2_NORMAL
#
#=cut

    GL_MAP2_NORMAL => 0x0DB2,

#=head2 GL_MAP2_TANGENT_EXT
#
#=cut

    GL_MAP2_TANGENT_EXT => 0x8445,

#=head2 GL_MAP2_TEXTURE_COORD_1
#
#=cut

    GL_MAP2_TEXTURE_COORD_1 => 0x0DB3,

#=head2 GL_MAP2_TEXTURE_COORD_2
#
#=cut

    GL_MAP2_TEXTURE_COORD_2 => 0x0DB4,

#=head2 GL_MAP2_TEXTURE_COORD_3
#
#=cut

    GL_MAP2_TEXTURE_COORD_3 => 0x0DB5,

#=head2 GL_MAP2_TEXTURE_COORD_4
#
#=cut

    GL_MAP2_TEXTURE_COORD_4 => 0x0DB6,

#=head2 GL_MAP2_VERTEX_3
#
#=cut

    GL_MAP2_VERTEX_3 => 0x0DB7,

#=head2 GL_MAP2_VERTEX_4
#
#=cut

    GL_MAP2_VERTEX_4 => 0x0DB8,

#=head2 GL_MAP2_VERTEX_ATTRIB0_4_NV
#
#=cut

    GL_MAP2_VERTEX_ATTRIB0_4_NV => 0x8670,

#=head2 GL_MAP2_VERTEX_ATTRIB10_4_NV
#
#=cut

    GL_MAP2_VERTEX_ATTRIB10_4_NV => 0x867A,

#=head2 GL_MAP2_VERTEX_ATTRIB11_4_NV
#
#=cut

    GL_MAP2_VERTEX_ATTRIB11_4_NV => 0x867B,

#=head2 GL_MAP2_VERTEX_ATTRIB12_4_NV
#
#=cut

    GL_MAP2_VERTEX_ATTRIB12_4_NV => 0x867C,

#=head2 GL_MAP2_VERTEX_ATTRIB13_4_NV
#
#=cut

    GL_MAP2_VERTEX_ATTRIB13_4_NV => 0x867D,

#=head2 GL_MAP2_VERTEX_ATTRIB14_4_NV
#
#=cut

    GL_MAP2_VERTEX_ATTRIB14_4_NV => 0x867E,

#=head2 GL_MAP2_VERTEX_ATTRIB15_4_NV
#
#=cut

    GL_MAP2_VERTEX_ATTRIB15_4_NV => 0x867F,

#=head2 GL_MAP2_VERTEX_ATTRIB1_4_NV
#
#=cut

    GL_MAP2_VERTEX_ATTRIB1_4_NV => 0x8671,

#=head2 GL_MAP2_VERTEX_ATTRIB2_4_NV
#
#=cut

    GL_MAP2_VERTEX_ATTRIB2_4_NV => 0x8672,

#=head2 GL_MAP2_VERTEX_ATTRIB3_4_NV
#
#=cut

    GL_MAP2_VERTEX_ATTRIB3_4_NV => 0x8673,

#=head2 GL_MAP2_VERTEX_ATTRIB4_4_NV
#
#=cut

    GL_MAP2_VERTEX_ATTRIB4_4_NV => 0x8674,

#=head2 GL_MAP2_VERTEX_ATTRIB5_4_NV
#
#=cut

    GL_MAP2_VERTEX_ATTRIB5_4_NV => 0x8675,

#=head2 GL_MAP2_VERTEX_ATTRIB6_4_NV
#
#=cut

    GL_MAP2_VERTEX_ATTRIB6_4_NV => 0x8676,

#=head2 GL_MAP2_VERTEX_ATTRIB7_4_NV
#
#=cut

    GL_MAP2_VERTEX_ATTRIB7_4_NV => 0x8677,

#=head2 GL_MAP2_VERTEX_ATTRIB8_4_NV
#
#=cut

    GL_MAP2_VERTEX_ATTRIB8_4_NV => 0x8678,

#=head2 GL_MAP2_VERTEX_ATTRIB9_4_NV
#
#=cut

    GL_MAP2_VERTEX_ATTRIB9_4_NV => 0x8679,

#=head2 GL_MAP_ATTRIB_U_ORDER_NV
#
#=cut

    GL_MAP_ATTRIB_U_ORDER_NV => 0x86C3,

#=head2 GL_MAP_ATTRIB_V_ORDER_NV
#
#=cut

    GL_MAP_ATTRIB_V_ORDER_NV => 0x86C4,

#=head2 GL_MAP_COHERENT_BIT
#
#=cut

    GL_MAP_COHERENT_BIT => 0x0080,

#=head2 GL_MAP_COLOR
#
#=cut

    GL_MAP_COLOR => 0x0D10,

#=head2 GL_MAP_FLUSH_EXPLICIT_BIT
#
#=cut

    GL_MAP_FLUSH_EXPLICIT_BIT => 0x0010,

#=head2 GL_MAP_INVALIDATE_BUFFER_BIT
#
#=cut

    GL_MAP_INVALIDATE_BUFFER_BIT => 0x0008,

#=head2 GL_MAP_INVALIDATE_RANGE_BIT
#
#=cut

    GL_MAP_INVALIDATE_RANGE_BIT => 0x0004,

#=head2 GL_MAP_PERSISTENT_BIT
#
#=cut

    GL_MAP_PERSISTENT_BIT => 0x0040,

#=head2 GL_MAP_READ_BIT
#
#=cut

    GL_MAP_READ_BIT => 0x0001,

#=head2 GL_MAP_STENCIL
#
#=cut

    GL_MAP_STENCIL => 0x0D11,

#=head2 GL_MAP_TESSELLATION_NV
#
#=cut

    GL_MAP_TESSELLATION_NV => 0x86C2,

#=head2 GL_MAP_UNSYNCHRONIZED_BIT
#
#=cut

    GL_MAP_UNSYNCHRONIZED_BIT => 0x0020,

#=head2 GL_MAP_WRITE_BIT
#
#=cut

    GL_MAP_WRITE_BIT => 0x0002,

#=head2 GL_MATERIAL_SIDE_HINT_PGI
#
#=cut

    GL_MATERIAL_SIDE_HINT_PGI => 0x1A22C,

#=head2 GL_MATRIX0_ARB
#
#=cut

    GL_MATRIX0_ARB => 0x88C0,

#=head2 GL_MATRIX0_NV
#
#=cut

    GL_MATRIX0_NV => 0x8630,

#=head2 GL_MATRIX10_ARB
#
#=cut

    GL_MATRIX10_ARB => 0x88CA,

#=head2 GL_MATRIX11_ARB
#
#=cut

    GL_MATRIX11_ARB => 0x88CB,

#=head2 GL_MATRIX12_ARB
#
#=cut

    GL_MATRIX12_ARB => 0x88CC,

#=head2 GL_MATRIX13_ARB
#
#=cut

    GL_MATRIX13_ARB => 0x88CD,

#=head2 GL_MATRIX14_ARB
#
#=cut

    GL_MATRIX14_ARB => 0x88CE,

#=head2 GL_MATRIX15_ARB
#
#=cut

    GL_MATRIX15_ARB => 0x88CF,

#=head2 GL_MATRIX16_ARB
#
#=cut

    GL_MATRIX16_ARB => 0x88D0,

#=head2 GL_MATRIX17_ARB
#
#=cut

    GL_MATRIX17_ARB => 0x88D1,

#=head2 GL_MATRIX18_ARB
#
#=cut

    GL_MATRIX18_ARB => 0x88D2,

#=head2 GL_MATRIX19_ARB
#
#=cut

    GL_MATRIX19_ARB => 0x88D3,

#=head2 GL_MATRIX1_ARB
#
#=cut

    GL_MATRIX1_ARB => 0x88C1,

#=head2 GL_MATRIX1_NV
#
#=cut

    GL_MATRIX1_NV => 0x8631,

#=head2 GL_MATRIX20_ARB
#
#=cut

    GL_MATRIX20_ARB => 0x88D4,

#=head2 GL_MATRIX21_ARB
#
#=cut

    GL_MATRIX21_ARB => 0x88D5,

#=head2 GL_MATRIX22_ARB
#
#=cut

    GL_MATRIX22_ARB => 0x88D6,

#=head2 GL_MATRIX23_ARB
#
#=cut

    GL_MATRIX23_ARB => 0x88D7,

#=head2 GL_MATRIX24_ARB
#
#=cut

    GL_MATRIX24_ARB => 0x88D8,

#=head2 GL_MATRIX25_ARB
#
#=cut

    GL_MATRIX25_ARB => 0x88D9,

#=head2 GL_MATRIX26_ARB
#
#=cut

    GL_MATRIX26_ARB => 0x88DA,

#=head2 GL_MATRIX27_ARB
#
#=cut

    GL_MATRIX27_ARB => 0x88DB,

#=head2 GL_MATRIX28_ARB
#
#=cut

    GL_MATRIX28_ARB => 0x88DC,

#=head2 GL_MATRIX29_ARB
#
#=cut

    GL_MATRIX29_ARB => 0x88DD,

#=head2 GL_MATRIX2_ARB
#
#=cut

    GL_MATRIX2_ARB => 0x88C2,

#=head2 GL_MATRIX2_NV
#
#=cut

    GL_MATRIX2_NV => 0x8632,

#=head2 GL_MATRIX30_ARB
#
#=cut

    GL_MATRIX30_ARB => 0x88DE,

#=head2 GL_MATRIX31_ARB
#
#=cut

    GL_MATRIX31_ARB => 0x88DF,

#=head2 GL_MATRIX3_ARB
#
#=cut

    GL_MATRIX3_ARB => 0x88C3,

#=head2 GL_MATRIX3_NV
#
#=cut

    GL_MATRIX3_NV => 0x8633,

#=head2 GL_MATRIX4_ARB
#
#=cut

    GL_MATRIX4_ARB => 0x88C4,

#=head2 GL_MATRIX4_NV
#
#=cut

    GL_MATRIX4_NV => 0x8634,

#=head2 GL_MATRIX5_ARB
#
#=cut

    GL_MATRIX5_ARB => 0x88C5,

#=head2 GL_MATRIX5_NV
#
#=cut

    GL_MATRIX5_NV => 0x8635,

#=head2 GL_MATRIX6_ARB
#
#=cut

    GL_MATRIX6_ARB => 0x88C6,

#=head2 GL_MATRIX6_NV
#
#=cut

    GL_MATRIX6_NV => 0x8636,

#=head2 GL_MATRIX7_ARB
#
#=cut

    GL_MATRIX7_ARB => 0x88C7,

#=head2 GL_MATRIX7_NV
#
#=cut

    GL_MATRIX7_NV => 0x8637,

#=head2 GL_MATRIX8_ARB
#
#=cut

    GL_MATRIX8_ARB => 0x88C8,

#=head2 GL_MATRIX9_ARB
#
#=cut

    GL_MATRIX9_ARB => 0x88C9,

#=head2 GL_MATRIX_EXT
#
#=cut

    GL_MATRIX_EXT => 0x87C0,

#=head2 GL_MATRIX_INDEX_ARRAY_ARB
#
#=cut

    GL_MATRIX_INDEX_ARRAY_ARB => 0x8844,

#=head2 GL_MATRIX_INDEX_ARRAY_POINTER_ARB
#
#=cut

    GL_MATRIX_INDEX_ARRAY_POINTER_ARB => 0x8849,

#=head2 GL_MATRIX_INDEX_ARRAY_SIZE_ARB
#
#=cut

    GL_MATRIX_INDEX_ARRAY_SIZE_ARB => 0x8846,

#=head2 GL_MATRIX_INDEX_ARRAY_STRIDE_ARB
#
#=cut

    GL_MATRIX_INDEX_ARRAY_STRIDE_ARB => 0x8848,

#=head2 GL_MATRIX_INDEX_ARRAY_TYPE_ARB
#
#=cut

    GL_MATRIX_INDEX_ARRAY_TYPE_ARB => 0x8847,

#=head2 GL_MATRIX_MODE
#
#=cut

    GL_MATRIX_MODE => 0x0BA0,

#=head2 GL_MATRIX_PALETTE_ARB
#
#=cut

    GL_MATRIX_PALETTE_ARB => 0x8840,

#=head2 GL_MATRIX_STRIDE
#
#=cut

    GL_MATRIX_STRIDE => 0x92FF,

#=head2 GL_MAT_AMBIENT_AND_DIFFUSE_BIT_PGI
#
#=cut

    GL_MAT_AMBIENT_AND_DIFFUSE_BIT_PGI => 0x00200000,

#=head2 GL_MAT_AMBIENT_BIT_PGI
#
#=cut

    GL_MAT_AMBIENT_BIT_PGI => 0x00100000,

#=head2 GL_MAT_COLOR_INDEXES_BIT_PGI
#
#=cut

    GL_MAT_COLOR_INDEXES_BIT_PGI => 0x01000000,

#=head2 GL_MAT_DIFFUSE_BIT_PGI
#
#=cut

    GL_MAT_DIFFUSE_BIT_PGI => 0x00400000,

#=head2 GL_MAT_EMISSION_BIT_PGI
#
#=cut

    GL_MAT_EMISSION_BIT_PGI => 0x00800000,

#=head2 GL_MAT_SHININESS_BIT_PGI
#
#=cut

    GL_MAT_SHININESS_BIT_PGI => 0x02000000,

#=head2 GL_MAT_SPECULAR_BIT_PGI
#
#=cut

    GL_MAT_SPECULAR_BIT_PGI => 0x04000000,

#=head2 GL_MAX
#
#=cut

    GL_MAX => 0x8008,

#=head2 GL_MAX_3D_TEXTURE_SIZE
#
#=cut

    GL_MAX_3D_TEXTURE_SIZE => 0x8073,

#=head2 GL_MAX_3D_TEXTURE_SIZE_EXT
#
#=cut

    GL_MAX_3D_TEXTURE_SIZE_EXT => 0x8073,

#=head2 GL_MAX_4D_TEXTURE_SIZE_SGIS
#
#=cut

    GL_MAX_4D_TEXTURE_SIZE_SGIS => 0x8138,

#=head2 GL_MAX_ACTIVE_LIGHTS_SGIX
#
#=cut

    GL_MAX_ACTIVE_LIGHTS_SGIX => 0x8405,

#=head2 GL_MAX_ARRAY_TEXTURE_LAYERS
#
#=cut

    GL_MAX_ARRAY_TEXTURE_LAYERS => 0x88FF,

#=head2 GL_MAX_ARRAY_TEXTURE_LAYERS_EXT
#
#=cut

    GL_MAX_ARRAY_TEXTURE_LAYERS_EXT => 0x88FF,

#=head2 GL_MAX_ASYNC_DRAW_PIXELS_SGIX
#
#=cut

    GL_MAX_ASYNC_DRAW_PIXELS_SGIX => 0x8360,

#=head2 GL_MAX_ASYNC_HISTOGRAM_SGIX
#
#=cut

    GL_MAX_ASYNC_HISTOGRAM_SGIX => 0x832D,

#=head2 GL_MAX_ASYNC_READ_PIXELS_SGIX
#
#=cut

    GL_MAX_ASYNC_READ_PIXELS_SGIX => 0x8361,

#=head2 GL_MAX_ASYNC_TEX_IMAGE_SGIX
#
#=cut

    GL_MAX_ASYNC_TEX_IMAGE_SGIX => 0x835F,

#=head2 GL_MAX_ATOMIC_COUNTER_BUFFER_BINDINGS
#
#=cut

    GL_MAX_ATOMIC_COUNTER_BUFFER_BINDINGS => 0x92DC,

#=head2 GL_MAX_ATOMIC_COUNTER_BUFFER_SIZE
#
#=cut

    GL_MAX_ATOMIC_COUNTER_BUFFER_SIZE => 0x92D8,

#=head2 GL_MAX_ATTRIB_STACK_DEPTH
#
#=cut

    GL_MAX_ATTRIB_STACK_DEPTH => 0x0D35,

#=head2 GL_MAX_BINDABLE_UNIFORM_SIZE_EXT
#
#=cut

    GL_MAX_BINDABLE_UNIFORM_SIZE_EXT => 0x8DED,

#=head2 GL_MAX_CLIENT_ATTRIB_STACK_DEPTH
#
#=cut

    GL_MAX_CLIENT_ATTRIB_STACK_DEPTH => 0x0D3B,

#=head2 GL_MAX_CLIPMAP_DEPTH_SGIX
#
#=cut

    GL_MAX_CLIPMAP_DEPTH_SGIX => 0x8177,

#=head2 GL_MAX_CLIPMAP_VIRTUAL_DEPTH_SGIX
#
#=cut

    GL_MAX_CLIPMAP_VIRTUAL_DEPTH_SGIX => 0x8178,

#=head2 GL_MAX_CLIP_DISTANCES
#
#=cut

    GL_MAX_CLIP_DISTANCES => 0x0D32,

#=head2 GL_MAX_CLIP_PLANES
#
#=cut

    GL_MAX_CLIP_PLANES => 0x0D32,

#=head2 GL_MAX_COLOR_ATTACHMENTS
#
#=cut

    GL_MAX_COLOR_ATTACHMENTS => 0x8CDF,

#=head2 GL_MAX_COLOR_ATTACHMENTS_EXT
#
#=cut

    GL_MAX_COLOR_ATTACHMENTS_EXT => 0x8CDF,

#=head2 GL_MAX_COLOR_MATRIX_STACK_DEPTH
#
#=cut

    GL_MAX_COLOR_MATRIX_STACK_DEPTH => 0x80B3,

#=head2 GL_MAX_COLOR_MATRIX_STACK_DEPTH_SGI
#
#=cut

    GL_MAX_COLOR_MATRIX_STACK_DEPTH_SGI => 0x80B3,

#=head2 GL_MAX_COLOR_TEXTURE_SAMPLES
#
#=cut

    GL_MAX_COLOR_TEXTURE_SAMPLES => 0x910E,

#=head2 GL_MAX_COMBINED_ATOMIC_COUNTERS
#
#=cut

    GL_MAX_COMBINED_ATOMIC_COUNTERS => 0x92D7,

#=head2 GL_MAX_COMBINED_ATOMIC_COUNTER_BUFFERS
#
#=cut

    GL_MAX_COMBINED_ATOMIC_COUNTER_BUFFERS => 0x92D1,

#=head2 GL_MAX_COMBINED_CLIP_AND_CULL_DISTANCES
#
#=cut

    GL_MAX_COMBINED_CLIP_AND_CULL_DISTANCES => 0x82FA,

#=head2 GL_MAX_COMBINED_COMPUTE_UNIFORM_COMPONENTS
#
#=cut

    GL_MAX_COMBINED_COMPUTE_UNIFORM_COMPONENTS => 0x8266,

#=head2 GL_MAX_COMBINED_DIMENSIONS
#
#=cut

    GL_MAX_COMBINED_DIMENSIONS => 0x8282,

#=head2 GL_MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS
#
#=cut

    GL_MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS => 0x8A33,

#=head2 GL_MAX_COMBINED_GEOMETRY_UNIFORM_COMPONENTS
#
#=cut

    GL_MAX_COMBINED_GEOMETRY_UNIFORM_COMPONENTS => 0x8A32,

#=head2 GL_MAX_COMBINED_IMAGE_UNIFORMS
#
#=cut

    GL_MAX_COMBINED_IMAGE_UNIFORMS => 0x90CF,

#=head2 GL_MAX_COMBINED_IMAGE_UNITS_AND_FRAGMENT_OUTPUTS
#
#=cut

    GL_MAX_COMBINED_IMAGE_UNITS_AND_FRAGMENT_OUTPUTS => 0x8F39,

#=head2 GL_MAX_COMBINED_IMAGE_UNITS_AND_FRAGMENT_OUTPUTS_EXT
#
#=cut

    GL_MAX_COMBINED_IMAGE_UNITS_AND_FRAGMENT_OUTPUTS_EXT => 0x8F39,

#=head2 GL_MAX_COMBINED_SHADER_OUTPUT_RESOURCES
#
#=cut

    GL_MAX_COMBINED_SHADER_OUTPUT_RESOURCES => 0x8F39,

#=head2 GL_MAX_COMBINED_SHADER_STORAGE_BLOCKS
#
#=cut

    GL_MAX_COMBINED_SHADER_STORAGE_BLOCKS => 0x90DC,

#=head2 GL_MAX_COMBINED_TESS_CONTROL_UNIFORM_COMPONENTS
#
#=cut

    GL_MAX_COMBINED_TESS_CONTROL_UNIFORM_COMPONENTS => 0x8E1E,

#=head2 GL_MAX_COMBINED_TESS_EVALUATION_UNIFORM_COMPONENTS
#
#=cut

    GL_MAX_COMBINED_TESS_EVALUATION_UNIFORM_COMPONENTS => 0x8E1F,

#=head2 GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS
#
#=cut

    GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS => 0x8B4D,

#=head2 GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS_ARB
#
#=cut

    GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS_ARB => 0x8B4D,

#=head2 GL_MAX_COMBINED_UNIFORM_BLOCKS
#
#=cut

    GL_MAX_COMBINED_UNIFORM_BLOCKS => 0x8A2E,

#=head2 GL_MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS
#
#=cut

    GL_MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS => 0x8A31,

#=head2 GL_MAX_COMPUTE_ATOMIC_COUNTERS
#
#=cut

    GL_MAX_COMPUTE_ATOMIC_COUNTERS => 0x8265,

#=head2 GL_MAX_COMPUTE_ATOMIC_COUNTER_BUFFERS
#
#=cut

    GL_MAX_COMPUTE_ATOMIC_COUNTER_BUFFERS => 0x8264,

#=head2 GL_MAX_COMPUTE_FIXED_GROUP_INVOCATIONS_ARB
#
#=cut

    GL_MAX_COMPUTE_FIXED_GROUP_INVOCATIONS_ARB => 0x90EB,

#=head2 GL_MAX_COMPUTE_FIXED_GROUP_SIZE_ARB
#
#=cut

    GL_MAX_COMPUTE_FIXED_GROUP_SIZE_ARB => 0x91BF,

#=head2 GL_MAX_COMPUTE_IMAGE_UNIFORMS
#
#=cut

    GL_MAX_COMPUTE_IMAGE_UNIFORMS => 0x91BD,

#=head2 GL_MAX_COMPUTE_SHADER_STORAGE_BLOCKS
#
#=cut

    GL_MAX_COMPUTE_SHADER_STORAGE_BLOCKS => 0x90DB,

#=head2 GL_MAX_COMPUTE_SHARED_MEMORY_SIZE
#
#=cut

    GL_MAX_COMPUTE_SHARED_MEMORY_SIZE => 0x8262,

#=head2 GL_MAX_COMPUTE_TEXTURE_IMAGE_UNITS
#
#=cut

    GL_MAX_COMPUTE_TEXTURE_IMAGE_UNITS => 0x91BC,

#=head2 GL_MAX_COMPUTE_UNIFORM_BLOCKS
#
#=cut

    GL_MAX_COMPUTE_UNIFORM_BLOCKS => 0x91BB,

#=head2 GL_MAX_COMPUTE_UNIFORM_COMPONENTS
#
#=cut

    GL_MAX_COMPUTE_UNIFORM_COMPONENTS => 0x8263,

#=head2 GL_MAX_COMPUTE_VARIABLE_GROUP_INVOCATIONS_ARB
#
#=cut

    GL_MAX_COMPUTE_VARIABLE_GROUP_INVOCATIONS_ARB => 0x9344,

#=head2 GL_MAX_COMPUTE_VARIABLE_GROUP_SIZE_ARB
#
#=cut

    GL_MAX_COMPUTE_VARIABLE_GROUP_SIZE_ARB => 0x9345,

#=head2 GL_MAX_COMPUTE_WORK_GROUP_COUNT
#
#=cut

    GL_MAX_COMPUTE_WORK_GROUP_COUNT => 0x91BE,

#=head2 GL_MAX_COMPUTE_WORK_GROUP_INVOCATIONS
#
#=cut

    GL_MAX_COMPUTE_WORK_GROUP_INVOCATIONS => 0x90EB,

#=head2 GL_MAX_COMPUTE_WORK_GROUP_SIZE
#
#=cut

    GL_MAX_COMPUTE_WORK_GROUP_SIZE => 0x91BF,

#=head2 GL_MAX_CONVOLUTION_HEIGHT
#
#=cut

    GL_MAX_CONVOLUTION_HEIGHT => 0x801B,

#=head2 GL_MAX_CONVOLUTION_HEIGHT_EXT
#
#=cut

    GL_MAX_CONVOLUTION_HEIGHT_EXT => 0x801B,

#=head2 GL_MAX_CONVOLUTION_WIDTH
#
#=cut

    GL_MAX_CONVOLUTION_WIDTH => 0x801A,

#=head2 GL_MAX_CONVOLUTION_WIDTH_EXT
#
#=cut

    GL_MAX_CONVOLUTION_WIDTH_EXT => 0x801A,

#=head2 GL_MAX_CUBE_MAP_TEXTURE_SIZE
#
#=cut

    GL_MAX_CUBE_MAP_TEXTURE_SIZE => 0x851C,

#=head2 GL_MAX_CUBE_MAP_TEXTURE_SIZE_ARB
#
#=cut

    GL_MAX_CUBE_MAP_TEXTURE_SIZE_ARB => 0x851C,

#=head2 GL_MAX_CUBE_MAP_TEXTURE_SIZE_EXT
#
#=cut

    GL_MAX_CUBE_MAP_TEXTURE_SIZE_EXT => 0x851C,

#=head2 GL_MAX_CULL_DISTANCES
#
#=cut

    GL_MAX_CULL_DISTANCES => 0x82F9,

#=head2 GL_MAX_DEBUG_GROUP_STACK_DEPTH
#
#=cut

    GL_MAX_DEBUG_GROUP_STACK_DEPTH => 0x826C,

#=head2 GL_MAX_DEBUG_LOGGED_MESSAGES
#
#=cut

    GL_MAX_DEBUG_LOGGED_MESSAGES => 0x9144,

#=head2 GL_MAX_DEBUG_LOGGED_MESSAGES_AMD
#
#=cut

    GL_MAX_DEBUG_LOGGED_MESSAGES_AMD => 0x9144,

#=head2 GL_MAX_DEBUG_LOGGED_MESSAGES_ARB
#
#=cut

    GL_MAX_DEBUG_LOGGED_MESSAGES_ARB => 0x9144,

#=head2 GL_MAX_DEBUG_MESSAGE_LENGTH
#
#=cut

    GL_MAX_DEBUG_MESSAGE_LENGTH => 0x9143,

#=head2 GL_MAX_DEBUG_MESSAGE_LENGTH_AMD
#
#=cut

    GL_MAX_DEBUG_MESSAGE_LENGTH_AMD => 0x9143,

#=head2 GL_MAX_DEBUG_MESSAGE_LENGTH_ARB
#
#=cut

    GL_MAX_DEBUG_MESSAGE_LENGTH_ARB => 0x9143,

#=head2 GL_MAX_DEEP_3D_TEXTURE_DEPTH_NV
#
#=cut

    GL_MAX_DEEP_3D_TEXTURE_DEPTH_NV => 0x90D1,

#=head2 GL_MAX_DEEP_3D_TEXTURE_WIDTH_HEIGHT_NV
#
#=cut

    GL_MAX_DEEP_3D_TEXTURE_WIDTH_HEIGHT_NV => 0x90D0,

#=head2 GL_MAX_DEFORMATION_ORDER_SGIX
#
#=cut

    GL_MAX_DEFORMATION_ORDER_SGIX => 0x8197,

#=head2 GL_MAX_DEPTH
#
#=cut

    GL_MAX_DEPTH => 0x8280,

#=head2 GL_MAX_DEPTH_TEXTURE_SAMPLES
#
#=cut

    GL_MAX_DEPTH_TEXTURE_SAMPLES => 0x910F,

#=head2 GL_MAX_DRAW_BUFFERS
#
#=cut

    GL_MAX_DRAW_BUFFERS => 0x8824,

#=head2 GL_MAX_DRAW_BUFFERS_ARB
#
#=cut

    GL_MAX_DRAW_BUFFERS_ARB => 0x8824,

#=head2 GL_MAX_DRAW_BUFFERS_ATI
#
#=cut

    GL_MAX_DRAW_BUFFERS_ATI => 0x8824,

#=head2 GL_MAX_DUAL_SOURCE_DRAW_BUFFERS
#
#=cut

    GL_MAX_DUAL_SOURCE_DRAW_BUFFERS => 0x88FC,

#=head2 GL_MAX_ELEMENTS_INDICES
#
#=cut

    GL_MAX_ELEMENTS_INDICES => 0x80E9,

#=head2 GL_MAX_ELEMENTS_INDICES_EXT
#
#=cut

    GL_MAX_ELEMENTS_INDICES_EXT => 0x80E9,

#=head2 GL_MAX_ELEMENTS_VERTICES
#
#=cut

    GL_MAX_ELEMENTS_VERTICES => 0x80E8,

#=head2 GL_MAX_ELEMENTS_VERTICES_EXT
#
#=cut

    GL_MAX_ELEMENTS_VERTICES_EXT => 0x80E8,

#=head2 GL_MAX_ELEMENT_INDEX
#
#=cut

    GL_MAX_ELEMENT_INDEX => 0x8D6B,

#=head2 GL_MAX_EVAL_ORDER
#
#=cut

    GL_MAX_EVAL_ORDER => 0x0D30,

#=head2 GL_MAX_EXT
#
#=cut

    GL_MAX_EXT => 0x8008,

#=head2 GL_MAX_FOG_FUNC_POINTS_SGIS
#
#=cut

    GL_MAX_FOG_FUNC_POINTS_SGIS => 0x812C,

#=head2 GL_MAX_FRAGMENT_ATOMIC_COUNTERS
#
#=cut

    GL_MAX_FRAGMENT_ATOMIC_COUNTERS => 0x92D6,

#=head2 GL_MAX_FRAGMENT_ATOMIC_COUNTER_BUFFERS
#
#=cut

    GL_MAX_FRAGMENT_ATOMIC_COUNTER_BUFFERS => 0x92D0,

#=head2 GL_MAX_FRAGMENT_BINDABLE_UNIFORMS_EXT
#
#=cut

    GL_MAX_FRAGMENT_BINDABLE_UNIFORMS_EXT => 0x8DE3,

#=head2 GL_MAX_FRAGMENT_IMAGE_UNIFORMS
#
#=cut

    GL_MAX_FRAGMENT_IMAGE_UNIFORMS => 0x90CE,

#=head2 GL_MAX_FRAGMENT_INPUT_COMPONENTS
#
#=cut

    GL_MAX_FRAGMENT_INPUT_COMPONENTS => 0x9125,

#=head2 GL_MAX_FRAGMENT_INTERPOLATION_OFFSET
#
#=cut

    GL_MAX_FRAGMENT_INTERPOLATION_OFFSET => 0x8E5C,

#=head2 GL_MAX_FRAGMENT_INTERPOLATION_OFFSET_NV
#
#=cut

    GL_MAX_FRAGMENT_INTERPOLATION_OFFSET_NV => 0x8E5C,

#=head2 GL_MAX_FRAGMENT_LIGHTS_SGIX
#
#=cut

    GL_MAX_FRAGMENT_LIGHTS_SGIX => 0x8404,

#=head2 GL_MAX_FRAGMENT_PROGRAM_LOCAL_PARAMETERS_NV
#
#=cut

    GL_MAX_FRAGMENT_PROGRAM_LOCAL_PARAMETERS_NV => 0x8868,

#=head2 GL_MAX_FRAGMENT_SHADER_STORAGE_BLOCKS
#
#=cut

    GL_MAX_FRAGMENT_SHADER_STORAGE_BLOCKS => 0x90DA,

#=head2 GL_MAX_FRAGMENT_UNIFORM_BLOCKS
#
#=cut

    GL_MAX_FRAGMENT_UNIFORM_BLOCKS => 0x8A2D,

#=head2 GL_MAX_FRAGMENT_UNIFORM_COMPONENTS
#
#=cut

    GL_MAX_FRAGMENT_UNIFORM_COMPONENTS => 0x8B49,

#=head2 GL_MAX_FRAGMENT_UNIFORM_COMPONENTS_ARB
#
#=cut

    GL_MAX_FRAGMENT_UNIFORM_COMPONENTS_ARB => 0x8B49,

#=head2 GL_MAX_FRAGMENT_UNIFORM_VECTORS
#
#=cut

    GL_MAX_FRAGMENT_UNIFORM_VECTORS => 0x8DFD,

#=head2 GL_MAX_FRAMEBUFFER_HEIGHT
#
#=cut

    GL_MAX_FRAMEBUFFER_HEIGHT => 0x9316,

#=head2 GL_MAX_FRAMEBUFFER_LAYERS
#
#=cut

    GL_MAX_FRAMEBUFFER_LAYERS => 0x9317,

#=head2 GL_MAX_FRAMEBUFFER_SAMPLES
#
#=cut

    GL_MAX_FRAMEBUFFER_SAMPLES => 0x9318,

#=head2 GL_MAX_FRAMEBUFFER_WIDTH
#
#=cut

    GL_MAX_FRAMEBUFFER_WIDTH => 0x9315,

#=head2 GL_MAX_FRAMEZOOM_FACTOR_SGIX
#
#=cut

    GL_MAX_FRAMEZOOM_FACTOR_SGIX => 0x818D,

#=head2 GL_MAX_GENERAL_COMBINERS_NV
#
#=cut

    GL_MAX_GENERAL_COMBINERS_NV => 0x854D,

#=head2 GL_MAX_GEOMETRY_ATOMIC_COUNTERS
#
#=cut

    GL_MAX_GEOMETRY_ATOMIC_COUNTERS => 0x92D5,

#=head2 GL_MAX_GEOMETRY_ATOMIC_COUNTER_BUFFERS
#
#=cut

    GL_MAX_GEOMETRY_ATOMIC_COUNTER_BUFFERS => 0x92CF,

#=head2 GL_MAX_GEOMETRY_BINDABLE_UNIFORMS_EXT
#
#=cut

    GL_MAX_GEOMETRY_BINDABLE_UNIFORMS_EXT => 0x8DE4,

#=head2 GL_MAX_GEOMETRY_IMAGE_UNIFORMS
#
#=cut

    GL_MAX_GEOMETRY_IMAGE_UNIFORMS => 0x90CD,

#=head2 GL_MAX_GEOMETRY_INPUT_COMPONENTS
#
#=cut

    GL_MAX_GEOMETRY_INPUT_COMPONENTS => 0x9123,

#=head2 GL_MAX_GEOMETRY_OUTPUT_COMPONENTS
#
#=cut

    GL_MAX_GEOMETRY_OUTPUT_COMPONENTS => 0x9124,

#=head2 GL_MAX_GEOMETRY_OUTPUT_VERTICES
#
#=cut

    GL_MAX_GEOMETRY_OUTPUT_VERTICES => 0x8DE0,

#=head2 GL_MAX_GEOMETRY_OUTPUT_VERTICES_ARB
#
#=cut

    GL_MAX_GEOMETRY_OUTPUT_VERTICES_ARB => 0x8DE0,

#=head2 GL_MAX_GEOMETRY_OUTPUT_VERTICES_EXT
#
#=cut

    GL_MAX_GEOMETRY_OUTPUT_VERTICES_EXT => 0x8DE0,

#=head2 GL_MAX_GEOMETRY_PROGRAM_INVOCATIONS_NV
#
#=cut

    GL_MAX_GEOMETRY_PROGRAM_INVOCATIONS_NV => 0x8E5A,

#=head2 GL_MAX_GEOMETRY_SHADER_INVOCATIONS
#
#=cut

    GL_MAX_GEOMETRY_SHADER_INVOCATIONS => 0x8E5A,

#=head2 GL_MAX_GEOMETRY_SHADER_STORAGE_BLOCKS
#
#=cut

    GL_MAX_GEOMETRY_SHADER_STORAGE_BLOCKS => 0x90D7,

#=head2 GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS
#
#=cut

    GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS => 0x8C29,

#=head2 GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS_ARB
#
#=cut

    GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS_ARB => 0x8C29,

#=head2 GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS_EXT
#
#=cut

    GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS_EXT => 0x8C29,

#=head2 GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS
#
#=cut

    GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS => 0x8DE1,

#=head2 GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS_ARB
#
#=cut

    GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS_ARB => 0x8DE1,

#=head2 GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS_EXT
#
#=cut

    GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS_EXT => 0x8DE1,

#=head2 GL_MAX_GEOMETRY_UNIFORM_BLOCKS
#
#=cut

    GL_MAX_GEOMETRY_UNIFORM_BLOCKS => 0x8A2C,

#=head2 GL_MAX_GEOMETRY_UNIFORM_COMPONENTS
#
#=cut

    GL_MAX_GEOMETRY_UNIFORM_COMPONENTS => 0x8DDF,

#=head2 GL_MAX_GEOMETRY_UNIFORM_COMPONENTS_ARB
#
#=cut

    GL_MAX_GEOMETRY_UNIFORM_COMPONENTS_ARB => 0x8DDF,

#=head2 GL_MAX_GEOMETRY_UNIFORM_COMPONENTS_EXT
#
#=cut

    GL_MAX_GEOMETRY_UNIFORM_COMPONENTS_EXT => 0x8DDF,

#=head2 GL_MAX_GEOMETRY_VARYING_COMPONENTS_ARB
#
#=cut

    GL_MAX_GEOMETRY_VARYING_COMPONENTS_ARB => 0x8DDD,

#=head2 GL_MAX_GEOMETRY_VARYING_COMPONENTS_EXT
#
#=cut

    GL_MAX_GEOMETRY_VARYING_COMPONENTS_EXT => 0x8DDD,

#=head2 GL_MAX_HEIGHT
#
#=cut

    GL_MAX_HEIGHT => 0x827F,

#=head2 GL_MAX_IMAGE_SAMPLES
#
#=cut

    GL_MAX_IMAGE_SAMPLES => 0x906D,

#=head2 GL_MAX_IMAGE_SAMPLES_EXT
#
#=cut

    GL_MAX_IMAGE_SAMPLES_EXT => 0x906D,

#=head2 GL_MAX_IMAGE_UNITS
#
#=cut

    GL_MAX_IMAGE_UNITS => 0x8F38,

#=head2 GL_MAX_IMAGE_UNITS_EXT
#
#=cut

    GL_MAX_IMAGE_UNITS_EXT => 0x8F38,

#=head2 GL_MAX_INTEGER_SAMPLES
#
#=cut

    GL_MAX_INTEGER_SAMPLES => 0x9110,

#=head2 GL_MAX_LABEL_LENGTH
#
#=cut

    GL_MAX_LABEL_LENGTH => 0x82E8,

#=head2 GL_MAX_LAYERS
#
#=cut

    GL_MAX_LAYERS => 0x8281,

#=head2 GL_MAX_LIGHTS
#
#=cut

    GL_MAX_LIGHTS => 0x0D31,

#=head2 GL_MAX_LIST_NESTING
#
#=cut

    GL_MAX_LIST_NESTING => 0x0B31,

#=head2 GL_MAX_MAP_TESSELLATION_NV
#
#=cut

    GL_MAX_MAP_TESSELLATION_NV => 0x86D6,

#=head2 GL_MAX_MATRIX_PALETTE_STACK_DEPTH_ARB
#
#=cut

    GL_MAX_MATRIX_PALETTE_STACK_DEPTH_ARB => 0x8841,

#=head2 GL_MAX_MODELVIEW_STACK_DEPTH
#
#=cut

    GL_MAX_MODELVIEW_STACK_DEPTH => 0x0D36,

#=head2 GL_MAX_MULTISAMPLE_COVERAGE_MODES_NV
#
#=cut

    GL_MAX_MULTISAMPLE_COVERAGE_MODES_NV => 0x8E11,

#=head2 GL_MAX_NAME_LENGTH
#
#=cut

    GL_MAX_NAME_LENGTH => 0x92F6,

#=head2 GL_MAX_NAME_STACK_DEPTH
#
#=cut

    GL_MAX_NAME_STACK_DEPTH => 0x0D37,

#=head2 GL_MAX_NUM_ACTIVE_VARIABLES
#
#=cut

    GL_MAX_NUM_ACTIVE_VARIABLES => 0x92F7,

#=head2 GL_MAX_NUM_COMPATIBLE_SUBROUTINES
#
#=cut

    GL_MAX_NUM_COMPATIBLE_SUBROUTINES => 0x92F8,

#=head2 GL_MAX_OPTIMIZED_VERTEX_SHADER_INSTRUCTIONS_EXT
#
#=cut

    GL_MAX_OPTIMIZED_VERTEX_SHADER_INSTRUCTIONS_EXT => 0x87CA,

#=head2 GL_MAX_OPTIMIZED_VERTEX_SHADER_INVARIANTS_EXT
#
#=cut

    GL_MAX_OPTIMIZED_VERTEX_SHADER_INVARIANTS_EXT => 0x87CD,

#=head2 GL_MAX_OPTIMIZED_VERTEX_SHADER_LOCALS_EXT
#
#=cut

    GL_MAX_OPTIMIZED_VERTEX_SHADER_LOCALS_EXT => 0x87CE,

#=head2 GL_MAX_OPTIMIZED_VERTEX_SHADER_LOCAL_CONSTANTS_EXT
#
#=cut

    GL_MAX_OPTIMIZED_VERTEX_SHADER_LOCAL_CONSTANTS_EXT => 0x87CC,

#=head2 GL_MAX_OPTIMIZED_VERTEX_SHADER_VARIANTS_EXT
#
#=cut

    GL_MAX_OPTIMIZED_VERTEX_SHADER_VARIANTS_EXT => 0x87CB,

#=head2 GL_MAX_PALETTE_MATRICES_ARB
#
#=cut

    GL_MAX_PALETTE_MATRICES_ARB => 0x8842,

#=head2 GL_MAX_PATCH_VERTICES
#
#=cut

    GL_MAX_PATCH_VERTICES => 0x8E7D,

#=head2 GL_MAX_PIXEL_MAP_TABLE
#
#=cut

    GL_MAX_PIXEL_MAP_TABLE => 0x0D34,

#=head2 GL_MAX_PIXEL_TRANSFORM_2D_STACK_DEPTH_EXT
#
#=cut

    GL_MAX_PIXEL_TRANSFORM_2D_STACK_DEPTH_EXT => 0x8337,

#=head2 GL_MAX_PN_TRIANGLES_TESSELATION_LEVEL_ATI
#
#=cut

    GL_MAX_PN_TRIANGLES_TESSELATION_LEVEL_ATI => 0x87F1,

#=head2 GL_MAX_PROGRAM_ADDRESS_REGISTERS_ARB
#
#=cut

    GL_MAX_PROGRAM_ADDRESS_REGISTERS_ARB => 0x88B1,

#=head2 GL_MAX_PROGRAM_ALU_INSTRUCTIONS_ARB
#
#=cut

    GL_MAX_PROGRAM_ALU_INSTRUCTIONS_ARB => 0x880B,

#=head2 GL_MAX_PROGRAM_ATTRIBS_ARB
#
#=cut

    GL_MAX_PROGRAM_ATTRIBS_ARB => 0x88AD,

#=head2 GL_MAX_PROGRAM_ATTRIB_COMPONENTS_NV
#
#=cut

    GL_MAX_PROGRAM_ATTRIB_COMPONENTS_NV => 0x8908,

#=head2 GL_MAX_PROGRAM_CALL_DEPTH_NV
#
#=cut

    GL_MAX_PROGRAM_CALL_DEPTH_NV => 0x88F5,

#=head2 GL_MAX_PROGRAM_ENV_PARAMETERS_ARB
#
#=cut

    GL_MAX_PROGRAM_ENV_PARAMETERS_ARB => 0x88B5,

#=head2 GL_MAX_PROGRAM_EXEC_INSTRUCTIONS_NV
#
#=cut

    GL_MAX_PROGRAM_EXEC_INSTRUCTIONS_NV => 0x88F4,

#=head2 GL_MAX_PROGRAM_GENERIC_ATTRIBS_NV
#
#=cut

    GL_MAX_PROGRAM_GENERIC_ATTRIBS_NV => 0x8DA5,

#=head2 GL_MAX_PROGRAM_GENERIC_RESULTS_NV
#
#=cut

    GL_MAX_PROGRAM_GENERIC_RESULTS_NV => 0x8DA6,

#=head2 GL_MAX_PROGRAM_IF_DEPTH_NV
#
#=cut

    GL_MAX_PROGRAM_IF_DEPTH_NV => 0x88F6,

#=head2 GL_MAX_PROGRAM_INSTRUCTIONS_ARB
#
#=cut

    GL_MAX_PROGRAM_INSTRUCTIONS_ARB => 0x88A1,

#=head2 GL_MAX_PROGRAM_LOCAL_PARAMETERS_ARB
#
#=cut

    GL_MAX_PROGRAM_LOCAL_PARAMETERS_ARB => 0x88B4,

#=head2 GL_MAX_PROGRAM_LOOP_COUNT_NV
#
#=cut

    GL_MAX_PROGRAM_LOOP_COUNT_NV => 0x88F8,

#=head2 GL_MAX_PROGRAM_LOOP_DEPTH_NV
#
#=cut

    GL_MAX_PROGRAM_LOOP_DEPTH_NV => 0x88F7,

#=head2 GL_MAX_PROGRAM_MATRICES_ARB
#
#=cut

    GL_MAX_PROGRAM_MATRICES_ARB => 0x862F,

#=head2 GL_MAX_PROGRAM_MATRIX_STACK_DEPTH_ARB
#
#=cut

    GL_MAX_PROGRAM_MATRIX_STACK_DEPTH_ARB => 0x862E,

#=head2 GL_MAX_PROGRAM_NATIVE_ADDRESS_REGISTERS_ARB
#
#=cut

    GL_MAX_PROGRAM_NATIVE_ADDRESS_REGISTERS_ARB => 0x88B3,

#=head2 GL_MAX_PROGRAM_NATIVE_ALU_INSTRUCTIONS_ARB
#
#=cut

    GL_MAX_PROGRAM_NATIVE_ALU_INSTRUCTIONS_ARB => 0x880E,

#=head2 GL_MAX_PROGRAM_NATIVE_ATTRIBS_ARB
#
#=cut

    GL_MAX_PROGRAM_NATIVE_ATTRIBS_ARB => 0x88AF,

#=head2 GL_MAX_PROGRAM_NATIVE_INSTRUCTIONS_ARB
#
#=cut

    GL_MAX_PROGRAM_NATIVE_INSTRUCTIONS_ARB => 0x88A3,

#=head2 GL_MAX_PROGRAM_NATIVE_PARAMETERS_ARB
#
#=cut

    GL_MAX_PROGRAM_NATIVE_PARAMETERS_ARB => 0x88AB,

#=head2 GL_MAX_PROGRAM_NATIVE_TEMPORARIES_ARB
#
#=cut

    GL_MAX_PROGRAM_NATIVE_TEMPORARIES_ARB => 0x88A7,

#=head2 GL_MAX_PROGRAM_NATIVE_TEX_INDIRECTIONS_ARB
#
#=cut

    GL_MAX_PROGRAM_NATIVE_TEX_INDIRECTIONS_ARB => 0x8810,

#=head2 GL_MAX_PROGRAM_NATIVE_TEX_INSTRUCTIONS_ARB
#
#=cut

    GL_MAX_PROGRAM_NATIVE_TEX_INSTRUCTIONS_ARB => 0x880F,

#=head2 GL_MAX_PROGRAM_OUTPUT_VERTICES_NV
#
#=cut

    GL_MAX_PROGRAM_OUTPUT_VERTICES_NV => 0x8C27,

#=head2 GL_MAX_PROGRAM_PARAMETERS_ARB
#
#=cut

    GL_MAX_PROGRAM_PARAMETERS_ARB => 0x88A9,

#=head2 GL_MAX_PROGRAM_PARAMETER_BUFFER_BINDINGS_NV
#
#=cut

    GL_MAX_PROGRAM_PARAMETER_BUFFER_BINDINGS_NV => 0x8DA0,

#=head2 GL_MAX_PROGRAM_PARAMETER_BUFFER_SIZE_NV
#
#=cut

    GL_MAX_PROGRAM_PARAMETER_BUFFER_SIZE_NV => 0x8DA1,

#=head2 GL_MAX_PROGRAM_PATCH_ATTRIBS_NV
#
#=cut

    GL_MAX_PROGRAM_PATCH_ATTRIBS_NV => 0x86D8,

#=head2 GL_MAX_PROGRAM_RESULT_COMPONENTS_NV
#
#=cut

    GL_MAX_PROGRAM_RESULT_COMPONENTS_NV => 0x8909,

#=head2 GL_MAX_PROGRAM_SUBROUTINE_NUM_NV
#
#=cut

    GL_MAX_PROGRAM_SUBROUTINE_NUM_NV => 0x8F45,

#=head2 GL_MAX_PROGRAM_SUBROUTINE_PARAMETERS_NV
#
#=cut

    GL_MAX_PROGRAM_SUBROUTINE_PARAMETERS_NV => 0x8F44,

#=head2 GL_MAX_PROGRAM_TEMPORARIES_ARB
#
#=cut

    GL_MAX_PROGRAM_TEMPORARIES_ARB => 0x88A5,

#=head2 GL_MAX_PROGRAM_TEXEL_OFFSET
#
#=cut

    GL_MAX_PROGRAM_TEXEL_OFFSET => 0x8905,

#=head2 GL_MAX_PROGRAM_TEXEL_OFFSET_EXT
#
#=cut

    GL_MAX_PROGRAM_TEXEL_OFFSET_EXT => 0x8905,

#=head2 GL_MAX_PROGRAM_TEXEL_OFFSET_NV
#
#=cut

    GL_MAX_PROGRAM_TEXEL_OFFSET_NV => 0x8905,

#=head2 GL_MAX_PROGRAM_TEXTURE_GATHER_COMPONENTS_ARB
#
#=cut

    GL_MAX_PROGRAM_TEXTURE_GATHER_COMPONENTS_ARB => 0x8F9F,

#=head2 GL_MAX_PROGRAM_TEXTURE_GATHER_OFFSET
#
#=cut

    GL_MAX_PROGRAM_TEXTURE_GATHER_OFFSET => 0x8E5F,

#=head2 GL_MAX_PROGRAM_TEXTURE_GATHER_OFFSET_ARB
#
#=cut

    GL_MAX_PROGRAM_TEXTURE_GATHER_OFFSET_ARB => 0x8E5F,

#=head2 GL_MAX_PROGRAM_TEXTURE_GATHER_OFFSET_NV
#
#=cut

    GL_MAX_PROGRAM_TEXTURE_GATHER_OFFSET_NV => 0x8E5F,

#=head2 GL_MAX_PROGRAM_TEX_INDIRECTIONS_ARB
#
#=cut

    GL_MAX_PROGRAM_TEX_INDIRECTIONS_ARB => 0x880D,

#=head2 GL_MAX_PROGRAM_TEX_INSTRUCTIONS_ARB
#
#=cut

    GL_MAX_PROGRAM_TEX_INSTRUCTIONS_ARB => 0x880C,

#=head2 GL_MAX_PROGRAM_TOTAL_OUTPUT_COMPONENTS_NV
#
#=cut

    GL_MAX_PROGRAM_TOTAL_OUTPUT_COMPONENTS_NV => 0x8C28,

#=head2 GL_MAX_PROJECTION_STACK_DEPTH
#
#=cut

    GL_MAX_PROJECTION_STACK_DEPTH => 0x0D38,

#=head2 GL_MAX_RATIONAL_EVAL_ORDER_NV
#
#=cut

    GL_MAX_RATIONAL_EVAL_ORDER_NV => 0x86D7,

#=head2 GL_MAX_RECTANGLE_TEXTURE_SIZE
#
#=cut

    GL_MAX_RECTANGLE_TEXTURE_SIZE => 0x84F8,

#=head2 GL_MAX_RECTANGLE_TEXTURE_SIZE_ARB
#
#=cut

    GL_MAX_RECTANGLE_TEXTURE_SIZE_ARB => 0x84F8,

#=head2 GL_MAX_RECTANGLE_TEXTURE_SIZE_NV
#
#=cut

    GL_MAX_RECTANGLE_TEXTURE_SIZE_NV => 0x84F8,

#=head2 GL_MAX_RENDERBUFFER_SIZE
#
#=cut

    GL_MAX_RENDERBUFFER_SIZE => 0x84E8,

#=head2 GL_MAX_RENDERBUFFER_SIZE_EXT
#
#=cut

    GL_MAX_RENDERBUFFER_SIZE_EXT => 0x84E8,

#=head2 GL_MAX_SAMPLES
#
#=cut

    GL_MAX_SAMPLES => 0x8D57,

#=head2 GL_MAX_SAMPLES_EXT
#
#=cut

    GL_MAX_SAMPLES_EXT => 0x8D57,

#=head2 GL_MAX_SAMPLE_MASK_WORDS
#
#=cut

    GL_MAX_SAMPLE_MASK_WORDS => 0x8E59,

#=head2 GL_MAX_SAMPLE_MASK_WORDS_NV
#
#=cut

    GL_MAX_SAMPLE_MASK_WORDS_NV => 0x8E59,

#=head2 GL_MAX_SERVER_WAIT_TIMEOUT
#
#=cut

    GL_MAX_SERVER_WAIT_TIMEOUT => 0x9111,

#=head2 GL_MAX_SHADER_BUFFER_ADDRESS_NV
#
#=cut

    GL_MAX_SHADER_BUFFER_ADDRESS_NV => 0x8F35,

#=head2 GL_MAX_SHADER_STORAGE_BLOCK_SIZE
#
#=cut

    GL_MAX_SHADER_STORAGE_BLOCK_SIZE => 0x90DE,

#=head2 GL_MAX_SHADER_STORAGE_BUFFER_BINDINGS
#
#=cut

    GL_MAX_SHADER_STORAGE_BUFFER_BINDINGS => 0x90DD,

#=head2 GL_MAX_SHININESS_NV
#
#=cut

    GL_MAX_SHININESS_NV => 0x8504,

#=head2 GL_MAX_SPARSE_3D_TEXTURE_SIZE_AMD
#
#=cut

    GL_MAX_SPARSE_3D_TEXTURE_SIZE_AMD => 0x9199,

#=head2 GL_MAX_SPARSE_3D_TEXTURE_SIZE_ARB
#
#=cut

    GL_MAX_SPARSE_3D_TEXTURE_SIZE_ARB => 0x9199,

#=head2 GL_MAX_SPARSE_ARRAY_TEXTURE_LAYERS
#
#=cut

    GL_MAX_SPARSE_ARRAY_TEXTURE_LAYERS => 0x919A,

#=head2 GL_MAX_SPARSE_ARRAY_TEXTURE_LAYERS_ARB
#
#=cut

    GL_MAX_SPARSE_ARRAY_TEXTURE_LAYERS_ARB => 0x919A,

#=head2 GL_MAX_SPARSE_TEXTURE_SIZE_AMD
#
#=cut

    GL_MAX_SPARSE_TEXTURE_SIZE_AMD => 0x9198,

#=head2 GL_MAX_SPARSE_TEXTURE_SIZE_ARB
#
#=cut

    GL_MAX_SPARSE_TEXTURE_SIZE_ARB => 0x9198,

#=head2 GL_MAX_SPOT_EXPONENT_NV
#
#=cut

    GL_MAX_SPOT_EXPONENT_NV => 0x8505,

#=head2 GL_MAX_SUBROUTINES
#
#=cut

    GL_MAX_SUBROUTINES => 0x8DE7,

#=head2 GL_MAX_SUBROUTINE_UNIFORM_LOCATIONS
#
#=cut

    GL_MAX_SUBROUTINE_UNIFORM_LOCATIONS => 0x8DE8,

#=head2 GL_MAX_TESS_CONTROL_ATOMIC_COUNTERS
#
#=cut

    GL_MAX_TESS_CONTROL_ATOMIC_COUNTERS => 0x92D3,

#=head2 GL_MAX_TESS_CONTROL_ATOMIC_COUNTER_BUFFERS
#
#=cut

    GL_MAX_TESS_CONTROL_ATOMIC_COUNTER_BUFFERS => 0x92CD,

#=head2 GL_MAX_TESS_CONTROL_IMAGE_UNIFORMS
#
#=cut

    GL_MAX_TESS_CONTROL_IMAGE_UNIFORMS => 0x90CB,

#=head2 GL_MAX_TESS_CONTROL_INPUT_COMPONENTS
#
#=cut

    GL_MAX_TESS_CONTROL_INPUT_COMPONENTS => 0x886C,

#=head2 GL_MAX_TESS_CONTROL_OUTPUT_COMPONENTS
#
#=cut

    GL_MAX_TESS_CONTROL_OUTPUT_COMPONENTS => 0x8E83,

#=head2 GL_MAX_TESS_CONTROL_SHADER_STORAGE_BLOCKS
#
#=cut

    GL_MAX_TESS_CONTROL_SHADER_STORAGE_BLOCKS => 0x90D8,

#=head2 GL_MAX_TESS_CONTROL_TEXTURE_IMAGE_UNITS
#
#=cut

    GL_MAX_TESS_CONTROL_TEXTURE_IMAGE_UNITS => 0x8E81,

#=head2 GL_MAX_TESS_CONTROL_TOTAL_OUTPUT_COMPONENTS
#
#=cut

    GL_MAX_TESS_CONTROL_TOTAL_OUTPUT_COMPONENTS => 0x8E85,

#=head2 GL_MAX_TESS_CONTROL_UNIFORM_BLOCKS
#
#=cut

    GL_MAX_TESS_CONTROL_UNIFORM_BLOCKS => 0x8E89,

#=head2 GL_MAX_TESS_CONTROL_UNIFORM_COMPONENTS
#
#=cut

    GL_MAX_TESS_CONTROL_UNIFORM_COMPONENTS => 0x8E7F,

#=head2 GL_MAX_TESS_EVALUATION_ATOMIC_COUNTERS
#
#=cut

    GL_MAX_TESS_EVALUATION_ATOMIC_COUNTERS => 0x92D4,

#=head2 GL_MAX_TESS_EVALUATION_ATOMIC_COUNTER_BUFFERS
#
#=cut

    GL_MAX_TESS_EVALUATION_ATOMIC_COUNTER_BUFFERS => 0x92CE,

#=head2 GL_MAX_TESS_EVALUATION_IMAGE_UNIFORMS
#
#=cut

    GL_MAX_TESS_EVALUATION_IMAGE_UNIFORMS => 0x90CC,

#=head2 GL_MAX_TESS_EVALUATION_INPUT_COMPONENTS
#
#=cut

    GL_MAX_TESS_EVALUATION_INPUT_COMPONENTS => 0x886D,

#=head2 GL_MAX_TESS_EVALUATION_OUTPUT_COMPONENTS
#
#=cut

    GL_MAX_TESS_EVALUATION_OUTPUT_COMPONENTS => 0x8E86,

#=head2 GL_MAX_TESS_EVALUATION_SHADER_STORAGE_BLOCKS
#
#=cut

    GL_MAX_TESS_EVALUATION_SHADER_STORAGE_BLOCKS => 0x90D9,

#=head2 GL_MAX_TESS_EVALUATION_TEXTURE_IMAGE_UNITS
#
#=cut

    GL_MAX_TESS_EVALUATION_TEXTURE_IMAGE_UNITS => 0x8E82,

#=head2 GL_MAX_TESS_EVALUATION_UNIFORM_BLOCKS
#
#=cut

    GL_MAX_TESS_EVALUATION_UNIFORM_BLOCKS => 0x8E8A,

#=head2 GL_MAX_TESS_EVALUATION_UNIFORM_COMPONENTS
#
#=cut

    GL_MAX_TESS_EVALUATION_UNIFORM_COMPONENTS => 0x8E80,

#=head2 GL_MAX_TESS_GEN_LEVEL
#
#=cut

    GL_MAX_TESS_GEN_LEVEL => 0x8E7E,

#=head2 GL_MAX_TESS_PATCH_COMPONENTS
#
#=cut

    GL_MAX_TESS_PATCH_COMPONENTS => 0x8E84,

#=head2 GL_MAX_TEXTURE_BUFFER_SIZE
#
#=cut

    GL_MAX_TEXTURE_BUFFER_SIZE => 0x8C2B,

#=head2 GL_MAX_TEXTURE_BUFFER_SIZE_ARB
#
#=cut

    GL_MAX_TEXTURE_BUFFER_SIZE_ARB => 0x8C2B,

#=head2 GL_MAX_TEXTURE_BUFFER_SIZE_EXT
#
#=cut

    GL_MAX_TEXTURE_BUFFER_SIZE_EXT => 0x8C2B,

#=head2 GL_MAX_TEXTURE_COORDS
#
#=cut

    GL_MAX_TEXTURE_COORDS => 0x8871,

#=head2 GL_MAX_TEXTURE_COORDS_ARB
#
#=cut

    GL_MAX_TEXTURE_COORDS_ARB => 0x8871,

#=head2 GL_MAX_TEXTURE_COORDS_NV
#
#=cut

    GL_MAX_TEXTURE_COORDS_NV => 0x8871,

#=head2 GL_MAX_TEXTURE_IMAGE_UNITS
#
#=cut

    GL_MAX_TEXTURE_IMAGE_UNITS => 0x8872,

#=head2 GL_MAX_TEXTURE_IMAGE_UNITS_ARB
#
#=cut

    GL_MAX_TEXTURE_IMAGE_UNITS_ARB => 0x8872,

#=head2 GL_MAX_TEXTURE_IMAGE_UNITS_NV
#
#=cut

    GL_MAX_TEXTURE_IMAGE_UNITS_NV => 0x8872,

#=head2 GL_MAX_TEXTURE_LOD_BIAS
#
#=cut

    GL_MAX_TEXTURE_LOD_BIAS => 0x84FD,

#=head2 GL_MAX_TEXTURE_LOD_BIAS_EXT
#
#=cut

    GL_MAX_TEXTURE_LOD_BIAS_EXT => 0x84FD,

#=head2 GL_MAX_TEXTURE_MAX_ANISOTROPY_EXT
#
#=cut

    GL_MAX_TEXTURE_MAX_ANISOTROPY_EXT => 0x84FF,

#=head2 GL_MAX_TEXTURE_SIZE
#
#=cut

    GL_MAX_TEXTURE_SIZE => 0x0D33,

#=head2 GL_MAX_TEXTURE_STACK_DEPTH
#
#=cut

    GL_MAX_TEXTURE_STACK_DEPTH => 0x0D39,

#=head2 GL_MAX_TEXTURE_UNITS
#
#=cut

    GL_MAX_TEXTURE_UNITS => 0x84E2,

#=head2 GL_MAX_TEXTURE_UNITS_ARB
#
#=cut

    GL_MAX_TEXTURE_UNITS_ARB => 0x84E2,

#=head2 GL_MAX_TRACK_MATRICES_NV
#
#=cut

    GL_MAX_TRACK_MATRICES_NV => 0x862F,

#=head2 GL_MAX_TRACK_MATRIX_STACK_DEPTH_NV
#
#=cut

    GL_MAX_TRACK_MATRIX_STACK_DEPTH_NV => 0x862E,

#=head2 GL_MAX_TRANSFORM_FEEDBACK_BUFFERS
#
#=cut

    GL_MAX_TRANSFORM_FEEDBACK_BUFFERS => 0x8E70,

#=head2 GL_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS
#
#=cut

    GL_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS => 0x8C8A,

#=head2 GL_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS_EXT
#
#=cut

    GL_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS_EXT => 0x8C8A,

#=head2 GL_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS_NV
#
#=cut

    GL_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS_NV => 0x8C8A,

#=head2 GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS
#
#=cut

    GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS => 0x8C8B,

#=head2 GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS_EXT
#
#=cut

    GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS_EXT => 0x8C8B,

#=head2 GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS_NV
#
#=cut

    GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS_NV => 0x8C8B,

#=head2 GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS
#
#=cut

    GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS => 0x8C80,

#=head2 GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS_EXT
#
#=cut

    GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS_EXT => 0x8C80,

#=head2 GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS_NV
#
#=cut

    GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS_NV => 0x8C80,

#=head2 GL_MAX_UNIFORM_BLOCK_SIZE
#
#=cut

    GL_MAX_UNIFORM_BLOCK_SIZE => 0x8A30,

#=head2 GL_MAX_UNIFORM_BUFFER_BINDINGS
#
#=cut

    GL_MAX_UNIFORM_BUFFER_BINDINGS => 0x8A2F,

#=head2 GL_MAX_UNIFORM_LOCATIONS
#
#=cut

    GL_MAX_UNIFORM_LOCATIONS => 0x826E,

#=head2 GL_MAX_VARYING_COMPONENTS
#
#=cut

    GL_MAX_VARYING_COMPONENTS => 0x8B4B,

#=head2 GL_MAX_VARYING_COMPONENTS_EXT
#
#=cut

    GL_MAX_VARYING_COMPONENTS_EXT => 0x8B4B,

#=head2 GL_MAX_VARYING_FLOATS
#
#=cut

    GL_MAX_VARYING_FLOATS => 0x8B4B,

#=head2 GL_MAX_VARYING_FLOATS_ARB
#
#=cut

    GL_MAX_VARYING_FLOATS_ARB => 0x8B4B,

#=head2 GL_MAX_VARYING_VECTORS
#
#=cut

    GL_MAX_VARYING_VECTORS => 0x8DFC,

#=head2 GL_MAX_VERTEX_ARRAY_RANGE_ELEMENT_NV
#
#=cut

    GL_MAX_VERTEX_ARRAY_RANGE_ELEMENT_NV => 0x8520,

#=head2 GL_MAX_VERTEX_ATOMIC_COUNTERS
#
#=cut

    GL_MAX_VERTEX_ATOMIC_COUNTERS => 0x92D2,

#=head2 GL_MAX_VERTEX_ATOMIC_COUNTER_BUFFERS
#
#=cut

    GL_MAX_VERTEX_ATOMIC_COUNTER_BUFFERS => 0x92CC,

#=head2 GL_MAX_VERTEX_ATTRIBS
#
#=cut

    GL_MAX_VERTEX_ATTRIBS => 0x8869,

#=head2 GL_MAX_VERTEX_ATTRIBS_ARB
#
#=cut

    GL_MAX_VERTEX_ATTRIBS_ARB => 0x8869,

#=head2 GL_MAX_VERTEX_ATTRIB_BINDINGS
#
#=cut

    GL_MAX_VERTEX_ATTRIB_BINDINGS => 0x82DA,

#=head2 GL_MAX_VERTEX_ATTRIB_RELATIVE_OFFSET
#
#=cut

    GL_MAX_VERTEX_ATTRIB_RELATIVE_OFFSET => 0x82D9,

#=head2 GL_MAX_VERTEX_ATTRIB_STRIDE
#
#=cut

    GL_MAX_VERTEX_ATTRIB_STRIDE => 0x82E5,

#=head2 GL_MAX_VERTEX_BINDABLE_UNIFORMS_EXT
#
#=cut

    GL_MAX_VERTEX_BINDABLE_UNIFORMS_EXT => 0x8DE2,

#=head2 GL_MAX_VERTEX_HINT_PGI
#
#=cut

    GL_MAX_VERTEX_HINT_PGI => 0x1A22D,

#=head2 GL_MAX_VERTEX_IMAGE_UNIFORMS
#
#=cut

    GL_MAX_VERTEX_IMAGE_UNIFORMS => 0x90CA,

#=head2 GL_MAX_VERTEX_OUTPUT_COMPONENTS
#
#=cut

    GL_MAX_VERTEX_OUTPUT_COMPONENTS => 0x9122,

#=head2 GL_MAX_VERTEX_SHADER_INSTRUCTIONS_EXT
#
#=cut

    GL_MAX_VERTEX_SHADER_INSTRUCTIONS_EXT => 0x87C5,

#=head2 GL_MAX_VERTEX_SHADER_INVARIANTS_EXT
#
#=cut

    GL_MAX_VERTEX_SHADER_INVARIANTS_EXT => 0x87C7,

#=head2 GL_MAX_VERTEX_SHADER_LOCALS_EXT
#
#=cut

    GL_MAX_VERTEX_SHADER_LOCALS_EXT => 0x87C9,

#=head2 GL_MAX_VERTEX_SHADER_LOCAL_CONSTANTS_EXT
#
#=cut

    GL_MAX_VERTEX_SHADER_LOCAL_CONSTANTS_EXT => 0x87C8,

#=head2 GL_MAX_VERTEX_SHADER_STORAGE_BLOCKS
#
#=cut

    GL_MAX_VERTEX_SHADER_STORAGE_BLOCKS => 0x90D6,

#=head2 GL_MAX_VERTEX_SHADER_VARIANTS_EXT
#
#=cut

    GL_MAX_VERTEX_SHADER_VARIANTS_EXT => 0x87C6,

#=head2 GL_MAX_VERTEX_STREAMS
#
#=cut

    GL_MAX_VERTEX_STREAMS => 0x8E71,

#=head2 GL_MAX_VERTEX_STREAMS_ATI
#
#=cut

    GL_MAX_VERTEX_STREAMS_ATI => 0x876B,

#=head2 GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS
#
#=cut

    GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS => 0x8B4C,

#=head2 GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS_ARB
#
#=cut

    GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS_ARB => 0x8B4C,

#=head2 GL_MAX_VERTEX_UNIFORM_BLOCKS
#
#=cut

    GL_MAX_VERTEX_UNIFORM_BLOCKS => 0x8A2B,

#=head2 GL_MAX_VERTEX_UNIFORM_COMPONENTS
#
#=cut

    GL_MAX_VERTEX_UNIFORM_COMPONENTS => 0x8B4A,

#=head2 GL_MAX_VERTEX_UNIFORM_COMPONENTS_ARB
#
#=cut

    GL_MAX_VERTEX_UNIFORM_COMPONENTS_ARB => 0x8B4A,

#=head2 GL_MAX_VERTEX_UNIFORM_VECTORS
#
#=cut

    GL_MAX_VERTEX_UNIFORM_VECTORS => 0x8DFB,

#=head2 GL_MAX_VERTEX_UNITS_ARB
#
#=cut

    GL_MAX_VERTEX_UNITS_ARB => 0x86A4,

#=head2 GL_MAX_VERTEX_VARYING_COMPONENTS_ARB
#
#=cut

    GL_MAX_VERTEX_VARYING_COMPONENTS_ARB => 0x8DDE,

#=head2 GL_MAX_VERTEX_VARYING_COMPONENTS_EXT
#
#=cut

    GL_MAX_VERTEX_VARYING_COMPONENTS_EXT => 0x8DDE,

#=head2 GL_MAX_VIEWPORTS
#
#=cut

    GL_MAX_VIEWPORTS => 0x825B,

#=head2 GL_MAX_VIEWPORT_DIMS
#
#=cut

    GL_MAX_VIEWPORT_DIMS => 0x0D3A,

#=head2 GL_MAX_WIDTH
#
#=cut

    GL_MAX_WIDTH => 0x827E,

#=head2 GL_MEDIUM_FLOAT
#
#=cut

    GL_MEDIUM_FLOAT => 0x8DF1,

#=head2 GL_MEDIUM_INT
#
#=cut

    GL_MEDIUM_INT => 0x8DF4,

#=head2 GL_MESAX_texture_stack
#
#=cut

    GL_MESAX_texture_stack => 1,

#=head2 GL_MESA_pack_invert
#
#=cut

    GL_MESA_pack_invert => 1,

#=head2 GL_MESA_packed_depth_stencil
#
#=cut

    GL_MESA_packed_depth_stencil => 1,

#=head2 GL_MESA_resize_buffers
#
#=cut

    GL_MESA_resize_buffers => 1,

#=head2 GL_MESA_window_pos
#
#=cut

    GL_MESA_window_pos => 1,

#=head2 GL_MESA_ycbcr_texture
#
#=cut

    GL_MESA_ycbcr_texture => 1,

#=head2 GL_MIN
#
#=cut

    GL_MIN => 0x8007,

#=head2 GL_MINMAX
#
#=cut

    GL_MINMAX => 0x802E,

#=head2 GL_MINMAX_EXT
#
#=cut

    GL_MINMAX_EXT => 0x802E,

#=head2 GL_MINMAX_FORMAT
#
#=cut

    GL_MINMAX_FORMAT => 0x802F,

#=head2 GL_MINMAX_FORMAT_EXT
#
#=cut

    GL_MINMAX_FORMAT_EXT => 0x802F,

#=head2 GL_MINMAX_SINK
#
#=cut

    GL_MINMAX_SINK => 0x8030,

#=head2 GL_MINMAX_SINK_EXT
#
#=cut

    GL_MINMAX_SINK_EXT => 0x8030,

#=head2 GL_MINOR_VERSION
#
#=cut

    GL_MINOR_VERSION => 0x821C,

#=head2 GL_MINUS_CLAMPED_NV
#
#=cut

    GL_MINUS_CLAMPED_NV => 0x92B3,

#=head2 GL_MINUS_NV
#
#=cut

    GL_MINUS_NV => 0x929F,

#=head2 GL_MIN_EXT
#
#=cut

    GL_MIN_EXT => 0x8007,

#=head2 GL_MIN_FRAGMENT_INTERPOLATION_OFFSET
#
#=cut

    GL_MIN_FRAGMENT_INTERPOLATION_OFFSET => 0x8E5B,

#=head2 GL_MIN_FRAGMENT_INTERPOLATION_OFFSET_NV
#
#=cut

    GL_MIN_FRAGMENT_INTERPOLATION_OFFSET_NV => 0x8E5B,

#=head2 GL_MIN_LOD_WARNING_AMD
#
#=cut

    GL_MIN_LOD_WARNING_AMD => 0x919C,

#=head2 GL_MIN_MAP_BUFFER_ALIGNMENT
#
#=cut

    GL_MIN_MAP_BUFFER_ALIGNMENT => 0x90BC,

#=head2 GL_MIN_PROGRAM_TEXEL_OFFSET
#
#=cut

    GL_MIN_PROGRAM_TEXEL_OFFSET => 0x8904,

#=head2 GL_MIN_PROGRAM_TEXEL_OFFSET_EXT
#
#=cut

    GL_MIN_PROGRAM_TEXEL_OFFSET_EXT => 0x8904,

#=head2 GL_MIN_PROGRAM_TEXEL_OFFSET_NV
#
#=cut

    GL_MIN_PROGRAM_TEXEL_OFFSET_NV => 0x8904,

#=head2 GL_MIN_PROGRAM_TEXTURE_GATHER_OFFSET
#
#=cut

    GL_MIN_PROGRAM_TEXTURE_GATHER_OFFSET => 0x8E5E,

#=head2 GL_MIN_PROGRAM_TEXTURE_GATHER_OFFSET_ARB
#
#=cut

    GL_MIN_PROGRAM_TEXTURE_GATHER_OFFSET_ARB => 0x8E5E,

#=head2 GL_MIN_PROGRAM_TEXTURE_GATHER_OFFSET_NV
#
#=cut

    GL_MIN_PROGRAM_TEXTURE_GATHER_OFFSET_NV => 0x8E5E,

#=head2 GL_MIN_SAMPLE_SHADING_VALUE
#
#=cut

    GL_MIN_SAMPLE_SHADING_VALUE => 0x8C37,

#=head2 GL_MIN_SAMPLE_SHADING_VALUE_ARB
#
#=cut

    GL_MIN_SAMPLE_SHADING_VALUE_ARB => 0x8C37,

#=head2 GL_MIN_SPARSE_LEVEL_AMD
#
#=cut

    GL_MIN_SPARSE_LEVEL_AMD => 0x919B,

#=head2 GL_MIN_SPARSE_LEVEL_ARB
#
#=cut

    GL_MIN_SPARSE_LEVEL_ARB => 0x919B,

#=head2 GL_MIPMAP
#
#=cut

    GL_MIPMAP => 0x8293,

#=head2 GL_MIRRORED_REPEAT
#
#=cut

    GL_MIRRORED_REPEAT => 0x8370,

#=head2 GL_MIRRORED_REPEAT_ARB
#
#=cut

    GL_MIRRORED_REPEAT_ARB => 0x8370,

#=head2 GL_MIRRORED_REPEAT_IBM
#
#=cut

    GL_MIRRORED_REPEAT_IBM => 0x8370,

#=head2 GL_MIRROR_CLAMP_ATI
#
#=cut

    GL_MIRROR_CLAMP_ATI => 0x8742,

#=head2 GL_MIRROR_CLAMP_EXT
#
#=cut

    GL_MIRROR_CLAMP_EXT => 0x8742,

#=head2 GL_MIRROR_CLAMP_TO_BORDER_EXT
#
#=cut

    GL_MIRROR_CLAMP_TO_BORDER_EXT => 0x8912,

#=head2 GL_MIRROR_CLAMP_TO_EDGE
#
#=cut

    GL_MIRROR_CLAMP_TO_EDGE => 0x8743,

#=head2 GL_MIRROR_CLAMP_TO_EDGE_ATI
#
#=cut

    GL_MIRROR_CLAMP_TO_EDGE_ATI => 0x8743,

#=head2 GL_MIRROR_CLAMP_TO_EDGE_EXT
#
#=cut

    GL_MIRROR_CLAMP_TO_EDGE_EXT => 0x8743,

#=head2 GL_MITER_REVERT_NV
#
#=cut

    GL_MITER_REVERT_NV => 0x90A7,

#=head2 GL_MITER_TRUNCATE_NV
#
#=cut

    GL_MITER_TRUNCATE_NV => 0x90A8,

#=head2 GL_MODELVIEW
#
#=cut

    GL_MODELVIEW => 0x1700,

#=head2 GL_MODELVIEW0_ARB
#
#=cut

    GL_MODELVIEW0_ARB => 0x1700,

#=head2 GL_MODELVIEW0_EXT
#
#=cut

    GL_MODELVIEW0_EXT => 0x1700,

#=head2 GL_MODELVIEW0_MATRIX_EXT
#
#=cut

    GL_MODELVIEW0_MATRIX_EXT => 0x0BA6,

#=head2 GL_MODELVIEW0_STACK_DEPTH_EXT
#
#=cut

    GL_MODELVIEW0_STACK_DEPTH_EXT => 0x0BA3,

#=head2 GL_MODELVIEW10_ARB
#
#=cut

    GL_MODELVIEW10_ARB => 0x872A,

#=head2 GL_MODELVIEW11_ARB
#
#=cut

    GL_MODELVIEW11_ARB => 0x872B,

#=head2 GL_MODELVIEW12_ARB
#
#=cut

    GL_MODELVIEW12_ARB => 0x872C,

#=head2 GL_MODELVIEW13_ARB
#
#=cut

    GL_MODELVIEW13_ARB => 0x872D,

#=head2 GL_MODELVIEW14_ARB
#
#=cut

    GL_MODELVIEW14_ARB => 0x872E,

#=head2 GL_MODELVIEW15_ARB
#
#=cut

    GL_MODELVIEW15_ARB => 0x872F,

#=head2 GL_MODELVIEW16_ARB
#
#=cut

    GL_MODELVIEW16_ARB => 0x8730,

#=head2 GL_MODELVIEW17_ARB
#
#=cut

    GL_MODELVIEW17_ARB => 0x8731,

#=head2 GL_MODELVIEW18_ARB
#
#=cut

    GL_MODELVIEW18_ARB => 0x8732,

#=head2 GL_MODELVIEW19_ARB
#
#=cut

    GL_MODELVIEW19_ARB => 0x8733,

#=head2 GL_MODELVIEW1_ARB
#
#=cut

    GL_MODELVIEW1_ARB => 0x850A,

#=head2 GL_MODELVIEW1_EXT
#
#=cut

    GL_MODELVIEW1_EXT => 0x850A,

#=head2 GL_MODELVIEW1_MATRIX_EXT
#
#=cut

    GL_MODELVIEW1_MATRIX_EXT => 0x8506,

#=head2 GL_MODELVIEW1_STACK_DEPTH_EXT
#
#=cut

    GL_MODELVIEW1_STACK_DEPTH_EXT => 0x8502,

#=head2 GL_MODELVIEW20_ARB
#
#=cut

    GL_MODELVIEW20_ARB => 0x8734,

#=head2 GL_MODELVIEW21_ARB
#
#=cut

    GL_MODELVIEW21_ARB => 0x8735,

#=head2 GL_MODELVIEW22_ARB
#
#=cut

    GL_MODELVIEW22_ARB => 0x8736,

#=head2 GL_MODELVIEW23_ARB
#
#=cut

    GL_MODELVIEW23_ARB => 0x8737,

#=head2 GL_MODELVIEW24_ARB
#
#=cut

    GL_MODELVIEW24_ARB => 0x8738,

#=head2 GL_MODELVIEW25_ARB
#
#=cut

    GL_MODELVIEW25_ARB => 0x8739,

#=head2 GL_MODELVIEW26_ARB
#
#=cut

    GL_MODELVIEW26_ARB => 0x873A,

#=head2 GL_MODELVIEW27_ARB
#
#=cut

    GL_MODELVIEW27_ARB => 0x873B,

#=head2 GL_MODELVIEW28_ARB
#
#=cut

    GL_MODELVIEW28_ARB => 0x873C,

#=head2 GL_MODELVIEW29_ARB
#
#=cut

    GL_MODELVIEW29_ARB => 0x873D,

#=head2 GL_MODELVIEW2_ARB
#
#=cut

    GL_MODELVIEW2_ARB => 0x8722,

#=head2 GL_MODELVIEW30_ARB
#
#=cut

    GL_MODELVIEW30_ARB => 0x873E,

#=head2 GL_MODELVIEW31_ARB
#
#=cut

    GL_MODELVIEW31_ARB => 0x873F,

#=head2 GL_MODELVIEW3_ARB
#
#=cut

    GL_MODELVIEW3_ARB => 0x8723,

#=head2 GL_MODELVIEW4_ARB
#
#=cut

    GL_MODELVIEW4_ARB => 0x8724,

#=head2 GL_MODELVIEW5_ARB
#
#=cut

    GL_MODELVIEW5_ARB => 0x8725,

#=head2 GL_MODELVIEW6_ARB
#
#=cut

    GL_MODELVIEW6_ARB => 0x8726,

#=head2 GL_MODELVIEW7_ARB
#
#=cut

    GL_MODELVIEW7_ARB => 0x8727,

#=head2 GL_MODELVIEW8_ARB
#
#=cut

    GL_MODELVIEW8_ARB => 0x8728,

#=head2 GL_MODELVIEW9_ARB
#
#=cut

    GL_MODELVIEW9_ARB => 0x8729,

#=head2 GL_MODELVIEW_MATRIX
#
#=cut

    GL_MODELVIEW_MATRIX => 0x0BA6,

#=head2 GL_MODELVIEW_PROJECTION_NV
#
#=cut

    GL_MODELVIEW_PROJECTION_NV => 0x8629,

#=head2 GL_MODELVIEW_STACK_DEPTH
#
#=cut

    GL_MODELVIEW_STACK_DEPTH => 0x0BA3,

#=head2 GL_MODULATE
#
#=cut

    GL_MODULATE => 0x2100,

#=head2 GL_MODULATE_ADD_ATI
#
#=cut

    GL_MODULATE_ADD_ATI => 0x8744,

#=head2 GL_MODULATE_SIGNED_ADD_ATI
#
#=cut

    GL_MODULATE_SIGNED_ADD_ATI => 0x8745,

#=head2 GL_MODULATE_SUBTRACT_ATI
#
#=cut

    GL_MODULATE_SUBTRACT_ATI => 0x8746,

#=head2 GL_MOVE_TO_CONTINUES_NV
#
#=cut

    GL_MOVE_TO_CONTINUES_NV => 0x90B6,

#=head2 GL_MOVE_TO_NV
#
#=cut

    GL_MOVE_TO_NV => 0x02,

#=head2 GL_MOVE_TO_RESETS_NV
#
#=cut

    GL_MOVE_TO_RESETS_NV => 0x90B5,

#=head2 GL_MOV_ATI
#
#=cut

    GL_MOV_ATI => 0x8961,

#=head2 GL_MULT
#
#=cut

    GL_MULT => 0x0103,

#=head2 GL_MULTIPLY_KHR
#
#=cut

    GL_MULTIPLY_KHR => 0x9294,

#=head2 GL_MULTIPLY_NV
#
#=cut

    GL_MULTIPLY_NV => 0x9294,

#=head2 GL_MULTISAMPLE
#
#=cut

    GL_MULTISAMPLE => 0x809D,

#=head2 GL_MULTISAMPLE_3DFX
#
#=cut

    GL_MULTISAMPLE_3DFX => 0x86B2,

#=head2 GL_MULTISAMPLE_ARB
#
#=cut

    GL_MULTISAMPLE_ARB => 0x809D,

#=head2 GL_MULTISAMPLE_BIT
#
#=cut

    GL_MULTISAMPLE_BIT => 0x20000000,

#=head2 GL_MULTISAMPLE_BIT_3DFX
#
#=cut

    GL_MULTISAMPLE_BIT_3DFX => 0x20000000,

#=head2 GL_MULTISAMPLE_BIT_ARB
#
#=cut

    GL_MULTISAMPLE_BIT_ARB => 0x20000000,

#=head2 GL_MULTISAMPLE_BIT_EXT
#
#=cut

    GL_MULTISAMPLE_BIT_EXT => 0x20000000,

#=head2 GL_MULTISAMPLE_COVERAGE_MODES_NV
#
#=cut

    GL_MULTISAMPLE_COVERAGE_MODES_NV => 0x8E12,

#=head2 GL_MULTISAMPLE_EXT
#
#=cut

    GL_MULTISAMPLE_EXT => 0x809D,

#=head2 GL_MULTISAMPLE_FILTER_HINT_NV
#
#=cut

    GL_MULTISAMPLE_FILTER_HINT_NV => 0x8534,

#=head2 GL_MULTISAMPLE_SGIS
#
#=cut

    GL_MULTISAMPLE_SGIS => 0x809D,

#=head2 GL_MUL_ATI
#
#=cut

    GL_MUL_ATI => 0x8964,

#=head2 GL_MVP_MATRIX_EXT
#
#=cut

    GL_MVP_MATRIX_EXT => 0x87E3,

#=head2 GL_N3F_V3F
#
#=cut

    GL_N3F_V3F => 0x2A25,

#=head2 GL_NAMED_STRING_LENGTH_ARB
#
#=cut

    GL_NAMED_STRING_LENGTH_ARB => 0x8DE9,

#=head2 GL_NAMED_STRING_TYPE_ARB
#
#=cut

    GL_NAMED_STRING_TYPE_ARB => 0x8DEA,

#=head2 GL_NAME_LENGTH
#
#=cut

    GL_NAME_LENGTH => 0x92F9,

#=head2 GL_NAME_STACK_DEPTH
#
#=cut

    GL_NAME_STACK_DEPTH => 0x0D70,

#=head2 GL_NAND
#
#=cut

    GL_NAND => 0x150E,

#=head2 GL_NATIVE_GRAPHICS_BEGIN_HINT_PGI
#
#=cut

    GL_NATIVE_GRAPHICS_BEGIN_HINT_PGI => 0x1A203,

#=head2 GL_NATIVE_GRAPHICS_END_HINT_PGI
#
#=cut

    GL_NATIVE_GRAPHICS_END_HINT_PGI => 0x1A204,

#=head2 GL_NATIVE_GRAPHICS_HANDLE_PGI
#
#=cut

    GL_NATIVE_GRAPHICS_HANDLE_PGI => 0x1A202,

#=head2 GL_NEAREST
#
#=cut

    GL_NEAREST => 0x2600,

#=head2 GL_NEAREST_CLIPMAP_LINEAR_SGIX
#
#=cut

    GL_NEAREST_CLIPMAP_LINEAR_SGIX => 0x844E,

#=head2 GL_NEAREST_CLIPMAP_NEAREST_SGIX
#
#=cut

    GL_NEAREST_CLIPMAP_NEAREST_SGIX => 0x844D,

#=head2 GL_NEAREST_MIPMAP_LINEAR
#
#=cut

    GL_NEAREST_MIPMAP_LINEAR => 0x2702,

#=head2 GL_NEAREST_MIPMAP_NEAREST
#
#=cut

    GL_NEAREST_MIPMAP_NEAREST => 0x2700,

#=head2 GL_NEGATE_BIT_ATI
#
#=cut

    GL_NEGATE_BIT_ATI => 0x00000004,

#=head2 GL_NEGATIVE_ONE_EXT
#
#=cut

    GL_NEGATIVE_ONE_EXT => 0x87DF,

#=head2 GL_NEGATIVE_ONE_TO_ONE
#
#=cut

    GL_NEGATIVE_ONE_TO_ONE => 0x935E,

#=head2 GL_NEGATIVE_W_EXT
#
#=cut

    GL_NEGATIVE_W_EXT => 0x87DC,

#=head2 GL_NEGATIVE_X_EXT
#
#=cut

    GL_NEGATIVE_X_EXT => 0x87D9,

#=head2 GL_NEGATIVE_Y_EXT
#
#=cut

    GL_NEGATIVE_Y_EXT => 0x87DA,

#=head2 GL_NEGATIVE_Z_EXT
#
#=cut

    GL_NEGATIVE_Z_EXT => 0x87DB,

#=head2 GL_NEVER
#
#=cut

    GL_NEVER => 0x0200,

#=head2 GL_NEXT_BUFFER_NV
#
#=cut

    GL_NEXT_BUFFER_NV => -2,

#=head2 GL_NEXT_VIDEO_CAPTURE_BUFFER_STATUS_NV
#
#=cut

    GL_NEXT_VIDEO_CAPTURE_BUFFER_STATUS_NV => 0x9025,

#=head2 GL_NICEST
#
#=cut

    GL_NICEST => 0x1102,

#=head2 GL_NONE
#
#=cut

    GL_NONE => 0,

#=head2 GL_NOOP
#
#=cut

    GL_NOOP => 0x1505,

#=head2 GL_NOR
#
#=cut

    GL_NOR => 0x1508,

#=head2 GL_NORMALIZE
#
#=cut

    GL_NORMALIZE => 0x0BA1,

#=head2 GL_NORMALIZED_RANGE_EXT
#
#=cut

    GL_NORMALIZED_RANGE_EXT => 0x87E0,

#=head2 GL_NORMAL_ARRAY
#
#=cut

    GL_NORMAL_ARRAY => 0x8075,

#=head2 GL_NORMAL_ARRAY_ADDRESS_NV
#
#=cut

    GL_NORMAL_ARRAY_ADDRESS_NV => 0x8F22,

#=head2 GL_NORMAL_ARRAY_BUFFER_BINDING
#
#=cut

    GL_NORMAL_ARRAY_BUFFER_BINDING => 0x8897,

#=head2 GL_NORMAL_ARRAY_BUFFER_BINDING_ARB
#
#=cut

    GL_NORMAL_ARRAY_BUFFER_BINDING_ARB => 0x8897,

#=head2 GL_NORMAL_ARRAY_COUNT_EXT
#
#=cut

    GL_NORMAL_ARRAY_COUNT_EXT => 0x8080,

#=head2 GL_NORMAL_ARRAY_EXT
#
#=cut

    GL_NORMAL_ARRAY_EXT => 0x8075,

#=head2 GL_NORMAL_ARRAY_LENGTH_NV
#
#=cut

    GL_NORMAL_ARRAY_LENGTH_NV => 0x8F2C,

#=head2 GL_NORMAL_ARRAY_LIST_IBM
#
#=cut

    GL_NORMAL_ARRAY_LIST_IBM => 103071,

#=head2 GL_NORMAL_ARRAY_LIST_STRIDE_IBM
#
#=cut

    GL_NORMAL_ARRAY_LIST_STRIDE_IBM => 103081,

#=head2 GL_NORMAL_ARRAY_PARALLEL_POINTERS_INTEL
#
#=cut

    GL_NORMAL_ARRAY_PARALLEL_POINTERS_INTEL => 0x83F6,

#=head2 GL_NORMAL_ARRAY_POINTER
#
#=cut

    GL_NORMAL_ARRAY_POINTER => 0x808F,

#=head2 GL_NORMAL_ARRAY_POINTER_EXT
#
#=cut

    GL_NORMAL_ARRAY_POINTER_EXT => 0x808F,

#=head2 GL_NORMAL_ARRAY_STRIDE
#
#=cut

    GL_NORMAL_ARRAY_STRIDE => 0x807F,

#=head2 GL_NORMAL_ARRAY_STRIDE_EXT
#
#=cut

    GL_NORMAL_ARRAY_STRIDE_EXT => 0x807F,

#=head2 GL_NORMAL_ARRAY_TYPE
#
#=cut

    GL_NORMAL_ARRAY_TYPE => 0x807E,

#=head2 GL_NORMAL_ARRAY_TYPE_EXT
#
#=cut

    GL_NORMAL_ARRAY_TYPE_EXT => 0x807E,

#=head2 GL_NORMAL_BIT_PGI
#
#=cut

    GL_NORMAL_BIT_PGI => 0x08000000,

#=head2 GL_NORMAL_MAP
#
#=cut

    GL_NORMAL_MAP => 0x8511,

#=head2 GL_NORMAL_MAP_ARB
#
#=cut

    GL_NORMAL_MAP_ARB => 0x8511,

#=head2 GL_NORMAL_MAP_EXT
#
#=cut

    GL_NORMAL_MAP_EXT => 0x8511,

#=head2 GL_NORMAL_MAP_NV
#
#=cut

    GL_NORMAL_MAP_NV => 0x8511,

#=head2 GL_NOTEQUAL
#
#=cut

    GL_NOTEQUAL => 0x0205,

#=head2 GL_NO_ERROR
#
#=cut

    GL_NO_ERROR => 0,

#=head2 GL_NO_RESET_NOTIFICATION
#
#=cut

    GL_NO_RESET_NOTIFICATION => 0x8261,

#=head2 GL_NO_RESET_NOTIFICATION_ARB
#
#=cut

    GL_NO_RESET_NOTIFICATION_ARB => 0x8261,

#=head2 GL_NUM_ACTIVE_VARIABLES
#
#=cut

    GL_NUM_ACTIVE_VARIABLES => 0x9304,

#=head2 GL_NUM_COMPATIBLE_SUBROUTINES
#
#=cut

    GL_NUM_COMPATIBLE_SUBROUTINES => 0x8E4A,

#=head2 GL_NUM_COMPRESSED_TEXTURE_FORMATS
#
#=cut

    GL_NUM_COMPRESSED_TEXTURE_FORMATS => 0x86A2,

#=head2 GL_NUM_COMPRESSED_TEXTURE_FORMATS_ARB
#
#=cut

    GL_NUM_COMPRESSED_TEXTURE_FORMATS_ARB => 0x86A2,

#=head2 GL_NUM_EXTENSIONS
#
#=cut

    GL_NUM_EXTENSIONS => 0x821D,

#=head2 GL_NUM_FILL_STREAMS_NV
#
#=cut

    GL_NUM_FILL_STREAMS_NV => 0x8E29,

#=head2 GL_NUM_FRAGMENT_CONSTANTS_ATI
#
#=cut

    GL_NUM_FRAGMENT_CONSTANTS_ATI => 0x896F,

#=head2 GL_NUM_FRAGMENT_REGISTERS_ATI
#
#=cut

    GL_NUM_FRAGMENT_REGISTERS_ATI => 0x896E,

#=head2 GL_NUM_GENERAL_COMBINERS_NV
#
#=cut

    GL_NUM_GENERAL_COMBINERS_NV => 0x854E,

#=head2 GL_NUM_INPUT_INTERPOLATOR_COMPONENTS_ATI
#
#=cut

    GL_NUM_INPUT_INTERPOLATOR_COMPONENTS_ATI => 0x8973,

#=head2 GL_NUM_INSTRUCTIONS_PER_PASS_ATI
#
#=cut

    GL_NUM_INSTRUCTIONS_PER_PASS_ATI => 0x8971,

#=head2 GL_NUM_INSTRUCTIONS_TOTAL_ATI
#
#=cut

    GL_NUM_INSTRUCTIONS_TOTAL_ATI => 0x8972,

#=head2 GL_NUM_LOOPBACK_COMPONENTS_ATI
#
#=cut

    GL_NUM_LOOPBACK_COMPONENTS_ATI => 0x8974,

#=head2 GL_NUM_PASSES_ATI
#
#=cut

    GL_NUM_PASSES_ATI => 0x8970,

#=head2 GL_NUM_PROGRAM_BINARY_FORMATS
#
#=cut

    GL_NUM_PROGRAM_BINARY_FORMATS => 0x87FE,

#=head2 GL_NUM_SAMPLE_COUNTS
#
#=cut

    GL_NUM_SAMPLE_COUNTS => 0x9380,

#=head2 GL_NUM_SHADER_BINARY_FORMATS
#
#=cut

    GL_NUM_SHADER_BINARY_FORMATS => 0x8DF9,

#=head2 GL_NUM_SHADING_LANGUAGE_VERSIONS
#
#=cut

    GL_NUM_SHADING_LANGUAGE_VERSIONS => 0x82E9,

#=head2 GL_NUM_VIDEO_CAPTURE_STREAMS_NV
#
#=cut

    GL_NUM_VIDEO_CAPTURE_STREAMS_NV => 0x9024,

#=head2 GL_NUM_VIRTUAL_PAGE_SIZES_ARB
#
#=cut

    GL_NUM_VIRTUAL_PAGE_SIZES_ARB => 0x91A8,

#=head2 GL_NVX_conditional_render
#
#=cut

    GL_NVX_conditional_render => 1,

#=head2 GL_NVX_gpu_memory_info
#
#=cut

    GL_NVX_gpu_memory_info => 1,

#=head2 GL_NV_bindless_multi_draw_indirect
#
#=cut

    GL_NV_bindless_multi_draw_indirect => 1,

#=head2 GL_NV_bindless_multi_draw_indirect_count
#
#=cut

    GL_NV_bindless_multi_draw_indirect_count => 1,

#=head2 GL_NV_bindless_texture
#
#=cut

    GL_NV_bindless_texture => 1,

#=head2 GL_NV_blend_equation_advanced
#
#=cut

    GL_NV_blend_equation_advanced => 1,

#=head2 GL_NV_blend_equation_advanced_coherent
#
#=cut

    GL_NV_blend_equation_advanced_coherent => 1,

#=head2 GL_NV_blend_square
#
#=cut

    GL_NV_blend_square => 1,

#=head2 GL_NV_compute_program5
#
#=cut

    GL_NV_compute_program5 => 1,

#=head2 GL_NV_conditional_render
#
#=cut

    GL_NV_conditional_render => 1,

#=head2 GL_NV_copy_depth_to_color
#
#=cut

    GL_NV_copy_depth_to_color => 1,

#=head2 GL_NV_copy_image
#
#=cut

    GL_NV_copy_image => 1,

#=head2 GL_NV_deep_texture3D
#
#=cut

    GL_NV_deep_texture3D => 1,

#=head2 GL_NV_depth_buffer_float
#
#=cut

    GL_NV_depth_buffer_float => 1,

#=head2 GL_NV_depth_clamp
#
#=cut

    GL_NV_depth_clamp => 1,

#=head2 GL_NV_draw_texture
#
#=cut

    GL_NV_draw_texture => 1,

#=head2 GL_NV_evaluators
#
#=cut

    GL_NV_evaluators => 1,

#=head2 GL_NV_explicit_multisample
#
#=cut

    GL_NV_explicit_multisample => 1,

#=head2 GL_NV_fence
#
#=cut

    GL_NV_fence => 1,

#=head2 GL_NV_float_buffer
#
#=cut

    GL_NV_float_buffer => 1,

#=head2 GL_NV_fog_distance
#
#=cut

    GL_NV_fog_distance => 1,

#=head2 GL_NV_fragment_program
#
#=cut

    GL_NV_fragment_program => 1,

#=head2 GL_NV_fragment_program2
#
#=cut

    GL_NV_fragment_program2 => 1,

#=head2 GL_NV_fragment_program4
#
#=cut

    GL_NV_fragment_program4 => 1,

#=head2 GL_NV_fragment_program_option
#
#=cut

    GL_NV_fragment_program_option => 1,

#=head2 GL_NV_framebuffer_multisample_coverage
#
#=cut

    GL_NV_framebuffer_multisample_coverage => 1,

#=head2 GL_NV_geometry_program4
#
#=cut

    GL_NV_geometry_program4 => 1,

#=head2 GL_NV_geometry_shader4
#
#=cut

    GL_NV_geometry_shader4 => 1,

#=head2 GL_NV_gpu_program4
#
#=cut

    GL_NV_gpu_program4 => 1,

#=head2 GL_NV_gpu_program5
#
#=cut

    GL_NV_gpu_program5 => 1,

#=head2 GL_NV_gpu_program5_mem_extended
#
#=cut

    GL_NV_gpu_program5_mem_extended => 1,

#=head2 GL_NV_gpu_shader5
#
#=cut

    GL_NV_gpu_shader5 => 1,

#=head2 GL_NV_half_float
#
#=cut

    GL_NV_half_float => 1,

#=head2 GL_NV_light_max_exponent
#
#=cut

    GL_NV_light_max_exponent => 1,

#=head2 GL_NV_multisample_coverage
#
#=cut

    GL_NV_multisample_coverage => 1,

#=head2 GL_NV_multisample_filter_hint
#
#=cut

    GL_NV_multisample_filter_hint => 1,

#=head2 GL_NV_occlusion_query
#
#=cut

    GL_NV_occlusion_query => 1,

#=head2 GL_NV_packed_depth_stencil
#
#=cut

    GL_NV_packed_depth_stencil => 1,

#=head2 GL_NV_parameter_buffer_object
#
#=cut

    GL_NV_parameter_buffer_object => 1,

#=head2 GL_NV_parameter_buffer_object2
#
#=cut

    GL_NV_parameter_buffer_object2 => 1,

#=head2 GL_NV_path_rendering
#
#=cut

    GL_NV_path_rendering => 1,

#=head2 GL_NV_pixel_data_range
#
#=cut

    GL_NV_pixel_data_range => 1,

#=head2 GL_NV_point_sprite
#
#=cut

    GL_NV_point_sprite => 1,

#=head2 GL_NV_present_video
#
#=cut

    GL_NV_present_video => 1,

#=head2 GL_NV_primitive_restart
#
#=cut

    GL_NV_primitive_restart => 1,

#=head2 GL_NV_register_combiners
#
#=cut

    GL_NV_register_combiners => 1,

#=head2 GL_NV_register_combiners2
#
#=cut

    GL_NV_register_combiners2 => 1,

#=head2 GL_NV_shader_atomic_counters
#
#=cut

    GL_NV_shader_atomic_counters => 1,

#=head2 GL_NV_shader_atomic_float
#
#=cut

    GL_NV_shader_atomic_float => 1,

#=head2 GL_NV_shader_atomic_int64
#
#=cut

    GL_NV_shader_atomic_int64 => 1,

#=head2 GL_NV_shader_buffer_load
#
#=cut

    GL_NV_shader_buffer_load => 1,

#=head2 GL_NV_shader_buffer_store
#
#=cut

    GL_NV_shader_buffer_store => 1,

#=head2 GL_NV_shader_storage_buffer_object
#
#=cut

    GL_NV_shader_storage_buffer_object => 1,

#=head2 GL_NV_shader_thread_group
#
#=cut

    GL_NV_shader_thread_group => 1,

#=head2 GL_NV_shader_thread_shuffle
#
#=cut

    GL_NV_shader_thread_shuffle => 1,

#=head2 GL_NV_tessellation_program5
#
#=cut

    GL_NV_tessellation_program5 => 1,

#=head2 GL_NV_texgen_emboss
#
#=cut

    GL_NV_texgen_emboss => 1,

#=head2 GL_NV_texgen_reflection
#
#=cut

    GL_NV_texgen_reflection => 1,

#=head2 GL_NV_texture_barrier
#
#=cut

    GL_NV_texture_barrier => 1,

#=head2 GL_NV_texture_compression_vtc
#
#=cut

    GL_NV_texture_compression_vtc => 1,

#=head2 GL_NV_texture_env_combine4
#
#=cut

    GL_NV_texture_env_combine4 => 1,

#=head2 GL_NV_texture_expand_normal
#
#=cut

    GL_NV_texture_expand_normal => 1,

#=head2 GL_NV_texture_multisample
#
#=cut

    GL_NV_texture_multisample => 1,

#=head2 GL_NV_texture_rectangle
#
#=cut

    GL_NV_texture_rectangle => 1,

#=head2 GL_NV_texture_shader
#
#=cut

    GL_NV_texture_shader => 1,

#=head2 GL_NV_texture_shader2
#
#=cut

    GL_NV_texture_shader2 => 1,

#=head2 GL_NV_texture_shader3
#
#=cut

    GL_NV_texture_shader3 => 1,

#=head2 GL_NV_transform_feedback
#
#=cut

    GL_NV_transform_feedback => 1,

#=head2 GL_NV_transform_feedback2
#
#=cut

    GL_NV_transform_feedback2 => 1,

#=head2 GL_NV_vdpau_interop
#
#=cut

    GL_NV_vdpau_interop => 1,

#=head2 GL_NV_vertex_array_range
#
#=cut

    GL_NV_vertex_array_range => 1,

#=head2 GL_NV_vertex_array_range2
#
#=cut

    GL_NV_vertex_array_range2 => 1,

#=head2 GL_NV_vertex_attrib_integer_64bit
#
#=cut

    GL_NV_vertex_attrib_integer_64bit => 1,

#=head2 GL_NV_vertex_buffer_unified_memory
#
#=cut

    GL_NV_vertex_buffer_unified_memory => 1,

#=head2 GL_NV_vertex_program
#
#=cut

    GL_NV_vertex_program => 1,

#=head2 GL_NV_vertex_program1_1
#
#=cut

    GL_NV_vertex_program1_1 => 1,

#=head2 GL_NV_vertex_program2
#
#=cut

    GL_NV_vertex_program2 => 1,

#=head2 GL_NV_vertex_program2_option
#
#=cut

    GL_NV_vertex_program2_option => 1,

#=head2 GL_NV_vertex_program3
#
#=cut

    GL_NV_vertex_program3 => 1,

#=head2 GL_NV_vertex_program4
#
#=cut

    GL_NV_vertex_program4 => 1,

#=head2 GL_NV_video_capture
#
#=cut

    GL_NV_video_capture => 1,

#=head2 GL_OBJECT_ACTIVE_ATTRIBUTES_ARB
#
#=cut

    GL_OBJECT_ACTIVE_ATTRIBUTES_ARB => 0x8B89,

#=head2 GL_OBJECT_ACTIVE_ATTRIBUTE_MAX_LENGTH_ARB
#
#=cut

    GL_OBJECT_ACTIVE_ATTRIBUTE_MAX_LENGTH_ARB => 0x8B8A,

#=head2 GL_OBJECT_ACTIVE_UNIFORMS_ARB
#
#=cut

    GL_OBJECT_ACTIVE_UNIFORMS_ARB => 0x8B86,

#=head2 GL_OBJECT_ACTIVE_UNIFORM_MAX_LENGTH_ARB
#
#=cut

    GL_OBJECT_ACTIVE_UNIFORM_MAX_LENGTH_ARB => 0x8B87,

#=head2 GL_OBJECT_ATTACHED_OBJECTS_ARB
#
#=cut

    GL_OBJECT_ATTACHED_OBJECTS_ARB => 0x8B85,

#=head2 GL_OBJECT_BUFFER_SIZE_ATI
#
#=cut

    GL_OBJECT_BUFFER_SIZE_ATI => 0x8764,

#=head2 GL_OBJECT_BUFFER_USAGE_ATI
#
#=cut

    GL_OBJECT_BUFFER_USAGE_ATI => 0x8765,

#=head2 GL_OBJECT_COMPILE_STATUS_ARB
#
#=cut

    GL_OBJECT_COMPILE_STATUS_ARB => 0x8B81,

#=head2 GL_OBJECT_DELETE_STATUS_ARB
#
#=cut

    GL_OBJECT_DELETE_STATUS_ARB => 0x8B80,

#=head2 GL_OBJECT_DISTANCE_TO_LINE_SGIS
#
#=cut

    GL_OBJECT_DISTANCE_TO_LINE_SGIS => 0x81F3,

#=head2 GL_OBJECT_DISTANCE_TO_POINT_SGIS
#
#=cut

    GL_OBJECT_DISTANCE_TO_POINT_SGIS => 0x81F1,

#=head2 GL_OBJECT_INFO_LOG_LENGTH_ARB
#
#=cut

    GL_OBJECT_INFO_LOG_LENGTH_ARB => 0x8B84,

#=head2 GL_OBJECT_LINEAR
#
#=cut

    GL_OBJECT_LINEAR => 0x2401,

#=head2 GL_OBJECT_LINEAR_NV
#
#=cut

    GL_OBJECT_LINEAR_NV => 0x2401,

#=head2 GL_OBJECT_LINE_SGIS
#
#=cut

    GL_OBJECT_LINE_SGIS => 0x81F7,

#=head2 GL_OBJECT_LINK_STATUS_ARB
#
#=cut

    GL_OBJECT_LINK_STATUS_ARB => 0x8B82,

#=head2 GL_OBJECT_PLANE
#
#=cut

    GL_OBJECT_PLANE => 0x2501,

#=head2 GL_OBJECT_POINT_SGIS
#
#=cut

    GL_OBJECT_POINT_SGIS => 0x81F5,

#=head2 GL_OBJECT_SHADER_SOURCE_LENGTH_ARB
#
#=cut

    GL_OBJECT_SHADER_SOURCE_LENGTH_ARB => 0x8B88,

#=head2 GL_OBJECT_SUBTYPE_ARB
#
#=cut

    GL_OBJECT_SUBTYPE_ARB => 0x8B4F,

#=head2 GL_OBJECT_TYPE
#
#=cut

    GL_OBJECT_TYPE => 0x9112,

#=head2 GL_OBJECT_TYPE_ARB
#
#=cut

    GL_OBJECT_TYPE_ARB => 0x8B4E,

#=head2 GL_OBJECT_VALIDATE_STATUS_ARB
#
#=cut

    GL_OBJECT_VALIDATE_STATUS_ARB => 0x8B83,

#=head2 GL_OCCLUSION_QUERY_EVENT_MASK_AMD
#
#=cut

    GL_OCCLUSION_QUERY_EVENT_MASK_AMD => 0x874F,

#=head2 GL_OCCLUSION_TEST_HP
#
#=cut

    GL_OCCLUSION_TEST_HP => 0x8165,

#=head2 GL_OCCLUSION_TEST_RESULT_HP
#
#=cut

    GL_OCCLUSION_TEST_RESULT_HP => 0x8166,

#=head2 GL_OES_EGL_image
#
#=cut

    GL_OES_EGL_image => 1,

#=head2 GL_OES_byte_coordinates
#
#=cut

    GL_OES_byte_coordinates => 1,

#=head2 GL_OES_compressed_paletted_texture
#
#=cut

    GL_OES_compressed_paletted_texture => 1,

#=head2 GL_OES_fixed_point
#
#=cut

    GL_OES_fixed_point => 1,

#=head2 GL_OES_query_matrix
#
#=cut

    GL_OES_query_matrix => 1,

#=head2 GL_OES_read_format
#
#=cut

    GL_OES_read_format => 1,

#=head2 GL_OES_single_precision
#
#=cut

    GL_OES_single_precision => 1,

#=head2 GL_OFFSET
#
#=cut

    GL_OFFSET => 0x92FC,

#=head2 GL_OFFSET_HILO_PROJECTIVE_TEXTURE_2D_NV
#
#=cut

    GL_OFFSET_HILO_PROJECTIVE_TEXTURE_2D_NV => 0x8856,

#=head2 GL_OFFSET_HILO_PROJECTIVE_TEXTURE_RECTANGLE_NV
#
#=cut

    GL_OFFSET_HILO_PROJECTIVE_TEXTURE_RECTANGLE_NV => 0x8857,

#=head2 GL_OFFSET_HILO_TEXTURE_2D_NV
#
#=cut

    GL_OFFSET_HILO_TEXTURE_2D_NV => 0x8854,

#=head2 GL_OFFSET_HILO_TEXTURE_RECTANGLE_NV
#
#=cut

    GL_OFFSET_HILO_TEXTURE_RECTANGLE_NV => 0x8855,

#=head2 GL_OFFSET_PROJECTIVE_TEXTURE_2D_NV
#
#=cut

    GL_OFFSET_PROJECTIVE_TEXTURE_2D_NV => 0x8850,

#=head2 GL_OFFSET_PROJECTIVE_TEXTURE_2D_SCALE_NV
#
#=cut

    GL_OFFSET_PROJECTIVE_TEXTURE_2D_SCALE_NV => 0x8851,

#=head2 GL_OFFSET_PROJECTIVE_TEXTURE_RECTANGLE_NV
#
#=cut

    GL_OFFSET_PROJECTIVE_TEXTURE_RECTANGLE_NV => 0x8852,

#=head2 GL_OFFSET_PROJECTIVE_TEXTURE_RECTANGLE_SCALE_NV
#
#=cut

    GL_OFFSET_PROJECTIVE_TEXTURE_RECTANGLE_SCALE_NV => 0x8853,

#=head2 GL_OFFSET_TEXTURE_2D_BIAS_NV
#
#=cut

    GL_OFFSET_TEXTURE_2D_BIAS_NV => 0x86E3,

#=head2 GL_OFFSET_TEXTURE_2D_MATRIX_NV
#
#=cut

    GL_OFFSET_TEXTURE_2D_MATRIX_NV => 0x86E1,

#=head2 GL_OFFSET_TEXTURE_2D_NV
#
#=cut

    GL_OFFSET_TEXTURE_2D_NV => 0x86E8,

#=head2 GL_OFFSET_TEXTURE_2D_SCALE_NV
#
#=cut

    GL_OFFSET_TEXTURE_2D_SCALE_NV => 0x86E2,

#=head2 GL_OFFSET_TEXTURE_BIAS_NV
#
#=cut

    GL_OFFSET_TEXTURE_BIAS_NV => 0x86E3,

#=head2 GL_OFFSET_TEXTURE_MATRIX_NV
#
#=cut

    GL_OFFSET_TEXTURE_MATRIX_NV => 0x86E1,

#=head2 GL_OFFSET_TEXTURE_RECTANGLE_NV
#
#=cut

    GL_OFFSET_TEXTURE_RECTANGLE_NV => 0x864C,

#=head2 GL_OFFSET_TEXTURE_RECTANGLE_SCALE_NV
#
#=cut

    GL_OFFSET_TEXTURE_RECTANGLE_SCALE_NV => 0x864D,

#=head2 GL_OFFSET_TEXTURE_SCALE_NV
#
#=cut

    GL_OFFSET_TEXTURE_SCALE_NV => 0x86E2,

#=head2 GL_OML_interlace
#
#=cut

    GL_OML_interlace => 1,

#=head2 GL_OML_resample
#
#=cut

    GL_OML_resample => 1,

#=head2 GL_OML_subsample
#
#=cut

    GL_OML_subsample => 1,

#=head2 GL_ONE
#
#=cut

    GL_ONE => 1,

#=head2 GL_ONE_EXT
#
#=cut

    GL_ONE_EXT => 0x87DE,

#=head2 GL_ONE_MINUS_CONSTANT_ALPHA
#
#=cut

    GL_ONE_MINUS_CONSTANT_ALPHA => 0x8004,

#=head2 GL_ONE_MINUS_CONSTANT_ALPHA_EXT
#
#=cut

    GL_ONE_MINUS_CONSTANT_ALPHA_EXT => 0x8004,

#=head2 GL_ONE_MINUS_CONSTANT_COLOR
#
#=cut

    GL_ONE_MINUS_CONSTANT_COLOR => 0x8002,

#=head2 GL_ONE_MINUS_CONSTANT_COLOR_EXT
#
#=cut

    GL_ONE_MINUS_CONSTANT_COLOR_EXT => 0x8002,

#=head2 GL_ONE_MINUS_DST_ALPHA
#
#=cut

    GL_ONE_MINUS_DST_ALPHA => 0x0305,

#=head2 GL_ONE_MINUS_DST_COLOR
#
#=cut

    GL_ONE_MINUS_DST_COLOR => 0x0307,

#=head2 GL_ONE_MINUS_SRC1_ALPHA
#
#=cut

    GL_ONE_MINUS_SRC1_ALPHA => 0x88FB,

#=head2 GL_ONE_MINUS_SRC1_COLOR
#
#=cut

    GL_ONE_MINUS_SRC1_COLOR => 0x88FA,

#=head2 GL_ONE_MINUS_SRC_ALPHA
#
#=cut

    GL_ONE_MINUS_SRC_ALPHA => 0x0303,

#=head2 GL_ONE_MINUS_SRC_COLOR
#
#=cut

    GL_ONE_MINUS_SRC_COLOR => 0x0301,

#=head2 GL_OPERAND0_ALPHA
#
#=cut

    GL_OPERAND0_ALPHA => 0x8598,

#=head2 GL_OPERAND0_ALPHA_ARB
#
#=cut

    GL_OPERAND0_ALPHA_ARB => 0x8598,

#=head2 GL_OPERAND0_ALPHA_EXT
#
#=cut

    GL_OPERAND0_ALPHA_EXT => 0x8598,

#=head2 GL_OPERAND0_RGB
#
#=cut

    GL_OPERAND0_RGB => 0x8590,

#=head2 GL_OPERAND0_RGB_ARB
#
#=cut

    GL_OPERAND0_RGB_ARB => 0x8590,

#=head2 GL_OPERAND0_RGB_EXT
#
#=cut

    GL_OPERAND0_RGB_EXT => 0x8590,

#=head2 GL_OPERAND1_ALPHA
#
#=cut

    GL_OPERAND1_ALPHA => 0x8599,

#=head2 GL_OPERAND1_ALPHA_ARB
#
#=cut

    GL_OPERAND1_ALPHA_ARB => 0x8599,

#=head2 GL_OPERAND1_ALPHA_EXT
#
#=cut

    GL_OPERAND1_ALPHA_EXT => 0x8599,

#=head2 GL_OPERAND1_RGB
#
#=cut

    GL_OPERAND1_RGB => 0x8591,

#=head2 GL_OPERAND1_RGB_ARB
#
#=cut

    GL_OPERAND1_RGB_ARB => 0x8591,

#=head2 GL_OPERAND1_RGB_EXT
#
#=cut

    GL_OPERAND1_RGB_EXT => 0x8591,

#=head2 GL_OPERAND2_ALPHA
#
#=cut

    GL_OPERAND2_ALPHA => 0x859A,

#=head2 GL_OPERAND2_ALPHA_ARB
#
#=cut

    GL_OPERAND2_ALPHA_ARB => 0x859A,

#=head2 GL_OPERAND2_ALPHA_EXT
#
#=cut

    GL_OPERAND2_ALPHA_EXT => 0x859A,

#=head2 GL_OPERAND2_RGB
#
#=cut

    GL_OPERAND2_RGB => 0x8592,

#=head2 GL_OPERAND2_RGB_ARB
#
#=cut

    GL_OPERAND2_RGB_ARB => 0x8592,

#=head2 GL_OPERAND2_RGB_EXT
#
#=cut

    GL_OPERAND2_RGB_EXT => 0x8592,

#=head2 GL_OPERAND3_ALPHA_NV
#
#=cut

    GL_OPERAND3_ALPHA_NV => 0x859B,

#=head2 GL_OPERAND3_RGB_NV
#
#=cut

    GL_OPERAND3_RGB_NV => 0x8593,

#=head2 GL_OP_ADD_EXT
#
#=cut

    GL_OP_ADD_EXT => 0x8787,

#=head2 GL_OP_CLAMP_EXT
#
#=cut

    GL_OP_CLAMP_EXT => 0x878E,

#=head2 GL_OP_CROSS_PRODUCT_EXT
#
#=cut

    GL_OP_CROSS_PRODUCT_EXT => 0x8797,

#=head2 GL_OP_DOT3_EXT
#
#=cut

    GL_OP_DOT3_EXT => 0x8784,

#=head2 GL_OP_DOT4_EXT
#
#=cut

    GL_OP_DOT4_EXT => 0x8785,

#=head2 GL_OP_EXP_BASE_2_EXT
#
#=cut

    GL_OP_EXP_BASE_2_EXT => 0x8791,

#=head2 GL_OP_FLOOR_EXT
#
#=cut

    GL_OP_FLOOR_EXT => 0x878F,

#=head2 GL_OP_FRAC_EXT
#
#=cut

    GL_OP_FRAC_EXT => 0x8789,

#=head2 GL_OP_INDEX_EXT
#
#=cut

    GL_OP_INDEX_EXT => 0x8782,

#=head2 GL_OP_LOG_BASE_2_EXT
#
#=cut

    GL_OP_LOG_BASE_2_EXT => 0x8792,

#=head2 GL_OP_MADD_EXT
#
#=cut

    GL_OP_MADD_EXT => 0x8788,

#=head2 GL_OP_MAX_EXT
#
#=cut

    GL_OP_MAX_EXT => 0x878A,

#=head2 GL_OP_MIN_EXT
#
#=cut

    GL_OP_MIN_EXT => 0x878B,

#=head2 GL_OP_MOV_EXT
#
#=cut

    GL_OP_MOV_EXT => 0x8799,

#=head2 GL_OP_MULTIPLY_MATRIX_EXT
#
#=cut

    GL_OP_MULTIPLY_MATRIX_EXT => 0x8798,

#=head2 GL_OP_MUL_EXT
#
#=cut

    GL_OP_MUL_EXT => 0x8786,

#=head2 GL_OP_NEGATE_EXT
#
#=cut

    GL_OP_NEGATE_EXT => 0x8783,

#=head2 GL_OP_POWER_EXT
#
#=cut

    GL_OP_POWER_EXT => 0x8793,

#=head2 GL_OP_RECIP_EXT
#
#=cut

    GL_OP_RECIP_EXT => 0x8794,

#=head2 GL_OP_RECIP_SQRT_EXT
#
#=cut

    GL_OP_RECIP_SQRT_EXT => 0x8795,

#=head2 GL_OP_ROUND_EXT
#
#=cut

    GL_OP_ROUND_EXT => 0x8790,

#=head2 GL_OP_SET_GE_EXT
#
#=cut

    GL_OP_SET_GE_EXT => 0x878C,

#=head2 GL_OP_SET_LT_EXT
#
#=cut

    GL_OP_SET_LT_EXT => 0x878D,

#=head2 GL_OP_SUB_EXT
#
#=cut

    GL_OP_SUB_EXT => 0x8796,

#=head2 GL_OR
#
#=cut

    GL_OR => 0x1507,

#=head2 GL_ORDER
#
#=cut

    GL_ORDER => 0x0A01,

#=head2 GL_OR_INVERTED
#
#=cut

    GL_OR_INVERTED => 0x150D,

#=head2 GL_OR_REVERSE
#
#=cut

    GL_OR_REVERSE => 0x150B,

#=head2 GL_OUTPUT_COLOR0_EXT
#
#=cut

    GL_OUTPUT_COLOR0_EXT => 0x879B,

#=head2 GL_OUTPUT_COLOR1_EXT
#
#=cut

    GL_OUTPUT_COLOR1_EXT => 0x879C,

#=head2 GL_OUTPUT_FOG_EXT
#
#=cut

    GL_OUTPUT_FOG_EXT => 0x87BD,

#=head2 GL_OUTPUT_TEXTURE_COORD0_EXT
#
#=cut

    GL_OUTPUT_TEXTURE_COORD0_EXT => 0x879D,

#=head2 GL_OUTPUT_TEXTURE_COORD10_EXT
#
#=cut

    GL_OUTPUT_TEXTURE_COORD10_EXT => 0x87A7,

#=head2 GL_OUTPUT_TEXTURE_COORD11_EXT
#
#=cut

    GL_OUTPUT_TEXTURE_COORD11_EXT => 0x87A8,

#=head2 GL_OUTPUT_TEXTURE_COORD12_EXT
#
#=cut

    GL_OUTPUT_TEXTURE_COORD12_EXT => 0x87A9,

#=head2 GL_OUTPUT_TEXTURE_COORD13_EXT
#
#=cut

    GL_OUTPUT_TEXTURE_COORD13_EXT => 0x87AA,

#=head2 GL_OUTPUT_TEXTURE_COORD14_EXT
#
#=cut

    GL_OUTPUT_TEXTURE_COORD14_EXT => 0x87AB,

#=head2 GL_OUTPUT_TEXTURE_COORD15_EXT
#
#=cut

    GL_OUTPUT_TEXTURE_COORD15_EXT => 0x87AC,

#=head2 GL_OUTPUT_TEXTURE_COORD16_EXT
#
#=cut

    GL_OUTPUT_TEXTURE_COORD16_EXT => 0x87AD,

#=head2 GL_OUTPUT_TEXTURE_COORD17_EXT
#
#=cut

    GL_OUTPUT_TEXTURE_COORD17_EXT => 0x87AE,

#=head2 GL_OUTPUT_TEXTURE_COORD18_EXT
#
#=cut

    GL_OUTPUT_TEXTURE_COORD18_EXT => 0x87AF,

#=head2 GL_OUTPUT_TEXTURE_COORD19_EXT
#
#=cut

    GL_OUTPUT_TEXTURE_COORD19_EXT => 0x87B0,

#=head2 GL_OUTPUT_TEXTURE_COORD1_EXT
#
#=cut

    GL_OUTPUT_TEXTURE_COORD1_EXT => 0x879E,

#=head2 GL_OUTPUT_TEXTURE_COORD20_EXT
#
#=cut

    GL_OUTPUT_TEXTURE_COORD20_EXT => 0x87B1,

#=head2 GL_OUTPUT_TEXTURE_COORD21_EXT
#
#=cut

    GL_OUTPUT_TEXTURE_COORD21_EXT => 0x87B2,

#=head2 GL_OUTPUT_TEXTURE_COORD22_EXT
#
#=cut

    GL_OUTPUT_TEXTURE_COORD22_EXT => 0x87B3,

#=head2 GL_OUTPUT_TEXTURE_COORD23_EXT
#
#=cut

    GL_OUTPUT_TEXTURE_COORD23_EXT => 0x87B4,

#=head2 GL_OUTPUT_TEXTURE_COORD24_EXT
#
#=cut

    GL_OUTPUT_TEXTURE_COORD24_EXT => 0x87B5,

#=head2 GL_OUTPUT_TEXTURE_COORD25_EXT
#
#=cut

    GL_OUTPUT_TEXTURE_COORD25_EXT => 0x87B6,

#=head2 GL_OUTPUT_TEXTURE_COORD26_EXT
#
#=cut

    GL_OUTPUT_TEXTURE_COORD26_EXT => 0x87B7,

#=head2 GL_OUTPUT_TEXTURE_COORD27_EXT
#
#=cut

    GL_OUTPUT_TEXTURE_COORD27_EXT => 0x87B8,

#=head2 GL_OUTPUT_TEXTURE_COORD28_EXT
#
#=cut

    GL_OUTPUT_TEXTURE_COORD28_EXT => 0x87B9,

#=head2 GL_OUTPUT_TEXTURE_COORD29_EXT
#
#=cut

    GL_OUTPUT_TEXTURE_COORD29_EXT => 0x87BA,

#=head2 GL_OUTPUT_TEXTURE_COORD2_EXT
#
#=cut

    GL_OUTPUT_TEXTURE_COORD2_EXT => 0x879F,

#=head2 GL_OUTPUT_TEXTURE_COORD30_EXT
#
#=cut

    GL_OUTPUT_TEXTURE_COORD30_EXT => 0x87BB,

#=head2 GL_OUTPUT_TEXTURE_COORD31_EXT
#
#=cut

    GL_OUTPUT_TEXTURE_COORD31_EXT => 0x87BC,

#=head2 GL_OUTPUT_TEXTURE_COORD3_EXT
#
#=cut

    GL_OUTPUT_TEXTURE_COORD3_EXT => 0x87A0,

#=head2 GL_OUTPUT_TEXTURE_COORD4_EXT
#
#=cut

    GL_OUTPUT_TEXTURE_COORD4_EXT => 0x87A1,

#=head2 GL_OUTPUT_TEXTURE_COORD5_EXT
#
#=cut

    GL_OUTPUT_TEXTURE_COORD5_EXT => 0x87A2,

#=head2 GL_OUTPUT_TEXTURE_COORD6_EXT
#
#=cut

    GL_OUTPUT_TEXTURE_COORD6_EXT => 0x87A3,

#=head2 GL_OUTPUT_TEXTURE_COORD7_EXT
#
#=cut

    GL_OUTPUT_TEXTURE_COORD7_EXT => 0x87A4,

#=head2 GL_OUTPUT_TEXTURE_COORD8_EXT
#
#=cut

    GL_OUTPUT_TEXTURE_COORD8_EXT => 0x87A5,

#=head2 GL_OUTPUT_TEXTURE_COORD9_EXT
#
#=cut

    GL_OUTPUT_TEXTURE_COORD9_EXT => 0x87A6,

#=head2 GL_OUTPUT_VERTEX_EXT
#
#=cut

    GL_OUTPUT_VERTEX_EXT => 0x879A,

#=head2 GL_OUT_OF_MEMORY
#
#=cut

    GL_OUT_OF_MEMORY => 0x0505,

#=head2 GL_OVERLAY_KHR
#
#=cut

    GL_OVERLAY_KHR => 0x9296,

#=head2 GL_OVERLAY_NV
#
#=cut

    GL_OVERLAY_NV => 0x9296,

#=head2 GL_PACK_ALIGNMENT
#
#=cut

    GL_PACK_ALIGNMENT => 0x0D05,

#=head2 GL_PACK_CMYK_HINT_EXT
#
#=cut

    GL_PACK_CMYK_HINT_EXT => 0x800E,

#=head2 GL_PACK_COMPRESSED_BLOCK_DEPTH
#
#=cut

    GL_PACK_COMPRESSED_BLOCK_DEPTH => 0x912D,

#=head2 GL_PACK_COMPRESSED_BLOCK_HEIGHT
#
#=cut

    GL_PACK_COMPRESSED_BLOCK_HEIGHT => 0x912C,

#=head2 GL_PACK_COMPRESSED_BLOCK_SIZE
#
#=cut

    GL_PACK_COMPRESSED_BLOCK_SIZE => 0x912E,

#=head2 GL_PACK_COMPRESSED_BLOCK_WIDTH
#
#=cut

    GL_PACK_COMPRESSED_BLOCK_WIDTH => 0x912B,

#=head2 GL_PACK_IMAGE_DEPTH_SGIS
#
#=cut

    GL_PACK_IMAGE_DEPTH_SGIS => 0x8131,

#=head2 GL_PACK_IMAGE_HEIGHT
#
#=cut

    GL_PACK_IMAGE_HEIGHT => 0x806C,

#=head2 GL_PACK_IMAGE_HEIGHT_EXT
#
#=cut

    GL_PACK_IMAGE_HEIGHT_EXT => 0x806C,

#=head2 GL_PACK_INVERT_MESA
#
#=cut

    GL_PACK_INVERT_MESA => 0x8758,

#=head2 GL_PACK_LSB_FIRST
#
#=cut

    GL_PACK_LSB_FIRST => 0x0D01,

#=head2 GL_PACK_RESAMPLE_OML
#
#=cut

    GL_PACK_RESAMPLE_OML => 0x8984,

#=head2 GL_PACK_RESAMPLE_SGIX
#
#=cut

    GL_PACK_RESAMPLE_SGIX => 0x842C,

#=head2 GL_PACK_ROW_BYTES_APPLE
#
#=cut

    GL_PACK_ROW_BYTES_APPLE => 0x8A15,

#=head2 GL_PACK_ROW_LENGTH
#
#=cut

    GL_PACK_ROW_LENGTH => 0x0D02,

#=head2 GL_PACK_SKIP_IMAGES
#
#=cut

    GL_PACK_SKIP_IMAGES => 0x806B,

#=head2 GL_PACK_SKIP_IMAGES_EXT
#
#=cut

    GL_PACK_SKIP_IMAGES_EXT => 0x806B,

#=head2 GL_PACK_SKIP_PIXELS
#
#=cut

    GL_PACK_SKIP_PIXELS => 0x0D04,

#=head2 GL_PACK_SKIP_ROWS
#
#=cut

    GL_PACK_SKIP_ROWS => 0x0D03,

#=head2 GL_PACK_SKIP_VOLUMES_SGIS
#
#=cut

    GL_PACK_SKIP_VOLUMES_SGIS => 0x8130,

#=head2 GL_PACK_SUBSAMPLE_RATE_SGIX
#
#=cut

    GL_PACK_SUBSAMPLE_RATE_SGIX => 0x85A0,

#=head2 GL_PACK_SWAP_BYTES
#
#=cut

    GL_PACK_SWAP_BYTES => 0x0D00,

#=head2 GL_PALETTE4_R5_G6_B5_OES
#
#=cut

    GL_PALETTE4_R5_G6_B5_OES => 0x8B92,

#=head2 GL_PALETTE4_RGB5_A1_OES
#
#=cut

    GL_PALETTE4_RGB5_A1_OES => 0x8B94,

#=head2 GL_PALETTE4_RGB8_OES
#
#=cut

    GL_PALETTE4_RGB8_OES => 0x8B90,

#=head2 GL_PALETTE4_RGBA4_OES
#
#=cut

    GL_PALETTE4_RGBA4_OES => 0x8B93,

#=head2 GL_PALETTE4_RGBA8_OES
#
#=cut

    GL_PALETTE4_RGBA8_OES => 0x8B91,

#=head2 GL_PALETTE8_R5_G6_B5_OES
#
#=cut

    GL_PALETTE8_R5_G6_B5_OES => 0x8B97,

#=head2 GL_PALETTE8_RGB5_A1_OES
#
#=cut

    GL_PALETTE8_RGB5_A1_OES => 0x8B99,

#=head2 GL_PALETTE8_RGB8_OES
#
#=cut

    GL_PALETTE8_RGB8_OES => 0x8B95,

#=head2 GL_PALETTE8_RGBA4_OES
#
#=cut

    GL_PALETTE8_RGBA4_OES => 0x8B98,

#=head2 GL_PALETTE8_RGBA8_OES
#
#=cut

    GL_PALETTE8_RGBA8_OES => 0x8B96,

#=head2 GL_PARALLEL_ARRAYS_INTEL
#
#=cut

    GL_PARALLEL_ARRAYS_INTEL => 0x83F4,

#=head2 GL_PARAMETER_BUFFER_ARB
#
#=cut

    GL_PARAMETER_BUFFER_ARB => 0x80EE,

#=head2 GL_PARAMETER_BUFFER_BINDING_ARB
#
#=cut

    GL_PARAMETER_BUFFER_BINDING_ARB => 0x80EF,

#=head2 GL_PARTIAL_SUCCESS_NV
#
#=cut

    GL_PARTIAL_SUCCESS_NV => 0x902E,

#=head2 GL_PASS_THROUGH_NV
#
#=cut

    GL_PASS_THROUGH_NV => 0x86E6,

#=head2 GL_PASS_THROUGH_TOKEN
#
#=cut

    GL_PASS_THROUGH_TOKEN => 0x0700,

#=head2 GL_PATCHES
#
#=cut

    GL_PATCHES => 0x000E,

#=head2 GL_PATCH_DEFAULT_INNER_LEVEL
#
#=cut

    GL_PATCH_DEFAULT_INNER_LEVEL => 0x8E73,

#=head2 GL_PATCH_DEFAULT_OUTER_LEVEL
#
#=cut

    GL_PATCH_DEFAULT_OUTER_LEVEL => 0x8E74,

#=head2 GL_PATCH_VERTICES
#
#=cut

    GL_PATCH_VERTICES => 0x8E72,

#=head2 GL_PATH_CLIENT_LENGTH_NV
#
#=cut

    GL_PATH_CLIENT_LENGTH_NV => 0x907F,

#=head2 GL_PATH_COMMAND_COUNT_NV
#
#=cut

    GL_PATH_COMMAND_COUNT_NV => 0x909D,

#=head2 GL_PATH_COMPUTED_LENGTH_NV
#
#=cut

    GL_PATH_COMPUTED_LENGTH_NV => 0x90A0,

#=head2 GL_PATH_COORD_COUNT_NV
#
#=cut

    GL_PATH_COORD_COUNT_NV => 0x909E,

#=head2 GL_PATH_COVER_DEPTH_FUNC_NV
#
#=cut

    GL_PATH_COVER_DEPTH_FUNC_NV => 0x90BF,

#=head2 GL_PATH_DASH_ARRAY_COUNT_NV
#
#=cut

    GL_PATH_DASH_ARRAY_COUNT_NV => 0x909F,

#=head2 GL_PATH_DASH_CAPS_NV
#
#=cut

    GL_PATH_DASH_CAPS_NV => 0x907B,

#=head2 GL_PATH_DASH_OFFSET_NV
#
#=cut

    GL_PATH_DASH_OFFSET_NV => 0x907E,

#=head2 GL_PATH_DASH_OFFSET_RESET_NV
#
#=cut

    GL_PATH_DASH_OFFSET_RESET_NV => 0x90B4,

#=head2 GL_PATH_END_CAPS_NV
#
#=cut

    GL_PATH_END_CAPS_NV => 0x9076,

#=head2 GL_PATH_ERROR_POSITION_NV
#
#=cut

    GL_PATH_ERROR_POSITION_NV => 0x90AB,

#=head2 GL_PATH_FILL_BOUNDING_BOX_NV
#
#=cut

    GL_PATH_FILL_BOUNDING_BOX_NV => 0x90A1,

#=head2 GL_PATH_FILL_COVER_MODE_NV
#
#=cut

    GL_PATH_FILL_COVER_MODE_NV => 0x9082,

#=head2 GL_PATH_FILL_MASK_NV
#
#=cut

    GL_PATH_FILL_MASK_NV => 0x9081,

#=head2 GL_PATH_FILL_MODE_NV
#
#=cut

    GL_PATH_FILL_MODE_NV => 0x9080,

#=head2 GL_PATH_FOG_GEN_MODE_NV
#
#=cut

    GL_PATH_FOG_GEN_MODE_NV => 0x90AC,

#=head2 GL_PATH_FORMAT_PS_NV
#
#=cut

    GL_PATH_FORMAT_PS_NV => 0x9071,

#=head2 GL_PATH_FORMAT_SVG_NV
#
#=cut

    GL_PATH_FORMAT_SVG_NV => 0x9070,

#=head2 GL_PATH_GEN_COEFF_NV
#
#=cut

    GL_PATH_GEN_COEFF_NV => 0x90B1,

#=head2 GL_PATH_GEN_COLOR_FORMAT_NV
#
#=cut

    GL_PATH_GEN_COLOR_FORMAT_NV => 0x90B2,

#=head2 GL_PATH_GEN_COMPONENTS_NV
#
#=cut

    GL_PATH_GEN_COMPONENTS_NV => 0x90B3,

#=head2 GL_PATH_GEN_MODE_NV
#
#=cut

    GL_PATH_GEN_MODE_NV => 0x90B0,

#=head2 GL_PATH_INITIAL_DASH_CAP_NV
#
#=cut

    GL_PATH_INITIAL_DASH_CAP_NV => 0x907C,

#=head2 GL_PATH_INITIAL_END_CAP_NV
#
#=cut

    GL_PATH_INITIAL_END_CAP_NV => 0x9077,

#=head2 GL_PATH_JOIN_STYLE_NV
#
#=cut

    GL_PATH_JOIN_STYLE_NV => 0x9079,

#=head2 GL_PATH_MAX_MODELVIEW_STACK_DEPTH_NV
#
#=cut

    GL_PATH_MAX_MODELVIEW_STACK_DEPTH_NV => 0x0D36,

#=head2 GL_PATH_MAX_PROJECTION_STACK_DEPTH_NV
#
#=cut

    GL_PATH_MAX_PROJECTION_STACK_DEPTH_NV => 0x0D38,

#=head2 GL_PATH_MITER_LIMIT_NV
#
#=cut

    GL_PATH_MITER_LIMIT_NV => 0x907A,

#=head2 GL_PATH_MODELVIEW_MATRIX_NV
#
#=cut

    GL_PATH_MODELVIEW_MATRIX_NV => 0x0BA6,

#=head2 GL_PATH_MODELVIEW_NV
#
#=cut

    GL_PATH_MODELVIEW_NV => 0x1700,

#=head2 GL_PATH_MODELVIEW_STACK_DEPTH_NV
#
#=cut

    GL_PATH_MODELVIEW_STACK_DEPTH_NV => 0x0BA3,

#=head2 GL_PATH_OBJECT_BOUNDING_BOX_NV
#
#=cut

    GL_PATH_OBJECT_BOUNDING_BOX_NV => 0x908A,

#=head2 GL_PATH_PROJECTION_MATRIX_NV
#
#=cut

    GL_PATH_PROJECTION_MATRIX_NV => 0x0BA7,

#=head2 GL_PATH_PROJECTION_NV
#
#=cut

    GL_PATH_PROJECTION_NV => 0x1701,

#=head2 GL_PATH_PROJECTION_STACK_DEPTH_NV
#
#=cut

    GL_PATH_PROJECTION_STACK_DEPTH_NV => 0x0BA4,

#=head2 GL_PATH_STENCIL_DEPTH_OFFSET_FACTOR_NV
#
#=cut

    GL_PATH_STENCIL_DEPTH_OFFSET_FACTOR_NV => 0x90BD,

#=head2 GL_PATH_STENCIL_DEPTH_OFFSET_UNITS_NV
#
#=cut

    GL_PATH_STENCIL_DEPTH_OFFSET_UNITS_NV => 0x90BE,

#=head2 GL_PATH_STENCIL_FUNC_NV
#
#=cut

    GL_PATH_STENCIL_FUNC_NV => 0x90B7,

#=head2 GL_PATH_STENCIL_REF_NV
#
#=cut

    GL_PATH_STENCIL_REF_NV => 0x90B8,

#=head2 GL_PATH_STENCIL_VALUE_MASK_NV
#
#=cut

    GL_PATH_STENCIL_VALUE_MASK_NV => 0x90B9,

#=head2 GL_PATH_STROKE_BOUNDING_BOX_NV
#
#=cut

    GL_PATH_STROKE_BOUNDING_BOX_NV => 0x90A2,

#=head2 GL_PATH_STROKE_COVER_MODE_NV
#
#=cut

    GL_PATH_STROKE_COVER_MODE_NV => 0x9083,

#=head2 GL_PATH_STROKE_MASK_NV
#
#=cut

    GL_PATH_STROKE_MASK_NV => 0x9084,

#=head2 GL_PATH_STROKE_WIDTH_NV
#
#=cut

    GL_PATH_STROKE_WIDTH_NV => 0x9075,

#=head2 GL_PATH_TERMINAL_DASH_CAP_NV
#
#=cut

    GL_PATH_TERMINAL_DASH_CAP_NV => 0x907D,

#=head2 GL_PATH_TERMINAL_END_CAP_NV
#
#=cut

    GL_PATH_TERMINAL_END_CAP_NV => 0x9078,

#=head2 GL_PATH_TRANSPOSE_MODELVIEW_MATRIX_NV
#
#=cut

    GL_PATH_TRANSPOSE_MODELVIEW_MATRIX_NV => 0x84E3,

#=head2 GL_PATH_TRANSPOSE_PROJECTION_MATRIX_NV
#
#=cut

    GL_PATH_TRANSPOSE_PROJECTION_MATRIX_NV => 0x84E4,

#=head2 GL_PERCENTAGE_AMD
#
#=cut

    GL_PERCENTAGE_AMD => 0x8BC3,

#=head2 GL_PERFMON_RESULT_AMD
#
#=cut

    GL_PERFMON_RESULT_AMD => 0x8BC6,

#=head2 GL_PERFMON_RESULT_AVAILABLE_AMD
#
#=cut

    GL_PERFMON_RESULT_AVAILABLE_AMD => 0x8BC4,

#=head2 GL_PERFMON_RESULT_SIZE_AMD
#
#=cut

    GL_PERFMON_RESULT_SIZE_AMD => 0x8BC5,

#=head2 GL_PERFORMANCE_MONITOR_AMD
#
#=cut

    GL_PERFORMANCE_MONITOR_AMD => 0x9152,

#=head2 GL_PERFQUERY_COUNTER_DATA_BOOL32_INTEL
#
#=cut

    GL_PERFQUERY_COUNTER_DATA_BOOL32_INTEL => 0x94FC,

#=head2 GL_PERFQUERY_COUNTER_DATA_DOUBLE_INTEL
#
#=cut

    GL_PERFQUERY_COUNTER_DATA_DOUBLE_INTEL => 0x94FB,

#=head2 GL_PERFQUERY_COUNTER_DATA_FLOAT_INTEL
#
#=cut

    GL_PERFQUERY_COUNTER_DATA_FLOAT_INTEL => 0x94FA,

#=head2 GL_PERFQUERY_COUNTER_DATA_UINT32_INTEL
#
#=cut

    GL_PERFQUERY_COUNTER_DATA_UINT32_INTEL => 0x94F8,

#=head2 GL_PERFQUERY_COUNTER_DATA_UINT64_INTEL
#
#=cut

    GL_PERFQUERY_COUNTER_DATA_UINT64_INTEL => 0x94F9,

#=head2 GL_PERFQUERY_COUNTER_DESC_LENGTH_MAX_INTEL
#
#=cut

    GL_PERFQUERY_COUNTER_DESC_LENGTH_MAX_INTEL => 0x94FF,

#=head2 GL_PERFQUERY_COUNTER_DURATION_NORM_INTEL
#
#=cut

    GL_PERFQUERY_COUNTER_DURATION_NORM_INTEL => 0x94F1,

#=head2 GL_PERFQUERY_COUNTER_DURATION_RAW_INTEL
#
#=cut

    GL_PERFQUERY_COUNTER_DURATION_RAW_INTEL => 0x94F2,

#=head2 GL_PERFQUERY_COUNTER_EVENT_INTEL
#
#=cut

    GL_PERFQUERY_COUNTER_EVENT_INTEL => 0x94F0,

#=head2 GL_PERFQUERY_COUNTER_NAME_LENGTH_MAX_INTEL
#
#=cut

    GL_PERFQUERY_COUNTER_NAME_LENGTH_MAX_INTEL => 0x94FE,

#=head2 GL_PERFQUERY_COUNTER_RAW_INTEL
#
#=cut

    GL_PERFQUERY_COUNTER_RAW_INTEL => 0x94F4,

#=head2 GL_PERFQUERY_COUNTER_THROUGHPUT_INTEL
#
#=cut

    GL_PERFQUERY_COUNTER_THROUGHPUT_INTEL => 0x94F3,

#=head2 GL_PERFQUERY_COUNTER_TIMESTAMP_INTEL
#
#=cut

    GL_PERFQUERY_COUNTER_TIMESTAMP_INTEL => 0x94F5,

#=head2 GL_PERFQUERY_DONOT_FLUSH_INTEL
#
#=cut

    GL_PERFQUERY_DONOT_FLUSH_INTEL => 0x83F9,

#=head2 GL_PERFQUERY_FLUSH_INTEL
#
#=cut

    GL_PERFQUERY_FLUSH_INTEL => 0x83FA,

#=head2 GL_PERFQUERY_GLOBAL_CONTEXT_INTEL
#
#=cut

    GL_PERFQUERY_GLOBAL_CONTEXT_INTEL => 0x00000001,

#=head2 GL_PERFQUERY_GPA_EXTENDED_COUNTERS_INTEL
#
#=cut

    GL_PERFQUERY_GPA_EXTENDED_COUNTERS_INTEL => 0x9500,

#=head2 GL_PERFQUERY_QUERY_NAME_LENGTH_MAX_INTEL
#
#=cut

    GL_PERFQUERY_QUERY_NAME_LENGTH_MAX_INTEL => 0x94FD,

#=head2 GL_PERFQUERY_SINGLE_CONTEXT_INTEL
#
#=cut

    GL_PERFQUERY_SINGLE_CONTEXT_INTEL => 0x00000000,

#=head2 GL_PERFQUERY_WAIT_INTEL
#
#=cut

    GL_PERFQUERY_WAIT_INTEL => 0x83FB,

#=head2 GL_PERSPECTIVE_CORRECTION_HINT
#
#=cut

    GL_PERSPECTIVE_CORRECTION_HINT => 0x0C50,

#=head2 GL_PERTURB_EXT
#
#=cut

    GL_PERTURB_EXT => 0x85AE,

#=head2 GL_PER_STAGE_CONSTANTS_NV
#
#=cut

    GL_PER_STAGE_CONSTANTS_NV => 0x8535,

#=head2 GL_PGI_misc_hints
#
#=cut

    GL_PGI_misc_hints => 1,

#=head2 GL_PGI_vertex_hints
#
#=cut

    GL_PGI_vertex_hints => 1,

#=head2 GL_PHONG_HINT_WIN
#
#=cut

    GL_PHONG_HINT_WIN => 0x80EB,

#=head2 GL_PHONG_WIN
#
#=cut

    GL_PHONG_WIN => 0x80EA,

#=head2 GL_PINLIGHT_NV
#
#=cut

    GL_PINLIGHT_NV => 0x92A8,

#=head2 GL_PIXEL_BUFFER_BARRIER_BIT
#
#=cut

    GL_PIXEL_BUFFER_BARRIER_BIT => 0x00000080,

#=head2 GL_PIXEL_BUFFER_BARRIER_BIT_EXT
#
#=cut

    GL_PIXEL_BUFFER_BARRIER_BIT_EXT => 0x00000080,

#=head2 GL_PIXEL_COUNTER_BITS_NV
#
#=cut

    GL_PIXEL_COUNTER_BITS_NV => 0x8864,

#=head2 GL_PIXEL_COUNT_AVAILABLE_NV
#
#=cut

    GL_PIXEL_COUNT_AVAILABLE_NV => 0x8867,

#=head2 GL_PIXEL_COUNT_NV
#
#=cut

    GL_PIXEL_COUNT_NV => 0x8866,

#=head2 GL_PIXEL_CUBIC_WEIGHT_EXT
#
#=cut

    GL_PIXEL_CUBIC_WEIGHT_EXT => 0x8333,

#=head2 GL_PIXEL_FRAGMENT_ALPHA_SOURCE_SGIS
#
#=cut

    GL_PIXEL_FRAGMENT_ALPHA_SOURCE_SGIS => 0x8355,

#=head2 GL_PIXEL_FRAGMENT_RGB_SOURCE_SGIS
#
#=cut

    GL_PIXEL_FRAGMENT_RGB_SOURCE_SGIS => 0x8354,

#=head2 GL_PIXEL_GROUP_COLOR_SGIS
#
#=cut

    GL_PIXEL_GROUP_COLOR_SGIS => 0x8356,

#=head2 GL_PIXEL_MAG_FILTER_EXT
#
#=cut

    GL_PIXEL_MAG_FILTER_EXT => 0x8331,

#=head2 GL_PIXEL_MAP_A_TO_A
#
#=cut

    GL_PIXEL_MAP_A_TO_A => 0x0C79,

#=head2 GL_PIXEL_MAP_A_TO_A_SIZE
#
#=cut

    GL_PIXEL_MAP_A_TO_A_SIZE => 0x0CB9,

#=head2 GL_PIXEL_MAP_B_TO_B
#
#=cut

    GL_PIXEL_MAP_B_TO_B => 0x0C78,

#=head2 GL_PIXEL_MAP_B_TO_B_SIZE
#
#=cut

    GL_PIXEL_MAP_B_TO_B_SIZE => 0x0CB8,

#=head2 GL_PIXEL_MAP_G_TO_G
#
#=cut

    GL_PIXEL_MAP_G_TO_G => 0x0C77,

#=head2 GL_PIXEL_MAP_G_TO_G_SIZE
#
#=cut

    GL_PIXEL_MAP_G_TO_G_SIZE => 0x0CB7,

#=head2 GL_PIXEL_MAP_I_TO_A
#
#=cut

    GL_PIXEL_MAP_I_TO_A => 0x0C75,

#=head2 GL_PIXEL_MAP_I_TO_A_SIZE
#
#=cut

    GL_PIXEL_MAP_I_TO_A_SIZE => 0x0CB5,

#=head2 GL_PIXEL_MAP_I_TO_B
#
#=cut

    GL_PIXEL_MAP_I_TO_B => 0x0C74,

#=head2 GL_PIXEL_MAP_I_TO_B_SIZE
#
#=cut

    GL_PIXEL_MAP_I_TO_B_SIZE => 0x0CB4,

#=head2 GL_PIXEL_MAP_I_TO_G
#
#=cut

    GL_PIXEL_MAP_I_TO_G => 0x0C73,

#=head2 GL_PIXEL_MAP_I_TO_G_SIZE
#
#=cut

    GL_PIXEL_MAP_I_TO_G_SIZE => 0x0CB3,

#=head2 GL_PIXEL_MAP_I_TO_I
#
#=cut

    GL_PIXEL_MAP_I_TO_I => 0x0C70,

#=head2 GL_PIXEL_MAP_I_TO_I_SIZE
#
#=cut

    GL_PIXEL_MAP_I_TO_I_SIZE => 0x0CB0,

#=head2 GL_PIXEL_MAP_I_TO_R
#
#=cut

    GL_PIXEL_MAP_I_TO_R => 0x0C72,

#=head2 GL_PIXEL_MAP_I_TO_R_SIZE
#
#=cut

    GL_PIXEL_MAP_I_TO_R_SIZE => 0x0CB2,

#=head2 GL_PIXEL_MAP_R_TO_R
#
#=cut

    GL_PIXEL_MAP_R_TO_R => 0x0C76,

#=head2 GL_PIXEL_MAP_R_TO_R_SIZE
#
#=cut

    GL_PIXEL_MAP_R_TO_R_SIZE => 0x0CB6,

#=head2 GL_PIXEL_MAP_S_TO_S
#
#=cut

    GL_PIXEL_MAP_S_TO_S => 0x0C71,

#=head2 GL_PIXEL_MAP_S_TO_S_SIZE
#
#=cut

    GL_PIXEL_MAP_S_TO_S_SIZE => 0x0CB1,

#=head2 GL_PIXEL_MIN_FILTER_EXT
#
#=cut

    GL_PIXEL_MIN_FILTER_EXT => 0x8332,

#=head2 GL_PIXEL_MODE_BIT
#
#=cut

    GL_PIXEL_MODE_BIT => 0x00000020,

#=head2 GL_PIXEL_PACK_BUFFER
#
#=cut

    GL_PIXEL_PACK_BUFFER => 0x88EB,

#=head2 GL_PIXEL_PACK_BUFFER_ARB
#
#=cut

    GL_PIXEL_PACK_BUFFER_ARB => 0x88EB,

#=head2 GL_PIXEL_PACK_BUFFER_BINDING
#
#=cut

    GL_PIXEL_PACK_BUFFER_BINDING => 0x88ED,

#=head2 GL_PIXEL_PACK_BUFFER_BINDING_ARB
#
#=cut

    GL_PIXEL_PACK_BUFFER_BINDING_ARB => 0x88ED,

#=head2 GL_PIXEL_PACK_BUFFER_BINDING_EXT
#
#=cut

    GL_PIXEL_PACK_BUFFER_BINDING_EXT => 0x88ED,

#=head2 GL_PIXEL_PACK_BUFFER_EXT
#
#=cut

    GL_PIXEL_PACK_BUFFER_EXT => 0x88EB,

#=head2 GL_PIXEL_SUBSAMPLE_2424_SGIX
#
#=cut

    GL_PIXEL_SUBSAMPLE_2424_SGIX => 0x85A3,

#=head2 GL_PIXEL_SUBSAMPLE_4242_SGIX
#
#=cut

    GL_PIXEL_SUBSAMPLE_4242_SGIX => 0x85A4,

#=head2 GL_PIXEL_SUBSAMPLE_4444_SGIX
#
#=cut

    GL_PIXEL_SUBSAMPLE_4444_SGIX => 0x85A2,

#=head2 GL_PIXEL_TEXTURE_SGIS
#
#=cut

    GL_PIXEL_TEXTURE_SGIS => 0x8353,

#=head2 GL_PIXEL_TEX_GEN_MODE_SGIX
#
#=cut

    GL_PIXEL_TEX_GEN_MODE_SGIX => 0x832B,

#=head2 GL_PIXEL_TEX_GEN_SGIX
#
#=cut

    GL_PIXEL_TEX_GEN_SGIX => 0x8139,

#=head2 GL_PIXEL_TILE_BEST_ALIGNMENT_SGIX
#
#=cut

    GL_PIXEL_TILE_BEST_ALIGNMENT_SGIX => 0x813E,

#=head2 GL_PIXEL_TILE_CACHE_INCREMENT_SGIX
#
#=cut

    GL_PIXEL_TILE_CACHE_INCREMENT_SGIX => 0x813F,

#=head2 GL_PIXEL_TILE_CACHE_SIZE_SGIX
#
#=cut

    GL_PIXEL_TILE_CACHE_SIZE_SGIX => 0x8145,

#=head2 GL_PIXEL_TILE_GRID_DEPTH_SGIX
#
#=cut

    GL_PIXEL_TILE_GRID_DEPTH_SGIX => 0x8144,

#=head2 GL_PIXEL_TILE_GRID_HEIGHT_SGIX
#
#=cut

    GL_PIXEL_TILE_GRID_HEIGHT_SGIX => 0x8143,

#=head2 GL_PIXEL_TILE_GRID_WIDTH_SGIX
#
#=cut

    GL_PIXEL_TILE_GRID_WIDTH_SGIX => 0x8142,

#=head2 GL_PIXEL_TILE_HEIGHT_SGIX
#
#=cut

    GL_PIXEL_TILE_HEIGHT_SGIX => 0x8141,

#=head2 GL_PIXEL_TILE_WIDTH_SGIX
#
#=cut

    GL_PIXEL_TILE_WIDTH_SGIX => 0x8140,

#=head2 GL_PIXEL_TRANSFORM_2D_EXT
#
#=cut

    GL_PIXEL_TRANSFORM_2D_EXT => 0x8330,

#=head2 GL_PIXEL_TRANSFORM_2D_MATRIX_EXT
#
#=cut

    GL_PIXEL_TRANSFORM_2D_MATRIX_EXT => 0x8338,

#=head2 GL_PIXEL_TRANSFORM_2D_STACK_DEPTH_EXT
#
#=cut

    GL_PIXEL_TRANSFORM_2D_STACK_DEPTH_EXT => 0x8336,

#=head2 GL_PIXEL_UNPACK_BUFFER
#
#=cut

    GL_PIXEL_UNPACK_BUFFER => 0x88EC,

#=head2 GL_PIXEL_UNPACK_BUFFER_ARB
#
#=cut

    GL_PIXEL_UNPACK_BUFFER_ARB => 0x88EC,

#=head2 GL_PIXEL_UNPACK_BUFFER_BINDING
#
#=cut

    GL_PIXEL_UNPACK_BUFFER_BINDING => 0x88EF,

#=head2 GL_PIXEL_UNPACK_BUFFER_BINDING_ARB
#
#=cut

    GL_PIXEL_UNPACK_BUFFER_BINDING_ARB => 0x88EF,

#=head2 GL_PIXEL_UNPACK_BUFFER_BINDING_EXT
#
#=cut

    GL_PIXEL_UNPACK_BUFFER_BINDING_EXT => 0x88EF,

#=head2 GL_PIXEL_UNPACK_BUFFER_EXT
#
#=cut

    GL_PIXEL_UNPACK_BUFFER_EXT => 0x88EC,

#=head2 GL_PLUS_CLAMPED_ALPHA_NV
#
#=cut

    GL_PLUS_CLAMPED_ALPHA_NV => 0x92B2,

#=head2 GL_PLUS_CLAMPED_NV
#
#=cut

    GL_PLUS_CLAMPED_NV => 0x92B1,

#=head2 GL_PLUS_DARKER_NV
#
#=cut

    GL_PLUS_DARKER_NV => 0x9292,

#=head2 GL_PLUS_NV
#
#=cut

    GL_PLUS_NV => 0x9291,

#=head2 GL_PN_TRIANGLES_ATI
#
#=cut

    GL_PN_TRIANGLES_ATI => 0x87F0,

#=head2 GL_PN_TRIANGLES_NORMAL_MODE_ATI
#
#=cut

    GL_PN_TRIANGLES_NORMAL_MODE_ATI => 0x87F3,

#=head2 GL_PN_TRIANGLES_NORMAL_MODE_LINEAR_ATI
#
#=cut

    GL_PN_TRIANGLES_NORMAL_MODE_LINEAR_ATI => 0x87F7,

#=head2 GL_PN_TRIANGLES_NORMAL_MODE_QUADRATIC_ATI
#
#=cut

    GL_PN_TRIANGLES_NORMAL_MODE_QUADRATIC_ATI => 0x87F8,

#=head2 GL_PN_TRIANGLES_POINT_MODE_ATI
#
#=cut

    GL_PN_TRIANGLES_POINT_MODE_ATI => 0x87F2,

#=head2 GL_PN_TRIANGLES_POINT_MODE_CUBIC_ATI
#
#=cut

    GL_PN_TRIANGLES_POINT_MODE_CUBIC_ATI => 0x87F6,

#=head2 GL_PN_TRIANGLES_POINT_MODE_LINEAR_ATI
#
#=cut

    GL_PN_TRIANGLES_POINT_MODE_LINEAR_ATI => 0x87F5,

#=head2 GL_PN_TRIANGLES_TESSELATION_LEVEL_ATI
#
#=cut

    GL_PN_TRIANGLES_TESSELATION_LEVEL_ATI => 0x87F4,

#=head2 GL_POINT
#
#=cut

    GL_POINT => 0x1B00,

#=head2 GL_POINTS
#
#=cut

    GL_POINTS => 0x0000,

#=head2 GL_POINT_BIT
#
#=cut

    GL_POINT_BIT => 0x00000002,

#=head2 GL_POINT_DISTANCE_ATTENUATION
#
#=cut

    GL_POINT_DISTANCE_ATTENUATION => 0x8129,

#=head2 GL_POINT_DISTANCE_ATTENUATION_ARB
#
#=cut

    GL_POINT_DISTANCE_ATTENUATION_ARB => 0x8129,

#=head2 GL_POINT_FADE_THRESHOLD_SIZE
#
#=cut

    GL_POINT_FADE_THRESHOLD_SIZE => 0x8128,

#=head2 GL_POINT_FADE_THRESHOLD_SIZE_ARB
#
#=cut

    GL_POINT_FADE_THRESHOLD_SIZE_ARB => 0x8128,

#=head2 GL_POINT_FADE_THRESHOLD_SIZE_EXT
#
#=cut

    GL_POINT_FADE_THRESHOLD_SIZE_EXT => 0x8128,

#=head2 GL_POINT_FADE_THRESHOLD_SIZE_SGIS
#
#=cut

    GL_POINT_FADE_THRESHOLD_SIZE_SGIS => 0x8128,

#=head2 GL_POINT_SIZE
#
#=cut

    GL_POINT_SIZE => 0x0B11,

#=head2 GL_POINT_SIZE_GRANULARITY
#
#=cut

    GL_POINT_SIZE_GRANULARITY => 0x0B13,

#=head2 GL_POINT_SIZE_MAX
#
#=cut

    GL_POINT_SIZE_MAX => 0x8127,

#=head2 GL_POINT_SIZE_MAX_ARB
#
#=cut

    GL_POINT_SIZE_MAX_ARB => 0x8127,

#=head2 GL_POINT_SIZE_MAX_EXT
#
#=cut

    GL_POINT_SIZE_MAX_EXT => 0x8127,

#=head2 GL_POINT_SIZE_MAX_SGIS
#
#=cut

    GL_POINT_SIZE_MAX_SGIS => 0x8127,

#=head2 GL_POINT_SIZE_MIN
#
#=cut

    GL_POINT_SIZE_MIN => 0x8126,

#=head2 GL_POINT_SIZE_MIN_ARB
#
#=cut

    GL_POINT_SIZE_MIN_ARB => 0x8126,

#=head2 GL_POINT_SIZE_MIN_EXT
#
#=cut

    GL_POINT_SIZE_MIN_EXT => 0x8126,

#=head2 GL_POINT_SIZE_MIN_SGIS
#
#=cut

    GL_POINT_SIZE_MIN_SGIS => 0x8126,

#=head2 GL_POINT_SIZE_RANGE
#
#=cut

    GL_POINT_SIZE_RANGE => 0x0B12,

#=head2 GL_POINT_SMOOTH
#
#=cut

    GL_POINT_SMOOTH => 0x0B10,

#=head2 GL_POINT_SMOOTH_HINT
#
#=cut

    GL_POINT_SMOOTH_HINT => 0x0C51,

#=head2 GL_POINT_SPRITE
#
#=cut

    GL_POINT_SPRITE => 0x8861,

#=head2 GL_POINT_SPRITE_ARB
#
#=cut

    GL_POINT_SPRITE_ARB => 0x8861,

#=head2 GL_POINT_SPRITE_COORD_ORIGIN
#
#=cut

    GL_POINT_SPRITE_COORD_ORIGIN => 0x8CA0,

#=head2 GL_POINT_SPRITE_NV
#
#=cut

    GL_POINT_SPRITE_NV => 0x8861,

#=head2 GL_POINT_SPRITE_R_MODE_NV
#
#=cut

    GL_POINT_SPRITE_R_MODE_NV => 0x8863,

#=head2 GL_POINT_TOKEN
#
#=cut

    GL_POINT_TOKEN => 0x0701,

#=head2 GL_POLYGON
#
#=cut

    GL_POLYGON => 0x0009,

#=head2 GL_POLYGON_BIT
#
#=cut

    GL_POLYGON_BIT => 0x00000008,

#=head2 GL_POLYGON_MODE
#
#=cut

    GL_POLYGON_MODE => 0x0B40,

#=head2 GL_POLYGON_OFFSET_BIAS_EXT
#
#=cut

    GL_POLYGON_OFFSET_BIAS_EXT => 0x8039,

#=head2 GL_POLYGON_OFFSET_EXT
#
#=cut

    GL_POLYGON_OFFSET_EXT => 0x8037,

#=head2 GL_POLYGON_OFFSET_FACTOR
#
#=cut

    GL_POLYGON_OFFSET_FACTOR => 0x8038,

#=head2 GL_POLYGON_OFFSET_FACTOR_EXT
#
#=cut

    GL_POLYGON_OFFSET_FACTOR_EXT => 0x8038,

#=head2 GL_POLYGON_OFFSET_FILL
#
#=cut

    GL_POLYGON_OFFSET_FILL => 0x8037,

#=head2 GL_POLYGON_OFFSET_LINE
#
#=cut

    GL_POLYGON_OFFSET_LINE => 0x2A02,

#=head2 GL_POLYGON_OFFSET_POINT
#
#=cut

    GL_POLYGON_OFFSET_POINT => 0x2A01,

#=head2 GL_POLYGON_OFFSET_UNITS
#
#=cut

    GL_POLYGON_OFFSET_UNITS => 0x2A00,

#=head2 GL_POLYGON_SMOOTH
#
#=cut

    GL_POLYGON_SMOOTH => 0x0B41,

#=head2 GL_POLYGON_SMOOTH_HINT
#
#=cut

    GL_POLYGON_SMOOTH_HINT => 0x0C53,

#=head2 GL_POLYGON_STIPPLE
#
#=cut

    GL_POLYGON_STIPPLE => 0x0B42,

#=head2 GL_POLYGON_STIPPLE_BIT
#
#=cut

    GL_POLYGON_STIPPLE_BIT => 0x00000010,

#=head2 GL_POLYGON_TOKEN
#
#=cut

    GL_POLYGON_TOKEN => 0x0703,

#=head2 GL_POSITION
#
#=cut

    GL_POSITION => 0x1203,

#=head2 GL_POST_COLOR_MATRIX_ALPHA_BIAS
#
#=cut

    GL_POST_COLOR_MATRIX_ALPHA_BIAS => 0x80BB,

#=head2 GL_POST_COLOR_MATRIX_ALPHA_BIAS_SGI
#
#=cut

    GL_POST_COLOR_MATRIX_ALPHA_BIAS_SGI => 0x80BB,

#=head2 GL_POST_COLOR_MATRIX_ALPHA_SCALE
#
#=cut

    GL_POST_COLOR_MATRIX_ALPHA_SCALE => 0x80B7,

#=head2 GL_POST_COLOR_MATRIX_ALPHA_SCALE_SGI
#
#=cut

    GL_POST_COLOR_MATRIX_ALPHA_SCALE_SGI => 0x80B7,

#=head2 GL_POST_COLOR_MATRIX_BLUE_BIAS
#
#=cut

    GL_POST_COLOR_MATRIX_BLUE_BIAS => 0x80BA,

#=head2 GL_POST_COLOR_MATRIX_BLUE_BIAS_SGI
#
#=cut

    GL_POST_COLOR_MATRIX_BLUE_BIAS_SGI => 0x80BA,

#=head2 GL_POST_COLOR_MATRIX_BLUE_SCALE
#
#=cut

    GL_POST_COLOR_MATRIX_BLUE_SCALE => 0x80B6,

#=head2 GL_POST_COLOR_MATRIX_BLUE_SCALE_SGI
#
#=cut

    GL_POST_COLOR_MATRIX_BLUE_SCALE_SGI => 0x80B6,

#=head2 GL_POST_COLOR_MATRIX_COLOR_TABLE
#
#=cut

    GL_POST_COLOR_MATRIX_COLOR_TABLE => 0x80D2,

#=head2 GL_POST_COLOR_MATRIX_COLOR_TABLE_SGI
#
#=cut

    GL_POST_COLOR_MATRIX_COLOR_TABLE_SGI => 0x80D2,

#=head2 GL_POST_COLOR_MATRIX_GREEN_BIAS
#
#=cut

    GL_POST_COLOR_MATRIX_GREEN_BIAS => 0x80B9,

#=head2 GL_POST_COLOR_MATRIX_GREEN_BIAS_SGI
#
#=cut

    GL_POST_COLOR_MATRIX_GREEN_BIAS_SGI => 0x80B9,

#=head2 GL_POST_COLOR_MATRIX_GREEN_SCALE
#
#=cut

    GL_POST_COLOR_MATRIX_GREEN_SCALE => 0x80B5,

#=head2 GL_POST_COLOR_MATRIX_GREEN_SCALE_SGI
#
#=cut

    GL_POST_COLOR_MATRIX_GREEN_SCALE_SGI => 0x80B5,

#=head2 GL_POST_COLOR_MATRIX_RED_BIAS
#
#=cut

    GL_POST_COLOR_MATRIX_RED_BIAS => 0x80B8,

#=head2 GL_POST_COLOR_MATRIX_RED_BIAS_SGI
#
#=cut

    GL_POST_COLOR_MATRIX_RED_BIAS_SGI => 0x80B8,

#=head2 GL_POST_COLOR_MATRIX_RED_SCALE
#
#=cut

    GL_POST_COLOR_MATRIX_RED_SCALE => 0x80B4,

#=head2 GL_POST_COLOR_MATRIX_RED_SCALE_SGI
#
#=cut

    GL_POST_COLOR_MATRIX_RED_SCALE_SGI => 0x80B4,

#=head2 GL_POST_CONVOLUTION_ALPHA_BIAS
#
#=cut

    GL_POST_CONVOLUTION_ALPHA_BIAS => 0x8023,

#=head2 GL_POST_CONVOLUTION_ALPHA_BIAS_EXT
#
#=cut

    GL_POST_CONVOLUTION_ALPHA_BIAS_EXT => 0x8023,

#=head2 GL_POST_CONVOLUTION_ALPHA_SCALE
#
#=cut

    GL_POST_CONVOLUTION_ALPHA_SCALE => 0x801F,

#=head2 GL_POST_CONVOLUTION_ALPHA_SCALE_EXT
#
#=cut

    GL_POST_CONVOLUTION_ALPHA_SCALE_EXT => 0x801F,

#=head2 GL_POST_CONVOLUTION_BLUE_BIAS
#
#=cut

    GL_POST_CONVOLUTION_BLUE_BIAS => 0x8022,

#=head2 GL_POST_CONVOLUTION_BLUE_BIAS_EXT
#
#=cut

    GL_POST_CONVOLUTION_BLUE_BIAS_EXT => 0x8022,

#=head2 GL_POST_CONVOLUTION_BLUE_SCALE
#
#=cut

    GL_POST_CONVOLUTION_BLUE_SCALE => 0x801E,

#=head2 GL_POST_CONVOLUTION_BLUE_SCALE_EXT
#
#=cut

    GL_POST_CONVOLUTION_BLUE_SCALE_EXT => 0x801E,

#=head2 GL_POST_CONVOLUTION_COLOR_TABLE
#
#=cut

    GL_POST_CONVOLUTION_COLOR_TABLE => 0x80D1,

#=head2 GL_POST_CONVOLUTION_COLOR_TABLE_SGI
#
#=cut

    GL_POST_CONVOLUTION_COLOR_TABLE_SGI => 0x80D1,

#=head2 GL_POST_CONVOLUTION_GREEN_BIAS
#
#=cut

    GL_POST_CONVOLUTION_GREEN_BIAS => 0x8021,

#=head2 GL_POST_CONVOLUTION_GREEN_BIAS_EXT
#
#=cut

    GL_POST_CONVOLUTION_GREEN_BIAS_EXT => 0x8021,

#=head2 GL_POST_CONVOLUTION_GREEN_SCALE
#
#=cut

    GL_POST_CONVOLUTION_GREEN_SCALE => 0x801D,

#=head2 GL_POST_CONVOLUTION_GREEN_SCALE_EXT
#
#=cut

    GL_POST_CONVOLUTION_GREEN_SCALE_EXT => 0x801D,

#=head2 GL_POST_CONVOLUTION_RED_BIAS
#
#=cut

    GL_POST_CONVOLUTION_RED_BIAS => 0x8020,

#=head2 GL_POST_CONVOLUTION_RED_BIAS_EXT
#
#=cut

    GL_POST_CONVOLUTION_RED_BIAS_EXT => 0x8020,

#=head2 GL_POST_CONVOLUTION_RED_SCALE
#
#=cut

    GL_POST_CONVOLUTION_RED_SCALE => 0x801C,

#=head2 GL_POST_CONVOLUTION_RED_SCALE_EXT
#
#=cut

    GL_POST_CONVOLUTION_RED_SCALE_EXT => 0x801C,

#=head2 GL_POST_IMAGE_TRANSFORM_COLOR_TABLE_HP
#
#=cut

    GL_POST_IMAGE_TRANSFORM_COLOR_TABLE_HP => 0x8162,

#=head2 GL_POST_TEXTURE_FILTER_BIAS_RANGE_SGIX
#
#=cut

    GL_POST_TEXTURE_FILTER_BIAS_RANGE_SGIX => 0x817B,

#=head2 GL_POST_TEXTURE_FILTER_BIAS_SGIX
#
#=cut

    GL_POST_TEXTURE_FILTER_BIAS_SGIX => 0x8179,

#=head2 GL_POST_TEXTURE_FILTER_SCALE_RANGE_SGIX
#
#=cut

    GL_POST_TEXTURE_FILTER_SCALE_RANGE_SGIX => 0x817C,

#=head2 GL_POST_TEXTURE_FILTER_SCALE_SGIX
#
#=cut

    GL_POST_TEXTURE_FILTER_SCALE_SGIX => 0x817A,

#=head2 GL_PREFER_DOUBLEBUFFER_HINT_PGI
#
#=cut

    GL_PREFER_DOUBLEBUFFER_HINT_PGI => 0x1A1F8,

#=head2 GL_PRESENT_DURATION_NV
#
#=cut

    GL_PRESENT_DURATION_NV => 0x8E2B,

#=head2 GL_PRESENT_TIME_NV
#
#=cut

    GL_PRESENT_TIME_NV => 0x8E2A,

#=head2 GL_PRESERVE_ATI
#
#=cut

    GL_PRESERVE_ATI => 0x8762,

#=head2 GL_PREVIOUS
#
#=cut

    GL_PREVIOUS => 0x8578,

#=head2 GL_PREVIOUS_ARB
#
#=cut

    GL_PREVIOUS_ARB => 0x8578,

#=head2 GL_PREVIOUS_EXT
#
#=cut

    GL_PREVIOUS_EXT => 0x8578,

#=head2 GL_PREVIOUS_TEXTURE_INPUT_NV
#
#=cut

    GL_PREVIOUS_TEXTURE_INPUT_NV => 0x86E4,

#=head2 GL_PRIMARY_COLOR
#
#=cut

    GL_PRIMARY_COLOR => 0x8577,

#=head2 GL_PRIMARY_COLOR_ARB
#
#=cut

    GL_PRIMARY_COLOR_ARB => 0x8577,

#=head2 GL_PRIMARY_COLOR_EXT
#
#=cut

    GL_PRIMARY_COLOR_EXT => 0x8577,

#=head2 GL_PRIMARY_COLOR_NV
#
#=cut

    GL_PRIMARY_COLOR_NV => 0x852C,

#=head2 GL_PRIMITIVES_GENERATED
#
#=cut

    GL_PRIMITIVES_GENERATED => 0x8C87,

#=head2 GL_PRIMITIVES_GENERATED_EXT
#
#=cut

    GL_PRIMITIVES_GENERATED_EXT => 0x8C87,

#=head2 GL_PRIMITIVES_GENERATED_NV
#
#=cut

    GL_PRIMITIVES_GENERATED_NV => 0x8C87,

#=head2 GL_PRIMITIVES_SUBMITTED_ARB
#
#=cut

    GL_PRIMITIVES_SUBMITTED_ARB => 0x82EF,

#=head2 GL_PRIMITIVE_ID_NV
#
#=cut

    GL_PRIMITIVE_ID_NV => 0x8C7C,

#=head2 GL_PRIMITIVE_RESTART
#
#=cut

    GL_PRIMITIVE_RESTART => 0x8F9D,

#=head2 GL_PRIMITIVE_RESTART_FIXED_INDEX
#
#=cut

    GL_PRIMITIVE_RESTART_FIXED_INDEX => 0x8D69,

#=head2 GL_PRIMITIVE_RESTART_FOR_PATCHES_SUPPORTED
#
#=cut

    GL_PRIMITIVE_RESTART_FOR_PATCHES_SUPPORTED => 0x8221,

#=head2 GL_PRIMITIVE_RESTART_INDEX
#
#=cut

    GL_PRIMITIVE_RESTART_INDEX => 0x8F9E,

#=head2 GL_PRIMITIVE_RESTART_INDEX_NV
#
#=cut

    GL_PRIMITIVE_RESTART_INDEX_NV => 0x8559,

#=head2 GL_PRIMITIVE_RESTART_NV
#
#=cut

    GL_PRIMITIVE_RESTART_NV => 0x8558,

#=head2 GL_PROGRAM
#
#=cut

    GL_PROGRAM => 0x82E2,

#=head2 GL_PROGRAM_ADDRESS_REGISTERS_ARB
#
#=cut

    GL_PROGRAM_ADDRESS_REGISTERS_ARB => 0x88B0,

#=head2 GL_PROGRAM_ALU_INSTRUCTIONS_ARB
#
#=cut

    GL_PROGRAM_ALU_INSTRUCTIONS_ARB => 0x8805,

#=head2 GL_PROGRAM_ATTRIBS_ARB
#
#=cut

    GL_PROGRAM_ATTRIBS_ARB => 0x88AC,

#=head2 GL_PROGRAM_ATTRIB_COMPONENTS_NV
#
#=cut

    GL_PROGRAM_ATTRIB_COMPONENTS_NV => 0x8906,

#=head2 GL_PROGRAM_BINARY_FORMATS
#
#=cut

    GL_PROGRAM_BINARY_FORMATS => 0x87FF,

#=head2 GL_PROGRAM_BINARY_LENGTH
#
#=cut

    GL_PROGRAM_BINARY_LENGTH => 0x8741,

#=head2 GL_PROGRAM_BINARY_RETRIEVABLE_HINT
#
#=cut

    GL_PROGRAM_BINARY_RETRIEVABLE_HINT => 0x8257,

#=head2 GL_PROGRAM_BINDING_ARB
#
#=cut

    GL_PROGRAM_BINDING_ARB => 0x8677,

#=head2 GL_PROGRAM_ERROR_POSITION_ARB
#
#=cut

    GL_PROGRAM_ERROR_POSITION_ARB => 0x864B,

#=head2 GL_PROGRAM_ERROR_POSITION_NV
#
#=cut

    GL_PROGRAM_ERROR_POSITION_NV => 0x864B,

#=head2 GL_PROGRAM_ERROR_STRING_ARB
#
#=cut

    GL_PROGRAM_ERROR_STRING_ARB => 0x8874,

#=head2 GL_PROGRAM_ERROR_STRING_NV
#
#=cut

    GL_PROGRAM_ERROR_STRING_NV => 0x8874,

#=head2 GL_PROGRAM_FORMAT_ARB
#
#=cut

    GL_PROGRAM_FORMAT_ARB => 0x8876,

#=head2 GL_PROGRAM_FORMAT_ASCII_ARB
#
#=cut

    GL_PROGRAM_FORMAT_ASCII_ARB => 0x8875,

#=head2 GL_PROGRAM_INPUT
#
#=cut

    GL_PROGRAM_INPUT => 0x92E3,

#=head2 GL_PROGRAM_INSTRUCTIONS_ARB
#
#=cut

    GL_PROGRAM_INSTRUCTIONS_ARB => 0x88A0,

#=head2 GL_PROGRAM_LENGTH_ARB
#
#=cut

    GL_PROGRAM_LENGTH_ARB => 0x8627,

#=head2 GL_PROGRAM_LENGTH_NV
#
#=cut

    GL_PROGRAM_LENGTH_NV => 0x8627,

#=head2 GL_PROGRAM_MATRIX_EXT
#
#=cut

    GL_PROGRAM_MATRIX_EXT => 0x8E2D,

#=head2 GL_PROGRAM_MATRIX_STACK_DEPTH_EXT
#
#=cut

    GL_PROGRAM_MATRIX_STACK_DEPTH_EXT => 0x8E2F,

#=head2 GL_PROGRAM_NATIVE_ADDRESS_REGISTERS_ARB
#
#=cut

    GL_PROGRAM_NATIVE_ADDRESS_REGISTERS_ARB => 0x88B2,

#=head2 GL_PROGRAM_NATIVE_ALU_INSTRUCTIONS_ARB
#
#=cut

    GL_PROGRAM_NATIVE_ALU_INSTRUCTIONS_ARB => 0x8808,

#=head2 GL_PROGRAM_NATIVE_ATTRIBS_ARB
#
#=cut

    GL_PROGRAM_NATIVE_ATTRIBS_ARB => 0x88AE,

#=head2 GL_PROGRAM_NATIVE_INSTRUCTIONS_ARB
#
#=cut

    GL_PROGRAM_NATIVE_INSTRUCTIONS_ARB => 0x88A2,

#=head2 GL_PROGRAM_NATIVE_PARAMETERS_ARB
#
#=cut

    GL_PROGRAM_NATIVE_PARAMETERS_ARB => 0x88AA,

#=head2 GL_PROGRAM_NATIVE_TEMPORARIES_ARB
#
#=cut

    GL_PROGRAM_NATIVE_TEMPORARIES_ARB => 0x88A6,

#=head2 GL_PROGRAM_NATIVE_TEX_INDIRECTIONS_ARB
#
#=cut

    GL_PROGRAM_NATIVE_TEX_INDIRECTIONS_ARB => 0x880A,

#=head2 GL_PROGRAM_NATIVE_TEX_INSTRUCTIONS_ARB
#
#=cut

    GL_PROGRAM_NATIVE_TEX_INSTRUCTIONS_ARB => 0x8809,

#=head2 GL_PROGRAM_OBJECT_ARB
#
#=cut

    GL_PROGRAM_OBJECT_ARB => 0x8B40,

#=head2 GL_PROGRAM_OBJECT_EXT
#
#=cut

    GL_PROGRAM_OBJECT_EXT => 0x8B40,

#=head2 GL_PROGRAM_OUTPUT
#
#=cut

    GL_PROGRAM_OUTPUT => 0x92E4,

#=head2 GL_PROGRAM_PARAMETERS_ARB
#
#=cut

    GL_PROGRAM_PARAMETERS_ARB => 0x88A8,

#=head2 GL_PROGRAM_PARAMETER_NV
#
#=cut

    GL_PROGRAM_PARAMETER_NV => 0x8644,

#=head2 GL_PROGRAM_PIPELINE
#
#=cut

    GL_PROGRAM_PIPELINE => 0x82E4,

#=head2 GL_PROGRAM_PIPELINE_BINDING
#
#=cut

    GL_PROGRAM_PIPELINE_BINDING => 0x825A,

#=head2 GL_PROGRAM_PIPELINE_OBJECT_EXT
#
#=cut

    GL_PROGRAM_PIPELINE_OBJECT_EXT => 0x8A4F,

#=head2 GL_PROGRAM_POINT_SIZE
#
#=cut

    GL_PROGRAM_POINT_SIZE => 0x8642,

#=head2 GL_PROGRAM_POINT_SIZE_ARB
#
#=cut

    GL_PROGRAM_POINT_SIZE_ARB => 0x8642,

#=head2 GL_PROGRAM_POINT_SIZE_EXT
#
#=cut

    GL_PROGRAM_POINT_SIZE_EXT => 0x8642,

#=head2 GL_PROGRAM_RESIDENT_NV
#
#=cut

    GL_PROGRAM_RESIDENT_NV => 0x8647,

#=head2 GL_PROGRAM_RESULT_COMPONENTS_NV
#
#=cut

    GL_PROGRAM_RESULT_COMPONENTS_NV => 0x8907,

#=head2 GL_PROGRAM_SEPARABLE
#
#=cut

    GL_PROGRAM_SEPARABLE => 0x8258,

#=head2 GL_PROGRAM_STRING_ARB
#
#=cut

    GL_PROGRAM_STRING_ARB => 0x8628,

#=head2 GL_PROGRAM_STRING_NV
#
#=cut

    GL_PROGRAM_STRING_NV => 0x8628,

#=head2 GL_PROGRAM_TARGET_NV
#
#=cut

    GL_PROGRAM_TARGET_NV => 0x8646,

#=head2 GL_PROGRAM_TEMPORARIES_ARB
#
#=cut

    GL_PROGRAM_TEMPORARIES_ARB => 0x88A4,

#=head2 GL_PROGRAM_TEX_INDIRECTIONS_ARB
#
#=cut

    GL_PROGRAM_TEX_INDIRECTIONS_ARB => 0x8807,

#=head2 GL_PROGRAM_TEX_INSTRUCTIONS_ARB
#
#=cut

    GL_PROGRAM_TEX_INSTRUCTIONS_ARB => 0x8806,

#=head2 GL_PROGRAM_UNDER_NATIVE_LIMITS_ARB
#
#=cut

    GL_PROGRAM_UNDER_NATIVE_LIMITS_ARB => 0x88B6,

#=head2 GL_PROJECTION
#
#=cut

    GL_PROJECTION => 0x1701,

#=head2 GL_PROJECTION_MATRIX
#
#=cut

    GL_PROJECTION_MATRIX => 0x0BA7,

#=head2 GL_PROJECTION_STACK_DEPTH
#
#=cut

    GL_PROJECTION_STACK_DEPTH => 0x0BA4,

#=head2 GL_PROVOKING_VERTEX
#
#=cut

    GL_PROVOKING_VERTEX => 0x8E4F,

#=head2 GL_PROVOKING_VERTEX_EXT
#
#=cut

    GL_PROVOKING_VERTEX_EXT => 0x8E4F,

#=head2 GL_PROXY_COLOR_TABLE
#
#=cut

    GL_PROXY_COLOR_TABLE => 0x80D3,

#=head2 GL_PROXY_COLOR_TABLE_SGI
#
#=cut

    GL_PROXY_COLOR_TABLE_SGI => 0x80D3,

#=head2 GL_PROXY_HISTOGRAM
#
#=cut

    GL_PROXY_HISTOGRAM => 0x8025,

#=head2 GL_PROXY_HISTOGRAM_EXT
#
#=cut

    GL_PROXY_HISTOGRAM_EXT => 0x8025,

#=head2 GL_PROXY_POST_COLOR_MATRIX_COLOR_TABLE
#
#=cut

    GL_PROXY_POST_COLOR_MATRIX_COLOR_TABLE => 0x80D5,

#=head2 GL_PROXY_POST_COLOR_MATRIX_COLOR_TABLE_SGI
#
#=cut

    GL_PROXY_POST_COLOR_MATRIX_COLOR_TABLE_SGI => 0x80D5,

#=head2 GL_PROXY_POST_CONVOLUTION_COLOR_TABLE
#
#=cut

    GL_PROXY_POST_CONVOLUTION_COLOR_TABLE => 0x80D4,

#=head2 GL_PROXY_POST_CONVOLUTION_COLOR_TABLE_SGI
#
#=cut

    GL_PROXY_POST_CONVOLUTION_COLOR_TABLE_SGI => 0x80D4,

#=head2 GL_PROXY_POST_IMAGE_TRANSFORM_COLOR_TABLE_HP
#
#=cut

    GL_PROXY_POST_IMAGE_TRANSFORM_COLOR_TABLE_HP => 0x8163,

#=head2 GL_PROXY_TEXTURE_1D
#
#=cut

    GL_PROXY_TEXTURE_1D => 0x8063,

#=head2 GL_PROXY_TEXTURE_1D_ARRAY
#
#=cut

    GL_PROXY_TEXTURE_1D_ARRAY => 0x8C19,

#=head2 GL_PROXY_TEXTURE_1D_ARRAY_EXT
#
#=cut

    GL_PROXY_TEXTURE_1D_ARRAY_EXT => 0x8C19,

#=head2 GL_PROXY_TEXTURE_1D_EXT
#
#=cut

    GL_PROXY_TEXTURE_1D_EXT => 0x8063,

#=head2 GL_PROXY_TEXTURE_1D_STACK_MESAX
#
#=cut

    GL_PROXY_TEXTURE_1D_STACK_MESAX => 0x875B,

#=head2 GL_PROXY_TEXTURE_2D
#
#=cut

    GL_PROXY_TEXTURE_2D => 0x8064,

#=head2 GL_PROXY_TEXTURE_2D_ARRAY
#
#=cut

    GL_PROXY_TEXTURE_2D_ARRAY => 0x8C1B,

#=head2 GL_PROXY_TEXTURE_2D_ARRAY_EXT
#
#=cut

    GL_PROXY_TEXTURE_2D_ARRAY_EXT => 0x8C1B,

#=head2 GL_PROXY_TEXTURE_2D_EXT
#
#=cut

    GL_PROXY_TEXTURE_2D_EXT => 0x8064,

#=head2 GL_PROXY_TEXTURE_2D_MULTISAMPLE
#
#=cut

    GL_PROXY_TEXTURE_2D_MULTISAMPLE => 0x9101,

#=head2 GL_PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY
#
#=cut

    GL_PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY => 0x9103,

#=head2 GL_PROXY_TEXTURE_2D_STACK_MESAX
#
#=cut

    GL_PROXY_TEXTURE_2D_STACK_MESAX => 0x875C,

#=head2 GL_PROXY_TEXTURE_3D
#
#=cut

    GL_PROXY_TEXTURE_3D => 0x8070,

#=head2 GL_PROXY_TEXTURE_3D_EXT
#
#=cut

    GL_PROXY_TEXTURE_3D_EXT => 0x8070,

#=head2 GL_PROXY_TEXTURE_4D_SGIS
#
#=cut

    GL_PROXY_TEXTURE_4D_SGIS => 0x8135,

#=head2 GL_PROXY_TEXTURE_COLOR_TABLE_SGI
#
#=cut

    GL_PROXY_TEXTURE_COLOR_TABLE_SGI => 0x80BD,

#=head2 GL_PROXY_TEXTURE_CUBE_MAP
#
#=cut

    GL_PROXY_TEXTURE_CUBE_MAP => 0x851B,

#=head2 GL_PROXY_TEXTURE_CUBE_MAP_ARB
#
#=cut

    GL_PROXY_TEXTURE_CUBE_MAP_ARB => 0x851B,

#=head2 GL_PROXY_TEXTURE_CUBE_MAP_ARRAY
#
#=cut

    GL_PROXY_TEXTURE_CUBE_MAP_ARRAY => 0x900B,

#=head2 GL_PROXY_TEXTURE_CUBE_MAP_ARRAY_ARB
#
#=cut

    GL_PROXY_TEXTURE_CUBE_MAP_ARRAY_ARB => 0x900B,

#=head2 GL_PROXY_TEXTURE_CUBE_MAP_EXT
#
#=cut

    GL_PROXY_TEXTURE_CUBE_MAP_EXT => 0x851B,

#=head2 GL_PROXY_TEXTURE_RECTANGLE
#
#=cut

    GL_PROXY_TEXTURE_RECTANGLE => 0x84F7,

#=head2 GL_PROXY_TEXTURE_RECTANGLE_ARB
#
#=cut

    GL_PROXY_TEXTURE_RECTANGLE_ARB => 0x84F7,

#=head2 GL_PROXY_TEXTURE_RECTANGLE_NV
#
#=cut

    GL_PROXY_TEXTURE_RECTANGLE_NV => 0x84F7,

#=head2 GL_PURGEABLE_APPLE
#
#=cut

    GL_PURGEABLE_APPLE => 0x8A1D,

#=head2 GL_Q
#
#=cut

    GL_Q => 0x2003,

#=head2 GL_QUADRATIC_ATTENUATION
#
#=cut

    GL_QUADRATIC_ATTENUATION => 0x1209,

#=head2 GL_QUADRATIC_CURVE_TO_NV
#
#=cut

    GL_QUADRATIC_CURVE_TO_NV => 0x0A,

#=head2 GL_QUADS
#
#=cut

    GL_QUADS => 0x0007,

#=head2 GL_QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION
#
#=cut

    GL_QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION => 0x8E4C,

#=head2 GL_QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION_EXT
#
#=cut

    GL_QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION_EXT => 0x8E4C,

#=head2 GL_QUAD_ALPHA4_SGIS
#
#=cut

    GL_QUAD_ALPHA4_SGIS => 0x811E,

#=head2 GL_QUAD_ALPHA8_SGIS
#
#=cut

    GL_QUAD_ALPHA8_SGIS => 0x811F,

#=head2 GL_QUAD_INTENSITY4_SGIS
#
#=cut

    GL_QUAD_INTENSITY4_SGIS => 0x8122,

#=head2 GL_QUAD_INTENSITY8_SGIS
#
#=cut

    GL_QUAD_INTENSITY8_SGIS => 0x8123,

#=head2 GL_QUAD_LUMINANCE4_SGIS
#
#=cut

    GL_QUAD_LUMINANCE4_SGIS => 0x8120,

#=head2 GL_QUAD_LUMINANCE8_SGIS
#
#=cut

    GL_QUAD_LUMINANCE8_SGIS => 0x8121,

#=head2 GL_QUAD_MESH_SUN
#
#=cut

    GL_QUAD_MESH_SUN => 0x8614,

#=head2 GL_QUAD_STRIP
#
#=cut

    GL_QUAD_STRIP => 0x0008,

#=head2 GL_QUAD_TEXTURE_SELECT_SGIS
#
#=cut

    GL_QUAD_TEXTURE_SELECT_SGIS => 0x8125,

#=head2 GL_QUARTER_BIT_ATI
#
#=cut

    GL_QUARTER_BIT_ATI => 0x00000010,

#=head2 GL_QUERY
#
#=cut

    GL_QUERY => 0x82E3,

#=head2 GL_QUERY_ALL_EVENT_BITS_AMD
#
#=cut

    GL_QUERY_ALL_EVENT_BITS_AMD => 0xFFFFFFFF,

#=head2 GL_QUERY_BUFFER
#
#=cut

    GL_QUERY_BUFFER => 0x9192,

#=head2 GL_QUERY_BUFFER_AMD
#
#=cut

    GL_QUERY_BUFFER_AMD => 0x9192,

#=head2 GL_QUERY_BUFFER_BARRIER_BIT
#
#=cut

    GL_QUERY_BUFFER_BARRIER_BIT => 0x00008000,

#=head2 GL_QUERY_BUFFER_BINDING
#
#=cut

    GL_QUERY_BUFFER_BINDING => 0x9193,

#=head2 GL_QUERY_BUFFER_BINDING_AMD
#
#=cut

    GL_QUERY_BUFFER_BINDING_AMD => 0x9193,

#=head2 GL_QUERY_BY_REGION_NO_WAIT
#
#=cut

    GL_QUERY_BY_REGION_NO_WAIT => 0x8E16,

#=head2 GL_QUERY_BY_REGION_NO_WAIT_INVERTED
#
#=cut

    GL_QUERY_BY_REGION_NO_WAIT_INVERTED => 0x8E1A,

#=head2 GL_QUERY_BY_REGION_NO_WAIT_NV
#
#=cut

    GL_QUERY_BY_REGION_NO_WAIT_NV => 0x8E16,

#=head2 GL_QUERY_BY_REGION_WAIT
#
#=cut

    GL_QUERY_BY_REGION_WAIT => 0x8E15,

#=head2 GL_QUERY_BY_REGION_WAIT_INVERTED
#
#=cut

    GL_QUERY_BY_REGION_WAIT_INVERTED => 0x8E19,

#=head2 GL_QUERY_BY_REGION_WAIT_NV
#
#=cut

    GL_QUERY_BY_REGION_WAIT_NV => 0x8E15,

#=head2 GL_QUERY_COUNTER_BITS
#
#=cut

    GL_QUERY_COUNTER_BITS => 0x8864,

#=head2 GL_QUERY_COUNTER_BITS_ARB
#
#=cut

    GL_QUERY_COUNTER_BITS_ARB => 0x8864,

#=head2 GL_QUERY_DEPTH_BOUNDS_FAIL_EVENT_BIT_AMD
#
#=cut

    GL_QUERY_DEPTH_BOUNDS_FAIL_EVENT_BIT_AMD => 0x00000008,

#=head2 GL_QUERY_DEPTH_FAIL_EVENT_BIT_AMD
#
#=cut

    GL_QUERY_DEPTH_FAIL_EVENT_BIT_AMD => 0x00000002,

#=head2 GL_QUERY_DEPTH_PASS_EVENT_BIT_AMD
#
#=cut

    GL_QUERY_DEPTH_PASS_EVENT_BIT_AMD => 0x00000001,

#=head2 GL_QUERY_NO_WAIT
#
#=cut

    GL_QUERY_NO_WAIT => 0x8E14,

#=head2 GL_QUERY_NO_WAIT_INVERTED
#
#=cut

    GL_QUERY_NO_WAIT_INVERTED => 0x8E18,

#=head2 GL_QUERY_NO_WAIT_NV
#
#=cut

    GL_QUERY_NO_WAIT_NV => 0x8E14,

#=head2 GL_QUERY_OBJECT_AMD
#
#=cut

    GL_QUERY_OBJECT_AMD => 0x9153,

#=head2 GL_QUERY_OBJECT_EXT
#
#=cut

    GL_QUERY_OBJECT_EXT => 0x9153,

#=head2 GL_QUERY_RESULT
#
#=cut

    GL_QUERY_RESULT => 0x8866,

#=head2 GL_QUERY_RESULT_ARB
#
#=cut

    GL_QUERY_RESULT_ARB => 0x8866,

#=head2 GL_QUERY_RESULT_AVAILABLE
#
#=cut

    GL_QUERY_RESULT_AVAILABLE => 0x8867,

#=head2 GL_QUERY_RESULT_AVAILABLE_ARB
#
#=cut

    GL_QUERY_RESULT_AVAILABLE_ARB => 0x8867,

#=head2 GL_QUERY_RESULT_NO_WAIT
#
#=cut

    GL_QUERY_RESULT_NO_WAIT => 0x9194,

#=head2 GL_QUERY_RESULT_NO_WAIT_AMD
#
#=cut

    GL_QUERY_RESULT_NO_WAIT_AMD => 0x9194,

#=head2 GL_QUERY_STENCIL_FAIL_EVENT_BIT_AMD
#
#=cut

    GL_QUERY_STENCIL_FAIL_EVENT_BIT_AMD => 0x00000004,

#=head2 GL_QUERY_TARGET
#
#=cut

    GL_QUERY_TARGET => 0x82EA,

#=head2 GL_QUERY_WAIT
#
#=cut

    GL_QUERY_WAIT => 0x8E13,

#=head2 GL_QUERY_WAIT_INVERTED
#
#=cut

    GL_QUERY_WAIT_INVERTED => 0x8E17,

#=head2 GL_QUERY_WAIT_NV
#
#=cut

    GL_QUERY_WAIT_NV => 0x8E13,

#=head2 GL_R
#
#=cut

    GL_R => 0x2002,

#=head2 GL_R11F_G11F_B10F
#
#=cut

    GL_R11F_G11F_B10F => 0x8C3A,

#=head2 GL_R11F_G11F_B10F_EXT
#
#=cut

    GL_R11F_G11F_B10F_EXT => 0x8C3A,

#=head2 GL_R16
#
#=cut

    GL_R16 => 0x822A,

#=head2 GL_R16F
#
#=cut

    GL_R16F => 0x822D,

#=head2 GL_R16I
#
#=cut

    GL_R16I => 0x8233,

#=head2 GL_R16UI
#
#=cut

    GL_R16UI => 0x8234,

#=head2 GL_R16_SNORM
#
#=cut

    GL_R16_SNORM => 0x8F98,

#=head2 GL_R1UI_C3F_V3F_SUN
#
#=cut

    GL_R1UI_C3F_V3F_SUN => 0x85C6,

#=head2 GL_R1UI_C4F_N3F_V3F_SUN
#
#=cut

    GL_R1UI_C4F_N3F_V3F_SUN => 0x85C8,

#=head2 GL_R1UI_C4UB_V3F_SUN
#
#=cut

    GL_R1UI_C4UB_V3F_SUN => 0x85C5,

#=head2 GL_R1UI_N3F_V3F_SUN
#
#=cut

    GL_R1UI_N3F_V3F_SUN => 0x85C7,

#=head2 GL_R1UI_T2F_C4F_N3F_V3F_SUN
#
#=cut

    GL_R1UI_T2F_C4F_N3F_V3F_SUN => 0x85CB,

#=head2 GL_R1UI_T2F_N3F_V3F_SUN
#
#=cut

    GL_R1UI_T2F_N3F_V3F_SUN => 0x85CA,

#=head2 GL_R1UI_T2F_V3F_SUN
#
#=cut

    GL_R1UI_T2F_V3F_SUN => 0x85C9,

#=head2 GL_R1UI_V3F_SUN
#
#=cut

    GL_R1UI_V3F_SUN => 0x85C4,

#=head2 GL_R32F
#
#=cut

    GL_R32F => 0x822E,

#=head2 GL_R32I
#
#=cut

    GL_R32I => 0x8235,

#=head2 GL_R32UI
#
#=cut

    GL_R32UI => 0x8236,

#=head2 GL_R3_G3_B2
#
#=cut

    GL_R3_G3_B2 => 0x2A10,

#=head2 GL_R8
#
#=cut

    GL_R8 => 0x8229,

#=head2 GL_R8I
#
#=cut

    GL_R8I => 0x8231,

#=head2 GL_R8UI
#
#=cut

    GL_R8UI => 0x8232,

#=head2 GL_R8_SNORM
#
#=cut

    GL_R8_SNORM => 0x8F94,

#=head2 GL_RASTERIZER_DISCARD
#
#=cut

    GL_RASTERIZER_DISCARD => 0x8C89,

#=head2 GL_RASTERIZER_DISCARD_EXT
#
#=cut

    GL_RASTERIZER_DISCARD_EXT => 0x8C89,

#=head2 GL_RASTERIZER_DISCARD_NV
#
#=cut

    GL_RASTERIZER_DISCARD_NV => 0x8C89,

#=head2 GL_RASTER_POSITION_UNCLIPPED_IBM
#
#=cut

    GL_RASTER_POSITION_UNCLIPPED_IBM => 0x19262,

#=head2 GL_READ_BUFFER
#
#=cut

    GL_READ_BUFFER => 0x0C02,

#=head2 GL_READ_FRAMEBUFFER
#
#=cut

    GL_READ_FRAMEBUFFER => 0x8CA8,

#=head2 GL_READ_FRAMEBUFFER_BINDING
#
#=cut

    GL_READ_FRAMEBUFFER_BINDING => 0x8CAA,

#=head2 GL_READ_FRAMEBUFFER_BINDING_EXT
#
#=cut

    GL_READ_FRAMEBUFFER_BINDING_EXT => 0x8CAA,

#=head2 GL_READ_FRAMEBUFFER_EXT
#
#=cut

    GL_READ_FRAMEBUFFER_EXT => 0x8CA8,

#=head2 GL_READ_ONLY
#
#=cut

    GL_READ_ONLY => 0x88B8,

#=head2 GL_READ_ONLY_ARB
#
#=cut

    GL_READ_ONLY_ARB => 0x88B8,

#=head2 GL_READ_PIXELS
#
#=cut

    GL_READ_PIXELS => 0x828C,

#=head2 GL_READ_PIXELS_FORMAT
#
#=cut

    GL_READ_PIXELS_FORMAT => 0x828D,

#=head2 GL_READ_PIXELS_TYPE
#
#=cut

    GL_READ_PIXELS_TYPE => 0x828E,

#=head2 GL_READ_PIXEL_DATA_RANGE_LENGTH_NV
#
#=cut

    GL_READ_PIXEL_DATA_RANGE_LENGTH_NV => 0x887B,

#=head2 GL_READ_PIXEL_DATA_RANGE_NV
#
#=cut

    GL_READ_PIXEL_DATA_RANGE_NV => 0x8879,

#=head2 GL_READ_PIXEL_DATA_RANGE_POINTER_NV
#
#=cut

    GL_READ_PIXEL_DATA_RANGE_POINTER_NV => 0x887D,

#=head2 GL_READ_WRITE
#
#=cut

    GL_READ_WRITE => 0x88BA,

#=head2 GL_READ_WRITE_ARB
#
#=cut

    GL_READ_WRITE_ARB => 0x88BA,

#=head2 GL_RECLAIM_MEMORY_HINT_PGI
#
#=cut

    GL_RECLAIM_MEMORY_HINT_PGI => 0x1A1FE,

#=head2 GL_RECT_NV
#
#=cut

    GL_RECT_NV => 0xF6,

#=head2 GL_RED
#
#=cut

    GL_RED => 0x1903,

#=head2 GL_REDUCE
#
#=cut

    GL_REDUCE => 0x8016,

#=head2 GL_REDUCE_EXT
#
#=cut

    GL_REDUCE_EXT => 0x8016,

#=head2 GL_RED_BIAS
#
#=cut

    GL_RED_BIAS => 0x0D15,

#=head2 GL_RED_BITS
#
#=cut

    GL_RED_BITS => 0x0D52,

#=head2 GL_RED_BIT_ATI
#
#=cut

    GL_RED_BIT_ATI => 0x00000001,

#=head2 GL_RED_INTEGER
#
#=cut

    GL_RED_INTEGER => 0x8D94,

#=head2 GL_RED_INTEGER_EXT
#
#=cut

    GL_RED_INTEGER_EXT => 0x8D94,

#=head2 GL_RED_MAX_CLAMP_INGR
#
#=cut

    GL_RED_MAX_CLAMP_INGR => 0x8564,

#=head2 GL_RED_MIN_CLAMP_INGR
#
#=cut

    GL_RED_MIN_CLAMP_INGR => 0x8560,

#=head2 GL_RED_NV
#
#=cut

    GL_RED_NV => 0x1903,

#=head2 GL_RED_SCALE
#
#=cut

    GL_RED_SCALE => 0x0D14,

#=head2 GL_RED_SNORM
#
#=cut

    GL_RED_SNORM => 0x8F90,

#=head2 GL_REFERENCED_BY_COMPUTE_SHADER
#
#=cut

    GL_REFERENCED_BY_COMPUTE_SHADER => 0x930B,

#=head2 GL_REFERENCED_BY_FRAGMENT_SHADER
#
#=cut

    GL_REFERENCED_BY_FRAGMENT_SHADER => 0x930A,

#=head2 GL_REFERENCED_BY_GEOMETRY_SHADER
#
#=cut

    GL_REFERENCED_BY_GEOMETRY_SHADER => 0x9309,

#=head2 GL_REFERENCED_BY_TESS_CONTROL_SHADER
#
#=cut

    GL_REFERENCED_BY_TESS_CONTROL_SHADER => 0x9307,

#=head2 GL_REFERENCED_BY_TESS_EVALUATION_SHADER
#
#=cut

    GL_REFERENCED_BY_TESS_EVALUATION_SHADER => 0x9308,

#=head2 GL_REFERENCED_BY_VERTEX_SHADER
#
#=cut

    GL_REFERENCED_BY_VERTEX_SHADER => 0x9306,

#=head2 GL_REFERENCE_PLANE_EQUATION_SGIX
#
#=cut

    GL_REFERENCE_PLANE_EQUATION_SGIX => 0x817E,

#=head2 GL_REFERENCE_PLANE_SGIX
#
#=cut

    GL_REFERENCE_PLANE_SGIX => 0x817D,

#=head2 GL_REFLECTION_MAP
#
#=cut

    GL_REFLECTION_MAP => 0x8512,

#=head2 GL_REFLECTION_MAP_ARB
#
#=cut

    GL_REFLECTION_MAP_ARB => 0x8512,

#=head2 GL_REFLECTION_MAP_EXT
#
#=cut

    GL_REFLECTION_MAP_EXT => 0x8512,

#=head2 GL_REFLECTION_MAP_NV
#
#=cut

    GL_REFLECTION_MAP_NV => 0x8512,

#=head2 GL_REGISTER_COMBINERS_NV
#
#=cut

    GL_REGISTER_COMBINERS_NV => 0x8522,

#=head2 GL_REG_0_ATI
#
#=cut

    GL_REG_0_ATI => 0x8921,

#=head2 GL_REG_10_ATI
#
#=cut

    GL_REG_10_ATI => 0x892B,

#=head2 GL_REG_11_ATI
#
#=cut

    GL_REG_11_ATI => 0x892C,

#=head2 GL_REG_12_ATI
#
#=cut

    GL_REG_12_ATI => 0x892D,

#=head2 GL_REG_13_ATI
#
#=cut

    GL_REG_13_ATI => 0x892E,

#=head2 GL_REG_14_ATI
#
#=cut

    GL_REG_14_ATI => 0x892F,

#=head2 GL_REG_15_ATI
#
#=cut

    GL_REG_15_ATI => 0x8930,

#=head2 GL_REG_16_ATI
#
#=cut

    GL_REG_16_ATI => 0x8931,

#=head2 GL_REG_17_ATI
#
#=cut

    GL_REG_17_ATI => 0x8932,

#=head2 GL_REG_18_ATI
#
#=cut

    GL_REG_18_ATI => 0x8933,

#=head2 GL_REG_19_ATI
#
#=cut

    GL_REG_19_ATI => 0x8934,

#=head2 GL_REG_1_ATI
#
#=cut

    GL_REG_1_ATI => 0x8922,

#=head2 GL_REG_20_ATI
#
#=cut

    GL_REG_20_ATI => 0x8935,

#=head2 GL_REG_21_ATI
#
#=cut

    GL_REG_21_ATI => 0x8936,

#=head2 GL_REG_22_ATI
#
#=cut

    GL_REG_22_ATI => 0x8937,

#=head2 GL_REG_23_ATI
#
#=cut

    GL_REG_23_ATI => 0x8938,

#=head2 GL_REG_24_ATI
#
#=cut

    GL_REG_24_ATI => 0x8939,

#=head2 GL_REG_25_ATI
#
#=cut

    GL_REG_25_ATI => 0x893A,

#=head2 GL_REG_26_ATI
#
#=cut

    GL_REG_26_ATI => 0x893B,

#=head2 GL_REG_27_ATI
#
#=cut

    GL_REG_27_ATI => 0x893C,

#=head2 GL_REG_28_ATI
#
#=cut

    GL_REG_28_ATI => 0x893D,

#=head2 GL_REG_29_ATI
#
#=cut

    GL_REG_29_ATI => 0x893E,

#=head2 GL_REG_2_ATI
#
#=cut

    GL_REG_2_ATI => 0x8923,

#=head2 GL_REG_30_ATI
#
#=cut

    GL_REG_30_ATI => 0x893F,

#=head2 GL_REG_31_ATI
#
#=cut

    GL_REG_31_ATI => 0x8940,

#=head2 GL_REG_3_ATI
#
#=cut

    GL_REG_3_ATI => 0x8924,

#=head2 GL_REG_4_ATI
#
#=cut

    GL_REG_4_ATI => 0x8925,

#=head2 GL_REG_5_ATI
#
#=cut

    GL_REG_5_ATI => 0x8926,

#=head2 GL_REG_6_ATI
#
#=cut

    GL_REG_6_ATI => 0x8927,

#=head2 GL_REG_7_ATI
#
#=cut

    GL_REG_7_ATI => 0x8928,

#=head2 GL_REG_8_ATI
#
#=cut

    GL_REG_8_ATI => 0x8929,

#=head2 GL_REG_9_ATI
#
#=cut

    GL_REG_9_ATI => 0x892A,

#=head2 GL_RELATIVE_ARC_TO_NV
#
#=cut

    GL_RELATIVE_ARC_TO_NV => 0xFF,

#=head2 GL_RELATIVE_CONIC_CURVE_TO_NV
#
#=cut

    GL_RELATIVE_CONIC_CURVE_TO_NV => 0x1B,

#=head2 GL_RELATIVE_CUBIC_CURVE_TO_NV
#
#=cut

    GL_RELATIVE_CUBIC_CURVE_TO_NV => 0x0D,

#=head2 GL_RELATIVE_HORIZONTAL_LINE_TO_NV
#
#=cut

    GL_RELATIVE_HORIZONTAL_LINE_TO_NV => 0x07,

#=head2 GL_RELATIVE_LARGE_CCW_ARC_TO_NV
#
#=cut

    GL_RELATIVE_LARGE_CCW_ARC_TO_NV => 0x17,

#=head2 GL_RELATIVE_LARGE_CW_ARC_TO_NV
#
#=cut

    GL_RELATIVE_LARGE_CW_ARC_TO_NV => 0x19,

#=head2 GL_RELATIVE_LINE_TO_NV
#
#=cut

    GL_RELATIVE_LINE_TO_NV => 0x05,

#=head2 GL_RELATIVE_MOVE_TO_NV
#
#=cut

    GL_RELATIVE_MOVE_TO_NV => 0x03,

#=head2 GL_RELATIVE_QUADRATIC_CURVE_TO_NV
#
#=cut

    GL_RELATIVE_QUADRATIC_CURVE_TO_NV => 0x0B,

#=head2 GL_RELATIVE_RECT_NV
#
#=cut

    GL_RELATIVE_RECT_NV => 0xF7,

#=head2 GL_RELATIVE_ROUNDED_RECT2_NV
#
#=cut

    GL_RELATIVE_ROUNDED_RECT2_NV => 0xEB,

#=head2 GL_RELATIVE_ROUNDED_RECT4_NV
#
#=cut

    GL_RELATIVE_ROUNDED_RECT4_NV => 0xED,

#=head2 GL_RELATIVE_ROUNDED_RECT8_NV
#
#=cut

    GL_RELATIVE_ROUNDED_RECT8_NV => 0xEF,

#=head2 GL_RELATIVE_ROUNDED_RECT_NV
#
#=cut

    GL_RELATIVE_ROUNDED_RECT_NV => 0xE9,

#=head2 GL_RELATIVE_SMALL_CCW_ARC_TO_NV
#
#=cut

    GL_RELATIVE_SMALL_CCW_ARC_TO_NV => 0x13,

#=head2 GL_RELATIVE_SMALL_CW_ARC_TO_NV
#
#=cut

    GL_RELATIVE_SMALL_CW_ARC_TO_NV => 0x15,

#=head2 GL_RELATIVE_SMOOTH_CUBIC_CURVE_TO_NV
#
#=cut

    GL_RELATIVE_SMOOTH_CUBIC_CURVE_TO_NV => 0x11,

#=head2 GL_RELATIVE_SMOOTH_QUADRATIC_CURVE_TO_NV
#
#=cut

    GL_RELATIVE_SMOOTH_QUADRATIC_CURVE_TO_NV => 0x0F,

#=head2 GL_RELATIVE_VERTICAL_LINE_TO_NV
#
#=cut

    GL_RELATIVE_VERTICAL_LINE_TO_NV => 0x09,

#=head2 GL_RELEASED_APPLE
#
#=cut

    GL_RELEASED_APPLE => 0x8A19,

#=head2 GL_RENDER
#
#=cut

    GL_RENDER => 0x1C00,

#=head2 GL_RENDERBUFFER
#
#=cut

    GL_RENDERBUFFER => 0x8D41,

#=head2 GL_RENDERBUFFER_ALPHA_SIZE
#
#=cut

    GL_RENDERBUFFER_ALPHA_SIZE => 0x8D53,

#=head2 GL_RENDERBUFFER_ALPHA_SIZE_EXT
#
#=cut

    GL_RENDERBUFFER_ALPHA_SIZE_EXT => 0x8D53,

#=head2 GL_RENDERBUFFER_BINDING
#
#=cut

    GL_RENDERBUFFER_BINDING => 0x8CA7,

#=head2 GL_RENDERBUFFER_BINDING_EXT
#
#=cut

    GL_RENDERBUFFER_BINDING_EXT => 0x8CA7,

#=head2 GL_RENDERBUFFER_BLUE_SIZE
#
#=cut

    GL_RENDERBUFFER_BLUE_SIZE => 0x8D52,

#=head2 GL_RENDERBUFFER_BLUE_SIZE_EXT
#
#=cut

    GL_RENDERBUFFER_BLUE_SIZE_EXT => 0x8D52,

#=head2 GL_RENDERBUFFER_COLOR_SAMPLES_NV
#
#=cut

    GL_RENDERBUFFER_COLOR_SAMPLES_NV => 0x8E10,

#=head2 GL_RENDERBUFFER_COVERAGE_SAMPLES_NV
#
#=cut

    GL_RENDERBUFFER_COVERAGE_SAMPLES_NV => 0x8CAB,

#=head2 GL_RENDERBUFFER_DEPTH_SIZE
#
#=cut

    GL_RENDERBUFFER_DEPTH_SIZE => 0x8D54,

#=head2 GL_RENDERBUFFER_DEPTH_SIZE_EXT
#
#=cut

    GL_RENDERBUFFER_DEPTH_SIZE_EXT => 0x8D54,

#=head2 GL_RENDERBUFFER_EXT
#
#=cut

    GL_RENDERBUFFER_EXT => 0x8D41,

#=head2 GL_RENDERBUFFER_FREE_MEMORY_ATI
#
#=cut

    GL_RENDERBUFFER_FREE_MEMORY_ATI => 0x87FD,

#=head2 GL_RENDERBUFFER_GREEN_SIZE
#
#=cut

    GL_RENDERBUFFER_GREEN_SIZE => 0x8D51,

#=head2 GL_RENDERBUFFER_GREEN_SIZE_EXT
#
#=cut

    GL_RENDERBUFFER_GREEN_SIZE_EXT => 0x8D51,

#=head2 GL_RENDERBUFFER_HEIGHT
#
#=cut

    GL_RENDERBUFFER_HEIGHT => 0x8D43,

#=head2 GL_RENDERBUFFER_HEIGHT_EXT
#
#=cut

    GL_RENDERBUFFER_HEIGHT_EXT => 0x8D43,

#=head2 GL_RENDERBUFFER_INTERNAL_FORMAT
#
#=cut

    GL_RENDERBUFFER_INTERNAL_FORMAT => 0x8D44,

#=head2 GL_RENDERBUFFER_INTERNAL_FORMAT_EXT
#
#=cut

    GL_RENDERBUFFER_INTERNAL_FORMAT_EXT => 0x8D44,

#=head2 GL_RENDERBUFFER_RED_SIZE
#
#=cut

    GL_RENDERBUFFER_RED_SIZE => 0x8D50,

#=head2 GL_RENDERBUFFER_RED_SIZE_EXT
#
#=cut

    GL_RENDERBUFFER_RED_SIZE_EXT => 0x8D50,

#=head2 GL_RENDERBUFFER_SAMPLES
#
#=cut

    GL_RENDERBUFFER_SAMPLES => 0x8CAB,

#=head2 GL_RENDERBUFFER_SAMPLES_EXT
#
#=cut

    GL_RENDERBUFFER_SAMPLES_EXT => 0x8CAB,

#=head2 GL_RENDERBUFFER_STENCIL_SIZE
#
#=cut

    GL_RENDERBUFFER_STENCIL_SIZE => 0x8D55,

#=head2 GL_RENDERBUFFER_STENCIL_SIZE_EXT
#
#=cut

    GL_RENDERBUFFER_STENCIL_SIZE_EXT => 0x8D55,

#=head2 GL_RENDERBUFFER_WIDTH
#
#=cut

    GL_RENDERBUFFER_WIDTH => 0x8D42,

#=head2 GL_RENDERBUFFER_WIDTH_EXT
#
#=cut

    GL_RENDERBUFFER_WIDTH_EXT => 0x8D42,

#=head2 GL_RENDERER
#
#=cut

    GL_RENDERER => 0x1F01,

#=head2 GL_RENDER_MODE
#
#=cut

    GL_RENDER_MODE => 0x0C40,

#=head2 GL_REND_screen_coordinates
#
#=cut

    GL_REND_screen_coordinates => 1,

#=head2 GL_REPEAT
#
#=cut

    GL_REPEAT => 0x2901,

#=head2 GL_REPLACE
#
#=cut

    GL_REPLACE => 0x1E01,

#=head2 GL_REPLACEMENT_CODE_ARRAY_POINTER_SUN
#
#=cut

    GL_REPLACEMENT_CODE_ARRAY_POINTER_SUN => 0x85C3,

#=head2 GL_REPLACEMENT_CODE_ARRAY_STRIDE_SUN
#
#=cut

    GL_REPLACEMENT_CODE_ARRAY_STRIDE_SUN => 0x85C2,

#=head2 GL_REPLACEMENT_CODE_ARRAY_SUN
#
#=cut

    GL_REPLACEMENT_CODE_ARRAY_SUN => 0x85C0,

#=head2 GL_REPLACEMENT_CODE_ARRAY_TYPE_SUN
#
#=cut

    GL_REPLACEMENT_CODE_ARRAY_TYPE_SUN => 0x85C1,

#=head2 GL_REPLACEMENT_CODE_SUN
#
#=cut

    GL_REPLACEMENT_CODE_SUN => 0x81D8,

#=head2 GL_REPLACE_EXT
#
#=cut

    GL_REPLACE_EXT => 0x8062,

#=head2 GL_REPLACE_MIDDLE_SUN
#
#=cut

    GL_REPLACE_MIDDLE_SUN => 0x0002,

#=head2 GL_REPLACE_OLDEST_SUN
#
#=cut

    GL_REPLACE_OLDEST_SUN => 0x0003,

#=head2 GL_REPLACE_VALUE_AMD
#
#=cut

    GL_REPLACE_VALUE_AMD => 0x874B,

#=head2 GL_REPLICATE_BORDER
#
#=cut

    GL_REPLICATE_BORDER => 0x8153,

#=head2 GL_REPLICATE_BORDER_HP
#
#=cut

    GL_REPLICATE_BORDER_HP => 0x8153,

#=head2 GL_RESAMPLE_AVERAGE_OML
#
#=cut

    GL_RESAMPLE_AVERAGE_OML => 0x8988,

#=head2 GL_RESAMPLE_DECIMATE_OML
#
#=cut

    GL_RESAMPLE_DECIMATE_OML => 0x8989,

#=head2 GL_RESAMPLE_DECIMATE_SGIX
#
#=cut

    GL_RESAMPLE_DECIMATE_SGIX => 0x8430,

#=head2 GL_RESAMPLE_REPLICATE_OML
#
#=cut

    GL_RESAMPLE_REPLICATE_OML => 0x8986,

#=head2 GL_RESAMPLE_REPLICATE_SGIX
#
#=cut

    GL_RESAMPLE_REPLICATE_SGIX => 0x842E,

#=head2 GL_RESAMPLE_ZERO_FILL_OML
#
#=cut

    GL_RESAMPLE_ZERO_FILL_OML => 0x8987,

#=head2 GL_RESAMPLE_ZERO_FILL_SGIX
#
#=cut

    GL_RESAMPLE_ZERO_FILL_SGIX => 0x842F,

#=head2 GL_RESCALE_NORMAL
#
#=cut

    GL_RESCALE_NORMAL => 0x803A,

#=head2 GL_RESCALE_NORMAL_EXT
#
#=cut

    GL_RESCALE_NORMAL_EXT => 0x803A,

#=head2 GL_RESET_NOTIFICATION_STRATEGY
#
#=cut

    GL_RESET_NOTIFICATION_STRATEGY => 0x8256,

#=head2 GL_RESET_NOTIFICATION_STRATEGY_ARB
#
#=cut

    GL_RESET_NOTIFICATION_STRATEGY_ARB => 0x8256,

#=head2 GL_RESTART_PATH_NV
#
#=cut

    GL_RESTART_PATH_NV => 0xF0,

#=head2 GL_RESTART_SUN
#
#=cut

    GL_RESTART_SUN => 0x0001,

#=head2 GL_RETAINED_APPLE
#
#=cut

    GL_RETAINED_APPLE => 0x8A1B,

#=head2 GL_RETURN
#
#=cut

    GL_RETURN => 0x0102,

#=head2 GL_RG
#
#=cut

    GL_RG => 0x8227,

#=head2 GL_RG16
#
#=cut

    GL_RG16 => 0x822C,

#=head2 GL_RG16F
#
#=cut

    GL_RG16F => 0x822F,

#=head2 GL_RG16I
#
#=cut

    GL_RG16I => 0x8239,

#=head2 GL_RG16UI
#
#=cut

    GL_RG16UI => 0x823A,

#=head2 GL_RG16_SNORM
#
#=cut

    GL_RG16_SNORM => 0x8F99,

#=head2 GL_RG32F
#
#=cut

    GL_RG32F => 0x8230,

#=head2 GL_RG32I
#
#=cut

    GL_RG32I => 0x823B,

#=head2 GL_RG32UI
#
#=cut

    GL_RG32UI => 0x823C,

#=head2 GL_RG8
#
#=cut

    GL_RG8 => 0x822B,

#=head2 GL_RG8I
#
#=cut

    GL_RG8I => 0x8237,

#=head2 GL_RG8UI
#
#=cut

    GL_RG8UI => 0x8238,

#=head2 GL_RG8_SNORM
#
#=cut

    GL_RG8_SNORM => 0x8F95,

#=head2 GL_RGB
#
#=cut

    GL_RGB => 0x1907,

#=head2 GL_RGB10
#
#=cut

    GL_RGB10 => 0x8052,

#=head2 GL_RGB10_A2
#
#=cut

    GL_RGB10_A2 => 0x8059,

#=head2 GL_RGB10_A2UI
#
#=cut

    GL_RGB10_A2UI => 0x906F,

#=head2 GL_RGB10_A2_EXT
#
#=cut

    GL_RGB10_A2_EXT => 0x8059,

#=head2 GL_RGB10_EXT
#
#=cut

    GL_RGB10_EXT => 0x8052,

#=head2 GL_RGB12
#
#=cut

    GL_RGB12 => 0x8053,

#=head2 GL_RGB12_EXT
#
#=cut

    GL_RGB12_EXT => 0x8053,

#=head2 GL_RGB16
#
#=cut

    GL_RGB16 => 0x8054,

#=head2 GL_RGB16F
#
#=cut

    GL_RGB16F => 0x881B,

#=head2 GL_RGB16F_ARB
#
#=cut

    GL_RGB16F_ARB => 0x881B,

#=head2 GL_RGB16I
#
#=cut

    GL_RGB16I => 0x8D89,

#=head2 GL_RGB16I_EXT
#
#=cut

    GL_RGB16I_EXT => 0x8D89,

#=head2 GL_RGB16UI
#
#=cut

    GL_RGB16UI => 0x8D77,

#=head2 GL_RGB16UI_EXT
#
#=cut

    GL_RGB16UI_EXT => 0x8D77,

#=head2 GL_RGB16_EXT
#
#=cut

    GL_RGB16_EXT => 0x8054,

#=head2 GL_RGB16_SNORM
#
#=cut

    GL_RGB16_SNORM => 0x8F9A,

#=head2 GL_RGB2_EXT
#
#=cut

    GL_RGB2_EXT => 0x804E,

#=head2 GL_RGB32F
#
#=cut

    GL_RGB32F => 0x8815,

#=head2 GL_RGB32F_ARB
#
#=cut

    GL_RGB32F_ARB => 0x8815,

#=head2 GL_RGB32I
#
#=cut

    GL_RGB32I => 0x8D83,

#=head2 GL_RGB32I_EXT
#
#=cut

    GL_RGB32I_EXT => 0x8D83,

#=head2 GL_RGB32UI
#
#=cut

    GL_RGB32UI => 0x8D71,

#=head2 GL_RGB32UI_EXT
#
#=cut

    GL_RGB32UI_EXT => 0x8D71,

#=head2 GL_RGB4
#
#=cut

    GL_RGB4 => 0x804F,

#=head2 GL_RGB4_EXT
#
#=cut

    GL_RGB4_EXT => 0x804F,

#=head2 GL_RGB4_S3TC
#
#=cut

    GL_RGB4_S3TC => 0x83A1,

#=head2 GL_RGB5
#
#=cut

    GL_RGB5 => 0x8050,

#=head2 GL_RGB565
#
#=cut

    GL_RGB565 => 0x8D62,

#=head2 GL_RGB5_A1
#
#=cut

    GL_RGB5_A1 => 0x8057,

#=head2 GL_RGB5_A1_EXT
#
#=cut

    GL_RGB5_A1_EXT => 0x8057,

#=head2 GL_RGB5_EXT
#
#=cut

    GL_RGB5_EXT => 0x8050,

#=head2 GL_RGB8
#
#=cut

    GL_RGB8 => 0x8051,

#=head2 GL_RGB8I
#
#=cut

    GL_RGB8I => 0x8D8F,

#=head2 GL_RGB8I_EXT
#
#=cut

    GL_RGB8I_EXT => 0x8D8F,

#=head2 GL_RGB8UI
#
#=cut

    GL_RGB8UI => 0x8D7D,

#=head2 GL_RGB8UI_EXT
#
#=cut

    GL_RGB8UI_EXT => 0x8D7D,

#=head2 GL_RGB8_EXT
#
#=cut

    GL_RGB8_EXT => 0x8051,

#=head2 GL_RGB8_SNORM
#
#=cut

    GL_RGB8_SNORM => 0x8F96,

#=head2 GL_RGB9_E5
#
#=cut

    GL_RGB9_E5 => 0x8C3D,

#=head2 GL_RGB9_E5_EXT
#
#=cut

    GL_RGB9_E5_EXT => 0x8C3D,

#=head2 GL_RGBA
#
#=cut

    GL_RGBA => 0x1908,

#=head2 GL_RGBA12
#
#=cut

    GL_RGBA12 => 0x805A,

#=head2 GL_RGBA12_EXT
#
#=cut

    GL_RGBA12_EXT => 0x805A,

#=head2 GL_RGBA16
#
#=cut

    GL_RGBA16 => 0x805B,

#=head2 GL_RGBA16F
#
#=cut

    GL_RGBA16F => 0x881A,

#=head2 GL_RGBA16F_ARB
#
#=cut

    GL_RGBA16F_ARB => 0x881A,

#=head2 GL_RGBA16I
#
#=cut

    GL_RGBA16I => 0x8D88,

#=head2 GL_RGBA16I_EXT
#
#=cut

    GL_RGBA16I_EXT => 0x8D88,

#=head2 GL_RGBA16UI
#
#=cut

    GL_RGBA16UI => 0x8D76,

#=head2 GL_RGBA16UI_EXT
#
#=cut

    GL_RGBA16UI_EXT => 0x8D76,

#=head2 GL_RGBA16_EXT
#
#=cut

    GL_RGBA16_EXT => 0x805B,

#=head2 GL_RGBA16_SNORM
#
#=cut

    GL_RGBA16_SNORM => 0x8F9B,

#=head2 GL_RGBA2
#
#=cut

    GL_RGBA2 => 0x8055,

#=head2 GL_RGBA2_EXT
#
#=cut

    GL_RGBA2_EXT => 0x8055,

#=head2 GL_RGBA32F
#
#=cut

    GL_RGBA32F => 0x8814,

#=head2 GL_RGBA32F_ARB
#
#=cut

    GL_RGBA32F_ARB => 0x8814,

#=head2 GL_RGBA32I
#
#=cut

    GL_RGBA32I => 0x8D82,

#=head2 GL_RGBA32I_EXT
#
#=cut

    GL_RGBA32I_EXT => 0x8D82,

#=head2 GL_RGBA32UI
#
#=cut

    GL_RGBA32UI => 0x8D70,

#=head2 GL_RGBA32UI_EXT
#
#=cut

    GL_RGBA32UI_EXT => 0x8D70,

#=head2 GL_RGBA4
#
#=cut

    GL_RGBA4 => 0x8056,

#=head2 GL_RGBA4_DXT5_S3TC
#
#=cut

    GL_RGBA4_DXT5_S3TC => 0x83A5,

#=head2 GL_RGBA4_EXT
#
#=cut

    GL_RGBA4_EXT => 0x8056,

#=head2 GL_RGBA4_S3TC
#
#=cut

    GL_RGBA4_S3TC => 0x83A3,

#=head2 GL_RGBA8
#
#=cut

    GL_RGBA8 => 0x8058,

#=head2 GL_RGBA8I
#
#=cut

    GL_RGBA8I => 0x8D8E,

#=head2 GL_RGBA8I_EXT
#
#=cut

    GL_RGBA8I_EXT => 0x8D8E,

#=head2 GL_RGBA8UI
#
#=cut

    GL_RGBA8UI => 0x8D7C,

#=head2 GL_RGBA8UI_EXT
#
#=cut

    GL_RGBA8UI_EXT => 0x8D7C,

#=head2 GL_RGBA8_EXT
#
#=cut

    GL_RGBA8_EXT => 0x8058,

#=head2 GL_RGBA8_SNORM
#
#=cut

    GL_RGBA8_SNORM => 0x8F97,

#=head2 GL_RGBA_DXT5_S3TC
#
#=cut

    GL_RGBA_DXT5_S3TC => 0x83A4,

#=head2 GL_RGBA_FLOAT16_APPLE
#
#=cut

    GL_RGBA_FLOAT16_APPLE => 0x881A,

#=head2 GL_RGBA_FLOAT16_ATI
#
#=cut

    GL_RGBA_FLOAT16_ATI => 0x881A,

#=head2 GL_RGBA_FLOAT32_APPLE
#
#=cut

    GL_RGBA_FLOAT32_APPLE => 0x8814,

#=head2 GL_RGBA_FLOAT32_ATI
#
#=cut

    GL_RGBA_FLOAT32_ATI => 0x8814,

#=head2 GL_RGBA_FLOAT_MODE_ARB
#
#=cut

    GL_RGBA_FLOAT_MODE_ARB => 0x8820,

#=head2 GL_RGBA_FLOAT_MODE_ATI
#
#=cut

    GL_RGBA_FLOAT_MODE_ATI => 0x8820,

#=head2 GL_RGBA_INTEGER
#
#=cut

    GL_RGBA_INTEGER => 0x8D99,

#=head2 GL_RGBA_INTEGER_EXT
#
#=cut

    GL_RGBA_INTEGER_EXT => 0x8D99,

#=head2 GL_RGBA_INTEGER_MODE_EXT
#
#=cut

    GL_RGBA_INTEGER_MODE_EXT => 0x8D9E,

#=head2 GL_RGBA_MODE
#
#=cut

    GL_RGBA_MODE => 0x0C31,

#=head2 GL_RGBA_S3TC
#
#=cut

    GL_RGBA_S3TC => 0x83A2,

#=head2 GL_RGBA_SIGNED_COMPONENTS_EXT
#
#=cut

    GL_RGBA_SIGNED_COMPONENTS_EXT => 0x8C3C,

#=head2 GL_RGBA_SNORM
#
#=cut

    GL_RGBA_SNORM => 0x8F93,

#=head2 GL_RGBA_UNSIGNED_DOT_PRODUCT_MAPPING_NV
#
#=cut

    GL_RGBA_UNSIGNED_DOT_PRODUCT_MAPPING_NV => 0x86D9,

#=head2 GL_RGB_422_APPLE
#
#=cut

    GL_RGB_422_APPLE => 0x8A1F,

#=head2 GL_RGB_FLOAT16_APPLE
#
#=cut

    GL_RGB_FLOAT16_APPLE => 0x881B,

#=head2 GL_RGB_FLOAT16_ATI
#
#=cut

    GL_RGB_FLOAT16_ATI => 0x881B,

#=head2 GL_RGB_FLOAT32_APPLE
#
#=cut

    GL_RGB_FLOAT32_APPLE => 0x8815,

#=head2 GL_RGB_FLOAT32_ATI
#
#=cut

    GL_RGB_FLOAT32_ATI => 0x8815,

#=head2 GL_RGB_INTEGER
#
#=cut

    GL_RGB_INTEGER => 0x8D98,

#=head2 GL_RGB_INTEGER_EXT
#
#=cut

    GL_RGB_INTEGER_EXT => 0x8D98,

#=head2 GL_RGB_RAW_422_APPLE
#
#=cut

    GL_RGB_RAW_422_APPLE => 0x8A51,

#=head2 GL_RGB_S3TC
#
#=cut

    GL_RGB_S3TC => 0x83A0,

#=head2 GL_RGB_SCALE
#
#=cut

    GL_RGB_SCALE => 0x8573,

#=head2 GL_RGB_SCALE_ARB
#
#=cut

    GL_RGB_SCALE_ARB => 0x8573,

#=head2 GL_RGB_SCALE_EXT
#
#=cut

    GL_RGB_SCALE_EXT => 0x8573,

#=head2 GL_RGB_SNORM
#
#=cut

    GL_RGB_SNORM => 0x8F92,

#=head2 GL_RG_INTEGER
#
#=cut

    GL_RG_INTEGER => 0x8228,

#=head2 GL_RG_SNORM
#
#=cut

    GL_RG_SNORM => 0x8F91,

#=head2 GL_RIGHT
#
#=cut

    GL_RIGHT => 0x0407,

#=head2 GL_ROUNDED_RECT2_NV
#
#=cut

    GL_ROUNDED_RECT2_NV => 0xEA,

#=head2 GL_ROUNDED_RECT4_NV
#
#=cut

    GL_ROUNDED_RECT4_NV => 0xEC,

#=head2 GL_ROUNDED_RECT8_NV
#
#=cut

    GL_ROUNDED_RECT8_NV => 0xEE,

#=head2 GL_ROUNDED_RECT_NV
#
#=cut

    GL_ROUNDED_RECT_NV => 0xE8,

#=head2 GL_ROUND_NV
#
#=cut

    GL_ROUND_NV => 0x90A4,

#=head2 GL_S
#
#=cut

    GL_S => 0x2000,

#=head2 GL_S3_s3tc
#
#=cut

    GL_S3_s3tc => 1,

#=head2 GL_SAMPLER
#
#=cut

    GL_SAMPLER => 0x82E6,

#=head2 GL_SAMPLER_1D
#
#=cut

    GL_SAMPLER_1D => 0x8B5D,

#=head2 GL_SAMPLER_1D_ARB
#
#=cut

    GL_SAMPLER_1D_ARB => 0x8B5D,

#=head2 GL_SAMPLER_1D_ARRAY
#
#=cut

    GL_SAMPLER_1D_ARRAY => 0x8DC0,

#=head2 GL_SAMPLER_1D_ARRAY_EXT
#
#=cut

    GL_SAMPLER_1D_ARRAY_EXT => 0x8DC0,

#=head2 GL_SAMPLER_1D_ARRAY_SHADOW
#
#=cut

    GL_SAMPLER_1D_ARRAY_SHADOW => 0x8DC3,

#=head2 GL_SAMPLER_1D_ARRAY_SHADOW_EXT
#
#=cut

    GL_SAMPLER_1D_ARRAY_SHADOW_EXT => 0x8DC3,

#=head2 GL_SAMPLER_1D_SHADOW
#
#=cut

    GL_SAMPLER_1D_SHADOW => 0x8B61,

#=head2 GL_SAMPLER_1D_SHADOW_ARB
#
#=cut

    GL_SAMPLER_1D_SHADOW_ARB => 0x8B61,

#=head2 GL_SAMPLER_2D
#
#=cut

    GL_SAMPLER_2D => 0x8B5E,

#=head2 GL_SAMPLER_2D_ARB
#
#=cut

    GL_SAMPLER_2D_ARB => 0x8B5E,

#=head2 GL_SAMPLER_2D_ARRAY
#
#=cut

    GL_SAMPLER_2D_ARRAY => 0x8DC1,

#=head2 GL_SAMPLER_2D_ARRAY_EXT
#
#=cut

    GL_SAMPLER_2D_ARRAY_EXT => 0x8DC1,

#=head2 GL_SAMPLER_2D_ARRAY_SHADOW
#
#=cut

    GL_SAMPLER_2D_ARRAY_SHADOW => 0x8DC4,

#=head2 GL_SAMPLER_2D_ARRAY_SHADOW_EXT
#
#=cut

    GL_SAMPLER_2D_ARRAY_SHADOW_EXT => 0x8DC4,

#=head2 GL_SAMPLER_2D_MULTISAMPLE
#
#=cut

    GL_SAMPLER_2D_MULTISAMPLE => 0x9108,

#=head2 GL_SAMPLER_2D_MULTISAMPLE_ARRAY
#
#=cut

    GL_SAMPLER_2D_MULTISAMPLE_ARRAY => 0x910B,

#=head2 GL_SAMPLER_2D_RECT
#
#=cut

    GL_SAMPLER_2D_RECT => 0x8B63,

#=head2 GL_SAMPLER_2D_RECT_ARB
#
#=cut

    GL_SAMPLER_2D_RECT_ARB => 0x8B63,

#=head2 GL_SAMPLER_2D_RECT_SHADOW
#
#=cut

    GL_SAMPLER_2D_RECT_SHADOW => 0x8B64,

#=head2 GL_SAMPLER_2D_RECT_SHADOW_ARB
#
#=cut

    GL_SAMPLER_2D_RECT_SHADOW_ARB => 0x8B64,

#=head2 GL_SAMPLER_2D_SHADOW
#
#=cut

    GL_SAMPLER_2D_SHADOW => 0x8B62,

#=head2 GL_SAMPLER_2D_SHADOW_ARB
#
#=cut

    GL_SAMPLER_2D_SHADOW_ARB => 0x8B62,

#=head2 GL_SAMPLER_3D
#
#=cut

    GL_SAMPLER_3D => 0x8B5F,

#=head2 GL_SAMPLER_3D_ARB
#
#=cut

    GL_SAMPLER_3D_ARB => 0x8B5F,

#=head2 GL_SAMPLER_BINDING
#
#=cut

    GL_SAMPLER_BINDING => 0x8919,

#=head2 GL_SAMPLER_BUFFER
#
#=cut

    GL_SAMPLER_BUFFER => 0x8DC2,

#=head2 GL_SAMPLER_BUFFER_AMD
#
#=cut

    GL_SAMPLER_BUFFER_AMD => 0x9001,

#=head2 GL_SAMPLER_BUFFER_EXT
#
#=cut

    GL_SAMPLER_BUFFER_EXT => 0x8DC2,

#=head2 GL_SAMPLER_CUBE
#
#=cut

    GL_SAMPLER_CUBE => 0x8B60,

#=head2 GL_SAMPLER_CUBE_ARB
#
#=cut

    GL_SAMPLER_CUBE_ARB => 0x8B60,

#=head2 GL_SAMPLER_CUBE_MAP_ARRAY
#
#=cut

    GL_SAMPLER_CUBE_MAP_ARRAY => 0x900C,

#=head2 GL_SAMPLER_CUBE_MAP_ARRAY_ARB
#
#=cut

    GL_SAMPLER_CUBE_MAP_ARRAY_ARB => 0x900C,

#=head2 GL_SAMPLER_CUBE_MAP_ARRAY_SHADOW
#
#=cut

    GL_SAMPLER_CUBE_MAP_ARRAY_SHADOW => 0x900D,

#=head2 GL_SAMPLER_CUBE_MAP_ARRAY_SHADOW_ARB
#
#=cut

    GL_SAMPLER_CUBE_MAP_ARRAY_SHADOW_ARB => 0x900D,

#=head2 GL_SAMPLER_CUBE_SHADOW
#
#=cut

    GL_SAMPLER_CUBE_SHADOW => 0x8DC5,

#=head2 GL_SAMPLER_CUBE_SHADOW_EXT
#
#=cut

    GL_SAMPLER_CUBE_SHADOW_EXT => 0x8DC5,

#=head2 GL_SAMPLER_OBJECT_AMD
#
#=cut

    GL_SAMPLER_OBJECT_AMD => 0x9155,

#=head2 GL_SAMPLER_RENDERBUFFER_NV
#
#=cut

    GL_SAMPLER_RENDERBUFFER_NV => 0x8E56,

#=head2 GL_SAMPLES
#
#=cut

    GL_SAMPLES => 0x80A9,

#=head2 GL_SAMPLES_3DFX
#
#=cut

    GL_SAMPLES_3DFX => 0x86B4,

#=head2 GL_SAMPLES_ARB
#
#=cut

    GL_SAMPLES_ARB => 0x80A9,

#=head2 GL_SAMPLES_EXT
#
#=cut

    GL_SAMPLES_EXT => 0x80A9,

#=head2 GL_SAMPLES_PASSED
#
#=cut

    GL_SAMPLES_PASSED => 0x8914,

#=head2 GL_SAMPLES_PASSED_ARB
#
#=cut

    GL_SAMPLES_PASSED_ARB => 0x8914,

#=head2 GL_SAMPLES_SGIS
#
#=cut

    GL_SAMPLES_SGIS => 0x80A9,

#=head2 GL_SAMPLE_ALPHA_TO_COVERAGE
#
#=cut

    GL_SAMPLE_ALPHA_TO_COVERAGE => 0x809E,

#=head2 GL_SAMPLE_ALPHA_TO_COVERAGE_ARB
#
#=cut

    GL_SAMPLE_ALPHA_TO_COVERAGE_ARB => 0x809E,

#=head2 GL_SAMPLE_ALPHA_TO_MASK_EXT
#
#=cut

    GL_SAMPLE_ALPHA_TO_MASK_EXT => 0x809E,

#=head2 GL_SAMPLE_ALPHA_TO_MASK_SGIS
#
#=cut

    GL_SAMPLE_ALPHA_TO_MASK_SGIS => 0x809E,

#=head2 GL_SAMPLE_ALPHA_TO_ONE
#
#=cut

    GL_SAMPLE_ALPHA_TO_ONE => 0x809F,

#=head2 GL_SAMPLE_ALPHA_TO_ONE_ARB
#
#=cut

    GL_SAMPLE_ALPHA_TO_ONE_ARB => 0x809F,

#=head2 GL_SAMPLE_ALPHA_TO_ONE_EXT
#
#=cut

    GL_SAMPLE_ALPHA_TO_ONE_EXT => 0x809F,

#=head2 GL_SAMPLE_ALPHA_TO_ONE_SGIS
#
#=cut

    GL_SAMPLE_ALPHA_TO_ONE_SGIS => 0x809F,

#=head2 GL_SAMPLE_BUFFERS
#
#=cut

    GL_SAMPLE_BUFFERS => 0x80A8,

#=head2 GL_SAMPLE_BUFFERS_3DFX
#
#=cut

    GL_SAMPLE_BUFFERS_3DFX => 0x86B3,

#=head2 GL_SAMPLE_BUFFERS_ARB
#
#=cut

    GL_SAMPLE_BUFFERS_ARB => 0x80A8,

#=head2 GL_SAMPLE_BUFFERS_EXT
#
#=cut

    GL_SAMPLE_BUFFERS_EXT => 0x80A8,

#=head2 GL_SAMPLE_BUFFERS_SGIS
#
#=cut

    GL_SAMPLE_BUFFERS_SGIS => 0x80A8,

#=head2 GL_SAMPLE_COVERAGE
#
#=cut

    GL_SAMPLE_COVERAGE => 0x80A0,

#=head2 GL_SAMPLE_COVERAGE_ARB
#
#=cut

    GL_SAMPLE_COVERAGE_ARB => 0x80A0,

#=head2 GL_SAMPLE_COVERAGE_INVERT
#
#=cut

    GL_SAMPLE_COVERAGE_INVERT => 0x80AB,

#=head2 GL_SAMPLE_COVERAGE_INVERT_ARB
#
#=cut

    GL_SAMPLE_COVERAGE_INVERT_ARB => 0x80AB,

#=head2 GL_SAMPLE_COVERAGE_VALUE
#
#=cut

    GL_SAMPLE_COVERAGE_VALUE => 0x80AA,

#=head2 GL_SAMPLE_COVERAGE_VALUE_ARB
#
#=cut

    GL_SAMPLE_COVERAGE_VALUE_ARB => 0x80AA,

#=head2 GL_SAMPLE_MASK
#
#=cut

    GL_SAMPLE_MASK => 0x8E51,

#=head2 GL_SAMPLE_MASK_EXT
#
#=cut

    GL_SAMPLE_MASK_EXT => 0x80A0,

#=head2 GL_SAMPLE_MASK_INVERT_EXT
#
#=cut

    GL_SAMPLE_MASK_INVERT_EXT => 0x80AB,

#=head2 GL_SAMPLE_MASK_INVERT_SGIS
#
#=cut

    GL_SAMPLE_MASK_INVERT_SGIS => 0x80AB,

#=head2 GL_SAMPLE_MASK_NV
#
#=cut

    GL_SAMPLE_MASK_NV => 0x8E51,

#=head2 GL_SAMPLE_MASK_SGIS
#
#=cut

    GL_SAMPLE_MASK_SGIS => 0x80A0,

#=head2 GL_SAMPLE_MASK_VALUE
#
#=cut

    GL_SAMPLE_MASK_VALUE => 0x8E52,

#=head2 GL_SAMPLE_MASK_VALUE_EXT
#
#=cut

    GL_SAMPLE_MASK_VALUE_EXT => 0x80AA,

#=head2 GL_SAMPLE_MASK_VALUE_NV
#
#=cut

    GL_SAMPLE_MASK_VALUE_NV => 0x8E52,

#=head2 GL_SAMPLE_MASK_VALUE_SGIS
#
#=cut

    GL_SAMPLE_MASK_VALUE_SGIS => 0x80AA,

#=head2 GL_SAMPLE_PATTERN_EXT
#
#=cut

    GL_SAMPLE_PATTERN_EXT => 0x80AC,

#=head2 GL_SAMPLE_PATTERN_SGIS
#
#=cut

    GL_SAMPLE_PATTERN_SGIS => 0x80AC,

#=head2 GL_SAMPLE_POSITION
#
#=cut

    GL_SAMPLE_POSITION => 0x8E50,

#=head2 GL_SAMPLE_POSITION_NV
#
#=cut

    GL_SAMPLE_POSITION_NV => 0x8E50,

#=head2 GL_SAMPLE_SHADING
#
#=cut

    GL_SAMPLE_SHADING => 0x8C36,

#=head2 GL_SAMPLE_SHADING_ARB
#
#=cut

    GL_SAMPLE_SHADING_ARB => 0x8C36,

#=head2 GL_SATURATE_BIT_ATI
#
#=cut

    GL_SATURATE_BIT_ATI => 0x00000040,

#=head2 GL_SCALAR_EXT
#
#=cut

    GL_SCALAR_EXT => 0x87BE,

#=head2 GL_SCALEBIAS_HINT_SGIX
#
#=cut

    GL_SCALEBIAS_HINT_SGIX => 0x8322,

#=head2 GL_SCALED_RESOLVE_FASTEST_EXT
#
#=cut

    GL_SCALED_RESOLVE_FASTEST_EXT => 0x90BA,

#=head2 GL_SCALED_RESOLVE_NICEST_EXT
#
#=cut

    GL_SCALED_RESOLVE_NICEST_EXT => 0x90BB,

#=head2 GL_SCALE_BY_FOUR_NV
#
#=cut

    GL_SCALE_BY_FOUR_NV => 0x853F,

#=head2 GL_SCALE_BY_ONE_HALF_NV
#
#=cut

    GL_SCALE_BY_ONE_HALF_NV => 0x8540,

#=head2 GL_SCALE_BY_TWO_NV
#
#=cut

    GL_SCALE_BY_TWO_NV => 0x853E,

#=head2 GL_SCISSOR_BIT
#
#=cut

    GL_SCISSOR_BIT => 0x00080000,

#=head2 GL_SCISSOR_BOX
#
#=cut

    GL_SCISSOR_BOX => 0x0C10,

#=head2 GL_SCISSOR_TEST
#
#=cut

    GL_SCISSOR_TEST => 0x0C11,

#=head2 GL_SCREEN_COORDINATES_REND
#
#=cut

    GL_SCREEN_COORDINATES_REND => 0x8490,

#=head2 GL_SCREEN_KHR
#
#=cut

    GL_SCREEN_KHR => 0x9295,

#=head2 GL_SCREEN_NV
#
#=cut

    GL_SCREEN_NV => 0x9295,

#=head2 GL_SECONDARY_COLOR_ARRAY
#
#=cut

    GL_SECONDARY_COLOR_ARRAY => 0x845E,

#=head2 GL_SECONDARY_COLOR_ARRAY_ADDRESS_NV
#
#=cut

    GL_SECONDARY_COLOR_ARRAY_ADDRESS_NV => 0x8F27,

#=head2 GL_SECONDARY_COLOR_ARRAY_BUFFER_BINDING
#
#=cut

    GL_SECONDARY_COLOR_ARRAY_BUFFER_BINDING => 0x889C,

#=head2 GL_SECONDARY_COLOR_ARRAY_BUFFER_BINDING_ARB
#
#=cut

    GL_SECONDARY_COLOR_ARRAY_BUFFER_BINDING_ARB => 0x889C,

#=head2 GL_SECONDARY_COLOR_ARRAY_EXT
#
#=cut

    GL_SECONDARY_COLOR_ARRAY_EXT => 0x845E,

#=head2 GL_SECONDARY_COLOR_ARRAY_LENGTH_NV
#
#=cut

    GL_SECONDARY_COLOR_ARRAY_LENGTH_NV => 0x8F31,

#=head2 GL_SECONDARY_COLOR_ARRAY_LIST_IBM
#
#=cut

    GL_SECONDARY_COLOR_ARRAY_LIST_IBM => 103077,

#=head2 GL_SECONDARY_COLOR_ARRAY_LIST_STRIDE_IBM
#
#=cut

    GL_SECONDARY_COLOR_ARRAY_LIST_STRIDE_IBM => 103087,

#=head2 GL_SECONDARY_COLOR_ARRAY_POINTER
#
#=cut

    GL_SECONDARY_COLOR_ARRAY_POINTER => 0x845D,

#=head2 GL_SECONDARY_COLOR_ARRAY_POINTER_EXT
#
#=cut

    GL_SECONDARY_COLOR_ARRAY_POINTER_EXT => 0x845D,

#=head2 GL_SECONDARY_COLOR_ARRAY_SIZE
#
#=cut

    GL_SECONDARY_COLOR_ARRAY_SIZE => 0x845A,

#=head2 GL_SECONDARY_COLOR_ARRAY_SIZE_EXT
#
#=cut

    GL_SECONDARY_COLOR_ARRAY_SIZE_EXT => 0x845A,

#=head2 GL_SECONDARY_COLOR_ARRAY_STRIDE
#
#=cut

    GL_SECONDARY_COLOR_ARRAY_STRIDE => 0x845C,

#=head2 GL_SECONDARY_COLOR_ARRAY_STRIDE_EXT
#
#=cut

    GL_SECONDARY_COLOR_ARRAY_STRIDE_EXT => 0x845C,

#=head2 GL_SECONDARY_COLOR_ARRAY_TYPE
#
#=cut

    GL_SECONDARY_COLOR_ARRAY_TYPE => 0x845B,

#=head2 GL_SECONDARY_COLOR_ARRAY_TYPE_EXT
#
#=cut

    GL_SECONDARY_COLOR_ARRAY_TYPE_EXT => 0x845B,

#=head2 GL_SECONDARY_COLOR_NV
#
#=cut

    GL_SECONDARY_COLOR_NV => 0x852D,

#=head2 GL_SECONDARY_INTERPOLATOR_ATI
#
#=cut

    GL_SECONDARY_INTERPOLATOR_ATI => 0x896D,

#=head2 GL_SELECT
#
#=cut

    GL_SELECT => 0x1C02,

#=head2 GL_SELECTION_BUFFER_POINTER
#
#=cut

    GL_SELECTION_BUFFER_POINTER => 0x0DF3,

#=head2 GL_SELECTION_BUFFER_SIZE
#
#=cut

    GL_SELECTION_BUFFER_SIZE => 0x0DF4,

#=head2 GL_SEPARABLE_2D
#
#=cut

    GL_SEPARABLE_2D => 0x8012,

#=head2 GL_SEPARABLE_2D_EXT
#
#=cut

    GL_SEPARABLE_2D_EXT => 0x8012,

#=head2 GL_SEPARATE_ATTRIBS
#
#=cut

    GL_SEPARATE_ATTRIBS => 0x8C8D,

#=head2 GL_SEPARATE_ATTRIBS_EXT
#
#=cut

    GL_SEPARATE_ATTRIBS_EXT => 0x8C8D,

#=head2 GL_SEPARATE_ATTRIBS_NV
#
#=cut

    GL_SEPARATE_ATTRIBS_NV => 0x8C8D,

#=head2 GL_SEPARATE_SPECULAR_COLOR
#
#=cut

    GL_SEPARATE_SPECULAR_COLOR => 0x81FA,

#=head2 GL_SEPARATE_SPECULAR_COLOR_EXT
#
#=cut

    GL_SEPARATE_SPECULAR_COLOR_EXT => 0x81FA,

#=head2 GL_SET
#
#=cut

    GL_SET => 0x150F,

#=head2 GL_SET_AMD
#
#=cut

    GL_SET_AMD => 0x874A,

#=head2 GL_SGIS_detail_texture
#
#=cut

    GL_SGIS_detail_texture => 1,

#=head2 GL_SGIS_fog_function
#
#=cut

    GL_SGIS_fog_function => 1,

#=head2 GL_SGIS_generate_mipmap
#
#=cut

    GL_SGIS_generate_mipmap => 1,

#=head2 GL_SGIS_multisample
#
#=cut

    GL_SGIS_multisample => 1,

#=head2 GL_SGIS_pixel_texture
#
#=cut

    GL_SGIS_pixel_texture => 1,

#=head2 GL_SGIS_point_line_texgen
#
#=cut

    GL_SGIS_point_line_texgen => 1,

#=head2 GL_SGIS_point_parameters
#
#=cut

    GL_SGIS_point_parameters => 1,

#=head2 GL_SGIS_sharpen_texture
#
#=cut

    GL_SGIS_sharpen_texture => 1,

#=head2 GL_SGIS_texture4D
#
#=cut

    GL_SGIS_texture4D => 1,

#=head2 GL_SGIS_texture_border_clamp
#
#=cut

    GL_SGIS_texture_border_clamp => 1,

#=head2 GL_SGIS_texture_color_mask
#
#=cut

    GL_SGIS_texture_color_mask => 1,

#=head2 GL_SGIS_texture_edge_clamp
#
#=cut

    GL_SGIS_texture_edge_clamp => 1,

#=head2 GL_SGIS_texture_filter4
#
#=cut

    GL_SGIS_texture_filter4 => 1,

#=head2 GL_SGIS_texture_lod
#
#=cut

    GL_SGIS_texture_lod => 1,

#=head2 GL_SGIS_texture_select
#
#=cut

    GL_SGIS_texture_select => 1,

#=head2 GL_SGIX_async
#
#=cut

    GL_SGIX_async => 1,

#=head2 GL_SGIX_async_histogram
#
#=cut

    GL_SGIX_async_histogram => 1,

#=head2 GL_SGIX_async_pixel
#
#=cut

    GL_SGIX_async_pixel => 1,

#=head2 GL_SGIX_blend_alpha_minmax
#
#=cut

    GL_SGIX_blend_alpha_minmax => 1,

#=head2 GL_SGIX_calligraphic_fragment
#
#=cut

    GL_SGIX_calligraphic_fragment => 1,

#=head2 GL_SGIX_clipmap
#
#=cut

    GL_SGIX_clipmap => 1,

#=head2 GL_SGIX_convolution_accuracy
#
#=cut

    GL_SGIX_convolution_accuracy => 1,

#=head2 GL_SGIX_depth_pass_instrument
#
#=cut

    GL_SGIX_depth_pass_instrument => 1,

#=head2 GL_SGIX_depth_texture
#
#=cut

    GL_SGIX_depth_texture => 1,

#=head2 GL_SGIX_flush_raster
#
#=cut

    GL_SGIX_flush_raster => 1,

#=head2 GL_SGIX_fog_offset
#
#=cut

    GL_SGIX_fog_offset => 1,

#=head2 GL_SGIX_fragment_lighting
#
#=cut

    GL_SGIX_fragment_lighting => 1,

#=head2 GL_SGIX_framezoom
#
#=cut

    GL_SGIX_framezoom => 1,

#=head2 GL_SGIX_igloo_interface
#
#=cut

    GL_SGIX_igloo_interface => 1,

#=head2 GL_SGIX_instruments
#
#=cut

    GL_SGIX_instruments => 1,

#=head2 GL_SGIX_interlace
#
#=cut

    GL_SGIX_interlace => 1,

#=head2 GL_SGIX_ir_instrument1
#
#=cut

    GL_SGIX_ir_instrument1 => 1,

#=head2 GL_SGIX_list_priority
#
#=cut

    GL_SGIX_list_priority => 1,

#=head2 GL_SGIX_pixel_texture
#
#=cut

    GL_SGIX_pixel_texture => 1,

#=head2 GL_SGIX_pixel_tiles
#
#=cut

    GL_SGIX_pixel_tiles => 1,

#=head2 GL_SGIX_polynomial_ffd
#
#=cut

    GL_SGIX_polynomial_ffd => 1,

#=head2 GL_SGIX_reference_plane
#
#=cut

    GL_SGIX_reference_plane => 1,

#=head2 GL_SGIX_resample
#
#=cut

    GL_SGIX_resample => 1,

#=head2 GL_SGIX_scalebias_hint
#
#=cut

    GL_SGIX_scalebias_hint => 1,

#=head2 GL_SGIX_shadow
#
#=cut

    GL_SGIX_shadow => 1,

#=head2 GL_SGIX_shadow_ambient
#
#=cut

    GL_SGIX_shadow_ambient => 1,

#=head2 GL_SGIX_sprite
#
#=cut

    GL_SGIX_sprite => 1,

#=head2 GL_SGIX_subsample
#
#=cut

    GL_SGIX_subsample => 1,

#=head2 GL_SGIX_tag_sample_buffer
#
#=cut

    GL_SGIX_tag_sample_buffer => 1,

#=head2 GL_SGIX_texture_add_env
#
#=cut

    GL_SGIX_texture_add_env => 1,

#=head2 GL_SGIX_texture_coordinate_clamp
#
#=cut

    GL_SGIX_texture_coordinate_clamp => 1,

#=head2 GL_SGIX_texture_lod_bias
#
#=cut

    GL_SGIX_texture_lod_bias => 1,

#=head2 GL_SGIX_texture_multi_buffer
#
#=cut

    GL_SGIX_texture_multi_buffer => 1,

#=head2 GL_SGIX_texture_scale_bias
#
#=cut

    GL_SGIX_texture_scale_bias => 1,

#=head2 GL_SGIX_vertex_preclip
#
#=cut

    GL_SGIX_vertex_preclip => 1,

#=head2 GL_SGIX_ycrcb
#
#=cut

    GL_SGIX_ycrcb => 1,

#=head2 GL_SGIX_ycrcb_subsample
#
#=cut

    GL_SGIX_ycrcb_subsample => 1,

#=head2 GL_SGIX_ycrcba
#
#=cut

    GL_SGIX_ycrcba => 1,

#=head2 GL_SGI_color_matrix
#
#=cut

    GL_SGI_color_matrix => 1,

#=head2 GL_SGI_color_table
#
#=cut

    GL_SGI_color_table => 1,

#=head2 GL_SGI_texture_color_table
#
#=cut

    GL_SGI_texture_color_table => 1,

#=head2 GL_SHADER
#
#=cut

    GL_SHADER => 0x82E1,

#=head2 GL_SHADER_BINARY_FORMATS
#
#=cut

    GL_SHADER_BINARY_FORMATS => 0x8DF8,

#=head2 GL_SHADER_COMPILER
#
#=cut

    GL_SHADER_COMPILER => 0x8DFA,

#=head2 GL_SHADER_CONSISTENT_NV
#
#=cut

    GL_SHADER_CONSISTENT_NV => 0x86DD,

#=head2 GL_SHADER_GLOBAL_ACCESS_BARRIER_BIT_NV
#
#=cut

    GL_SHADER_GLOBAL_ACCESS_BARRIER_BIT_NV => 0x00000010,

#=head2 GL_SHADER_IMAGE_ACCESS_BARRIER_BIT
#
#=cut

    GL_SHADER_IMAGE_ACCESS_BARRIER_BIT => 0x00000020,

#=head2 GL_SHADER_IMAGE_ACCESS_BARRIER_BIT_EXT
#
#=cut

    GL_SHADER_IMAGE_ACCESS_BARRIER_BIT_EXT => 0x00000020,

#=head2 GL_SHADER_IMAGE_ATOMIC
#
#=cut

    GL_SHADER_IMAGE_ATOMIC => 0x82A6,

#=head2 GL_SHADER_IMAGE_LOAD
#
#=cut

    GL_SHADER_IMAGE_LOAD => 0x82A4,

#=head2 GL_SHADER_IMAGE_STORE
#
#=cut

    GL_SHADER_IMAGE_STORE => 0x82A5,

#=head2 GL_SHADER_INCLUDE_ARB
#
#=cut

    GL_SHADER_INCLUDE_ARB => 0x8DAE,

#=head2 GL_SHADER_OBJECT_ARB
#
#=cut

    GL_SHADER_OBJECT_ARB => 0x8B48,

#=head2 GL_SHADER_OBJECT_EXT
#
#=cut

    GL_SHADER_OBJECT_EXT => 0x8B48,

#=head2 GL_SHADER_OPERATION_NV
#
#=cut

    GL_SHADER_OPERATION_NV => 0x86DF,

#=head2 GL_SHADER_SOURCE_LENGTH
#
#=cut

    GL_SHADER_SOURCE_LENGTH => 0x8B88,

#=head2 GL_SHADER_STORAGE_BARRIER_BIT
#
#=cut

    GL_SHADER_STORAGE_BARRIER_BIT => 0x00002000,

#=head2 GL_SHADER_STORAGE_BLOCK
#
#=cut

    GL_SHADER_STORAGE_BLOCK => 0x92E6,

#=head2 GL_SHADER_STORAGE_BUFFER
#
#=cut

    GL_SHADER_STORAGE_BUFFER => 0x90D2,

#=head2 GL_SHADER_STORAGE_BUFFER_BINDING
#
#=cut

    GL_SHADER_STORAGE_BUFFER_BINDING => 0x90D3,

#=head2 GL_SHADER_STORAGE_BUFFER_OFFSET_ALIGNMENT
#
#=cut

    GL_SHADER_STORAGE_BUFFER_OFFSET_ALIGNMENT => 0x90DF,

#=head2 GL_SHADER_STORAGE_BUFFER_SIZE
#
#=cut

    GL_SHADER_STORAGE_BUFFER_SIZE => 0x90D5,

#=head2 GL_SHADER_STORAGE_BUFFER_START
#
#=cut

    GL_SHADER_STORAGE_BUFFER_START => 0x90D4,

#=head2 GL_SHADER_TYPE
#
#=cut

    GL_SHADER_TYPE => 0x8B4F,

#=head2 GL_SHADE_MODEL
#
#=cut

    GL_SHADE_MODEL => 0x0B54,

#=head2 GL_SHADING_LANGUAGE_VERSION
#
#=cut

    GL_SHADING_LANGUAGE_VERSION => 0x8B8C,

#=head2 GL_SHADING_LANGUAGE_VERSION_ARB
#
#=cut

    GL_SHADING_LANGUAGE_VERSION_ARB => 0x8B8C,

#=head2 GL_SHADOW_AMBIENT_SGIX
#
#=cut

    GL_SHADOW_AMBIENT_SGIX => 0x80BF,

#=head2 GL_SHADOW_ATTENUATION_EXT
#
#=cut

    GL_SHADOW_ATTENUATION_EXT => 0x834E,

#=head2 GL_SHARED_TEXTURE_PALETTE_EXT
#
#=cut

    GL_SHARED_TEXTURE_PALETTE_EXT => 0x81FB,

#=head2 GL_SHARPEN_TEXTURE_FUNC_POINTS_SGIS
#
#=cut

    GL_SHARPEN_TEXTURE_FUNC_POINTS_SGIS => 0x80B0,

#=head2 GL_SHININESS
#
#=cut

    GL_SHININESS => 0x1601,

#=head2 GL_SHORT
#
#=cut

    GL_SHORT => 0x1402,

#=head2 GL_SIGNALED
#
#=cut

    GL_SIGNALED => 0x9119,

#=head2 GL_SIGNED_ALPHA8_NV
#
#=cut

    GL_SIGNED_ALPHA8_NV => 0x8706,

#=head2 GL_SIGNED_ALPHA_NV
#
#=cut

    GL_SIGNED_ALPHA_NV => 0x8705,

#=head2 GL_SIGNED_HILO16_NV
#
#=cut

    GL_SIGNED_HILO16_NV => 0x86FA,

#=head2 GL_SIGNED_HILO8_NV
#
#=cut

    GL_SIGNED_HILO8_NV => 0x885F,

#=head2 GL_SIGNED_HILO_NV
#
#=cut

    GL_SIGNED_HILO_NV => 0x86F9,

#=head2 GL_SIGNED_IDENTITY_NV
#
#=cut

    GL_SIGNED_IDENTITY_NV => 0x853C,

#=head2 GL_SIGNED_INTENSITY8_NV
#
#=cut

    GL_SIGNED_INTENSITY8_NV => 0x8708,

#=head2 GL_SIGNED_INTENSITY_NV
#
#=cut

    GL_SIGNED_INTENSITY_NV => 0x8707,

#=head2 GL_SIGNED_LUMINANCE8_ALPHA8_NV
#
#=cut

    GL_SIGNED_LUMINANCE8_ALPHA8_NV => 0x8704,

#=head2 GL_SIGNED_LUMINANCE8_NV
#
#=cut

    GL_SIGNED_LUMINANCE8_NV => 0x8702,

#=head2 GL_SIGNED_LUMINANCE_ALPHA_NV
#
#=cut

    GL_SIGNED_LUMINANCE_ALPHA_NV => 0x8703,

#=head2 GL_SIGNED_LUMINANCE_NV
#
#=cut

    GL_SIGNED_LUMINANCE_NV => 0x8701,

#=head2 GL_SIGNED_NEGATE_NV
#
#=cut

    GL_SIGNED_NEGATE_NV => 0x853D,

#=head2 GL_SIGNED_NORMALIZED
#
#=cut

    GL_SIGNED_NORMALIZED => 0x8F9C,

#=head2 GL_SIGNED_RGB8_NV
#
#=cut

    GL_SIGNED_RGB8_NV => 0x86FF,

#=head2 GL_SIGNED_RGB8_UNSIGNED_ALPHA8_NV
#
#=cut

    GL_SIGNED_RGB8_UNSIGNED_ALPHA8_NV => 0x870D,

#=head2 GL_SIGNED_RGBA8_NV
#
#=cut

    GL_SIGNED_RGBA8_NV => 0x86FC,

#=head2 GL_SIGNED_RGBA_NV
#
#=cut

    GL_SIGNED_RGBA_NV => 0x86FB,

#=head2 GL_SIGNED_RGB_NV
#
#=cut

    GL_SIGNED_RGB_NV => 0x86FE,

#=head2 GL_SIGNED_RGB_UNSIGNED_ALPHA_NV
#
#=cut

    GL_SIGNED_RGB_UNSIGNED_ALPHA_NV => 0x870C,

#=head2 GL_SIMULTANEOUS_TEXTURE_AND_DEPTH_TEST
#
#=cut

    GL_SIMULTANEOUS_TEXTURE_AND_DEPTH_TEST => 0x82AC,

#=head2 GL_SIMULTANEOUS_TEXTURE_AND_DEPTH_WRITE
#
#=cut

    GL_SIMULTANEOUS_TEXTURE_AND_DEPTH_WRITE => 0x82AE,

#=head2 GL_SIMULTANEOUS_TEXTURE_AND_STENCIL_TEST
#
#=cut

    GL_SIMULTANEOUS_TEXTURE_AND_STENCIL_TEST => 0x82AD,

#=head2 GL_SIMULTANEOUS_TEXTURE_AND_STENCIL_WRITE
#
#=cut

    GL_SIMULTANEOUS_TEXTURE_AND_STENCIL_WRITE => 0x82AF,

#=head2 GL_SINGLE_COLOR
#
#=cut

    GL_SINGLE_COLOR => 0x81F9,

#=head2 GL_SINGLE_COLOR_EXT
#
#=cut

    GL_SINGLE_COLOR_EXT => 0x81F9,

#=head2 GL_SKIP_COMPONENTS1_NV
#
#=cut

    GL_SKIP_COMPONENTS1_NV => -6,

#=head2 GL_SKIP_COMPONENTS2_NV
#
#=cut

    GL_SKIP_COMPONENTS2_NV => -5,

#=head2 GL_SKIP_COMPONENTS3_NV
#
#=cut

    GL_SKIP_COMPONENTS3_NV => -4,

#=head2 GL_SKIP_COMPONENTS4_NV
#
#=cut

    GL_SKIP_COMPONENTS4_NV => -3,

#=head2 GL_SKIP_DECODE_EXT
#
#=cut

    GL_SKIP_DECODE_EXT => 0x8A4A,

#=head2 GL_SKIP_MISSING_GLYPH_NV
#
#=cut

    GL_SKIP_MISSING_GLYPH_NV => 0x90A9,

#=head2 GL_SLICE_ACCUM_SUN
#
#=cut

    GL_SLICE_ACCUM_SUN => 0x85CC,

#=head2 GL_SLUMINANCE
#
#=cut

    GL_SLUMINANCE => 0x8C46,

#=head2 GL_SLUMINANCE8
#
#=cut

    GL_SLUMINANCE8 => 0x8C47,

#=head2 GL_SLUMINANCE8_ALPHA8
#
#=cut

    GL_SLUMINANCE8_ALPHA8 => 0x8C45,

#=head2 GL_SLUMINANCE8_ALPHA8_EXT
#
#=cut

    GL_SLUMINANCE8_ALPHA8_EXT => 0x8C45,

#=head2 GL_SLUMINANCE8_EXT
#
#=cut

    GL_SLUMINANCE8_EXT => 0x8C47,

#=head2 GL_SLUMINANCE_ALPHA
#
#=cut

    GL_SLUMINANCE_ALPHA => 0x8C44,

#=head2 GL_SLUMINANCE_ALPHA_EXT
#
#=cut

    GL_SLUMINANCE_ALPHA_EXT => 0x8C44,

#=head2 GL_SLUMINANCE_EXT
#
#=cut

    GL_SLUMINANCE_EXT => 0x8C46,

#=head2 GL_SMALL_CCW_ARC_TO_NV
#
#=cut

    GL_SMALL_CCW_ARC_TO_NV => 0x12,

#=head2 GL_SMALL_CW_ARC_TO_NV
#
#=cut

    GL_SMALL_CW_ARC_TO_NV => 0x14,

#=head2 GL_SMOOTH
#
#=cut

    GL_SMOOTH => 0x1D01,

#=head2 GL_SMOOTH_CUBIC_CURVE_TO_NV
#
#=cut

    GL_SMOOTH_CUBIC_CURVE_TO_NV => 0x10,

#=head2 GL_SMOOTH_LINE_WIDTH_GRANULARITY
#
#=cut

    GL_SMOOTH_LINE_WIDTH_GRANULARITY => 0x0B23,

#=head2 GL_SMOOTH_LINE_WIDTH_RANGE
#
#=cut

    GL_SMOOTH_LINE_WIDTH_RANGE => 0x0B22,

#=head2 GL_SMOOTH_POINT_SIZE_GRANULARITY
#
#=cut

    GL_SMOOTH_POINT_SIZE_GRANULARITY => 0x0B13,

#=head2 GL_SMOOTH_POINT_SIZE_RANGE
#
#=cut

    GL_SMOOTH_POINT_SIZE_RANGE => 0x0B12,

#=head2 GL_SMOOTH_QUADRATIC_CURVE_TO_NV
#
#=cut

    GL_SMOOTH_QUADRATIC_CURVE_TO_NV => 0x0E,

#=head2 GL_SM_COUNT_NV
#
#=cut

    GL_SM_COUNT_NV => 0x933B,

#=head2 GL_SOFTLIGHT_KHR
#
#=cut

    GL_SOFTLIGHT_KHR => 0x929C,

#=head2 GL_SOFTLIGHT_NV
#
#=cut

    GL_SOFTLIGHT_NV => 0x929C,

#=head2 GL_SOURCE0_ALPHA
#
#=cut

    GL_SOURCE0_ALPHA => 0x8588,

#=head2 GL_SOURCE0_ALPHA_ARB
#
#=cut

    GL_SOURCE0_ALPHA_ARB => 0x8588,

#=head2 GL_SOURCE0_ALPHA_EXT
#
#=cut

    GL_SOURCE0_ALPHA_EXT => 0x8588,

#=head2 GL_SOURCE0_RGB
#
#=cut

    GL_SOURCE0_RGB => 0x8580,

#=head2 GL_SOURCE0_RGB_ARB
#
#=cut

    GL_SOURCE0_RGB_ARB => 0x8580,

#=head2 GL_SOURCE0_RGB_EXT
#
#=cut

    GL_SOURCE0_RGB_EXT => 0x8580,

#=head2 GL_SOURCE1_ALPHA
#
#=cut

    GL_SOURCE1_ALPHA => 0x8589,

#=head2 GL_SOURCE1_ALPHA_ARB
#
#=cut

    GL_SOURCE1_ALPHA_ARB => 0x8589,

#=head2 GL_SOURCE1_ALPHA_EXT
#
#=cut

    GL_SOURCE1_ALPHA_EXT => 0x8589,

#=head2 GL_SOURCE1_RGB
#
#=cut

    GL_SOURCE1_RGB => 0x8581,

#=head2 GL_SOURCE1_RGB_ARB
#
#=cut

    GL_SOURCE1_RGB_ARB => 0x8581,

#=head2 GL_SOURCE1_RGB_EXT
#
#=cut

    GL_SOURCE1_RGB_EXT => 0x8581,

#=head2 GL_SOURCE2_ALPHA
#
#=cut

    GL_SOURCE2_ALPHA => 0x858A,

#=head2 GL_SOURCE2_ALPHA_ARB
#
#=cut

    GL_SOURCE2_ALPHA_ARB => 0x858A,

#=head2 GL_SOURCE2_ALPHA_EXT
#
#=cut

    GL_SOURCE2_ALPHA_EXT => 0x858A,

#=head2 GL_SOURCE2_RGB
#
#=cut

    GL_SOURCE2_RGB => 0x8582,

#=head2 GL_SOURCE2_RGB_ARB
#
#=cut

    GL_SOURCE2_RGB_ARB => 0x8582,

#=head2 GL_SOURCE2_RGB_EXT
#
#=cut

    GL_SOURCE2_RGB_EXT => 0x8582,

#=head2 GL_SOURCE3_ALPHA_NV
#
#=cut

    GL_SOURCE3_ALPHA_NV => 0x858B,

#=head2 GL_SOURCE3_RGB_NV
#
#=cut

    GL_SOURCE3_RGB_NV => 0x8583,

#=head2 GL_SPARE0_NV
#
#=cut

    GL_SPARE0_NV => 0x852E,

#=head2 GL_SPARE0_PLUS_SECONDARY_COLOR_NV
#
#=cut

    GL_SPARE0_PLUS_SECONDARY_COLOR_NV => 0x8532,

#=head2 GL_SPARE1_NV
#
#=cut

    GL_SPARE1_NV => 0x852F,

#=head2 GL_SPARSE_BUFFER_PAGE_SIZE_ARB
#
#=cut

    GL_SPARSE_BUFFER_PAGE_SIZE_ARB => 0x82F8,

#=head2 GL_SPARSE_STORAGE_BIT_ARB
#
#=cut

    GL_SPARSE_STORAGE_BIT_ARB => 0x0400,

#=head2 GL_SPARSE_TEXTURE_FULL_ARRAY_CUBE_MIPMAPS_ARB
#
#=cut

    GL_SPARSE_TEXTURE_FULL_ARRAY_CUBE_MIPMAPS_ARB => 0x91A9,

#=head2 GL_SPECULAR
#
#=cut

    GL_SPECULAR => 0x1202,

#=head2 GL_SPHERE_MAP
#
#=cut

    GL_SPHERE_MAP => 0x2402,

#=head2 GL_SPOT_CUTOFF
#
#=cut

    GL_SPOT_CUTOFF => 0x1206,

#=head2 GL_SPOT_DIRECTION
#
#=cut

    GL_SPOT_DIRECTION => 0x1204,

#=head2 GL_SPOT_EXPONENT
#
#=cut

    GL_SPOT_EXPONENT => 0x1205,

#=head2 GL_SPRITE_AXIAL_SGIX
#
#=cut

    GL_SPRITE_AXIAL_SGIX => 0x814C,

#=head2 GL_SPRITE_AXIS_SGIX
#
#=cut

    GL_SPRITE_AXIS_SGIX => 0x814A,

#=head2 GL_SPRITE_EYE_ALIGNED_SGIX
#
#=cut

    GL_SPRITE_EYE_ALIGNED_SGIX => 0x814E,

#=head2 GL_SPRITE_MODE_SGIX
#
#=cut

    GL_SPRITE_MODE_SGIX => 0x8149,

#=head2 GL_SPRITE_OBJECT_ALIGNED_SGIX
#
#=cut

    GL_SPRITE_OBJECT_ALIGNED_SGIX => 0x814D,

#=head2 GL_SPRITE_SGIX
#
#=cut

    GL_SPRITE_SGIX => 0x8148,

#=head2 GL_SPRITE_TRANSLATION_SGIX
#
#=cut

    GL_SPRITE_TRANSLATION_SGIX => 0x814B,

#=head2 GL_SQUARE_NV
#
#=cut

    GL_SQUARE_NV => 0x90A3,

#=head2 GL_SRC0_ALPHA
#
#=cut

    GL_SRC0_ALPHA => 0x8588,

#=head2 GL_SRC0_RGB
#
#=cut

    GL_SRC0_RGB => 0x8580,

#=head2 GL_SRC1_ALPHA
#
#=cut

    GL_SRC1_ALPHA => 0x8589,

#=head2 GL_SRC1_COLOR
#
#=cut

    GL_SRC1_COLOR => 0x88F9,

#=head2 GL_SRC1_RGB
#
#=cut

    GL_SRC1_RGB => 0x8581,

#=head2 GL_SRC2_ALPHA
#
#=cut

    GL_SRC2_ALPHA => 0x858A,

#=head2 GL_SRC2_RGB
#
#=cut

    GL_SRC2_RGB => 0x8582,

#=head2 GL_SRC_ALPHA
#
#=cut

    GL_SRC_ALPHA => 0x0302,

#=head2 GL_SRC_ALPHA_SATURATE
#
#=cut

    GL_SRC_ALPHA_SATURATE => 0x0308,

#=head2 GL_SRC_ATOP_NV
#
#=cut

    GL_SRC_ATOP_NV => 0x928E,

#=head2 GL_SRC_COLOR
#
#=cut

    GL_SRC_COLOR => 0x0300,

#=head2 GL_SRC_IN_NV
#
#=cut

    GL_SRC_IN_NV => 0x928A,

#=head2 GL_SRC_NV
#
#=cut

    GL_SRC_NV => 0x9286,

#=head2 GL_SRC_OUT_NV
#
#=cut

    GL_SRC_OUT_NV => 0x928C,

#=head2 GL_SRC_OVER_NV
#
#=cut

    GL_SRC_OVER_NV => 0x9288,

#=head2 GL_SRGB
#
#=cut

    GL_SRGB => 0x8C40,

#=head2 GL_SRGB8
#
#=cut

    GL_SRGB8 => 0x8C41,

#=head2 GL_SRGB8_ALPHA8
#
#=cut

    GL_SRGB8_ALPHA8 => 0x8C43,

#=head2 GL_SRGB8_ALPHA8_EXT
#
#=cut

    GL_SRGB8_ALPHA8_EXT => 0x8C43,

#=head2 GL_SRGB8_EXT
#
#=cut

    GL_SRGB8_EXT => 0x8C41,

#=head2 GL_SRGB_ALPHA
#
#=cut

    GL_SRGB_ALPHA => 0x8C42,

#=head2 GL_SRGB_ALPHA_EXT
#
#=cut

    GL_SRGB_ALPHA_EXT => 0x8C42,

#=head2 GL_SRGB_DECODE_ARB
#
#=cut

    GL_SRGB_DECODE_ARB => 0x8299,

#=head2 GL_SRGB_EXT
#
#=cut

    GL_SRGB_EXT => 0x8C40,

#=head2 GL_SRGB_READ
#
#=cut

    GL_SRGB_READ => 0x8297,

#=head2 GL_SRGB_WRITE
#
#=cut

    GL_SRGB_WRITE => 0x8298,

#=head2 GL_STACK_OVERFLOW
#
#=cut

    GL_STACK_OVERFLOW => 0x0503,

#=head2 GL_STACK_UNDERFLOW
#
#=cut

    GL_STACK_UNDERFLOW => 0x0504,

#=head2 GL_STANDARD_FONT_FORMAT_NV
#
#=cut

    GL_STANDARD_FONT_FORMAT_NV => 0x936C,

#=head2 GL_STANDARD_FONT_NAME_NV
#
#=cut

    GL_STANDARD_FONT_NAME_NV => 0x9072,

#=head2 GL_STATIC_ATI
#
#=cut

    GL_STATIC_ATI => 0x8760,

#=head2 GL_STATIC_COPY
#
#=cut

    GL_STATIC_COPY => 0x88E6,

#=head2 GL_STATIC_COPY_ARB
#
#=cut

    GL_STATIC_COPY_ARB => 0x88E6,

#=head2 GL_STATIC_DRAW
#
#=cut

    GL_STATIC_DRAW => 0x88E4,

#=head2 GL_STATIC_DRAW_ARB
#
#=cut

    GL_STATIC_DRAW_ARB => 0x88E4,

#=head2 GL_STATIC_READ
#
#=cut

    GL_STATIC_READ => 0x88E5,

#=head2 GL_STATIC_READ_ARB
#
#=cut

    GL_STATIC_READ_ARB => 0x88E5,

#=head2 GL_STATIC_VERTEX_ARRAY_IBM
#
#=cut

    GL_STATIC_VERTEX_ARRAY_IBM => 103061,

#=head2 GL_STENCIL
#
#=cut

    GL_STENCIL => 0x1802,

#=head2 GL_STENCIL_ATTACHMENT
#
#=cut

    GL_STENCIL_ATTACHMENT => 0x8D20,

#=head2 GL_STENCIL_ATTACHMENT_EXT
#
#=cut

    GL_STENCIL_ATTACHMENT_EXT => 0x8D20,

#=head2 GL_STENCIL_BACK_FAIL
#
#=cut

    GL_STENCIL_BACK_FAIL => 0x8801,

#=head2 GL_STENCIL_BACK_FAIL_ATI
#
#=cut

    GL_STENCIL_BACK_FAIL_ATI => 0x8801,

#=head2 GL_STENCIL_BACK_FUNC
#
#=cut

    GL_STENCIL_BACK_FUNC => 0x8800,

#=head2 GL_STENCIL_BACK_FUNC_ATI
#
#=cut

    GL_STENCIL_BACK_FUNC_ATI => 0x8800,

#=head2 GL_STENCIL_BACK_OP_VALUE_AMD
#
#=cut

    GL_STENCIL_BACK_OP_VALUE_AMD => 0x874D,

#=head2 GL_STENCIL_BACK_PASS_DEPTH_FAIL
#
#=cut

    GL_STENCIL_BACK_PASS_DEPTH_FAIL => 0x8802,

#=head2 GL_STENCIL_BACK_PASS_DEPTH_FAIL_ATI
#
#=cut

    GL_STENCIL_BACK_PASS_DEPTH_FAIL_ATI => 0x8802,

#=head2 GL_STENCIL_BACK_PASS_DEPTH_PASS
#
#=cut

    GL_STENCIL_BACK_PASS_DEPTH_PASS => 0x8803,

#=head2 GL_STENCIL_BACK_PASS_DEPTH_PASS_ATI
#
#=cut

    GL_STENCIL_BACK_PASS_DEPTH_PASS_ATI => 0x8803,

#=head2 GL_STENCIL_BACK_REF
#
#=cut

    GL_STENCIL_BACK_REF => 0x8CA3,

#=head2 GL_STENCIL_BACK_VALUE_MASK
#
#=cut

    GL_STENCIL_BACK_VALUE_MASK => 0x8CA4,

#=head2 GL_STENCIL_BACK_WRITEMASK
#
#=cut

    GL_STENCIL_BACK_WRITEMASK => 0x8CA5,

#=head2 GL_STENCIL_BITS
#
#=cut

    GL_STENCIL_BITS => 0x0D57,

#=head2 GL_STENCIL_BUFFER_BIT
#
#=cut

    GL_STENCIL_BUFFER_BIT => 0x00000400,

#=head2 GL_STENCIL_CLEAR_TAG_VALUE_EXT
#
#=cut

    GL_STENCIL_CLEAR_TAG_VALUE_EXT => 0x88F3,

#=head2 GL_STENCIL_CLEAR_VALUE
#
#=cut

    GL_STENCIL_CLEAR_VALUE => 0x0B91,

#=head2 GL_STENCIL_COMPONENTS
#
#=cut

    GL_STENCIL_COMPONENTS => 0x8285,

#=head2 GL_STENCIL_FAIL
#
#=cut

    GL_STENCIL_FAIL => 0x0B94,

#=head2 GL_STENCIL_FUNC
#
#=cut

    GL_STENCIL_FUNC => 0x0B92,

#=head2 GL_STENCIL_INDEX
#
#=cut

    GL_STENCIL_INDEX => 0x1901,

#=head2 GL_STENCIL_INDEX1
#
#=cut

    GL_STENCIL_INDEX1 => 0x8D46,

#=head2 GL_STENCIL_INDEX16
#
#=cut

    GL_STENCIL_INDEX16 => 0x8D49,

#=head2 GL_STENCIL_INDEX16_EXT
#
#=cut

    GL_STENCIL_INDEX16_EXT => 0x8D49,

#=head2 GL_STENCIL_INDEX1_EXT
#
#=cut

    GL_STENCIL_INDEX1_EXT => 0x8D46,

#=head2 GL_STENCIL_INDEX4
#
#=cut

    GL_STENCIL_INDEX4 => 0x8D47,

#=head2 GL_STENCIL_INDEX4_EXT
#
#=cut

    GL_STENCIL_INDEX4_EXT => 0x8D47,

#=head2 GL_STENCIL_INDEX8
#
#=cut

    GL_STENCIL_INDEX8 => 0x8D48,

#=head2 GL_STENCIL_INDEX8_EXT
#
#=cut

    GL_STENCIL_INDEX8_EXT => 0x8D48,

#=head2 GL_STENCIL_OP_VALUE_AMD
#
#=cut

    GL_STENCIL_OP_VALUE_AMD => 0x874C,

#=head2 GL_STENCIL_PASS_DEPTH_FAIL
#
#=cut

    GL_STENCIL_PASS_DEPTH_FAIL => 0x0B95,

#=head2 GL_STENCIL_PASS_DEPTH_PASS
#
#=cut

    GL_STENCIL_PASS_DEPTH_PASS => 0x0B96,

#=head2 GL_STENCIL_REF
#
#=cut

    GL_STENCIL_REF => 0x0B97,

#=head2 GL_STENCIL_RENDERABLE
#
#=cut

    GL_STENCIL_RENDERABLE => 0x8288,

#=head2 GL_STENCIL_TAG_BITS_EXT
#
#=cut

    GL_STENCIL_TAG_BITS_EXT => 0x88F2,

#=head2 GL_STENCIL_TEST
#
#=cut

    GL_STENCIL_TEST => 0x0B90,

#=head2 GL_STENCIL_TEST_TWO_SIDE_EXT
#
#=cut

    GL_STENCIL_TEST_TWO_SIDE_EXT => 0x8910,

#=head2 GL_STENCIL_VALUE_MASK
#
#=cut

    GL_STENCIL_VALUE_MASK => 0x0B93,

#=head2 GL_STENCIL_WRITEMASK
#
#=cut

    GL_STENCIL_WRITEMASK => 0x0B98,

#=head2 GL_STEREO
#
#=cut

    GL_STEREO => 0x0C33,

#=head2 GL_STORAGE_CACHED_APPLE
#
#=cut

    GL_STORAGE_CACHED_APPLE => 0x85BE,

#=head2 GL_STORAGE_CLIENT_APPLE
#
#=cut

    GL_STORAGE_CLIENT_APPLE => 0x85B4,

#=head2 GL_STORAGE_PRIVATE_APPLE
#
#=cut

    GL_STORAGE_PRIVATE_APPLE => 0x85BD,

#=head2 GL_STORAGE_SHARED_APPLE
#
#=cut

    GL_STORAGE_SHARED_APPLE => 0x85BF,

#=head2 GL_STREAM_COPY
#
#=cut

    GL_STREAM_COPY => 0x88E2,

#=head2 GL_STREAM_COPY_ARB
#
#=cut

    GL_STREAM_COPY_ARB => 0x88E2,

#=head2 GL_STREAM_DRAW
#
#=cut

    GL_STREAM_DRAW => 0x88E0,

#=head2 GL_STREAM_DRAW_ARB
#
#=cut

    GL_STREAM_DRAW_ARB => 0x88E0,

#=head2 GL_STREAM_RASTERIZATION_AMD
#
#=cut

    GL_STREAM_RASTERIZATION_AMD => 0x91A0,

#=head2 GL_STREAM_READ
#
#=cut

    GL_STREAM_READ => 0x88E1,

#=head2 GL_STREAM_READ_ARB
#
#=cut

    GL_STREAM_READ_ARB => 0x88E1,

#=head2 GL_STRICT_DEPTHFUNC_HINT_PGI
#
#=cut

    GL_STRICT_DEPTHFUNC_HINT_PGI => 0x1A216,

#=head2 GL_STRICT_LIGHTING_HINT_PGI
#
#=cut

    GL_STRICT_LIGHTING_HINT_PGI => 0x1A217,

#=head2 GL_STRICT_SCISSOR_HINT_PGI
#
#=cut

    GL_STRICT_SCISSOR_HINT_PGI => 0x1A218,

#=head2 GL_SUBPIXEL_BITS
#
#=cut

    GL_SUBPIXEL_BITS => 0x0D50,

#=head2 GL_SUBSAMPLE_DISTANCE_AMD
#
#=cut

    GL_SUBSAMPLE_DISTANCE_AMD => 0x883F,

#=head2 GL_SUBTRACT
#
#=cut

    GL_SUBTRACT => 0x84E7,

#=head2 GL_SUBTRACT_ARB
#
#=cut

    GL_SUBTRACT_ARB => 0x84E7,

#=head2 GL_SUB_ATI
#
#=cut

    GL_SUB_ATI => 0x8965,

#=head2 GL_SUCCESS_NV
#
#=cut

    GL_SUCCESS_NV => 0x902F,

#=head2 GL_SUNX_constant_data
#
#=cut

    GL_SUNX_constant_data => 1,

#=head2 GL_SUN_convolution_border_modes
#
#=cut

    GL_SUN_convolution_border_modes => 1,

#=head2 GL_SUN_global_alpha
#
#=cut

    GL_SUN_global_alpha => 1,

#=head2 GL_SUN_mesh_array
#
#=cut

    GL_SUN_mesh_array => 1,

#=head2 GL_SUN_slice_accum
#
#=cut

    GL_SUN_slice_accum => 1,

#=head2 GL_SUN_triangle_list
#
#=cut

    GL_SUN_triangle_list => 1,

#=head2 GL_SUN_vertex
#
#=cut

    GL_SUN_vertex => 1,

#=head2 GL_SURFACE_MAPPED_NV
#
#=cut

    GL_SURFACE_MAPPED_NV => 0x8700,

#=head2 GL_SURFACE_REGISTERED_NV
#
#=cut

    GL_SURFACE_REGISTERED_NV => 0x86FD,

#=head2 GL_SURFACE_STATE_NV
#
#=cut

    GL_SURFACE_STATE_NV => 0x86EB,

#=head2 GL_SWIZZLE_STQ_ATI
#
#=cut

    GL_SWIZZLE_STQ_ATI => 0x8977,

#=head2 GL_SWIZZLE_STQ_DQ_ATI
#
#=cut

    GL_SWIZZLE_STQ_DQ_ATI => 0x8979,

#=head2 GL_SWIZZLE_STRQ_ATI
#
#=cut

    GL_SWIZZLE_STRQ_ATI => 0x897A,

#=head2 GL_SWIZZLE_STRQ_DQ_ATI
#
#=cut

    GL_SWIZZLE_STRQ_DQ_ATI => 0x897B,

#=head2 GL_SWIZZLE_STR_ATI
#
#=cut

    GL_SWIZZLE_STR_ATI => 0x8976,

#=head2 GL_SWIZZLE_STR_DR_ATI
#
#=cut

    GL_SWIZZLE_STR_DR_ATI => 0x8978,

#=head2 GL_SYNC_CL_EVENT_ARB
#
#=cut

    GL_SYNC_CL_EVENT_ARB => 0x8240,

#=head2 GL_SYNC_CL_EVENT_COMPLETE_ARB
#
#=cut

    GL_SYNC_CL_EVENT_COMPLETE_ARB => 0x8241,

#=head2 GL_SYNC_CONDITION
#
#=cut

    GL_SYNC_CONDITION => 0x9113,

#=head2 GL_SYNC_FENCE
#
#=cut

    GL_SYNC_FENCE => 0x9116,

#=head2 GL_SYNC_FLAGS
#
#=cut

    GL_SYNC_FLAGS => 0x9115,

#=head2 GL_SYNC_FLUSH_COMMANDS_BIT
#
#=cut

    GL_SYNC_FLUSH_COMMANDS_BIT => 0x00000001,

#=head2 GL_SYNC_GPU_COMMANDS_COMPLETE
#
#=cut

    GL_SYNC_GPU_COMMANDS_COMPLETE => 0x9117,

#=head2 GL_SYNC_STATUS
#
#=cut

    GL_SYNC_STATUS => 0x9114,

#=head2 GL_SYNC_X11_FENCE_EXT
#
#=cut

    GL_SYNC_X11_FENCE_EXT => 0x90E1,

#=head2 GL_SYSTEM_FONT_NAME_NV
#
#=cut

    GL_SYSTEM_FONT_NAME_NV => 0x9073,

#=head2 GL_T
#
#=cut

    GL_T => 0x2001,

#=head2 GL_T2F_C3F_V3F
#
#=cut

    GL_T2F_C3F_V3F => 0x2A2A,

#=head2 GL_T2F_C4F_N3F_V3F
#
#=cut

    GL_T2F_C4F_N3F_V3F => 0x2A2C,

#=head2 GL_T2F_C4UB_V3F
#
#=cut

    GL_T2F_C4UB_V3F => 0x2A29,

#=head2 GL_T2F_IUI_N3F_V2F_EXT
#
#=cut

    GL_T2F_IUI_N3F_V2F_EXT => 0x81B3,

#=head2 GL_T2F_IUI_N3F_V3F_EXT
#
#=cut

    GL_T2F_IUI_N3F_V3F_EXT => 0x81B4,

#=head2 GL_T2F_IUI_V2F_EXT
#
#=cut

    GL_T2F_IUI_V2F_EXT => 0x81B1,

#=head2 GL_T2F_IUI_V3F_EXT
#
#=cut

    GL_T2F_IUI_V3F_EXT => 0x81B2,

#=head2 GL_T2F_N3F_V3F
#
#=cut

    GL_T2F_N3F_V3F => 0x2A2B,

#=head2 GL_T2F_V3F
#
#=cut

    GL_T2F_V3F => 0x2A27,

#=head2 GL_T4F_C4F_N3F_V4F
#
#=cut

    GL_T4F_C4F_N3F_V4F => 0x2A2D,

#=head2 GL_T4F_V4F
#
#=cut

    GL_T4F_V4F => 0x2A28,

#=head2 GL_TABLE_TOO_LARGE
#
#=cut

    GL_TABLE_TOO_LARGE => 0x8031,

#=head2 GL_TABLE_TOO_LARGE_EXT
#
#=cut

    GL_TABLE_TOO_LARGE_EXT => 0x8031,

#=head2 GL_TANGENT_ARRAY_EXT
#
#=cut

    GL_TANGENT_ARRAY_EXT => 0x8439,

#=head2 GL_TANGENT_ARRAY_POINTER_EXT
#
#=cut

    GL_TANGENT_ARRAY_POINTER_EXT => 0x8442,

#=head2 GL_TANGENT_ARRAY_STRIDE_EXT
#
#=cut

    GL_TANGENT_ARRAY_STRIDE_EXT => 0x843F,

#=head2 GL_TANGENT_ARRAY_TYPE_EXT
#
#=cut

    GL_TANGENT_ARRAY_TYPE_EXT => 0x843E,

#=head2 GL_TESSELLATION_FACTOR_AMD
#
#=cut

    GL_TESSELLATION_FACTOR_AMD => 0x9005,

#=head2 GL_TESSELLATION_MODE_AMD
#
#=cut

    GL_TESSELLATION_MODE_AMD => 0x9004,

#=head2 GL_TESS_CONTROL_OUTPUT_VERTICES
#
#=cut

    GL_TESS_CONTROL_OUTPUT_VERTICES => 0x8E75,

#=head2 GL_TESS_CONTROL_PROGRAM_NV
#
#=cut

    GL_TESS_CONTROL_PROGRAM_NV => 0x891E,

#=head2 GL_TESS_CONTROL_PROGRAM_PARAMETER_BUFFER_NV
#
#=cut

    GL_TESS_CONTROL_PROGRAM_PARAMETER_BUFFER_NV => 0x8C74,

#=head2 GL_TESS_CONTROL_SHADER
#
#=cut

    GL_TESS_CONTROL_SHADER => 0x8E88,

#=head2 GL_TESS_CONTROL_SHADER_BIT
#
#=cut

    GL_TESS_CONTROL_SHADER_BIT => 0x00000008,

#=head2 GL_TESS_CONTROL_SHADER_PATCHES_ARB
#
#=cut

    GL_TESS_CONTROL_SHADER_PATCHES_ARB => 0x82F1,

#=head2 GL_TESS_CONTROL_SUBROUTINE
#
#=cut

    GL_TESS_CONTROL_SUBROUTINE => 0x92E9,

#=head2 GL_TESS_CONTROL_SUBROUTINE_UNIFORM
#
#=cut

    GL_TESS_CONTROL_SUBROUTINE_UNIFORM => 0x92EF,

#=head2 GL_TESS_CONTROL_TEXTURE
#
#=cut

    GL_TESS_CONTROL_TEXTURE => 0x829C,

#=head2 GL_TESS_EVALUATION_PROGRAM_NV
#
#=cut

    GL_TESS_EVALUATION_PROGRAM_NV => 0x891F,

#=head2 GL_TESS_EVALUATION_PROGRAM_PARAMETER_BUFFER_NV
#
#=cut

    GL_TESS_EVALUATION_PROGRAM_PARAMETER_BUFFER_NV => 0x8C75,

#=head2 GL_TESS_EVALUATION_SHADER
#
#=cut

    GL_TESS_EVALUATION_SHADER => 0x8E87,

#=head2 GL_TESS_EVALUATION_SHADER_BIT
#
#=cut

    GL_TESS_EVALUATION_SHADER_BIT => 0x00000010,

#=head2 GL_TESS_EVALUATION_SHADER_INVOCATIONS_ARB
#
#=cut

    GL_TESS_EVALUATION_SHADER_INVOCATIONS_ARB => 0x82F2,

#=head2 GL_TESS_EVALUATION_SUBROUTINE
#
#=cut

    GL_TESS_EVALUATION_SUBROUTINE => 0x92EA,

#=head2 GL_TESS_EVALUATION_SUBROUTINE_UNIFORM
#
#=cut

    GL_TESS_EVALUATION_SUBROUTINE_UNIFORM => 0x92F0,

#=head2 GL_TESS_EVALUATION_TEXTURE
#
#=cut

    GL_TESS_EVALUATION_TEXTURE => 0x829D,

#=head2 GL_TESS_GEN_MODE
#
#=cut

    GL_TESS_GEN_MODE => 0x8E76,

#=head2 GL_TESS_GEN_POINT_MODE
#
#=cut

    GL_TESS_GEN_POINT_MODE => 0x8E79,

#=head2 GL_TESS_GEN_SPACING
#
#=cut

    GL_TESS_GEN_SPACING => 0x8E77,

#=head2 GL_TESS_GEN_VERTEX_ORDER
#
#=cut

    GL_TESS_GEN_VERTEX_ORDER => 0x8E78,

#=head2 GL_TEXCOORD1_BIT_PGI
#
#=cut

    GL_TEXCOORD1_BIT_PGI => 0x10000000,

#=head2 GL_TEXCOORD2_BIT_PGI
#
#=cut

    GL_TEXCOORD2_BIT_PGI => 0x20000000,

#=head2 GL_TEXCOORD3_BIT_PGI
#
#=cut

    GL_TEXCOORD3_BIT_PGI => 0x40000000,

#=head2 GL_TEXCOORD4_BIT_PGI
#
#=cut

    GL_TEXCOORD4_BIT_PGI => 0x80000000,

#=head2 GL_TEXTURE
#
#=cut

    GL_TEXTURE => 0x1702,

#=head2 GL_TEXTURE0
#
#=cut

    GL_TEXTURE0 => 0x84C0,

#=head2 GL_TEXTURE0_ARB
#
#=cut

    GL_TEXTURE0_ARB => 0x84C0,

#=head2 GL_TEXTURE1
#
#=cut

    GL_TEXTURE1 => 0x84C1,

#=head2 GL_TEXTURE10
#
#=cut

    GL_TEXTURE10 => 0x84CA,

#=head2 GL_TEXTURE10_ARB
#
#=cut

    GL_TEXTURE10_ARB => 0x84CA,

#=head2 GL_TEXTURE11
#
#=cut

    GL_TEXTURE11 => 0x84CB,

#=head2 GL_TEXTURE11_ARB
#
#=cut

    GL_TEXTURE11_ARB => 0x84CB,

#=head2 GL_TEXTURE12
#
#=cut

    GL_TEXTURE12 => 0x84CC,

#=head2 GL_TEXTURE12_ARB
#
#=cut

    GL_TEXTURE12_ARB => 0x84CC,

#=head2 GL_TEXTURE13
#
#=cut

    GL_TEXTURE13 => 0x84CD,

#=head2 GL_TEXTURE13_ARB
#
#=cut

    GL_TEXTURE13_ARB => 0x84CD,

#=head2 GL_TEXTURE14
#
#=cut

    GL_TEXTURE14 => 0x84CE,

#=head2 GL_TEXTURE14_ARB
#
#=cut

    GL_TEXTURE14_ARB => 0x84CE,

#=head2 GL_TEXTURE15
#
#=cut

    GL_TEXTURE15 => 0x84CF,

#=head2 GL_TEXTURE15_ARB
#
#=cut

    GL_TEXTURE15_ARB => 0x84CF,

#=head2 GL_TEXTURE16
#
#=cut

    GL_TEXTURE16 => 0x84D0,

#=head2 GL_TEXTURE16_ARB
#
#=cut

    GL_TEXTURE16_ARB => 0x84D0,

#=head2 GL_TEXTURE17
#
#=cut

    GL_TEXTURE17 => 0x84D1,

#=head2 GL_TEXTURE17_ARB
#
#=cut

    GL_TEXTURE17_ARB => 0x84D1,

#=head2 GL_TEXTURE18
#
#=cut

    GL_TEXTURE18 => 0x84D2,

#=head2 GL_TEXTURE18_ARB
#
#=cut

    GL_TEXTURE18_ARB => 0x84D2,

#=head2 GL_TEXTURE19
#
#=cut

    GL_TEXTURE19 => 0x84D3,

#=head2 GL_TEXTURE19_ARB
#
#=cut

    GL_TEXTURE19_ARB => 0x84D3,

#=head2 GL_TEXTURE1_ARB
#
#=cut

    GL_TEXTURE1_ARB => 0x84C1,

#=head2 GL_TEXTURE2
#
#=cut

    GL_TEXTURE2 => 0x84C2,

#=head2 GL_TEXTURE20
#
#=cut

    GL_TEXTURE20 => 0x84D4,

#=head2 GL_TEXTURE20_ARB
#
#=cut

    GL_TEXTURE20_ARB => 0x84D4,

#=head2 GL_TEXTURE21
#
#=cut

    GL_TEXTURE21 => 0x84D5,

#=head2 GL_TEXTURE21_ARB
#
#=cut

    GL_TEXTURE21_ARB => 0x84D5,

#=head2 GL_TEXTURE22
#
#=cut

    GL_TEXTURE22 => 0x84D6,

#=head2 GL_TEXTURE22_ARB
#
#=cut

    GL_TEXTURE22_ARB => 0x84D6,

#=head2 GL_TEXTURE23
#
#=cut

    GL_TEXTURE23 => 0x84D7,

#=head2 GL_TEXTURE23_ARB
#
#=cut

    GL_TEXTURE23_ARB => 0x84D7,

#=head2 GL_TEXTURE24
#
#=cut

    GL_TEXTURE24 => 0x84D8,

#=head2 GL_TEXTURE24_ARB
#
#=cut

    GL_TEXTURE24_ARB => 0x84D8,

#=head2 GL_TEXTURE25
#
#=cut

    GL_TEXTURE25 => 0x84D9,

#=head2 GL_TEXTURE25_ARB
#
#=cut

    GL_TEXTURE25_ARB => 0x84D9,

#=head2 GL_TEXTURE26
#
#=cut

    GL_TEXTURE26 => 0x84DA,

#=head2 GL_TEXTURE26_ARB
#
#=cut

    GL_TEXTURE26_ARB => 0x84DA,

#=head2 GL_TEXTURE27
#
#=cut

    GL_TEXTURE27 => 0x84DB,

#=head2 GL_TEXTURE27_ARB
#
#=cut

    GL_TEXTURE27_ARB => 0x84DB,

#=head2 GL_TEXTURE28
#
#=cut

    GL_TEXTURE28 => 0x84DC,

#=head2 GL_TEXTURE28_ARB
#
#=cut

    GL_TEXTURE28_ARB => 0x84DC,

#=head2 GL_TEXTURE29
#
#=cut

    GL_TEXTURE29 => 0x84DD,

#=head2 GL_TEXTURE29_ARB
#
#=cut

    GL_TEXTURE29_ARB => 0x84DD,

#=head2 GL_TEXTURE2_ARB
#
#=cut

    GL_TEXTURE2_ARB => 0x84C2,

#=head2 GL_TEXTURE3
#
#=cut

    GL_TEXTURE3 => 0x84C3,

#=head2 GL_TEXTURE30
#
#=cut

    GL_TEXTURE30 => 0x84DE,

#=head2 GL_TEXTURE30_ARB
#
#=cut

    GL_TEXTURE30_ARB => 0x84DE,

#=head2 GL_TEXTURE31
#
#=cut

    GL_TEXTURE31 => 0x84DF,

#=head2 GL_TEXTURE31_ARB
#
#=cut

    GL_TEXTURE31_ARB => 0x84DF,

#=head2 GL_TEXTURE3_ARB
#
#=cut

    GL_TEXTURE3_ARB => 0x84C3,

#=head2 GL_TEXTURE4
#
#=cut

    GL_TEXTURE4 => 0x84C4,

#=head2 GL_TEXTURE4_ARB
#
#=cut

    GL_TEXTURE4_ARB => 0x84C4,

#=head2 GL_TEXTURE5
#
#=cut

    GL_TEXTURE5 => 0x84C5,

#=head2 GL_TEXTURE5_ARB
#
#=cut

    GL_TEXTURE5_ARB => 0x84C5,

#=head2 GL_TEXTURE6
#
#=cut

    GL_TEXTURE6 => 0x84C6,

#=head2 GL_TEXTURE6_ARB
#
#=cut

    GL_TEXTURE6_ARB => 0x84C6,

#=head2 GL_TEXTURE7
#
#=cut

    GL_TEXTURE7 => 0x84C7,

#=head2 GL_TEXTURE7_ARB
#
#=cut

    GL_TEXTURE7_ARB => 0x84C7,

#=head2 GL_TEXTURE8
#
#=cut

    GL_TEXTURE8 => 0x84C8,

#=head2 GL_TEXTURE8_ARB
#
#=cut

    GL_TEXTURE8_ARB => 0x84C8,

#=head2 GL_TEXTURE9
#
#=cut

    GL_TEXTURE9 => 0x84C9,

#=head2 GL_TEXTURE9_ARB
#
#=cut

    GL_TEXTURE9_ARB => 0x84C9,

#=head2 GL_TEXTURE_1D
#
#=cut

    GL_TEXTURE_1D => 0x0DE0,

#=head2 GL_TEXTURE_1D_ARRAY
#
#=cut

    GL_TEXTURE_1D_ARRAY => 0x8C18,

#=head2 GL_TEXTURE_1D_ARRAY_EXT
#
#=cut

    GL_TEXTURE_1D_ARRAY_EXT => 0x8C18,

#=head2 GL_TEXTURE_1D_BINDING_EXT
#
#=cut

    GL_TEXTURE_1D_BINDING_EXT => 0x8068,

#=head2 GL_TEXTURE_1D_STACK_BINDING_MESAX
#
#=cut

    GL_TEXTURE_1D_STACK_BINDING_MESAX => 0x875D,

#=head2 GL_TEXTURE_1D_STACK_MESAX
#
#=cut

    GL_TEXTURE_1D_STACK_MESAX => 0x8759,

#=head2 GL_TEXTURE_2D
#
#=cut

    GL_TEXTURE_2D => 0x0DE1,

#=head2 GL_TEXTURE_2D_ARRAY
#
#=cut

    GL_TEXTURE_2D_ARRAY => 0x8C1A,

#=head2 GL_TEXTURE_2D_ARRAY_EXT
#
#=cut

    GL_TEXTURE_2D_ARRAY_EXT => 0x8C1A,

#=head2 GL_TEXTURE_2D_BINDING_EXT
#
#=cut

    GL_TEXTURE_2D_BINDING_EXT => 0x8069,

#=head2 GL_TEXTURE_2D_MULTISAMPLE
#
#=cut

    GL_TEXTURE_2D_MULTISAMPLE => 0x9100,

#=head2 GL_TEXTURE_2D_MULTISAMPLE_ARRAY
#
#=cut

    GL_TEXTURE_2D_MULTISAMPLE_ARRAY => 0x9102,

#=head2 GL_TEXTURE_2D_STACK_BINDING_MESAX
#
#=cut

    GL_TEXTURE_2D_STACK_BINDING_MESAX => 0x875E,

#=head2 GL_TEXTURE_2D_STACK_MESAX
#
#=cut

    GL_TEXTURE_2D_STACK_MESAX => 0x875A,

#=head2 GL_TEXTURE_3D
#
#=cut

    GL_TEXTURE_3D => 0x806F,

#=head2 GL_TEXTURE_3D_BINDING_EXT
#
#=cut

    GL_TEXTURE_3D_BINDING_EXT => 0x806A,

#=head2 GL_TEXTURE_3D_EXT
#
#=cut

    GL_TEXTURE_3D_EXT => 0x806F,

#=head2 GL_TEXTURE_4DSIZE_SGIS
#
#=cut

    GL_TEXTURE_4DSIZE_SGIS => 0x8136,

#=head2 GL_TEXTURE_4D_BINDING_SGIS
#
#=cut

    GL_TEXTURE_4D_BINDING_SGIS => 0x814F,

#=head2 GL_TEXTURE_4D_SGIS
#
#=cut

    GL_TEXTURE_4D_SGIS => 0x8134,

#=head2 GL_TEXTURE_ALPHA_SIZE
#
#=cut

    GL_TEXTURE_ALPHA_SIZE => 0x805F,

#=head2 GL_TEXTURE_ALPHA_SIZE_EXT
#
#=cut

    GL_TEXTURE_ALPHA_SIZE_EXT => 0x805F,

#=head2 GL_TEXTURE_ALPHA_TYPE
#
#=cut

    GL_TEXTURE_ALPHA_TYPE => 0x8C13,

#=head2 GL_TEXTURE_ALPHA_TYPE_ARB
#
#=cut

    GL_TEXTURE_ALPHA_TYPE_ARB => 0x8C13,

#=head2 GL_TEXTURE_APPLICATION_MODE_EXT
#
#=cut

    GL_TEXTURE_APPLICATION_MODE_EXT => 0x834F,

#=head2 GL_TEXTURE_BASE_LEVEL
#
#=cut

    GL_TEXTURE_BASE_LEVEL => 0x813C,

#=head2 GL_TEXTURE_BASE_LEVEL_SGIS
#
#=cut

    GL_TEXTURE_BASE_LEVEL_SGIS => 0x813C,

#=head2 GL_TEXTURE_BINDING
#
#=cut

    GL_TEXTURE_BINDING => 0x82EB,

#=head2 GL_TEXTURE_BINDING_1D
#
#=cut

    GL_TEXTURE_BINDING_1D => 0x8068,

#=head2 GL_TEXTURE_BINDING_1D_ARRAY
#
#=cut

    GL_TEXTURE_BINDING_1D_ARRAY => 0x8C1C,

#=head2 GL_TEXTURE_BINDING_1D_ARRAY_EXT
#
#=cut

    GL_TEXTURE_BINDING_1D_ARRAY_EXT => 0x8C1C,

#=head2 GL_TEXTURE_BINDING_2D
#
#=cut

    GL_TEXTURE_BINDING_2D => 0x8069,

#=head2 GL_TEXTURE_BINDING_2D_ARRAY
#
#=cut

    GL_TEXTURE_BINDING_2D_ARRAY => 0x8C1D,

#=head2 GL_TEXTURE_BINDING_2D_ARRAY_EXT
#
#=cut

    GL_TEXTURE_BINDING_2D_ARRAY_EXT => 0x8C1D,

#=head2 GL_TEXTURE_BINDING_2D_MULTISAMPLE
#
#=cut

    GL_TEXTURE_BINDING_2D_MULTISAMPLE => 0x9104,

#=head2 GL_TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY
#
#=cut

    GL_TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY => 0x9105,

#=head2 GL_TEXTURE_BINDING_3D
#
#=cut

    GL_TEXTURE_BINDING_3D => 0x806A,

#=head2 GL_TEXTURE_BINDING_BUFFER
#
#=cut

    GL_TEXTURE_BINDING_BUFFER => 0x8C2C,

#=head2 GL_TEXTURE_BINDING_BUFFER_ARB
#
#=cut

    GL_TEXTURE_BINDING_BUFFER_ARB => 0x8C2C,

#=head2 GL_TEXTURE_BINDING_BUFFER_EXT
#
#=cut

    GL_TEXTURE_BINDING_BUFFER_EXT => 0x8C2C,

#=head2 GL_TEXTURE_BINDING_CUBE_MAP
#
#=cut

    GL_TEXTURE_BINDING_CUBE_MAP => 0x8514,

#=head2 GL_TEXTURE_BINDING_CUBE_MAP_ARB
#
#=cut

    GL_TEXTURE_BINDING_CUBE_MAP_ARB => 0x8514,

#=head2 GL_TEXTURE_BINDING_CUBE_MAP_ARRAY
#
#=cut

    GL_TEXTURE_BINDING_CUBE_MAP_ARRAY => 0x900A,

#=head2 GL_TEXTURE_BINDING_CUBE_MAP_ARRAY_ARB
#
#=cut

    GL_TEXTURE_BINDING_CUBE_MAP_ARRAY_ARB => 0x900A,

#=head2 GL_TEXTURE_BINDING_CUBE_MAP_EXT
#
#=cut

    GL_TEXTURE_BINDING_CUBE_MAP_EXT => 0x8514,

#=head2 GL_TEXTURE_BINDING_RECTANGLE
#
#=cut

    GL_TEXTURE_BINDING_RECTANGLE => 0x84F6,

#=head2 GL_TEXTURE_BINDING_RECTANGLE_ARB
#
#=cut

    GL_TEXTURE_BINDING_RECTANGLE_ARB => 0x84F6,

#=head2 GL_TEXTURE_BINDING_RECTANGLE_NV
#
#=cut

    GL_TEXTURE_BINDING_RECTANGLE_NV => 0x84F6,

#=head2 GL_TEXTURE_BINDING_RENDERBUFFER_NV
#
#=cut

    GL_TEXTURE_BINDING_RENDERBUFFER_NV => 0x8E53,

#=head2 GL_TEXTURE_BIT
#
#=cut

    GL_TEXTURE_BIT => 0x00040000,

#=head2 GL_TEXTURE_BLUE_SIZE
#
#=cut

    GL_TEXTURE_BLUE_SIZE => 0x805E,

#=head2 GL_TEXTURE_BLUE_SIZE_EXT
#
#=cut

    GL_TEXTURE_BLUE_SIZE_EXT => 0x805E,

#=head2 GL_TEXTURE_BLUE_TYPE
#
#=cut

    GL_TEXTURE_BLUE_TYPE => 0x8C12,

#=head2 GL_TEXTURE_BLUE_TYPE_ARB
#
#=cut

    GL_TEXTURE_BLUE_TYPE_ARB => 0x8C12,

#=head2 GL_TEXTURE_BORDER
#
#=cut

    GL_TEXTURE_BORDER => 0x1005,

#=head2 GL_TEXTURE_BORDER_COLOR
#
#=cut

    GL_TEXTURE_BORDER_COLOR => 0x1004,

#=head2 GL_TEXTURE_BORDER_VALUES_NV
#
#=cut

    GL_TEXTURE_BORDER_VALUES_NV => 0x871A,

#=head2 GL_TEXTURE_BUFFER
#
#=cut

    GL_TEXTURE_BUFFER => 0x8C2A,

#=head2 GL_TEXTURE_BUFFER_ARB
#
#=cut

    GL_TEXTURE_BUFFER_ARB => 0x8C2A,

#=head2 GL_TEXTURE_BUFFER_BINDING
#
#=cut

    GL_TEXTURE_BUFFER_BINDING => 0x8C2A,

#=head2 GL_TEXTURE_BUFFER_DATA_STORE_BINDING
#
#=cut

    GL_TEXTURE_BUFFER_DATA_STORE_BINDING => 0x8C2D,

#=head2 GL_TEXTURE_BUFFER_DATA_STORE_BINDING_ARB
#
#=cut

    GL_TEXTURE_BUFFER_DATA_STORE_BINDING_ARB => 0x8C2D,

#=head2 GL_TEXTURE_BUFFER_DATA_STORE_BINDING_EXT
#
#=cut

    GL_TEXTURE_BUFFER_DATA_STORE_BINDING_EXT => 0x8C2D,

#=head2 GL_TEXTURE_BUFFER_EXT
#
#=cut

    GL_TEXTURE_BUFFER_EXT => 0x8C2A,

#=head2 GL_TEXTURE_BUFFER_FORMAT_ARB
#
#=cut

    GL_TEXTURE_BUFFER_FORMAT_ARB => 0x8C2E,

#=head2 GL_TEXTURE_BUFFER_FORMAT_EXT
#
#=cut

    GL_TEXTURE_BUFFER_FORMAT_EXT => 0x8C2E,

#=head2 GL_TEXTURE_BUFFER_OFFSET
#
#=cut

    GL_TEXTURE_BUFFER_OFFSET => 0x919D,

#=head2 GL_TEXTURE_BUFFER_OFFSET_ALIGNMENT
#
#=cut

    GL_TEXTURE_BUFFER_OFFSET_ALIGNMENT => 0x919F,

#=head2 GL_TEXTURE_BUFFER_SIZE
#
#=cut

    GL_TEXTURE_BUFFER_SIZE => 0x919E,

#=head2 GL_TEXTURE_CLIPMAP_CENTER_SGIX
#
#=cut

    GL_TEXTURE_CLIPMAP_CENTER_SGIX => 0x8171,

#=head2 GL_TEXTURE_CLIPMAP_DEPTH_SGIX
#
#=cut

    GL_TEXTURE_CLIPMAP_DEPTH_SGIX => 0x8176,

#=head2 GL_TEXTURE_CLIPMAP_FRAME_SGIX
#
#=cut

    GL_TEXTURE_CLIPMAP_FRAME_SGIX => 0x8172,

#=head2 GL_TEXTURE_CLIPMAP_LOD_OFFSET_SGIX
#
#=cut

    GL_TEXTURE_CLIPMAP_LOD_OFFSET_SGIX => 0x8175,

#=head2 GL_TEXTURE_CLIPMAP_OFFSET_SGIX
#
#=cut

    GL_TEXTURE_CLIPMAP_OFFSET_SGIX => 0x8173,

#=head2 GL_TEXTURE_CLIPMAP_VIRTUAL_DEPTH_SGIX
#
#=cut

    GL_TEXTURE_CLIPMAP_VIRTUAL_DEPTH_SGIX => 0x8174,

#=head2 GL_TEXTURE_COLOR_SAMPLES_NV
#
#=cut

    GL_TEXTURE_COLOR_SAMPLES_NV => 0x9046,

#=head2 GL_TEXTURE_COLOR_TABLE_SGI
#
#=cut

    GL_TEXTURE_COLOR_TABLE_SGI => 0x80BC,

#=head2 GL_TEXTURE_COLOR_WRITEMASK_SGIS
#
#=cut

    GL_TEXTURE_COLOR_WRITEMASK_SGIS => 0x81EF,

#=head2 GL_TEXTURE_COMPARE_FAIL_VALUE_ARB
#
#=cut

    GL_TEXTURE_COMPARE_FAIL_VALUE_ARB => 0x80BF,

#=head2 GL_TEXTURE_COMPARE_FUNC
#
#=cut

    GL_TEXTURE_COMPARE_FUNC => 0x884D,

#=head2 GL_TEXTURE_COMPARE_FUNC_ARB
#
#=cut

    GL_TEXTURE_COMPARE_FUNC_ARB => 0x884D,

#=head2 GL_TEXTURE_COMPARE_MODE
#
#=cut

    GL_TEXTURE_COMPARE_MODE => 0x884C,

#=head2 GL_TEXTURE_COMPARE_MODE_ARB
#
#=cut

    GL_TEXTURE_COMPARE_MODE_ARB => 0x884C,

#=head2 GL_TEXTURE_COMPARE_OPERATOR_SGIX
#
#=cut

    GL_TEXTURE_COMPARE_OPERATOR_SGIX => 0x819B,

#=head2 GL_TEXTURE_COMPARE_SGIX
#
#=cut

    GL_TEXTURE_COMPARE_SGIX => 0x819A,

#=head2 GL_TEXTURE_COMPONENTS
#
#=cut

    GL_TEXTURE_COMPONENTS => 0x1003,

#=head2 GL_TEXTURE_COMPRESSED
#
#=cut

    GL_TEXTURE_COMPRESSED => 0x86A1,

#=head2 GL_TEXTURE_COMPRESSED_ARB
#
#=cut

    GL_TEXTURE_COMPRESSED_ARB => 0x86A1,

#=head2 GL_TEXTURE_COMPRESSED_BLOCK_HEIGHT
#
#=cut

    GL_TEXTURE_COMPRESSED_BLOCK_HEIGHT => 0x82B2,

#=head2 GL_TEXTURE_COMPRESSED_BLOCK_SIZE
#
#=cut

    GL_TEXTURE_COMPRESSED_BLOCK_SIZE => 0x82B3,

#=head2 GL_TEXTURE_COMPRESSED_BLOCK_WIDTH
#
#=cut

    GL_TEXTURE_COMPRESSED_BLOCK_WIDTH => 0x82B1,

#=head2 GL_TEXTURE_COMPRESSED_IMAGE_SIZE
#
#=cut

    GL_TEXTURE_COMPRESSED_IMAGE_SIZE => 0x86A0,

#=head2 GL_TEXTURE_COMPRESSED_IMAGE_SIZE_ARB
#
#=cut

    GL_TEXTURE_COMPRESSED_IMAGE_SIZE_ARB => 0x86A0,

#=head2 GL_TEXTURE_COMPRESSION_HINT
#
#=cut

    GL_TEXTURE_COMPRESSION_HINT => 0x84EF,

#=head2 GL_TEXTURE_COMPRESSION_HINT_ARB
#
#=cut

    GL_TEXTURE_COMPRESSION_HINT_ARB => 0x84EF,

#=head2 GL_TEXTURE_CONSTANT_DATA_SUNX
#
#=cut

    GL_TEXTURE_CONSTANT_DATA_SUNX => 0x81D6,

#=head2 GL_TEXTURE_COORD_ARRAY
#
#=cut

    GL_TEXTURE_COORD_ARRAY => 0x8078,

#=head2 GL_TEXTURE_COORD_ARRAY_ADDRESS_NV
#
#=cut

    GL_TEXTURE_COORD_ARRAY_ADDRESS_NV => 0x8F25,

#=head2 GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING
#
#=cut

    GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING => 0x889A,

#=head2 GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING_ARB
#
#=cut

    GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING_ARB => 0x889A,

#=head2 GL_TEXTURE_COORD_ARRAY_COUNT_EXT
#
#=cut

    GL_TEXTURE_COORD_ARRAY_COUNT_EXT => 0x808B,

#=head2 GL_TEXTURE_COORD_ARRAY_EXT
#
#=cut

    GL_TEXTURE_COORD_ARRAY_EXT => 0x8078,

#=head2 GL_TEXTURE_COORD_ARRAY_LENGTH_NV
#
#=cut

    GL_TEXTURE_COORD_ARRAY_LENGTH_NV => 0x8F2F,

#=head2 GL_TEXTURE_COORD_ARRAY_LIST_IBM
#
#=cut

    GL_TEXTURE_COORD_ARRAY_LIST_IBM => 103074,

#=head2 GL_TEXTURE_COORD_ARRAY_LIST_STRIDE_IBM
#
#=cut

    GL_TEXTURE_COORD_ARRAY_LIST_STRIDE_IBM => 103084,

#=head2 GL_TEXTURE_COORD_ARRAY_PARALLEL_POINTERS_INTEL
#
#=cut

    GL_TEXTURE_COORD_ARRAY_PARALLEL_POINTERS_INTEL => 0x83F8,

#=head2 GL_TEXTURE_COORD_ARRAY_POINTER
#
#=cut

    GL_TEXTURE_COORD_ARRAY_POINTER => 0x8092,

#=head2 GL_TEXTURE_COORD_ARRAY_POINTER_EXT
#
#=cut

    GL_TEXTURE_COORD_ARRAY_POINTER_EXT => 0x8092,

#=head2 GL_TEXTURE_COORD_ARRAY_SIZE
#
#=cut

    GL_TEXTURE_COORD_ARRAY_SIZE => 0x8088,

#=head2 GL_TEXTURE_COORD_ARRAY_SIZE_EXT
#
#=cut

    GL_TEXTURE_COORD_ARRAY_SIZE_EXT => 0x8088,

#=head2 GL_TEXTURE_COORD_ARRAY_STRIDE
#
#=cut

    GL_TEXTURE_COORD_ARRAY_STRIDE => 0x808A,

#=head2 GL_TEXTURE_COORD_ARRAY_STRIDE_EXT
#
#=cut

    GL_TEXTURE_COORD_ARRAY_STRIDE_EXT => 0x808A,

#=head2 GL_TEXTURE_COORD_ARRAY_TYPE
#
#=cut

    GL_TEXTURE_COORD_ARRAY_TYPE => 0x8089,

#=head2 GL_TEXTURE_COORD_ARRAY_TYPE_EXT
#
#=cut

    GL_TEXTURE_COORD_ARRAY_TYPE_EXT => 0x8089,

#=head2 GL_TEXTURE_COORD_NV
#
#=cut

    GL_TEXTURE_COORD_NV => 0x8C79,

#=head2 GL_TEXTURE_COVERAGE_SAMPLES_NV
#
#=cut

    GL_TEXTURE_COVERAGE_SAMPLES_NV => 0x9045,

#=head2 GL_TEXTURE_CUBE_MAP
#
#=cut

    GL_TEXTURE_CUBE_MAP => 0x8513,

#=head2 GL_TEXTURE_CUBE_MAP_ARB
#
#=cut

    GL_TEXTURE_CUBE_MAP_ARB => 0x8513,

#=head2 GL_TEXTURE_CUBE_MAP_ARRAY
#
#=cut

    GL_TEXTURE_CUBE_MAP_ARRAY => 0x9009,

#=head2 GL_TEXTURE_CUBE_MAP_ARRAY_ARB
#
#=cut

    GL_TEXTURE_CUBE_MAP_ARRAY_ARB => 0x9009,

#=head2 GL_TEXTURE_CUBE_MAP_EXT
#
#=cut

    GL_TEXTURE_CUBE_MAP_EXT => 0x8513,

#=head2 GL_TEXTURE_CUBE_MAP_NEGATIVE_X
#
#=cut

    GL_TEXTURE_CUBE_MAP_NEGATIVE_X => 0x8516,

#=head2 GL_TEXTURE_CUBE_MAP_NEGATIVE_X_ARB
#
#=cut

    GL_TEXTURE_CUBE_MAP_NEGATIVE_X_ARB => 0x8516,

#=head2 GL_TEXTURE_CUBE_MAP_NEGATIVE_X_EXT
#
#=cut

    GL_TEXTURE_CUBE_MAP_NEGATIVE_X_EXT => 0x8516,

#=head2 GL_TEXTURE_CUBE_MAP_NEGATIVE_Y
#
#=cut

    GL_TEXTURE_CUBE_MAP_NEGATIVE_Y => 0x8518,

#=head2 GL_TEXTURE_CUBE_MAP_NEGATIVE_Y_ARB
#
#=cut

    GL_TEXTURE_CUBE_MAP_NEGATIVE_Y_ARB => 0x8518,

#=head2 GL_TEXTURE_CUBE_MAP_NEGATIVE_Y_EXT
#
#=cut

    GL_TEXTURE_CUBE_MAP_NEGATIVE_Y_EXT => 0x8518,

#=head2 GL_TEXTURE_CUBE_MAP_NEGATIVE_Z
#
#=cut

    GL_TEXTURE_CUBE_MAP_NEGATIVE_Z => 0x851A,

#=head2 GL_TEXTURE_CUBE_MAP_NEGATIVE_Z_ARB
#
#=cut

    GL_TEXTURE_CUBE_MAP_NEGATIVE_Z_ARB => 0x851A,

#=head2 GL_TEXTURE_CUBE_MAP_NEGATIVE_Z_EXT
#
#=cut

    GL_TEXTURE_CUBE_MAP_NEGATIVE_Z_EXT => 0x851A,

#=head2 GL_TEXTURE_CUBE_MAP_POSITIVE_X
#
#=cut

    GL_TEXTURE_CUBE_MAP_POSITIVE_X => 0x8515,

#=head2 GL_TEXTURE_CUBE_MAP_POSITIVE_X_ARB
#
#=cut

    GL_TEXTURE_CUBE_MAP_POSITIVE_X_ARB => 0x8515,

#=head2 GL_TEXTURE_CUBE_MAP_POSITIVE_X_EXT
#
#=cut

    GL_TEXTURE_CUBE_MAP_POSITIVE_X_EXT => 0x8515,

#=head2 GL_TEXTURE_CUBE_MAP_POSITIVE_Y
#
#=cut

    GL_TEXTURE_CUBE_MAP_POSITIVE_Y => 0x8517,

#=head2 GL_TEXTURE_CUBE_MAP_POSITIVE_Y_ARB
#
#=cut

    GL_TEXTURE_CUBE_MAP_POSITIVE_Y_ARB => 0x8517,

#=head2 GL_TEXTURE_CUBE_MAP_POSITIVE_Y_EXT
#
#=cut

    GL_TEXTURE_CUBE_MAP_POSITIVE_Y_EXT => 0x8517,

#=head2 GL_TEXTURE_CUBE_MAP_POSITIVE_Z
#
#=cut

    GL_TEXTURE_CUBE_MAP_POSITIVE_Z => 0x8519,

#=head2 GL_TEXTURE_CUBE_MAP_POSITIVE_Z_ARB
#
#=cut

    GL_TEXTURE_CUBE_MAP_POSITIVE_Z_ARB => 0x8519,

#=head2 GL_TEXTURE_CUBE_MAP_POSITIVE_Z_EXT
#
#=cut

    GL_TEXTURE_CUBE_MAP_POSITIVE_Z_EXT => 0x8519,

#=head2 GL_TEXTURE_CUBE_MAP_SEAMLESS
#
#=cut

    GL_TEXTURE_CUBE_MAP_SEAMLESS => 0x884F,

#=head2 GL_TEXTURE_DEFORMATION_BIT_SGIX
#
#=cut

    GL_TEXTURE_DEFORMATION_BIT_SGIX => 0x00000001,

#=head2 GL_TEXTURE_DEFORMATION_SGIX
#
#=cut

    GL_TEXTURE_DEFORMATION_SGIX => 0x8195,

#=head2 GL_TEXTURE_DEPTH
#
#=cut

    GL_TEXTURE_DEPTH => 0x8071,

#=head2 GL_TEXTURE_DEPTH_EXT
#
#=cut

    GL_TEXTURE_DEPTH_EXT => 0x8071,

#=head2 GL_TEXTURE_DEPTH_SIZE
#
#=cut

    GL_TEXTURE_DEPTH_SIZE => 0x884A,

#=head2 GL_TEXTURE_DEPTH_SIZE_ARB
#
#=cut

    GL_TEXTURE_DEPTH_SIZE_ARB => 0x884A,

#=head2 GL_TEXTURE_DEPTH_TYPE
#
#=cut

    GL_TEXTURE_DEPTH_TYPE => 0x8C16,

#=head2 GL_TEXTURE_DEPTH_TYPE_ARB
#
#=cut

    GL_TEXTURE_DEPTH_TYPE_ARB => 0x8C16,

#=head2 GL_TEXTURE_DS_SIZE_NV
#
#=cut

    GL_TEXTURE_DS_SIZE_NV => 0x871D,

#=head2 GL_TEXTURE_DT_SIZE_NV
#
#=cut

    GL_TEXTURE_DT_SIZE_NV => 0x871E,

#=head2 GL_TEXTURE_ENV
#
#=cut

    GL_TEXTURE_ENV => 0x2300,

#=head2 GL_TEXTURE_ENV_BIAS_SGIX
#
#=cut

    GL_TEXTURE_ENV_BIAS_SGIX => 0x80BE,

#=head2 GL_TEXTURE_ENV_COLOR
#
#=cut

    GL_TEXTURE_ENV_COLOR => 0x2201,

#=head2 GL_TEXTURE_ENV_MODE
#
#=cut

    GL_TEXTURE_ENV_MODE => 0x2200,

#=head2 GL_TEXTURE_FETCH_BARRIER_BIT
#
#=cut

    GL_TEXTURE_FETCH_BARRIER_BIT => 0x00000008,

#=head2 GL_TEXTURE_FETCH_BARRIER_BIT_EXT
#
#=cut

    GL_TEXTURE_FETCH_BARRIER_BIT_EXT => 0x00000008,

#=head2 GL_TEXTURE_FILTER4_SIZE_SGIS
#
#=cut

    GL_TEXTURE_FILTER4_SIZE_SGIS => 0x8147,

#=head2 GL_TEXTURE_FILTER_CONTROL
#
#=cut

    GL_TEXTURE_FILTER_CONTROL => 0x8500,

#=head2 GL_TEXTURE_FILTER_CONTROL_EXT
#
#=cut

    GL_TEXTURE_FILTER_CONTROL_EXT => 0x8500,

#=head2 GL_TEXTURE_FIXED_SAMPLE_LOCATIONS
#
#=cut

    GL_TEXTURE_FIXED_SAMPLE_LOCATIONS => 0x9107,

#=head2 GL_TEXTURE_FLOAT_COMPONENTS_NV
#
#=cut

    GL_TEXTURE_FLOAT_COMPONENTS_NV => 0x888C,

#=head2 GL_TEXTURE_FREE_MEMORY_ATI
#
#=cut

    GL_TEXTURE_FREE_MEMORY_ATI => 0x87FC,

#=head2 GL_TEXTURE_GATHER
#
#=cut

    GL_TEXTURE_GATHER => 0x82A2,

#=head2 GL_TEXTURE_GATHER_SHADOW
#
#=cut

    GL_TEXTURE_GATHER_SHADOW => 0x82A3,

#=head2 GL_TEXTURE_GEN_MODE
#
#=cut

    GL_TEXTURE_GEN_MODE => 0x2500,

#=head2 GL_TEXTURE_GEN_Q
#
#=cut

    GL_TEXTURE_GEN_Q => 0x0C63,

#=head2 GL_TEXTURE_GEN_R
#
#=cut

    GL_TEXTURE_GEN_R => 0x0C62,

#=head2 GL_TEXTURE_GEN_S
#
#=cut

    GL_TEXTURE_GEN_S => 0x0C60,

#=head2 GL_TEXTURE_GEN_T
#
#=cut

    GL_TEXTURE_GEN_T => 0x0C61,

#=head2 GL_TEXTURE_GEQUAL_R_SGIX
#
#=cut

    GL_TEXTURE_GEQUAL_R_SGIX => 0x819D,

#=head2 GL_TEXTURE_GREEN_SIZE
#
#=cut

    GL_TEXTURE_GREEN_SIZE => 0x805D,

#=head2 GL_TEXTURE_GREEN_SIZE_EXT
#
#=cut

    GL_TEXTURE_GREEN_SIZE_EXT => 0x805D,

#=head2 GL_TEXTURE_GREEN_TYPE
#
#=cut

    GL_TEXTURE_GREEN_TYPE => 0x8C11,

#=head2 GL_TEXTURE_GREEN_TYPE_ARB
#
#=cut

    GL_TEXTURE_GREEN_TYPE_ARB => 0x8C11,

#=head2 GL_TEXTURE_HEIGHT
#
#=cut

    GL_TEXTURE_HEIGHT => 0x1001,

#=head2 GL_TEXTURE_HI_SIZE_NV
#
#=cut

    GL_TEXTURE_HI_SIZE_NV => 0x871B,

#=head2 GL_TEXTURE_IMAGE_FORMAT
#
#=cut

    GL_TEXTURE_IMAGE_FORMAT => 0x828F,

#=head2 GL_TEXTURE_IMAGE_TYPE
#
#=cut

    GL_TEXTURE_IMAGE_TYPE => 0x8290,

#=head2 GL_TEXTURE_IMMUTABLE_FORMAT
#
#=cut

    GL_TEXTURE_IMMUTABLE_FORMAT => 0x912F,

#=head2 GL_TEXTURE_IMMUTABLE_LEVELS
#
#=cut

    GL_TEXTURE_IMMUTABLE_LEVELS => 0x82DF,

#=head2 GL_TEXTURE_INDEX_SIZE_EXT
#
#=cut

    GL_TEXTURE_INDEX_SIZE_EXT => 0x80ED,

#=head2 GL_TEXTURE_INTENSITY_SIZE
#
#=cut

    GL_TEXTURE_INTENSITY_SIZE => 0x8061,

#=head2 GL_TEXTURE_INTENSITY_SIZE_EXT
#
#=cut

    GL_TEXTURE_INTENSITY_SIZE_EXT => 0x8061,

#=head2 GL_TEXTURE_INTENSITY_TYPE
#
#=cut

    GL_TEXTURE_INTENSITY_TYPE => 0x8C15,

#=head2 GL_TEXTURE_INTENSITY_TYPE_ARB
#
#=cut

    GL_TEXTURE_INTENSITY_TYPE_ARB => 0x8C15,

#=head2 GL_TEXTURE_INTERNAL_FORMAT
#
#=cut

    GL_TEXTURE_INTERNAL_FORMAT => 0x1003,

#=head2 GL_TEXTURE_LEQUAL_R_SGIX
#
#=cut

    GL_TEXTURE_LEQUAL_R_SGIX => 0x819C,

#=head2 GL_TEXTURE_LIGHTING_MODE_HP
#
#=cut

    GL_TEXTURE_LIGHTING_MODE_HP => 0x8167,

#=head2 GL_TEXTURE_LIGHT_EXT
#
#=cut

    GL_TEXTURE_LIGHT_EXT => 0x8350,

#=head2 GL_TEXTURE_LOD_BIAS
#
#=cut

    GL_TEXTURE_LOD_BIAS => 0x8501,

#=head2 GL_TEXTURE_LOD_BIAS_EXT
#
#=cut

    GL_TEXTURE_LOD_BIAS_EXT => 0x8501,

#=head2 GL_TEXTURE_LOD_BIAS_R_SGIX
#
#=cut

    GL_TEXTURE_LOD_BIAS_R_SGIX => 0x8190,

#=head2 GL_TEXTURE_LOD_BIAS_S_SGIX
#
#=cut

    GL_TEXTURE_LOD_BIAS_S_SGIX => 0x818E,

#=head2 GL_TEXTURE_LOD_BIAS_T_SGIX
#
#=cut

    GL_TEXTURE_LOD_BIAS_T_SGIX => 0x818F,

#=head2 GL_TEXTURE_LO_SIZE_NV
#
#=cut

    GL_TEXTURE_LO_SIZE_NV => 0x871C,

#=head2 GL_TEXTURE_LUMINANCE_SIZE
#
#=cut

    GL_TEXTURE_LUMINANCE_SIZE => 0x8060,

#=head2 GL_TEXTURE_LUMINANCE_SIZE_EXT
#
#=cut

    GL_TEXTURE_LUMINANCE_SIZE_EXT => 0x8060,

#=head2 GL_TEXTURE_LUMINANCE_TYPE
#
#=cut

    GL_TEXTURE_LUMINANCE_TYPE => 0x8C14,

#=head2 GL_TEXTURE_LUMINANCE_TYPE_ARB
#
#=cut

    GL_TEXTURE_LUMINANCE_TYPE_ARB => 0x8C14,

#=head2 GL_TEXTURE_MAG_FILTER
#
#=cut

    GL_TEXTURE_MAG_FILTER => 0x2800,

#=head2 GL_TEXTURE_MAG_SIZE_NV
#
#=cut

    GL_TEXTURE_MAG_SIZE_NV => 0x871F,

#=head2 GL_TEXTURE_MATERIAL_FACE_EXT
#
#=cut

    GL_TEXTURE_MATERIAL_FACE_EXT => 0x8351,

#=head2 GL_TEXTURE_MATERIAL_PARAMETER_EXT
#
#=cut

    GL_TEXTURE_MATERIAL_PARAMETER_EXT => 0x8352,

#=head2 GL_TEXTURE_MATRIX
#
#=cut

    GL_TEXTURE_MATRIX => 0x0BA8,

#=head2 GL_TEXTURE_MAX_ANISOTROPY_EXT
#
#=cut

    GL_TEXTURE_MAX_ANISOTROPY_EXT => 0x84FE,

#=head2 GL_TEXTURE_MAX_CLAMP_R_SGIX
#
#=cut

    GL_TEXTURE_MAX_CLAMP_R_SGIX => 0x836B,

#=head2 GL_TEXTURE_MAX_CLAMP_S_SGIX
#
#=cut

    GL_TEXTURE_MAX_CLAMP_S_SGIX => 0x8369,

#=head2 GL_TEXTURE_MAX_CLAMP_T_SGIX
#
#=cut

    GL_TEXTURE_MAX_CLAMP_T_SGIX => 0x836A,

#=head2 GL_TEXTURE_MAX_LEVEL
#
#=cut

    GL_TEXTURE_MAX_LEVEL => 0x813D,

#=head2 GL_TEXTURE_MAX_LEVEL_SGIS
#
#=cut

    GL_TEXTURE_MAX_LEVEL_SGIS => 0x813D,

#=head2 GL_TEXTURE_MAX_LOD
#
#=cut

    GL_TEXTURE_MAX_LOD => 0x813B,

#=head2 GL_TEXTURE_MAX_LOD_SGIS
#
#=cut

    GL_TEXTURE_MAX_LOD_SGIS => 0x813B,

#=head2 GL_TEXTURE_MEMORY_LAYOUT_INTEL
#
#=cut

    GL_TEXTURE_MEMORY_LAYOUT_INTEL => 0x83FF,

#=head2 GL_TEXTURE_MIN_FILTER
#
#=cut

    GL_TEXTURE_MIN_FILTER => 0x2801,

#=head2 GL_TEXTURE_MIN_LOD
#
#=cut

    GL_TEXTURE_MIN_LOD => 0x813A,

#=head2 GL_TEXTURE_MIN_LOD_SGIS
#
#=cut

    GL_TEXTURE_MIN_LOD_SGIS => 0x813A,

#=head2 GL_TEXTURE_MULTI_BUFFER_HINT_SGIX
#
#=cut

    GL_TEXTURE_MULTI_BUFFER_HINT_SGIX => 0x812E,

#=head2 GL_TEXTURE_NORMAL_EXT
#
#=cut

    GL_TEXTURE_NORMAL_EXT => 0x85AF,

#=head2 GL_TEXTURE_POST_SPECULAR_HP
#
#=cut

    GL_TEXTURE_POST_SPECULAR_HP => 0x8168,

#=head2 GL_TEXTURE_PRE_SPECULAR_HP
#
#=cut

    GL_TEXTURE_PRE_SPECULAR_HP => 0x8169,

#=head2 GL_TEXTURE_PRIORITY
#
#=cut

    GL_TEXTURE_PRIORITY => 0x8066,

#=head2 GL_TEXTURE_PRIORITY_EXT
#
#=cut

    GL_TEXTURE_PRIORITY_EXT => 0x8066,

#=head2 GL_TEXTURE_RANGE_LENGTH_APPLE
#
#=cut

    GL_TEXTURE_RANGE_LENGTH_APPLE => 0x85B7,

#=head2 GL_TEXTURE_RANGE_POINTER_APPLE
#
#=cut

    GL_TEXTURE_RANGE_POINTER_APPLE => 0x85B8,

#=head2 GL_TEXTURE_RECTANGLE
#
#=cut

    GL_TEXTURE_RECTANGLE => 0x84F5,

#=head2 GL_TEXTURE_RECTANGLE_ARB
#
#=cut

    GL_TEXTURE_RECTANGLE_ARB => 0x84F5,

#=head2 GL_TEXTURE_RECTANGLE_NV
#
#=cut

    GL_TEXTURE_RECTANGLE_NV => 0x84F5,

#=head2 GL_TEXTURE_RED_SIZE
#
#=cut

    GL_TEXTURE_RED_SIZE => 0x805C,

#=head2 GL_TEXTURE_RED_SIZE_EXT
#
#=cut

    GL_TEXTURE_RED_SIZE_EXT => 0x805C,

#=head2 GL_TEXTURE_RED_TYPE
#
#=cut

    GL_TEXTURE_RED_TYPE => 0x8C10,

#=head2 GL_TEXTURE_RED_TYPE_ARB
#
#=cut

    GL_TEXTURE_RED_TYPE_ARB => 0x8C10,

#=head2 GL_TEXTURE_RENDERBUFFER_DATA_STORE_BINDING_NV
#
#=cut

    GL_TEXTURE_RENDERBUFFER_DATA_STORE_BINDING_NV => 0x8E54,

#=head2 GL_TEXTURE_RENDERBUFFER_NV
#
#=cut

    GL_TEXTURE_RENDERBUFFER_NV => 0x8E55,

#=head2 GL_TEXTURE_RESIDENT
#
#=cut

    GL_TEXTURE_RESIDENT => 0x8067,

#=head2 GL_TEXTURE_RESIDENT_EXT
#
#=cut

    GL_TEXTURE_RESIDENT_EXT => 0x8067,

#=head2 GL_TEXTURE_SAMPLES
#
#=cut

    GL_TEXTURE_SAMPLES => 0x9106,

#=head2 GL_TEXTURE_SHADER_NV
#
#=cut

    GL_TEXTURE_SHADER_NV => 0x86DE,

#=head2 GL_TEXTURE_SHADOW
#
#=cut

    GL_TEXTURE_SHADOW => 0x82A1,

#=head2 GL_TEXTURE_SHARED_SIZE
#
#=cut

    GL_TEXTURE_SHARED_SIZE => 0x8C3F,

#=head2 GL_TEXTURE_SHARED_SIZE_EXT
#
#=cut

    GL_TEXTURE_SHARED_SIZE_EXT => 0x8C3F,

#=head2 GL_TEXTURE_SPARSE_ARB
#
#=cut

    GL_TEXTURE_SPARSE_ARB => 0x91A6,

#=head2 GL_TEXTURE_SRGB_DECODE_EXT
#
#=cut

    GL_TEXTURE_SRGB_DECODE_EXT => 0x8A48,

#=head2 GL_TEXTURE_STACK_DEPTH
#
#=cut

    GL_TEXTURE_STACK_DEPTH => 0x0BA5,

#=head2 GL_TEXTURE_STENCIL_SIZE
#
#=cut

    GL_TEXTURE_STENCIL_SIZE => 0x88F1,

#=head2 GL_TEXTURE_STENCIL_SIZE_EXT
#
#=cut

    GL_TEXTURE_STENCIL_SIZE_EXT => 0x88F1,

#=head2 GL_TEXTURE_STORAGE_HINT_APPLE
#
#=cut

    GL_TEXTURE_STORAGE_HINT_APPLE => 0x85BC,

#=head2 GL_TEXTURE_STORAGE_SPARSE_BIT_AMD
#
#=cut

    GL_TEXTURE_STORAGE_SPARSE_BIT_AMD => 0x00000001,

#=head2 GL_TEXTURE_SWIZZLE_A
#
#=cut

    GL_TEXTURE_SWIZZLE_A => 0x8E45,

#=head2 GL_TEXTURE_SWIZZLE_A_EXT
#
#=cut

    GL_TEXTURE_SWIZZLE_A_EXT => 0x8E45,

#=head2 GL_TEXTURE_SWIZZLE_B
#
#=cut

    GL_TEXTURE_SWIZZLE_B => 0x8E44,

#=head2 GL_TEXTURE_SWIZZLE_B_EXT
#
#=cut

    GL_TEXTURE_SWIZZLE_B_EXT => 0x8E44,

#=head2 GL_TEXTURE_SWIZZLE_G
#
#=cut

    GL_TEXTURE_SWIZZLE_G => 0x8E43,

#=head2 GL_TEXTURE_SWIZZLE_G_EXT
#
#=cut

    GL_TEXTURE_SWIZZLE_G_EXT => 0x8E43,

#=head2 GL_TEXTURE_SWIZZLE_R
#
#=cut

    GL_TEXTURE_SWIZZLE_R => 0x8E42,

#=head2 GL_TEXTURE_SWIZZLE_RGBA
#
#=cut

    GL_TEXTURE_SWIZZLE_RGBA => 0x8E46,

#=head2 GL_TEXTURE_SWIZZLE_RGBA_EXT
#
#=cut

    GL_TEXTURE_SWIZZLE_RGBA_EXT => 0x8E46,

#=head2 GL_TEXTURE_SWIZZLE_R_EXT
#
#=cut

    GL_TEXTURE_SWIZZLE_R_EXT => 0x8E42,

#=head2 GL_TEXTURE_TARGET
#
#=cut

    GL_TEXTURE_TARGET => 0x1006,

#=head2 GL_TEXTURE_TOO_LARGE_EXT
#
#=cut

    GL_TEXTURE_TOO_LARGE_EXT => 0x8065,

#=head2 GL_TEXTURE_UNSIGNED_REMAP_MODE_NV
#
#=cut

    GL_TEXTURE_UNSIGNED_REMAP_MODE_NV => 0x888F,

#=head2 GL_TEXTURE_UPDATE_BARRIER_BIT
#
#=cut

    GL_TEXTURE_UPDATE_BARRIER_BIT => 0x00000100,

#=head2 GL_TEXTURE_UPDATE_BARRIER_BIT_EXT
#
#=cut

    GL_TEXTURE_UPDATE_BARRIER_BIT_EXT => 0x00000100,

#=head2 GL_TEXTURE_VIEW
#
#=cut

    GL_TEXTURE_VIEW => 0x82B5,

#=head2 GL_TEXTURE_VIEW_MIN_LAYER
#
#=cut

    GL_TEXTURE_VIEW_MIN_LAYER => 0x82DD,

#=head2 GL_TEXTURE_VIEW_MIN_LEVEL
#
#=cut

    GL_TEXTURE_VIEW_MIN_LEVEL => 0x82DB,

#=head2 GL_TEXTURE_VIEW_NUM_LAYERS
#
#=cut

    GL_TEXTURE_VIEW_NUM_LAYERS => 0x82DE,

#=head2 GL_TEXTURE_VIEW_NUM_LEVELS
#
#=cut

    GL_TEXTURE_VIEW_NUM_LEVELS => 0x82DC,

#=head2 GL_TEXTURE_WIDTH
#
#=cut

    GL_TEXTURE_WIDTH => 0x1000,

#=head2 GL_TEXTURE_WRAP_Q_SGIS
#
#=cut

    GL_TEXTURE_WRAP_Q_SGIS => 0x8137,

#=head2 GL_TEXTURE_WRAP_R
#
#=cut

    GL_TEXTURE_WRAP_R => 0x8072,

#=head2 GL_TEXTURE_WRAP_R_EXT
#
#=cut

    GL_TEXTURE_WRAP_R_EXT => 0x8072,

#=head2 GL_TEXTURE_WRAP_S
#
#=cut

    GL_TEXTURE_WRAP_S => 0x2802,

#=head2 GL_TEXTURE_WRAP_T
#
#=cut

    GL_TEXTURE_WRAP_T => 0x2803,

#=head2 GL_TEXT_FRAGMENT_SHADER_ATI
#
#=cut

    GL_TEXT_FRAGMENT_SHADER_ATI => 0x8200,

#=head2 GL_TIMEOUT_EXPIRED
#
#=cut

    GL_TIMEOUT_EXPIRED => 0x911B,

#=head2 GL_TIMEOUT_IGNORED
#
#=cut

    GL_TIMEOUT_IGNORED => 0xFFFFFFFFFFFFFFFF,

#=head2 GL_TIMESTAMP
#
#=cut

    GL_TIMESTAMP => 0x8E28,

#=head2 GL_TIME_ELAPSED
#
#=cut

    GL_TIME_ELAPSED => 0x88BF,

#=head2 GL_TIME_ELAPSED_EXT
#
#=cut

    GL_TIME_ELAPSED_EXT => 0x88BF,

#=head2 GL_TOP_LEVEL_ARRAY_SIZE
#
#=cut

    GL_TOP_LEVEL_ARRAY_SIZE => 0x930C,

#=head2 GL_TOP_LEVEL_ARRAY_STRIDE
#
#=cut

    GL_TOP_LEVEL_ARRAY_STRIDE => 0x930D,

#=head2 GL_TRACK_MATRIX_NV
#
#=cut

    GL_TRACK_MATRIX_NV => 0x8648,

#=head2 GL_TRACK_MATRIX_TRANSFORM_NV
#
#=cut

    GL_TRACK_MATRIX_TRANSFORM_NV => 0x8649,

#=head2 GL_TRANSFORM_BIT
#
#=cut

    GL_TRANSFORM_BIT => 0x00001000,

#=head2 GL_TRANSFORM_FEEDBACK
#
#=cut

    GL_TRANSFORM_FEEDBACK => 0x8E22,

#=head2 GL_TRANSFORM_FEEDBACK_ACTIVE
#
#=cut

    GL_TRANSFORM_FEEDBACK_ACTIVE => 0x8E24,

#=head2 GL_TRANSFORM_FEEDBACK_ATTRIBS_NV
#
#=cut

    GL_TRANSFORM_FEEDBACK_ATTRIBS_NV => 0x8C7E,

#=head2 GL_TRANSFORM_FEEDBACK_BARRIER_BIT
#
#=cut

    GL_TRANSFORM_FEEDBACK_BARRIER_BIT => 0x00000800,

#=head2 GL_TRANSFORM_FEEDBACK_BARRIER_BIT_EXT
#
#=cut

    GL_TRANSFORM_FEEDBACK_BARRIER_BIT_EXT => 0x00000800,

#=head2 GL_TRANSFORM_FEEDBACK_BINDING
#
#=cut

    GL_TRANSFORM_FEEDBACK_BINDING => 0x8E25,

#=head2 GL_TRANSFORM_FEEDBACK_BINDING_NV
#
#=cut

    GL_TRANSFORM_FEEDBACK_BINDING_NV => 0x8E25,

#=head2 GL_TRANSFORM_FEEDBACK_BUFFER
#
#=cut

    GL_TRANSFORM_FEEDBACK_BUFFER => 0x8C8E,

#=head2 GL_TRANSFORM_FEEDBACK_BUFFER_ACTIVE
#
#=cut

    GL_TRANSFORM_FEEDBACK_BUFFER_ACTIVE => 0x8E24,

#=head2 GL_TRANSFORM_FEEDBACK_BUFFER_ACTIVE_NV
#
#=cut

    GL_TRANSFORM_FEEDBACK_BUFFER_ACTIVE_NV => 0x8E24,

#=head2 GL_TRANSFORM_FEEDBACK_BUFFER_BINDING
#
#=cut

    GL_TRANSFORM_FEEDBACK_BUFFER_BINDING => 0x8C8F,

#=head2 GL_TRANSFORM_FEEDBACK_BUFFER_BINDING_EXT
#
#=cut

    GL_TRANSFORM_FEEDBACK_BUFFER_BINDING_EXT => 0x8C8F,

#=head2 GL_TRANSFORM_FEEDBACK_BUFFER_BINDING_NV
#
#=cut

    GL_TRANSFORM_FEEDBACK_BUFFER_BINDING_NV => 0x8C8F,

#=head2 GL_TRANSFORM_FEEDBACK_BUFFER_EXT
#
#=cut

    GL_TRANSFORM_FEEDBACK_BUFFER_EXT => 0x8C8E,

#=head2 GL_TRANSFORM_FEEDBACK_BUFFER_INDEX
#
#=cut

    GL_TRANSFORM_FEEDBACK_BUFFER_INDEX => 0x934B,

#=head2 GL_TRANSFORM_FEEDBACK_BUFFER_MODE
#
#=cut

    GL_TRANSFORM_FEEDBACK_BUFFER_MODE => 0x8C7F,

#=head2 GL_TRANSFORM_FEEDBACK_BUFFER_MODE_EXT
#
#=cut

    GL_TRANSFORM_FEEDBACK_BUFFER_MODE_EXT => 0x8C7F,

#=head2 GL_TRANSFORM_FEEDBACK_BUFFER_MODE_NV
#
#=cut

    GL_TRANSFORM_FEEDBACK_BUFFER_MODE_NV => 0x8C7F,

#=head2 GL_TRANSFORM_FEEDBACK_BUFFER_NV
#
#=cut

    GL_TRANSFORM_FEEDBACK_BUFFER_NV => 0x8C8E,

#=head2 GL_TRANSFORM_FEEDBACK_BUFFER_PAUSED
#
#=cut

    GL_TRANSFORM_FEEDBACK_BUFFER_PAUSED => 0x8E23,

#=head2 GL_TRANSFORM_FEEDBACK_BUFFER_PAUSED_NV
#
#=cut

    GL_TRANSFORM_FEEDBACK_BUFFER_PAUSED_NV => 0x8E23,

#=head2 GL_TRANSFORM_FEEDBACK_BUFFER_SIZE
#
#=cut

    GL_TRANSFORM_FEEDBACK_BUFFER_SIZE => 0x8C85,

#=head2 GL_TRANSFORM_FEEDBACK_BUFFER_SIZE_EXT
#
#=cut

    GL_TRANSFORM_FEEDBACK_BUFFER_SIZE_EXT => 0x8C85,

#=head2 GL_TRANSFORM_FEEDBACK_BUFFER_SIZE_NV
#
#=cut

    GL_TRANSFORM_FEEDBACK_BUFFER_SIZE_NV => 0x8C85,

#=head2 GL_TRANSFORM_FEEDBACK_BUFFER_START
#
#=cut

    GL_TRANSFORM_FEEDBACK_BUFFER_START => 0x8C84,

#=head2 GL_TRANSFORM_FEEDBACK_BUFFER_START_EXT
#
#=cut

    GL_TRANSFORM_FEEDBACK_BUFFER_START_EXT => 0x8C84,

#=head2 GL_TRANSFORM_FEEDBACK_BUFFER_START_NV
#
#=cut

    GL_TRANSFORM_FEEDBACK_BUFFER_START_NV => 0x8C84,

#=head2 GL_TRANSFORM_FEEDBACK_BUFFER_STRIDE
#
#=cut

    GL_TRANSFORM_FEEDBACK_BUFFER_STRIDE => 0x934C,

#=head2 GL_TRANSFORM_FEEDBACK_NV
#
#=cut

    GL_TRANSFORM_FEEDBACK_NV => 0x8E22,

#=head2 GL_TRANSFORM_FEEDBACK_OVERFLOW_ARB
#
#=cut

    GL_TRANSFORM_FEEDBACK_OVERFLOW_ARB => 0x82EC,

#=head2 GL_TRANSFORM_FEEDBACK_PAUSED
#
#=cut

    GL_TRANSFORM_FEEDBACK_PAUSED => 0x8E23,

#=head2 GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN
#
#=cut

    GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN => 0x8C88,

#=head2 GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN_EXT
#
#=cut

    GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN_EXT => 0x8C88,

#=head2 GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN_NV
#
#=cut

    GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN_NV => 0x8C88,

#=head2 GL_TRANSFORM_FEEDBACK_RECORD_NV
#
#=cut

    GL_TRANSFORM_FEEDBACK_RECORD_NV => 0x8C86,

#=head2 GL_TRANSFORM_FEEDBACK_STREAM_OVERFLOW_ARB
#
#=cut

    GL_TRANSFORM_FEEDBACK_STREAM_OVERFLOW_ARB => 0x82ED,

#=head2 GL_TRANSFORM_FEEDBACK_VARYING
#
#=cut

    GL_TRANSFORM_FEEDBACK_VARYING => 0x92F4,

#=head2 GL_TRANSFORM_FEEDBACK_VARYINGS
#
#=cut

    GL_TRANSFORM_FEEDBACK_VARYINGS => 0x8C83,

#=head2 GL_TRANSFORM_FEEDBACK_VARYINGS_EXT
#
#=cut

    GL_TRANSFORM_FEEDBACK_VARYINGS_EXT => 0x8C83,

#=head2 GL_TRANSFORM_FEEDBACK_VARYINGS_NV
#
#=cut

    GL_TRANSFORM_FEEDBACK_VARYINGS_NV => 0x8C83,

#=head2 GL_TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH
#
#=cut

    GL_TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH => 0x8C76,

#=head2 GL_TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH_EXT
#
#=cut

    GL_TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH_EXT => 0x8C76,

#=head2 GL_TRANSFORM_HINT_APPLE
#
#=cut

    GL_TRANSFORM_HINT_APPLE => 0x85B1,

#=head2 GL_TRANSLATE_2D_NV
#
#=cut

    GL_TRANSLATE_2D_NV => 0x9090,

#=head2 GL_TRANSLATE_3D_NV
#
#=cut

    GL_TRANSLATE_3D_NV => 0x9091,

#=head2 GL_TRANSLATE_X_NV
#
#=cut

    GL_TRANSLATE_X_NV => 0x908E,

#=head2 GL_TRANSLATE_Y_NV
#
#=cut

    GL_TRANSLATE_Y_NV => 0x908F,

#=head2 GL_TRANSPOSE_AFFINE_2D_NV
#
#=cut

    GL_TRANSPOSE_AFFINE_2D_NV => 0x9096,

#=head2 GL_TRANSPOSE_AFFINE_3D_NV
#
#=cut

    GL_TRANSPOSE_AFFINE_3D_NV => 0x9098,

#=head2 GL_TRANSPOSE_COLOR_MATRIX
#
#=cut

    GL_TRANSPOSE_COLOR_MATRIX => 0x84E6,

#=head2 GL_TRANSPOSE_COLOR_MATRIX_ARB
#
#=cut

    GL_TRANSPOSE_COLOR_MATRIX_ARB => 0x84E6,

#=head2 GL_TRANSPOSE_CURRENT_MATRIX_ARB
#
#=cut

    GL_TRANSPOSE_CURRENT_MATRIX_ARB => 0x88B7,

#=head2 GL_TRANSPOSE_MODELVIEW_MATRIX
#
#=cut

    GL_TRANSPOSE_MODELVIEW_MATRIX => 0x84E3,

#=head2 GL_TRANSPOSE_MODELVIEW_MATRIX_ARB
#
#=cut

    GL_TRANSPOSE_MODELVIEW_MATRIX_ARB => 0x84E3,

#=head2 GL_TRANSPOSE_NV
#
#=cut

    GL_TRANSPOSE_NV => 0x862C,

#=head2 GL_TRANSPOSE_PROGRAM_MATRIX_EXT
#
#=cut

    GL_TRANSPOSE_PROGRAM_MATRIX_EXT => 0x8E2E,

#=head2 GL_TRANSPOSE_PROJECTION_MATRIX
#
#=cut

    GL_TRANSPOSE_PROJECTION_MATRIX => 0x84E4,

#=head2 GL_TRANSPOSE_PROJECTION_MATRIX_ARB
#
#=cut

    GL_TRANSPOSE_PROJECTION_MATRIX_ARB => 0x84E4,

#=head2 GL_TRANSPOSE_TEXTURE_MATRIX
#
#=cut

    GL_TRANSPOSE_TEXTURE_MATRIX => 0x84E5,

#=head2 GL_TRANSPOSE_TEXTURE_MATRIX_ARB
#
#=cut

    GL_TRANSPOSE_TEXTURE_MATRIX_ARB => 0x84E5,

#=head2 GL_TRIANGLES
#
#=cut

    GL_TRIANGLES => 0x0004,

#=head2 GL_TRIANGLES_ADJACENCY
#
#=cut

    GL_TRIANGLES_ADJACENCY => 0x000C,

#=head2 GL_TRIANGLES_ADJACENCY_ARB
#
#=cut

    GL_TRIANGLES_ADJACENCY_ARB => 0x000C,

#=head2 GL_TRIANGLES_ADJACENCY_EXT
#
#=cut

    GL_TRIANGLES_ADJACENCY_EXT => 0x000C,

#=head2 GL_TRIANGLE_FAN
#
#=cut

    GL_TRIANGLE_FAN => 0x0006,

#=head2 GL_TRIANGLE_LIST_SUN
#
#=cut

    GL_TRIANGLE_LIST_SUN => 0x81D7,

#=head2 GL_TRIANGLE_MESH_SUN
#
#=cut

    GL_TRIANGLE_MESH_SUN => 0x8615,

#=head2 GL_TRIANGLE_STRIP
#
#=cut

    GL_TRIANGLE_STRIP => 0x0005,

#=head2 GL_TRIANGLE_STRIP_ADJACENCY
#
#=cut

    GL_TRIANGLE_STRIP_ADJACENCY => 0x000D,

#=head2 GL_TRIANGLE_STRIP_ADJACENCY_ARB
#
#=cut

    GL_TRIANGLE_STRIP_ADJACENCY_ARB => 0x000D,

#=head2 GL_TRIANGLE_STRIP_ADJACENCY_EXT
#
#=cut

    GL_TRIANGLE_STRIP_ADJACENCY_EXT => 0x000D,

#=head2 GL_TRIANGULAR_NV
#
#=cut

    GL_TRIANGULAR_NV => 0x90A5,

#=head2 GL_TRUE
#
#=cut

    GL_TRUE => 1,

#=head2 GL_TYPE
#
#=cut

    GL_TYPE => 0x92FA,

#=head2 GL_UNCORRELATED_NV
#
#=cut

    GL_UNCORRELATED_NV => 0x9282,

#=head2 GL_UNDEFINED_APPLE
#
#=cut

    GL_UNDEFINED_APPLE => 0x8A1C,

#=head2 GL_UNDEFINED_VERTEX
#
#=cut

    GL_UNDEFINED_VERTEX => 0x8260,

#=head2 GL_UNIFORM
#
#=cut

    GL_UNIFORM => 0x92E1,

#=head2 GL_UNIFORM_ARRAY_STRIDE
#
#=cut

    GL_UNIFORM_ARRAY_STRIDE => 0x8A3C,

#=head2 GL_UNIFORM_ATOMIC_COUNTER_BUFFER_INDEX
#
#=cut

    GL_UNIFORM_ATOMIC_COUNTER_BUFFER_INDEX => 0x92DA,

#=head2 GL_UNIFORM_BARRIER_BIT
#
#=cut

    GL_UNIFORM_BARRIER_BIT => 0x00000004,

#=head2 GL_UNIFORM_BARRIER_BIT_EXT
#
#=cut

    GL_UNIFORM_BARRIER_BIT_EXT => 0x00000004,

#=head2 GL_UNIFORM_BLOCK
#
#=cut

    GL_UNIFORM_BLOCK => 0x92E2,

#=head2 GL_UNIFORM_BLOCK_ACTIVE_UNIFORMS
#
#=cut

    GL_UNIFORM_BLOCK_ACTIVE_UNIFORMS => 0x8A42,

#=head2 GL_UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES
#
#=cut

    GL_UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES => 0x8A43,

#=head2 GL_UNIFORM_BLOCK_BINDING
#
#=cut

    GL_UNIFORM_BLOCK_BINDING => 0x8A3F,

#=head2 GL_UNIFORM_BLOCK_DATA_SIZE
#
#=cut

    GL_UNIFORM_BLOCK_DATA_SIZE => 0x8A40,

#=head2 GL_UNIFORM_BLOCK_INDEX
#
#=cut

    GL_UNIFORM_BLOCK_INDEX => 0x8A3A,

#=head2 GL_UNIFORM_BLOCK_NAME_LENGTH
#
#=cut

    GL_UNIFORM_BLOCK_NAME_LENGTH => 0x8A41,

#=head2 GL_UNIFORM_BLOCK_REFERENCED_BY_COMPUTE_SHADER
#
#=cut

    GL_UNIFORM_BLOCK_REFERENCED_BY_COMPUTE_SHADER => 0x90EC,

#=head2 GL_UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER
#
#=cut

    GL_UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER => 0x8A46,

#=head2 GL_UNIFORM_BLOCK_REFERENCED_BY_GEOMETRY_SHADER
#
#=cut

    GL_UNIFORM_BLOCK_REFERENCED_BY_GEOMETRY_SHADER => 0x8A45,

#=head2 GL_UNIFORM_BLOCK_REFERENCED_BY_TESS_CONTROL_SHADER
#
#=cut

    GL_UNIFORM_BLOCK_REFERENCED_BY_TESS_CONTROL_SHADER => 0x84F0,

#=head2 GL_UNIFORM_BLOCK_REFERENCED_BY_TESS_EVALUATION_SHADER
#
#=cut

    GL_UNIFORM_BLOCK_REFERENCED_BY_TESS_EVALUATION_SHADER => 0x84F1,

#=head2 GL_UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER
#
#=cut

    GL_UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER => 0x8A44,

#=head2 GL_UNIFORM_BUFFER
#
#=cut

    GL_UNIFORM_BUFFER => 0x8A11,

#=head2 GL_UNIFORM_BUFFER_BINDING
#
#=cut

    GL_UNIFORM_BUFFER_BINDING => 0x8A28,

#=head2 GL_UNIFORM_BUFFER_BINDING_EXT
#
#=cut

    GL_UNIFORM_BUFFER_BINDING_EXT => 0x8DEF,

#=head2 GL_UNIFORM_BUFFER_EXT
#
#=cut

    GL_UNIFORM_BUFFER_EXT => 0x8DEE,

#=head2 GL_UNIFORM_BUFFER_OFFSET_ALIGNMENT
#
#=cut

    GL_UNIFORM_BUFFER_OFFSET_ALIGNMENT => 0x8A34,

#=head2 GL_UNIFORM_BUFFER_SIZE
#
#=cut

    GL_UNIFORM_BUFFER_SIZE => 0x8A2A,

#=head2 GL_UNIFORM_BUFFER_START
#
#=cut

    GL_UNIFORM_BUFFER_START => 0x8A29,

#=head2 GL_UNIFORM_IS_ROW_MAJOR
#
#=cut

    GL_UNIFORM_IS_ROW_MAJOR => 0x8A3E,

#=head2 GL_UNIFORM_MATRIX_STRIDE
#
#=cut

    GL_UNIFORM_MATRIX_STRIDE => 0x8A3D,

#=head2 GL_UNIFORM_NAME_LENGTH
#
#=cut

    GL_UNIFORM_NAME_LENGTH => 0x8A39,

#=head2 GL_UNIFORM_OFFSET
#
#=cut

    GL_UNIFORM_OFFSET => 0x8A3B,

#=head2 GL_UNIFORM_SIZE
#
#=cut

    GL_UNIFORM_SIZE => 0x8A38,

#=head2 GL_UNIFORM_TYPE
#
#=cut

    GL_UNIFORM_TYPE => 0x8A37,

#=head2 GL_UNKNOWN_CONTEXT_RESET
#
#=cut

    GL_UNKNOWN_CONTEXT_RESET => 0x8255,

#=head2 GL_UNKNOWN_CONTEXT_RESET_ARB
#
#=cut

    GL_UNKNOWN_CONTEXT_RESET_ARB => 0x8255,

#=head2 GL_UNPACK_ALIGNMENT
#
#=cut

    GL_UNPACK_ALIGNMENT => 0x0CF5,

#=head2 GL_UNPACK_CLIENT_STORAGE_APPLE
#
#=cut

    GL_UNPACK_CLIENT_STORAGE_APPLE => 0x85B2,

#=head2 GL_UNPACK_CMYK_HINT_EXT
#
#=cut

    GL_UNPACK_CMYK_HINT_EXT => 0x800F,

#=head2 GL_UNPACK_COMPRESSED_BLOCK_DEPTH
#
#=cut

    GL_UNPACK_COMPRESSED_BLOCK_DEPTH => 0x9129,

#=head2 GL_UNPACK_COMPRESSED_BLOCK_HEIGHT
#
#=cut

    GL_UNPACK_COMPRESSED_BLOCK_HEIGHT => 0x9128,

#=head2 GL_UNPACK_COMPRESSED_BLOCK_SIZE
#
#=cut

    GL_UNPACK_COMPRESSED_BLOCK_SIZE => 0x912A,

#=head2 GL_UNPACK_COMPRESSED_BLOCK_WIDTH
#
#=cut

    GL_UNPACK_COMPRESSED_BLOCK_WIDTH => 0x9127,

#=head2 GL_UNPACK_CONSTANT_DATA_SUNX
#
#=cut

    GL_UNPACK_CONSTANT_DATA_SUNX => 0x81D5,

#=head2 GL_UNPACK_IMAGE_DEPTH_SGIS
#
#=cut

    GL_UNPACK_IMAGE_DEPTH_SGIS => 0x8133,

#=head2 GL_UNPACK_IMAGE_HEIGHT
#
#=cut

    GL_UNPACK_IMAGE_HEIGHT => 0x806E,

#=head2 GL_UNPACK_IMAGE_HEIGHT_EXT
#
#=cut

    GL_UNPACK_IMAGE_HEIGHT_EXT => 0x806E,

#=head2 GL_UNPACK_LSB_FIRST
#
#=cut

    GL_UNPACK_LSB_FIRST => 0x0CF1,

#=head2 GL_UNPACK_RESAMPLE_OML
#
#=cut

    GL_UNPACK_RESAMPLE_OML => 0x8985,

#=head2 GL_UNPACK_RESAMPLE_SGIX
#
#=cut

    GL_UNPACK_RESAMPLE_SGIX => 0x842D,

#=head2 GL_UNPACK_ROW_BYTES_APPLE
#
#=cut

    GL_UNPACK_ROW_BYTES_APPLE => 0x8A16,

#=head2 GL_UNPACK_ROW_LENGTH
#
#=cut

    GL_UNPACK_ROW_LENGTH => 0x0CF2,

#=head2 GL_UNPACK_SKIP_IMAGES
#
#=cut

    GL_UNPACK_SKIP_IMAGES => 0x806D,

#=head2 GL_UNPACK_SKIP_IMAGES_EXT
#
#=cut

    GL_UNPACK_SKIP_IMAGES_EXT => 0x806D,

#=head2 GL_UNPACK_SKIP_PIXELS
#
#=cut

    GL_UNPACK_SKIP_PIXELS => 0x0CF4,

#=head2 GL_UNPACK_SKIP_ROWS
#
#=cut

    GL_UNPACK_SKIP_ROWS => 0x0CF3,

#=head2 GL_UNPACK_SKIP_VOLUMES_SGIS
#
#=cut

    GL_UNPACK_SKIP_VOLUMES_SGIS => 0x8132,

#=head2 GL_UNPACK_SUBSAMPLE_RATE_SGIX
#
#=cut

    GL_UNPACK_SUBSAMPLE_RATE_SGIX => 0x85A1,

#=head2 GL_UNPACK_SWAP_BYTES
#
#=cut

    GL_UNPACK_SWAP_BYTES => 0x0CF0,

#=head2 GL_UNSIGNALED
#
#=cut

    GL_UNSIGNALED => 0x9118,

#=head2 GL_UNSIGNED_BYTE
#
#=cut

    GL_UNSIGNED_BYTE => 0x1401,

#=head2 GL_UNSIGNED_BYTE_2_3_3_REV
#
#=cut

    GL_UNSIGNED_BYTE_2_3_3_REV => 0x8362,

#=head2 GL_UNSIGNED_BYTE_3_3_2
#
#=cut

    GL_UNSIGNED_BYTE_3_3_2 => 0x8032,

#=head2 GL_UNSIGNED_BYTE_3_3_2_EXT
#
#=cut

    GL_UNSIGNED_BYTE_3_3_2_EXT => 0x8032,

#=head2 GL_UNSIGNED_IDENTITY_NV
#
#=cut

    GL_UNSIGNED_IDENTITY_NV => 0x8536,

#=head2 GL_UNSIGNED_INT
#
#=cut

    GL_UNSIGNED_INT => 0x1405,

#=head2 GL_UNSIGNED_INT16_NV
#
#=cut

    GL_UNSIGNED_INT16_NV => 0x8FF0,

#=head2 GL_UNSIGNED_INT16_VEC2_NV
#
#=cut

    GL_UNSIGNED_INT16_VEC2_NV => 0x8FF1,

#=head2 GL_UNSIGNED_INT16_VEC3_NV
#
#=cut

    GL_UNSIGNED_INT16_VEC3_NV => 0x8FF2,

#=head2 GL_UNSIGNED_INT16_VEC4_NV
#
#=cut

    GL_UNSIGNED_INT16_VEC4_NV => 0x8FF3,

#=head2 GL_UNSIGNED_INT64_AMD
#
#=cut

    GL_UNSIGNED_INT64_AMD => 0x8BC2,

#=head2 GL_UNSIGNED_INT64_ARB
#
#=cut

    GL_UNSIGNED_INT64_ARB => 0x140F,

#=head2 GL_UNSIGNED_INT64_NV
#
#=cut

    GL_UNSIGNED_INT64_NV => 0x140F,

#=head2 GL_UNSIGNED_INT64_VEC2_NV
#
#=cut

    GL_UNSIGNED_INT64_VEC2_NV => 0x8FF5,

#=head2 GL_UNSIGNED_INT64_VEC3_NV
#
#=cut

    GL_UNSIGNED_INT64_VEC3_NV => 0x8FF6,

#=head2 GL_UNSIGNED_INT64_VEC4_NV
#
#=cut

    GL_UNSIGNED_INT64_VEC4_NV => 0x8FF7,

#=head2 GL_UNSIGNED_INT8_NV
#
#=cut

    GL_UNSIGNED_INT8_NV => 0x8FEC,

#=head2 GL_UNSIGNED_INT8_VEC2_NV
#
#=cut

    GL_UNSIGNED_INT8_VEC2_NV => 0x8FED,

#=head2 GL_UNSIGNED_INT8_VEC3_NV
#
#=cut

    GL_UNSIGNED_INT8_VEC3_NV => 0x8FEE,

#=head2 GL_UNSIGNED_INT8_VEC4_NV
#
#=cut

    GL_UNSIGNED_INT8_VEC4_NV => 0x8FEF,

#=head2 GL_UNSIGNED_INT_10F_11F_11F_REV
#
#=cut

    GL_UNSIGNED_INT_10F_11F_11F_REV => 0x8C3B,

#=head2 GL_UNSIGNED_INT_10F_11F_11F_REV_EXT
#
#=cut

    GL_UNSIGNED_INT_10F_11F_11F_REV_EXT => 0x8C3B,

#=head2 GL_UNSIGNED_INT_10_10_10_2
#
#=cut

    GL_UNSIGNED_INT_10_10_10_2 => 0x8036,

#=head2 GL_UNSIGNED_INT_10_10_10_2_EXT
#
#=cut

    GL_UNSIGNED_INT_10_10_10_2_EXT => 0x8036,

#=head2 GL_UNSIGNED_INT_24_8
#
#=cut

    GL_UNSIGNED_INT_24_8 => 0x84FA,

#=head2 GL_UNSIGNED_INT_24_8_EXT
#
#=cut

    GL_UNSIGNED_INT_24_8_EXT => 0x84FA,

#=head2 GL_UNSIGNED_INT_24_8_MESA
#
#=cut

    GL_UNSIGNED_INT_24_8_MESA => 0x8751,

#=head2 GL_UNSIGNED_INT_24_8_NV
#
#=cut

    GL_UNSIGNED_INT_24_8_NV => 0x84FA,

#=head2 GL_UNSIGNED_INT_2_10_10_10_REV
#
#=cut

    GL_UNSIGNED_INT_2_10_10_10_REV => 0x8368,

#=head2 GL_UNSIGNED_INT_5_9_9_9_REV
#
#=cut

    GL_UNSIGNED_INT_5_9_9_9_REV => 0x8C3E,

#=head2 GL_UNSIGNED_INT_5_9_9_9_REV_EXT
#
#=cut

    GL_UNSIGNED_INT_5_9_9_9_REV_EXT => 0x8C3E,

#=head2 GL_UNSIGNED_INT_8_24_REV_MESA
#
#=cut

    GL_UNSIGNED_INT_8_24_REV_MESA => 0x8752,

#=head2 GL_UNSIGNED_INT_8_8_8_8
#
#=cut

    GL_UNSIGNED_INT_8_8_8_8 => 0x8035,

#=head2 GL_UNSIGNED_INT_8_8_8_8_EXT
#
#=cut

    GL_UNSIGNED_INT_8_8_8_8_EXT => 0x8035,

#=head2 GL_UNSIGNED_INT_8_8_8_8_REV
#
#=cut

    GL_UNSIGNED_INT_8_8_8_8_REV => 0x8367,

#=head2 GL_UNSIGNED_INT_8_8_S8_S8_REV_NV
#
#=cut

    GL_UNSIGNED_INT_8_8_S8_S8_REV_NV => 0x86DB,

#=head2 GL_UNSIGNED_INT_ATOMIC_COUNTER
#
#=cut

    GL_UNSIGNED_INT_ATOMIC_COUNTER => 0x92DB,

#=head2 GL_UNSIGNED_INT_IMAGE_1D
#
#=cut

    GL_UNSIGNED_INT_IMAGE_1D => 0x9062,

#=head2 GL_UNSIGNED_INT_IMAGE_1D_ARRAY
#
#=cut

    GL_UNSIGNED_INT_IMAGE_1D_ARRAY => 0x9068,

#=head2 GL_UNSIGNED_INT_IMAGE_1D_ARRAY_EXT
#
#=cut

    GL_UNSIGNED_INT_IMAGE_1D_ARRAY_EXT => 0x9068,

#=head2 GL_UNSIGNED_INT_IMAGE_1D_EXT
#
#=cut

    GL_UNSIGNED_INT_IMAGE_1D_EXT => 0x9062,

#=head2 GL_UNSIGNED_INT_IMAGE_2D
#
#=cut

    GL_UNSIGNED_INT_IMAGE_2D => 0x9063,

#=head2 GL_UNSIGNED_INT_IMAGE_2D_ARRAY
#
#=cut

    GL_UNSIGNED_INT_IMAGE_2D_ARRAY => 0x9069,

#=head2 GL_UNSIGNED_INT_IMAGE_2D_ARRAY_EXT
#
#=cut

    GL_UNSIGNED_INT_IMAGE_2D_ARRAY_EXT => 0x9069,

#=head2 GL_UNSIGNED_INT_IMAGE_2D_EXT
#
#=cut

    GL_UNSIGNED_INT_IMAGE_2D_EXT => 0x9063,

#=head2 GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE
#
#=cut

    GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE => 0x906B,

#=head2 GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_ARRAY
#
#=cut

    GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_ARRAY => 0x906C,

#=head2 GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_ARRAY_EXT
#
#=cut

    GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_ARRAY_EXT => 0x906C,

#=head2 GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_EXT
#
#=cut

    GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_EXT => 0x906B,

#=head2 GL_UNSIGNED_INT_IMAGE_2D_RECT
#
#=cut

    GL_UNSIGNED_INT_IMAGE_2D_RECT => 0x9065,

#=head2 GL_UNSIGNED_INT_IMAGE_2D_RECT_EXT
#
#=cut

    GL_UNSIGNED_INT_IMAGE_2D_RECT_EXT => 0x9065,

#=head2 GL_UNSIGNED_INT_IMAGE_3D
#
#=cut

    GL_UNSIGNED_INT_IMAGE_3D => 0x9064,

#=head2 GL_UNSIGNED_INT_IMAGE_3D_EXT
#
#=cut

    GL_UNSIGNED_INT_IMAGE_3D_EXT => 0x9064,

#=head2 GL_UNSIGNED_INT_IMAGE_BUFFER
#
#=cut

    GL_UNSIGNED_INT_IMAGE_BUFFER => 0x9067,

#=head2 GL_UNSIGNED_INT_IMAGE_BUFFER_EXT
#
#=cut

    GL_UNSIGNED_INT_IMAGE_BUFFER_EXT => 0x9067,

#=head2 GL_UNSIGNED_INT_IMAGE_CUBE
#
#=cut

    GL_UNSIGNED_INT_IMAGE_CUBE => 0x9066,

#=head2 GL_UNSIGNED_INT_IMAGE_CUBE_EXT
#
#=cut

    GL_UNSIGNED_INT_IMAGE_CUBE_EXT => 0x9066,

#=head2 GL_UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY
#
#=cut

    GL_UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY => 0x906A,

#=head2 GL_UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY_EXT
#
#=cut

    GL_UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY_EXT => 0x906A,

#=head2 GL_UNSIGNED_INT_S8_S8_8_8_NV
#
#=cut

    GL_UNSIGNED_INT_S8_S8_8_8_NV => 0x86DA,

#=head2 GL_UNSIGNED_INT_SAMPLER_1D
#
#=cut

    GL_UNSIGNED_INT_SAMPLER_1D => 0x8DD1,

#=head2 GL_UNSIGNED_INT_SAMPLER_1D_ARRAY
#
#=cut

    GL_UNSIGNED_INT_SAMPLER_1D_ARRAY => 0x8DD6,

#=head2 GL_UNSIGNED_INT_SAMPLER_1D_ARRAY_EXT
#
#=cut

    GL_UNSIGNED_INT_SAMPLER_1D_ARRAY_EXT => 0x8DD6,

#=head2 GL_UNSIGNED_INT_SAMPLER_1D_EXT
#
#=cut

    GL_UNSIGNED_INT_SAMPLER_1D_EXT => 0x8DD1,

#=head2 GL_UNSIGNED_INT_SAMPLER_2D
#
#=cut

    GL_UNSIGNED_INT_SAMPLER_2D => 0x8DD2,

#=head2 GL_UNSIGNED_INT_SAMPLER_2D_ARRAY
#
#=cut

    GL_UNSIGNED_INT_SAMPLER_2D_ARRAY => 0x8DD7,

#=head2 GL_UNSIGNED_INT_SAMPLER_2D_ARRAY_EXT
#
#=cut

    GL_UNSIGNED_INT_SAMPLER_2D_ARRAY_EXT => 0x8DD7,

#=head2 GL_UNSIGNED_INT_SAMPLER_2D_EXT
#
#=cut

    GL_UNSIGNED_INT_SAMPLER_2D_EXT => 0x8DD2,

#=head2 GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE
#
#=cut

    GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE => 0x910A,

#=head2 GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE_ARRAY
#
#=cut

    GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE_ARRAY => 0x910D,

#=head2 GL_UNSIGNED_INT_SAMPLER_2D_RECT
#
#=cut

    GL_UNSIGNED_INT_SAMPLER_2D_RECT => 0x8DD5,

#=head2 GL_UNSIGNED_INT_SAMPLER_2D_RECT_EXT
#
#=cut

    GL_UNSIGNED_INT_SAMPLER_2D_RECT_EXT => 0x8DD5,

#=head2 GL_UNSIGNED_INT_SAMPLER_3D
#
#=cut

    GL_UNSIGNED_INT_SAMPLER_3D => 0x8DD3,

#=head2 GL_UNSIGNED_INT_SAMPLER_3D_EXT
#
#=cut

    GL_UNSIGNED_INT_SAMPLER_3D_EXT => 0x8DD3,

#=head2 GL_UNSIGNED_INT_SAMPLER_BUFFER
#
#=cut

    GL_UNSIGNED_INT_SAMPLER_BUFFER => 0x8DD8,

#=head2 GL_UNSIGNED_INT_SAMPLER_BUFFER_AMD
#
#=cut

    GL_UNSIGNED_INT_SAMPLER_BUFFER_AMD => 0x9003,

#=head2 GL_UNSIGNED_INT_SAMPLER_BUFFER_EXT
#
#=cut

    GL_UNSIGNED_INT_SAMPLER_BUFFER_EXT => 0x8DD8,

#=head2 GL_UNSIGNED_INT_SAMPLER_CUBE
#
#=cut

    GL_UNSIGNED_INT_SAMPLER_CUBE => 0x8DD4,

#=head2 GL_UNSIGNED_INT_SAMPLER_CUBE_EXT
#
#=cut

    GL_UNSIGNED_INT_SAMPLER_CUBE_EXT => 0x8DD4,

#=head2 GL_UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY
#
#=cut

    GL_UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY => 0x900F,

#=head2 GL_UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY_ARB
#
#=cut

    GL_UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY_ARB => 0x900F,

#=head2 GL_UNSIGNED_INT_SAMPLER_RENDERBUFFER_NV
#
#=cut

    GL_UNSIGNED_INT_SAMPLER_RENDERBUFFER_NV => 0x8E58,

#=head2 GL_UNSIGNED_INT_VEC2
#
#=cut

    GL_UNSIGNED_INT_VEC2 => 0x8DC6,

#=head2 GL_UNSIGNED_INT_VEC2_EXT
#
#=cut

    GL_UNSIGNED_INT_VEC2_EXT => 0x8DC6,

#=head2 GL_UNSIGNED_INT_VEC3
#
#=cut

    GL_UNSIGNED_INT_VEC3 => 0x8DC7,

#=head2 GL_UNSIGNED_INT_VEC3_EXT
#
#=cut

    GL_UNSIGNED_INT_VEC3_EXT => 0x8DC7,

#=head2 GL_UNSIGNED_INT_VEC4
#
#=cut

    GL_UNSIGNED_INT_VEC4 => 0x8DC8,

#=head2 GL_UNSIGNED_INT_VEC4_EXT
#
#=cut

    GL_UNSIGNED_INT_VEC4_EXT => 0x8DC8,

#=head2 GL_UNSIGNED_INVERT_NV
#
#=cut

    GL_UNSIGNED_INVERT_NV => 0x8537,

#=head2 GL_UNSIGNED_NORMALIZED
#
#=cut

    GL_UNSIGNED_NORMALIZED => 0x8C17,

#=head2 GL_UNSIGNED_NORMALIZED_ARB
#
#=cut

    GL_UNSIGNED_NORMALIZED_ARB => 0x8C17,

#=head2 GL_UNSIGNED_SHORT
#
#=cut

    GL_UNSIGNED_SHORT => 0x1403,

#=head2 GL_UNSIGNED_SHORT_15_1_MESA
#
#=cut

    GL_UNSIGNED_SHORT_15_1_MESA => 0x8753,

#=head2 GL_UNSIGNED_SHORT_1_15_REV_MESA
#
#=cut

    GL_UNSIGNED_SHORT_1_15_REV_MESA => 0x8754,

#=head2 GL_UNSIGNED_SHORT_1_5_5_5_REV
#
#=cut

    GL_UNSIGNED_SHORT_1_5_5_5_REV => 0x8366,

#=head2 GL_UNSIGNED_SHORT_4_4_4_4
#
#=cut

    GL_UNSIGNED_SHORT_4_4_4_4 => 0x8033,

#=head2 GL_UNSIGNED_SHORT_4_4_4_4_EXT
#
#=cut

    GL_UNSIGNED_SHORT_4_4_4_4_EXT => 0x8033,

#=head2 GL_UNSIGNED_SHORT_4_4_4_4_REV
#
#=cut

    GL_UNSIGNED_SHORT_4_4_4_4_REV => 0x8365,

#=head2 GL_UNSIGNED_SHORT_5_5_5_1
#
#=cut

    GL_UNSIGNED_SHORT_5_5_5_1 => 0x8034,

#=head2 GL_UNSIGNED_SHORT_5_5_5_1_EXT
#
#=cut

    GL_UNSIGNED_SHORT_5_5_5_1_EXT => 0x8034,

#=head2 GL_UNSIGNED_SHORT_5_6_5
#
#=cut

    GL_UNSIGNED_SHORT_5_6_5 => 0x8363,

#=head2 GL_UNSIGNED_SHORT_5_6_5_REV
#
#=cut

    GL_UNSIGNED_SHORT_5_6_5_REV => 0x8364,

#=head2 GL_UNSIGNED_SHORT_8_8_APPLE
#
#=cut

    GL_UNSIGNED_SHORT_8_8_APPLE => 0x85BA,

#=head2 GL_UNSIGNED_SHORT_8_8_MESA
#
#=cut

    GL_UNSIGNED_SHORT_8_8_MESA => 0x85BA,

#=head2 GL_UNSIGNED_SHORT_8_8_REV_APPLE
#
#=cut

    GL_UNSIGNED_SHORT_8_8_REV_APPLE => 0x85BB,

#=head2 GL_UNSIGNED_SHORT_8_8_REV_MESA
#
#=cut

    GL_UNSIGNED_SHORT_8_8_REV_MESA => 0x85BB,

#=head2 GL_UPPER_LEFT
#
#=cut

    GL_UPPER_LEFT => 0x8CA2,

#=head2 GL_USE_MISSING_GLYPH_NV
#
#=cut

    GL_USE_MISSING_GLYPH_NV => 0x90AA,

#=head2 GL_UTF16_NV
#
#=cut

    GL_UTF16_NV => 0x909B,

#=head2 GL_UTF8_NV
#
#=cut

    GL_UTF8_NV => 0x909A,

#=head2 GL_V2F
#
#=cut

    GL_V2F => 0x2A20,

#=head2 GL_V3F
#
#=cut

    GL_V3F => 0x2A21,

#=head2 GL_VALIDATE_STATUS
#
#=cut

    GL_VALIDATE_STATUS => 0x8B83,

#=head2 GL_VARIABLE_A_NV
#
#=cut

    GL_VARIABLE_A_NV => 0x8523,

#=head2 GL_VARIABLE_B_NV
#
#=cut

    GL_VARIABLE_B_NV => 0x8524,

#=head2 GL_VARIABLE_C_NV
#
#=cut

    GL_VARIABLE_C_NV => 0x8525,

#=head2 GL_VARIABLE_D_NV
#
#=cut

    GL_VARIABLE_D_NV => 0x8526,

#=head2 GL_VARIABLE_E_NV
#
#=cut

    GL_VARIABLE_E_NV => 0x8527,

#=head2 GL_VARIABLE_F_NV
#
#=cut

    GL_VARIABLE_F_NV => 0x8528,

#=head2 GL_VARIABLE_G_NV
#
#=cut

    GL_VARIABLE_G_NV => 0x8529,

#=head2 GL_VARIANT_ARRAY_EXT
#
#=cut

    GL_VARIANT_ARRAY_EXT => 0x87E8,

#=head2 GL_VARIANT_ARRAY_POINTER_EXT
#
#=cut

    GL_VARIANT_ARRAY_POINTER_EXT => 0x87E9,

#=head2 GL_VARIANT_ARRAY_STRIDE_EXT
#
#=cut

    GL_VARIANT_ARRAY_STRIDE_EXT => 0x87E6,

#=head2 GL_VARIANT_ARRAY_TYPE_EXT
#
#=cut

    GL_VARIANT_ARRAY_TYPE_EXT => 0x87E7,

#=head2 GL_VARIANT_DATATYPE_EXT
#
#=cut

    GL_VARIANT_DATATYPE_EXT => 0x87E5,

#=head2 GL_VARIANT_EXT
#
#=cut

    GL_VARIANT_EXT => 0x87C1,

#=head2 GL_VARIANT_VALUE_EXT
#
#=cut

    GL_VARIANT_VALUE_EXT => 0x87E4,

#=head2 GL_VBO_FREE_MEMORY_ATI
#
#=cut

    GL_VBO_FREE_MEMORY_ATI => 0x87FB,

#=head2 GL_VECTOR_EXT
#
#=cut

    GL_VECTOR_EXT => 0x87BF,

#=head2 GL_VENDOR
#
#=cut

    GL_VENDOR => 0x1F00,

#=head2 GL_VERSION
#
#=cut

    GL_VERSION => 0x1F02,

#=head2 GL_VERSION_1_1
#
#=cut

    GL_VERSION_1_1 => 1,

#=head2 GL_VERSION_1_2
#
#=cut

    GL_VERSION_1_2 => 1,

#=head2 GL_VERSION_1_3
#
#=cut

    GL_VERSION_1_3 => 1,

#=head2 GL_VERSION_1_4
#
#=cut

    GL_VERSION_1_4 => 1,

#=head2 GL_VERSION_1_5
#
#=cut

    GL_VERSION_1_5 => 1,

#=head2 GL_VERSION_2_0
#
#=cut

    GL_VERSION_2_0 => 1,

#=head2 GL_VERSION_2_1
#
#=cut

    GL_VERSION_2_1 => 1,

#=head2 GL_VERSION_3_0
#
#=cut

    GL_VERSION_3_0 => 1,

#=head2 GL_VERSION_3_1
#
#=cut

    GL_VERSION_3_1 => 1,

#=head2 GL_VERSION_3_2
#
#=cut

    GL_VERSION_3_2 => 1,

#=head2 GL_VERSION_3_3
#
#=cut

    GL_VERSION_3_3 => 1,

#=head2 GL_VERSION_4_0
#
#=cut

    GL_VERSION_4_0 => 1,

#=head2 GL_VERSION_4_1
#
#=cut

    GL_VERSION_4_1 => 1,

#=head2 GL_VERSION_4_2
#
#=cut

    GL_VERSION_4_2 => 1,

#=head2 GL_VERSION_4_3
#
#=cut

    GL_VERSION_4_3 => 1,

#=head2 GL_VERSION_4_4
#
#=cut

    GL_VERSION_4_4 => 1,

#=head2 GL_VERSION_4_5
#
#=cut

    GL_VERSION_4_5 => 1,

#=head2 GL_VERTEX23_BIT_PGI
#
#=cut

    GL_VERTEX23_BIT_PGI => 0x00000004,

#=head2 GL_VERTEX4_BIT_PGI
#
#=cut

    GL_VERTEX4_BIT_PGI => 0x00000008,

#=head2 GL_VERTEX_ARRAY
#
#=cut

    GL_VERTEX_ARRAY => 0x8074,

#=head2 GL_VERTEX_ARRAY_ADDRESS_NV
#
#=cut

    GL_VERTEX_ARRAY_ADDRESS_NV => 0x8F21,

#=head2 GL_VERTEX_ARRAY_BINDING
#
#=cut

    GL_VERTEX_ARRAY_BINDING => 0x85B5,

#=head2 GL_VERTEX_ARRAY_BINDING_APPLE
#
#=cut

    GL_VERTEX_ARRAY_BINDING_APPLE => 0x85B5,

#=head2 GL_VERTEX_ARRAY_BUFFER_BINDING
#
#=cut

    GL_VERTEX_ARRAY_BUFFER_BINDING => 0x8896,

#=head2 GL_VERTEX_ARRAY_BUFFER_BINDING_ARB
#
#=cut

    GL_VERTEX_ARRAY_BUFFER_BINDING_ARB => 0x8896,

#=head2 GL_VERTEX_ARRAY_COUNT_EXT
#
#=cut

    GL_VERTEX_ARRAY_COUNT_EXT => 0x807D,

#=head2 GL_VERTEX_ARRAY_EXT
#
#=cut

    GL_VERTEX_ARRAY_EXT => 0x8074,

#=head2 GL_VERTEX_ARRAY_LENGTH_NV
#
#=cut

    GL_VERTEX_ARRAY_LENGTH_NV => 0x8F2B,

#=head2 GL_VERTEX_ARRAY_LIST_IBM
#
#=cut

    GL_VERTEX_ARRAY_LIST_IBM => 103070,

#=head2 GL_VERTEX_ARRAY_LIST_STRIDE_IBM
#
#=cut

    GL_VERTEX_ARRAY_LIST_STRIDE_IBM => 103080,

#=head2 GL_VERTEX_ARRAY_OBJECT_AMD
#
#=cut

    GL_VERTEX_ARRAY_OBJECT_AMD => 0x9154,

#=head2 GL_VERTEX_ARRAY_OBJECT_EXT
#
#=cut

    GL_VERTEX_ARRAY_OBJECT_EXT => 0x9154,

#=head2 GL_VERTEX_ARRAY_PARALLEL_POINTERS_INTEL
#
#=cut

    GL_VERTEX_ARRAY_PARALLEL_POINTERS_INTEL => 0x83F5,

#=head2 GL_VERTEX_ARRAY_POINTER
#
#=cut

    GL_VERTEX_ARRAY_POINTER => 0x808E,

#=head2 GL_VERTEX_ARRAY_POINTER_EXT
#
#=cut

    GL_VERTEX_ARRAY_POINTER_EXT => 0x808E,

#=head2 GL_VERTEX_ARRAY_RANGE_APPLE
#
#=cut

    GL_VERTEX_ARRAY_RANGE_APPLE => 0x851D,

#=head2 GL_VERTEX_ARRAY_RANGE_LENGTH_APPLE
#
#=cut

    GL_VERTEX_ARRAY_RANGE_LENGTH_APPLE => 0x851E,

#=head2 GL_VERTEX_ARRAY_RANGE_LENGTH_NV
#
#=cut

    GL_VERTEX_ARRAY_RANGE_LENGTH_NV => 0x851E,

#=head2 GL_VERTEX_ARRAY_RANGE_NV
#
#=cut

    GL_VERTEX_ARRAY_RANGE_NV => 0x851D,

#=head2 GL_VERTEX_ARRAY_RANGE_POINTER_APPLE
#
#=cut

    GL_VERTEX_ARRAY_RANGE_POINTER_APPLE => 0x8521,

#=head2 GL_VERTEX_ARRAY_RANGE_POINTER_NV
#
#=cut

    GL_VERTEX_ARRAY_RANGE_POINTER_NV => 0x8521,

#=head2 GL_VERTEX_ARRAY_RANGE_VALID_NV
#
#=cut

    GL_VERTEX_ARRAY_RANGE_VALID_NV => 0x851F,

#=head2 GL_VERTEX_ARRAY_RANGE_WITHOUT_FLUSH_NV
#
#=cut

    GL_VERTEX_ARRAY_RANGE_WITHOUT_FLUSH_NV => 0x8533,

#=head2 GL_VERTEX_ARRAY_SIZE
#
#=cut

    GL_VERTEX_ARRAY_SIZE => 0x807A,

#=head2 GL_VERTEX_ARRAY_SIZE_EXT
#
#=cut

    GL_VERTEX_ARRAY_SIZE_EXT => 0x807A,

#=head2 GL_VERTEX_ARRAY_STORAGE_HINT_APPLE
#
#=cut

    GL_VERTEX_ARRAY_STORAGE_HINT_APPLE => 0x851F,

#=head2 GL_VERTEX_ARRAY_STRIDE
#
#=cut

    GL_VERTEX_ARRAY_STRIDE => 0x807C,

#=head2 GL_VERTEX_ARRAY_STRIDE_EXT
#
#=cut

    GL_VERTEX_ARRAY_STRIDE_EXT => 0x807C,

#=head2 GL_VERTEX_ARRAY_TYPE
#
#=cut

    GL_VERTEX_ARRAY_TYPE => 0x807B,

#=head2 GL_VERTEX_ARRAY_TYPE_EXT
#
#=cut

    GL_VERTEX_ARRAY_TYPE_EXT => 0x807B,

#=head2 GL_VERTEX_ATTRIB_ARRAY0_NV
#
#=cut

    GL_VERTEX_ATTRIB_ARRAY0_NV => 0x8650,

#=head2 GL_VERTEX_ATTRIB_ARRAY10_NV
#
#=cut

    GL_VERTEX_ATTRIB_ARRAY10_NV => 0x865A,

#=head2 GL_VERTEX_ATTRIB_ARRAY11_NV
#
#=cut

    GL_VERTEX_ATTRIB_ARRAY11_NV => 0x865B,

#=head2 GL_VERTEX_ATTRIB_ARRAY12_NV
#
#=cut

    GL_VERTEX_ATTRIB_ARRAY12_NV => 0x865C,

#=head2 GL_VERTEX_ATTRIB_ARRAY13_NV
#
#=cut

    GL_VERTEX_ATTRIB_ARRAY13_NV => 0x865D,

#=head2 GL_VERTEX_ATTRIB_ARRAY14_NV
#
#=cut

    GL_VERTEX_ATTRIB_ARRAY14_NV => 0x865E,

#=head2 GL_VERTEX_ATTRIB_ARRAY15_NV
#
#=cut

    GL_VERTEX_ATTRIB_ARRAY15_NV => 0x865F,

#=head2 GL_VERTEX_ATTRIB_ARRAY1_NV
#
#=cut

    GL_VERTEX_ATTRIB_ARRAY1_NV => 0x8651,

#=head2 GL_VERTEX_ATTRIB_ARRAY2_NV
#
#=cut

    GL_VERTEX_ATTRIB_ARRAY2_NV => 0x8652,

#=head2 GL_VERTEX_ATTRIB_ARRAY3_NV
#
#=cut

    GL_VERTEX_ATTRIB_ARRAY3_NV => 0x8653,

#=head2 GL_VERTEX_ATTRIB_ARRAY4_NV
#
#=cut

    GL_VERTEX_ATTRIB_ARRAY4_NV => 0x8654,

#=head2 GL_VERTEX_ATTRIB_ARRAY5_NV
#
#=cut

    GL_VERTEX_ATTRIB_ARRAY5_NV => 0x8655,

#=head2 GL_VERTEX_ATTRIB_ARRAY6_NV
#
#=cut

    GL_VERTEX_ATTRIB_ARRAY6_NV => 0x8656,

#=head2 GL_VERTEX_ATTRIB_ARRAY7_NV
#
#=cut

    GL_VERTEX_ATTRIB_ARRAY7_NV => 0x8657,

#=head2 GL_VERTEX_ATTRIB_ARRAY8_NV
#
#=cut

    GL_VERTEX_ATTRIB_ARRAY8_NV => 0x8658,

#=head2 GL_VERTEX_ATTRIB_ARRAY9_NV
#
#=cut

    GL_VERTEX_ATTRIB_ARRAY9_NV => 0x8659,

#=head2 GL_VERTEX_ATTRIB_ARRAY_ADDRESS_NV
#
#=cut

    GL_VERTEX_ATTRIB_ARRAY_ADDRESS_NV => 0x8F20,

#=head2 GL_VERTEX_ATTRIB_ARRAY_BARRIER_BIT
#
#=cut

    GL_VERTEX_ATTRIB_ARRAY_BARRIER_BIT => 0x00000001,

#=head2 GL_VERTEX_ATTRIB_ARRAY_BARRIER_BIT_EXT
#
#=cut

    GL_VERTEX_ATTRIB_ARRAY_BARRIER_BIT_EXT => 0x00000001,

#=head2 GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING
#
#=cut

    GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING => 0x889F,

#=head2 GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING_ARB
#
#=cut

    GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING_ARB => 0x889F,

#=head2 GL_VERTEX_ATTRIB_ARRAY_DIVISOR
#
#=cut

    GL_VERTEX_ATTRIB_ARRAY_DIVISOR => 0x88FE,

#=head2 GL_VERTEX_ATTRIB_ARRAY_DIVISOR_ARB
#
#=cut

    GL_VERTEX_ATTRIB_ARRAY_DIVISOR_ARB => 0x88FE,

#=head2 GL_VERTEX_ATTRIB_ARRAY_ENABLED
#
#=cut

    GL_VERTEX_ATTRIB_ARRAY_ENABLED => 0x8622,

#=head2 GL_VERTEX_ATTRIB_ARRAY_ENABLED_ARB
#
#=cut

    GL_VERTEX_ATTRIB_ARRAY_ENABLED_ARB => 0x8622,

#=head2 GL_VERTEX_ATTRIB_ARRAY_INTEGER
#
#=cut

    GL_VERTEX_ATTRIB_ARRAY_INTEGER => 0x88FD,

#=head2 GL_VERTEX_ATTRIB_ARRAY_INTEGER_EXT
#
#=cut

    GL_VERTEX_ATTRIB_ARRAY_INTEGER_EXT => 0x88FD,

#=head2 GL_VERTEX_ATTRIB_ARRAY_INTEGER_NV
#
#=cut

    GL_VERTEX_ATTRIB_ARRAY_INTEGER_NV => 0x88FD,

#=head2 GL_VERTEX_ATTRIB_ARRAY_LENGTH_NV
#
#=cut

    GL_VERTEX_ATTRIB_ARRAY_LENGTH_NV => 0x8F2A,

#=head2 GL_VERTEX_ATTRIB_ARRAY_LONG
#
#=cut

    GL_VERTEX_ATTRIB_ARRAY_LONG => 0x874E,

#=head2 GL_VERTEX_ATTRIB_ARRAY_NORMALIZED
#
#=cut

    GL_VERTEX_ATTRIB_ARRAY_NORMALIZED => 0x886A,

#=head2 GL_VERTEX_ATTRIB_ARRAY_NORMALIZED_ARB
#
#=cut

    GL_VERTEX_ATTRIB_ARRAY_NORMALIZED_ARB => 0x886A,

#=head2 GL_VERTEX_ATTRIB_ARRAY_POINTER
#
#=cut

    GL_VERTEX_ATTRIB_ARRAY_POINTER => 0x8645,

#=head2 GL_VERTEX_ATTRIB_ARRAY_POINTER_ARB
#
#=cut

    GL_VERTEX_ATTRIB_ARRAY_POINTER_ARB => 0x8645,

#=head2 GL_VERTEX_ATTRIB_ARRAY_SIZE
#
#=cut

    GL_VERTEX_ATTRIB_ARRAY_SIZE => 0x8623,

#=head2 GL_VERTEX_ATTRIB_ARRAY_SIZE_ARB
#
#=cut

    GL_VERTEX_ATTRIB_ARRAY_SIZE_ARB => 0x8623,

#=head2 GL_VERTEX_ATTRIB_ARRAY_STRIDE
#
#=cut

    GL_VERTEX_ATTRIB_ARRAY_STRIDE => 0x8624,

#=head2 GL_VERTEX_ATTRIB_ARRAY_STRIDE_ARB
#
#=cut

    GL_VERTEX_ATTRIB_ARRAY_STRIDE_ARB => 0x8624,

#=head2 GL_VERTEX_ATTRIB_ARRAY_TYPE
#
#=cut

    GL_VERTEX_ATTRIB_ARRAY_TYPE => 0x8625,

#=head2 GL_VERTEX_ATTRIB_ARRAY_TYPE_ARB
#
#=cut

    GL_VERTEX_ATTRIB_ARRAY_TYPE_ARB => 0x8625,

#=head2 GL_VERTEX_ATTRIB_ARRAY_UNIFIED_NV
#
#=cut

    GL_VERTEX_ATTRIB_ARRAY_UNIFIED_NV => 0x8F1E,

#=head2 GL_VERTEX_ATTRIB_BINDING
#
#=cut

    GL_VERTEX_ATTRIB_BINDING => 0x82D4,

#=head2 GL_VERTEX_ATTRIB_MAP1_APPLE
#
#=cut

    GL_VERTEX_ATTRIB_MAP1_APPLE => 0x8A00,

#=head2 GL_VERTEX_ATTRIB_MAP1_COEFF_APPLE
#
#=cut

    GL_VERTEX_ATTRIB_MAP1_COEFF_APPLE => 0x8A03,

#=head2 GL_VERTEX_ATTRIB_MAP1_DOMAIN_APPLE
#
#=cut

    GL_VERTEX_ATTRIB_MAP1_DOMAIN_APPLE => 0x8A05,

#=head2 GL_VERTEX_ATTRIB_MAP1_ORDER_APPLE
#
#=cut

    GL_VERTEX_ATTRIB_MAP1_ORDER_APPLE => 0x8A04,

#=head2 GL_VERTEX_ATTRIB_MAP1_SIZE_APPLE
#
#=cut

    GL_VERTEX_ATTRIB_MAP1_SIZE_APPLE => 0x8A02,

#=head2 GL_VERTEX_ATTRIB_MAP2_APPLE
#
#=cut

    GL_VERTEX_ATTRIB_MAP2_APPLE => 0x8A01,

#=head2 GL_VERTEX_ATTRIB_MAP2_COEFF_APPLE
#
#=cut

    GL_VERTEX_ATTRIB_MAP2_COEFF_APPLE => 0x8A07,

#=head2 GL_VERTEX_ATTRIB_MAP2_DOMAIN_APPLE
#
#=cut

    GL_VERTEX_ATTRIB_MAP2_DOMAIN_APPLE => 0x8A09,

#=head2 GL_VERTEX_ATTRIB_MAP2_ORDER_APPLE
#
#=cut

    GL_VERTEX_ATTRIB_MAP2_ORDER_APPLE => 0x8A08,

#=head2 GL_VERTEX_ATTRIB_MAP2_SIZE_APPLE
#
#=cut

    GL_VERTEX_ATTRIB_MAP2_SIZE_APPLE => 0x8A06,

#=head2 GL_VERTEX_ATTRIB_RELATIVE_OFFSET
#
#=cut

    GL_VERTEX_ATTRIB_RELATIVE_OFFSET => 0x82D5,

#=head2 GL_VERTEX_BINDING_BUFFER
#
#=cut

    GL_VERTEX_BINDING_BUFFER => 0x8F4F,

#=head2 GL_VERTEX_BINDING_DIVISOR
#
#=cut

    GL_VERTEX_BINDING_DIVISOR => 0x82D6,

#=head2 GL_VERTEX_BINDING_OFFSET
#
#=cut

    GL_VERTEX_BINDING_OFFSET => 0x82D7,

#=head2 GL_VERTEX_BINDING_STRIDE
#
#=cut

    GL_VERTEX_BINDING_STRIDE => 0x82D8,

#=head2 GL_VERTEX_BLEND_ARB
#
#=cut

    GL_VERTEX_BLEND_ARB => 0x86A7,

#=head2 GL_VERTEX_CONSISTENT_HINT_PGI
#
#=cut

    GL_VERTEX_CONSISTENT_HINT_PGI => 0x1A22B,

#=head2 GL_VERTEX_DATA_HINT_PGI
#
#=cut

    GL_VERTEX_DATA_HINT_PGI => 0x1A22A,

#=head2 GL_VERTEX_ELEMENT_SWIZZLE_AMD
#
#=cut

    GL_VERTEX_ELEMENT_SWIZZLE_AMD => 0x91A4,

#=head2 GL_VERTEX_ID_NV
#
#=cut

    GL_VERTEX_ID_NV => 0x8C7B,

#=head2 GL_VERTEX_ID_SWIZZLE_AMD
#
#=cut

    GL_VERTEX_ID_SWIZZLE_AMD => 0x91A5,

#=head2 GL_VERTEX_PRECLIP_HINT_SGIX
#
#=cut

    GL_VERTEX_PRECLIP_HINT_SGIX => 0x83EF,

#=head2 GL_VERTEX_PRECLIP_SGIX
#
#=cut

    GL_VERTEX_PRECLIP_SGIX => 0x83EE,

#=head2 GL_VERTEX_PROGRAM_ARB
#
#=cut

    GL_VERTEX_PROGRAM_ARB => 0x8620,

#=head2 GL_VERTEX_PROGRAM_BINDING_NV
#
#=cut

    GL_VERTEX_PROGRAM_BINDING_NV => 0x864A,

#=head2 GL_VERTEX_PROGRAM_NV
#
#=cut

    GL_VERTEX_PROGRAM_NV => 0x8620,

#=head2 GL_VERTEX_PROGRAM_PARAMETER_BUFFER_NV
#
#=cut

    GL_VERTEX_PROGRAM_PARAMETER_BUFFER_NV => 0x8DA2,

#=head2 GL_VERTEX_PROGRAM_POINT_SIZE
#
#=cut

    GL_VERTEX_PROGRAM_POINT_SIZE => 0x8642,

#=head2 GL_VERTEX_PROGRAM_POINT_SIZE_ARB
#
#=cut

    GL_VERTEX_PROGRAM_POINT_SIZE_ARB => 0x8642,

#=head2 GL_VERTEX_PROGRAM_POINT_SIZE_NV
#
#=cut

    GL_VERTEX_PROGRAM_POINT_SIZE_NV => 0x8642,

#=head2 GL_VERTEX_PROGRAM_TWO_SIDE
#
#=cut

    GL_VERTEX_PROGRAM_TWO_SIDE => 0x8643,

#=head2 GL_VERTEX_PROGRAM_TWO_SIDE_ARB
#
#=cut

    GL_VERTEX_PROGRAM_TWO_SIDE_ARB => 0x8643,

#=head2 GL_VERTEX_PROGRAM_TWO_SIDE_NV
#
#=cut

    GL_VERTEX_PROGRAM_TWO_SIDE_NV => 0x8643,

#=head2 GL_VERTEX_SHADER
#
#=cut

    GL_VERTEX_SHADER => 0x8B31,

#=head2 GL_VERTEX_SHADER_ARB
#
#=cut

    GL_VERTEX_SHADER_ARB => 0x8B31,

#=head2 GL_VERTEX_SHADER_BINDING_EXT
#
#=cut

    GL_VERTEX_SHADER_BINDING_EXT => 0x8781,

#=head2 GL_VERTEX_SHADER_BIT
#
#=cut

    GL_VERTEX_SHADER_BIT => 0x00000001,

#=head2 GL_VERTEX_SHADER_EXT
#
#=cut

    GL_VERTEX_SHADER_EXT => 0x8780,

#=head2 GL_VERTEX_SHADER_INSTRUCTIONS_EXT
#
#=cut

    GL_VERTEX_SHADER_INSTRUCTIONS_EXT => 0x87CF,

#=head2 GL_VERTEX_SHADER_INVARIANTS_EXT
#
#=cut

    GL_VERTEX_SHADER_INVARIANTS_EXT => 0x87D1,

#=head2 GL_VERTEX_SHADER_INVOCATIONS_ARB
#
#=cut

    GL_VERTEX_SHADER_INVOCATIONS_ARB => 0x82F0,

#=head2 GL_VERTEX_SHADER_LOCALS_EXT
#
#=cut

    GL_VERTEX_SHADER_LOCALS_EXT => 0x87D3,

#=head2 GL_VERTEX_SHADER_LOCAL_CONSTANTS_EXT
#
#=cut

    GL_VERTEX_SHADER_LOCAL_CONSTANTS_EXT => 0x87D2,

#=head2 GL_VERTEX_SHADER_OPTIMIZED_EXT
#
#=cut

    GL_VERTEX_SHADER_OPTIMIZED_EXT => 0x87D4,

#=head2 GL_VERTEX_SHADER_VARIANTS_EXT
#
#=cut

    GL_VERTEX_SHADER_VARIANTS_EXT => 0x87D0,

#=head2 GL_VERTEX_SOURCE_ATI
#
#=cut

    GL_VERTEX_SOURCE_ATI => 0x8774,

#=head2 GL_VERTEX_STATE_PROGRAM_NV
#
#=cut

    GL_VERTEX_STATE_PROGRAM_NV => 0x8621,

#=head2 GL_VERTEX_STREAM0_ATI
#
#=cut

    GL_VERTEX_STREAM0_ATI => 0x876C,

#=head2 GL_VERTEX_STREAM1_ATI
#
#=cut

    GL_VERTEX_STREAM1_ATI => 0x876D,

#=head2 GL_VERTEX_STREAM2_ATI
#
#=cut

    GL_VERTEX_STREAM2_ATI => 0x876E,

#=head2 GL_VERTEX_STREAM3_ATI
#
#=cut

    GL_VERTEX_STREAM3_ATI => 0x876F,

#=head2 GL_VERTEX_STREAM4_ATI
#
#=cut

    GL_VERTEX_STREAM4_ATI => 0x8770,

#=head2 GL_VERTEX_STREAM5_ATI
#
#=cut

    GL_VERTEX_STREAM5_ATI => 0x8771,

#=head2 GL_VERTEX_STREAM6_ATI
#
#=cut

    GL_VERTEX_STREAM6_ATI => 0x8772,

#=head2 GL_VERTEX_STREAM7_ATI
#
#=cut

    GL_VERTEX_STREAM7_ATI => 0x8773,

#=head2 GL_VERTEX_SUBROUTINE
#
#=cut

    GL_VERTEX_SUBROUTINE => 0x92E8,

#=head2 GL_VERTEX_SUBROUTINE_UNIFORM
#
#=cut

    GL_VERTEX_SUBROUTINE_UNIFORM => 0x92EE,

#=head2 GL_VERTEX_TEXTURE
#
#=cut

    GL_VERTEX_TEXTURE => 0x829B,

#=head2 GL_VERTEX_WEIGHTING_EXT
#
#=cut

    GL_VERTEX_WEIGHTING_EXT => 0x8509,

#=head2 GL_VERTEX_WEIGHT_ARRAY_EXT
#
#=cut

    GL_VERTEX_WEIGHT_ARRAY_EXT => 0x850C,

#=head2 GL_VERTEX_WEIGHT_ARRAY_POINTER_EXT
#
#=cut

    GL_VERTEX_WEIGHT_ARRAY_POINTER_EXT => 0x8510,

#=head2 GL_VERTEX_WEIGHT_ARRAY_SIZE_EXT
#
#=cut

    GL_VERTEX_WEIGHT_ARRAY_SIZE_EXT => 0x850D,

#=head2 GL_VERTEX_WEIGHT_ARRAY_STRIDE_EXT
#
#=cut

    GL_VERTEX_WEIGHT_ARRAY_STRIDE_EXT => 0x850F,

#=head2 GL_VERTEX_WEIGHT_ARRAY_TYPE_EXT
#
#=cut

    GL_VERTEX_WEIGHT_ARRAY_TYPE_EXT => 0x850E,

#=head2 GL_VERTICAL_LINE_TO_NV
#
#=cut

    GL_VERTICAL_LINE_TO_NV => 0x08,

#=head2 GL_VERTICES_SUBMITTED_ARB
#
#=cut

    GL_VERTICES_SUBMITTED_ARB => 0x82EE,

#=head2 GL_VIBRANCE_BIAS_NV
#
#=cut

    GL_VIBRANCE_BIAS_NV => 0x8719,

#=head2 GL_VIBRANCE_SCALE_NV
#
#=cut

    GL_VIBRANCE_SCALE_NV => 0x8713,

#=head2 GL_VIDEO_BUFFER_BINDING_NV
#
#=cut

    GL_VIDEO_BUFFER_BINDING_NV => 0x9021,

#=head2 GL_VIDEO_BUFFER_INTERNAL_FORMAT_NV
#
#=cut

    GL_VIDEO_BUFFER_INTERNAL_FORMAT_NV => 0x902D,

#=head2 GL_VIDEO_BUFFER_NV
#
#=cut

    GL_VIDEO_BUFFER_NV => 0x9020,

#=head2 GL_VIDEO_BUFFER_PITCH_NV
#
#=cut

    GL_VIDEO_BUFFER_PITCH_NV => 0x9028,

#=head2 GL_VIDEO_CAPTURE_FIELD_LOWER_HEIGHT_NV
#
#=cut

    GL_VIDEO_CAPTURE_FIELD_LOWER_HEIGHT_NV => 0x903B,

#=head2 GL_VIDEO_CAPTURE_FIELD_UPPER_HEIGHT_NV
#
#=cut

    GL_VIDEO_CAPTURE_FIELD_UPPER_HEIGHT_NV => 0x903A,

#=head2 GL_VIDEO_CAPTURE_FRAME_HEIGHT_NV
#
#=cut

    GL_VIDEO_CAPTURE_FRAME_HEIGHT_NV => 0x9039,

#=head2 GL_VIDEO_CAPTURE_FRAME_WIDTH_NV
#
#=cut

    GL_VIDEO_CAPTURE_FRAME_WIDTH_NV => 0x9038,

#=head2 GL_VIDEO_CAPTURE_SURFACE_ORIGIN_NV
#
#=cut

    GL_VIDEO_CAPTURE_SURFACE_ORIGIN_NV => 0x903C,

#=head2 GL_VIDEO_CAPTURE_TO_422_SUPPORTED_NV
#
#=cut

    GL_VIDEO_CAPTURE_TO_422_SUPPORTED_NV => 0x9026,

#=head2 GL_VIDEO_COLOR_CONVERSION_MATRIX_NV
#
#=cut

    GL_VIDEO_COLOR_CONVERSION_MATRIX_NV => 0x9029,

#=head2 GL_VIDEO_COLOR_CONVERSION_MAX_NV
#
#=cut

    GL_VIDEO_COLOR_CONVERSION_MAX_NV => 0x902A,

#=head2 GL_VIDEO_COLOR_CONVERSION_MIN_NV
#
#=cut

    GL_VIDEO_COLOR_CONVERSION_MIN_NV => 0x902B,

#=head2 GL_VIDEO_COLOR_CONVERSION_OFFSET_NV
#
#=cut

    GL_VIDEO_COLOR_CONVERSION_OFFSET_NV => 0x902C,

#=head2 GL_VIEWPORT
#
#=cut

    GL_VIEWPORT => 0x0BA2,

#=head2 GL_VIEWPORT_BIT
#
#=cut

    GL_VIEWPORT_BIT => 0x00000800,

#=head2 GL_VIEWPORT_BOUNDS_RANGE
#
#=cut

    GL_VIEWPORT_BOUNDS_RANGE => 0x825D,

#=head2 GL_VIEWPORT_INDEX_PROVOKING_VERTEX
#
#=cut

    GL_VIEWPORT_INDEX_PROVOKING_VERTEX => 0x825F,

#=head2 GL_VIEWPORT_SUBPIXEL_BITS
#
#=cut

    GL_VIEWPORT_SUBPIXEL_BITS => 0x825C,

#=head2 GL_VIEW_CLASS_128_BITS
#
#=cut

    GL_VIEW_CLASS_128_BITS => 0x82C4,

#=head2 GL_VIEW_CLASS_16_BITS
#
#=cut

    GL_VIEW_CLASS_16_BITS => 0x82CA,

#=head2 GL_VIEW_CLASS_24_BITS
#
#=cut

    GL_VIEW_CLASS_24_BITS => 0x82C9,

#=head2 GL_VIEW_CLASS_32_BITS
#
#=cut

    GL_VIEW_CLASS_32_BITS => 0x82C8,

#=head2 GL_VIEW_CLASS_48_BITS
#
#=cut

    GL_VIEW_CLASS_48_BITS => 0x82C7,

#=head2 GL_VIEW_CLASS_64_BITS
#
#=cut

    GL_VIEW_CLASS_64_BITS => 0x82C6,

#=head2 GL_VIEW_CLASS_8_BITS
#
#=cut

    GL_VIEW_CLASS_8_BITS => 0x82CB,

#=head2 GL_VIEW_CLASS_96_BITS
#
#=cut

    GL_VIEW_CLASS_96_BITS => 0x82C5,

#=head2 GL_VIEW_CLASS_BPTC_FLOAT
#
#=cut

    GL_VIEW_CLASS_BPTC_FLOAT => 0x82D3,

#=head2 GL_VIEW_CLASS_BPTC_UNORM
#
#=cut

    GL_VIEW_CLASS_BPTC_UNORM => 0x82D2,

#=head2 GL_VIEW_CLASS_RGTC1_RED
#
#=cut

    GL_VIEW_CLASS_RGTC1_RED => 0x82D0,

#=head2 GL_VIEW_CLASS_RGTC2_RG
#
#=cut

    GL_VIEW_CLASS_RGTC2_RG => 0x82D1,

#=head2 GL_VIEW_CLASS_S3TC_DXT1_RGB
#
#=cut

    GL_VIEW_CLASS_S3TC_DXT1_RGB => 0x82CC,

#=head2 GL_VIEW_CLASS_S3TC_DXT1_RGBA
#
#=cut

    GL_VIEW_CLASS_S3TC_DXT1_RGBA => 0x82CD,

#=head2 GL_VIEW_CLASS_S3TC_DXT3_RGBA
#
#=cut

    GL_VIEW_CLASS_S3TC_DXT3_RGBA => 0x82CE,

#=head2 GL_VIEW_CLASS_S3TC_DXT5_RGBA
#
#=cut

    GL_VIEW_CLASS_S3TC_DXT5_RGBA => 0x82CF,

#=head2 GL_VIEW_COMPATIBILITY_CLASS
#
#=cut

    GL_VIEW_COMPATIBILITY_CLASS => 0x82B6,

#=head2 GL_VIRTUAL_PAGE_SIZE_INDEX_ARB
#
#=cut

    GL_VIRTUAL_PAGE_SIZE_INDEX_ARB => 0x91A7,

#=head2 GL_VIRTUAL_PAGE_SIZE_X_AMD
#
#=cut

    GL_VIRTUAL_PAGE_SIZE_X_AMD => 0x9195,

#=head2 GL_VIRTUAL_PAGE_SIZE_X_ARB
#
#=cut

    GL_VIRTUAL_PAGE_SIZE_X_ARB => 0x9195,

#=head2 GL_VIRTUAL_PAGE_SIZE_Y_AMD
#
#=cut

    GL_VIRTUAL_PAGE_SIZE_Y_AMD => 0x9196,

#=head2 GL_VIRTUAL_PAGE_SIZE_Y_ARB
#
#=cut

    GL_VIRTUAL_PAGE_SIZE_Y_ARB => 0x9196,

#=head2 GL_VIRTUAL_PAGE_SIZE_Z_AMD
#
#=cut

    GL_VIRTUAL_PAGE_SIZE_Z_AMD => 0x9197,

#=head2 GL_VIRTUAL_PAGE_SIZE_Z_ARB
#
#=cut

    GL_VIRTUAL_PAGE_SIZE_Z_ARB => 0x9197,

#=head2 GL_VIVIDLIGHT_NV
#
#=cut

    GL_VIVIDLIGHT_NV => 0x92A6,

#=head2 GL_VOLATILE_APPLE
#
#=cut

    GL_VOLATILE_APPLE => 0x8A1A,

#=head2 GL_WAIT_FAILED
#
#=cut

    GL_WAIT_FAILED => 0x911D,

#=head2 GL_WARPS_PER_SM_NV
#
#=cut

    GL_WARPS_PER_SM_NV => 0x933A,

#=head2 GL_WARP_SIZE_NV
#
#=cut

    GL_WARP_SIZE_NV => 0x9339,

#=head2 GL_WEIGHT_ARRAY_ARB
#
#=cut

    GL_WEIGHT_ARRAY_ARB => 0x86AD,

#=head2 GL_WEIGHT_ARRAY_BUFFER_BINDING
#
#=cut

    GL_WEIGHT_ARRAY_BUFFER_BINDING => 0x889E,

#=head2 GL_WEIGHT_ARRAY_BUFFER_BINDING_ARB
#
#=cut

    GL_WEIGHT_ARRAY_BUFFER_BINDING_ARB => 0x889E,

#=head2 GL_WEIGHT_ARRAY_POINTER_ARB
#
#=cut

    GL_WEIGHT_ARRAY_POINTER_ARB => 0x86AC,

#=head2 GL_WEIGHT_ARRAY_SIZE_ARB
#
#=cut

    GL_WEIGHT_ARRAY_SIZE_ARB => 0x86AB,

#=head2 GL_WEIGHT_ARRAY_STRIDE_ARB
#
#=cut

    GL_WEIGHT_ARRAY_STRIDE_ARB => 0x86AA,

#=head2 GL_WEIGHT_ARRAY_TYPE_ARB
#
#=cut

    GL_WEIGHT_ARRAY_TYPE_ARB => 0x86A9,

#=head2 GL_WEIGHT_SUM_UNITY_ARB
#
#=cut

    GL_WEIGHT_SUM_UNITY_ARB => 0x86A6,

#=head2 GL_WIDE_LINE_HINT_PGI
#
#=cut

    GL_WIDE_LINE_HINT_PGI => 0x1A222,

#=head2 GL_WIN_phong_shading
#
#=cut

    GL_WIN_phong_shading => 1,

#=head2 GL_WIN_specular_fog
#
#=cut

    GL_WIN_specular_fog => 1,

#=head2 GL_WRAP_BORDER_SUN
#
#=cut

    GL_WRAP_BORDER_SUN => 0x81D4,

#=head2 GL_WRITE_DISCARD_NV
#
#=cut

    GL_WRITE_DISCARD_NV => 0x88BE,

#=head2 GL_WRITE_ONLY
#
#=cut

    GL_WRITE_ONLY => 0x88B9,

#=head2 GL_WRITE_ONLY_ARB
#
#=cut

    GL_WRITE_ONLY_ARB => 0x88B9,

#=head2 GL_WRITE_PIXEL_DATA_RANGE_LENGTH_NV
#
#=cut

    GL_WRITE_PIXEL_DATA_RANGE_LENGTH_NV => 0x887A,

#=head2 GL_WRITE_PIXEL_DATA_RANGE_NV
#
#=cut

    GL_WRITE_PIXEL_DATA_RANGE_NV => 0x8878,

#=head2 GL_WRITE_PIXEL_DATA_RANGE_POINTER_NV
#
#=cut

    GL_WRITE_PIXEL_DATA_RANGE_POINTER_NV => 0x887C,

#=head2 GL_W_EXT
#
#=cut

    GL_W_EXT => 0x87D8,

#=head2 GL_XOR
#
#=cut

    GL_XOR => 0x1506,

#=head2 GL_XOR_NV
#
#=cut

    GL_XOR_NV => 0x1506,

#=head2 GL_X_EXT
#
#=cut

    GL_X_EXT => 0x87D5,

#=head2 GL_YCBAYCR8A_4224_NV
#
#=cut

    GL_YCBAYCR8A_4224_NV => 0x9032,

#=head2 GL_YCBCR_422_APPLE
#
#=cut

    GL_YCBCR_422_APPLE => 0x85B9,

#=head2 GL_YCBCR_MESA
#
#=cut

    GL_YCBCR_MESA => 0x8757,

#=head2 GL_YCBYCR8_422_NV
#
#=cut

    GL_YCBYCR8_422_NV => 0x9031,

#=head2 GL_YCRCBA_SGIX
#
#=cut

    GL_YCRCBA_SGIX => 0x8319,

#=head2 GL_YCRCB_422_SGIX
#
#=cut

    GL_YCRCB_422_SGIX => 0x81BB,

#=head2 GL_YCRCB_444_SGIX
#
#=cut

    GL_YCRCB_444_SGIX => 0x81BC,

#=head2 GL_YCRCB_SGIX
#
#=cut

    GL_YCRCB_SGIX => 0x8318,

#=head2 GL_Y_EXT
#
#=cut

    GL_Y_EXT => 0x87D6,

#=head2 GL_Z4Y12Z4CB12Z4A12Z4Y12Z4CR12Z4A12_4224_NV
#
#=cut

    GL_Z4Y12Z4CB12Z4A12Z4Y12Z4CR12Z4A12_4224_NV => 0x9036,

#=head2 GL_Z4Y12Z4CB12Z4CR12_444_NV
#
#=cut

    GL_Z4Y12Z4CB12Z4CR12_444_NV => 0x9037,

#=head2 GL_Z4Y12Z4CB12Z4Y12Z4CR12_422_NV
#
#=cut

    GL_Z4Y12Z4CB12Z4Y12Z4CR12_422_NV => 0x9035,

#=head2 GL_Z6Y10Z6CB10Z6A10Z6Y10Z6CR10Z6A10_4224_NV
#
#=cut

    GL_Z6Y10Z6CB10Z6A10Z6Y10Z6CR10Z6A10_4224_NV => 0x9034,

#=head2 GL_Z6Y10Z6CB10Z6Y10Z6CR10_422_NV
#
#=cut

    GL_Z6Y10Z6CB10Z6Y10Z6CR10_422_NV => 0x9033,

#=head2 GL_ZERO
#
#=cut

    GL_ZERO => 0,

#=head2 GL_ZERO_EXT
#
#=cut

    GL_ZERO_EXT => 0x87DD,

#=head2 GL_ZERO_TO_ONE
#
#=cut

    GL_ZERO_TO_ONE => 0x935F,

#=head2 GL_ZOOM_X
#
#=cut

    GL_ZOOM_X => 0x0D16,

#=head2 GL_ZOOM_Y
#
#=cut

    GL_ZOOM_Y => 0x0D17,

#=head2 GL_Z_EXT
#
#=cut

    GL_Z_EXT => 0x87D7,

  };
  
  our $ffi = FFI::Platypus->new(
    ignore_not_found => 1,
    lib => FFI::CheckLib::find_lib_or_die(
      lib => 'GL',
    ),
  );

  $ffi->type('unsigned int' => 'GLenum');
  $ffi->type('unsigned char' => 'GLboolean');
  $ffi->type('unsigned int' => 'GLbitfield');
  $ffi->type('void' => 'GLvoid');
  $ffi->type('signed char' => 'GLbyte');
  $ffi->type('short' => 'GLshort');
  $ffi->type('int' => 'GLint');
  $ffi->type('unsigned char' => 'GLubyte');
  $ffi->type('unsigned short' => 'GLushort');
  $ffi->type('unsigned int' => 'GLuint');
  $ffi->type('int' => 'GLsizei');
  $ffi->type('float' => 'GLfloat');
  $ffi->type('float' => 'GLclampf');
  $ffi->type('double' => 'GLdouble');
  $ffi->type('double' => 'GLclampd');
  $ffi->type('ptrdiff_t' => 'GLsizeiptr');
  $ffi->type('ptrdiff_t' => 'GLintptr');
  $ffi->type('char' => 'GLchar');
  $ffi->type('unsigned short' => 'GLhalf');
  $ffi->type('uint64_t' => 'GLuint64');
  $ffi->type('int64_t' => 'GLint64');
  $ffi->type('uint64_t' => 'GLuint64EXT');
  $ffi->type('unsigned short' => 'GLhalfARB');
  $ffi->type('unsigned int' => 'GLhandleARB');
  $ffi->type('char' => 'GLcharARB');
  $ffi->type('ptrdiff_t' => 'GLsizeiptrARB');
  $ffi->type('ptrdiff_t' => 'GLintptrARB');
  $ffi->type('int' => 'GLfixed');
  $ffi->type('int64_t' => 'GLint64EXT');
  $ffi->type('unsigned short' => 'GLhalfNV');
  $ffi->type('ptrdiff_t' => 'GLvdpauSurfaceNV');
  $ffi->type('float[]' => 'GLfloat_params');
  $ffi->type('double[]' => 'GLdouble_params');
  $ffi->type('int[]' => 'GLint_params');
  $ffi->type('unsigned char[]' => 'GLboolean_params');


#=head1 FUNCTIONS
#
#=head2 glClearIndex

# glClearIndex( $c, );

#=cut

  $ffi->attach( glClearIndex => [ 'GLfloat', ] => 'void' );

#=head2 glClearColor

# glClearColor( $red, $green, $blue, $alpha, );

#=cut

  $ffi->attach( glClearColor => [ 'GLclampf', 'GLclampf', 'GLclampf', 'GLclampf', ] => 'void' );

#=head2 glClear

# glClear( $mask, );

#=cut

  $ffi->attach( glClear => [ 'GLbitfield', ] => 'void' );

#=head2 glIndexMask

# glIndexMask( $mask, );

#=cut

  $ffi->attach( glIndexMask => [ 'GLuint', ] => 'void' );

#=head2 glColorMask

# glColorMask( $red, $green, $blue, $alpha, );

#=cut

  $ffi->attach( glColorMask => [ 'GLboolean', 'GLboolean', 'GLboolean', 'GLboolean', ] => 'void' );

#=head2 glAlphaFunc

# glAlphaFunc( $func, $ref, );

#=cut

  $ffi->attach( glAlphaFunc => [ 'GLenum', 'GLclampf', ] => 'void' );

#=head2 glBlendFunc

# glBlendFunc( $sfactor, $dfactor, );

#=cut

  $ffi->attach( glBlendFunc => [ 'GLenum', 'GLenum', ] => 'void' );

#=head2 glLogicOp

# glLogicOp( $opcode, );

#=cut

  $ffi->attach( glLogicOp => [ 'GLenum', ] => 'void' );

#=head2 glCullFace

# glCullFace( $mode, );

#=cut

  $ffi->attach( glCullFace => [ 'GLenum', ] => 'void' );

#=head2 glFrontFace

# glFrontFace( $mode, );

#=cut

  $ffi->attach( glFrontFace => [ 'GLenum', ] => 'void' );

#=head2 glPointSize

# glPointSize( $size, );

#=cut

  $ffi->attach( glPointSize => [ 'GLfloat', ] => 'void' );

#=head2 glLineWidth

# glLineWidth( $width, );

#=cut

  $ffi->attach( glLineWidth => [ 'GLfloat', ] => 'void' );

#=head2 glLineStipple

# glLineStipple( $factor, $pattern, );

#=cut

  $ffi->attach( glLineStipple => [ 'GLint', 'GLushort', ] => 'void' );

#=head2 glPolygonMode

# glPolygonMode( $face, $mode, );

#=cut

  $ffi->attach( glPolygonMode => [ 'GLenum', 'GLenum', ] => 'void' );

#=head2 glPolygonOffset

# glPolygonOffset( $factor, $units, );

#=cut

  $ffi->attach( glPolygonOffset => [ 'GLfloat', 'GLfloat', ] => 'void' );

#=head2 glPolygonStipple

# glPolygonStipple( $*mask, );

#=cut

  $ffi->attach( glPolygonStipple => [ 'GLubyte', ] => 'void' );

#=head2 glGetPolygonStipple

# glGetPolygonStipple( $*mask, );

#=cut

  $ffi->attach( glGetPolygonStipple => [ 'GLubyte', ] => 'void' );

#=head2 glEdgeFlag

# glEdgeFlag( $flag, );

#=cut

  $ffi->attach( glEdgeFlag => [ 'GLboolean', ] => 'void' );

#=head2 glEdgeFlagv

# glEdgeFlagv( $*flag, );

#=cut

  $ffi->attach( glEdgeFlagv => [ 'GLboolean', ] => 'void' );

#=head2 glScissor

# glScissor( $x, $y, $width, $height, );

#=cut

  $ffi->attach( glScissor => [ 'GLint', 'GLint', 'GLsizei', 'GLsizei', ] => 'void' );

#=head2 glClipPlane

# glClipPlane( $plane, $*equation, );

#=cut

  $ffi->attach( glClipPlane => [ 'GLenum', 'GLdouble', ] => 'void' );

#=head2 glGetClipPlane

# glGetClipPlane( $plane, $*equation, );

#=cut

  $ffi->attach( glGetClipPlane => [ 'GLenum', 'GLdouble', ] => 'void' );

#=head2 glDrawBuffer

# glDrawBuffer( $mode, );

#=cut

  $ffi->attach( glDrawBuffer => [ 'GLenum', ] => 'void' );

#=head2 glReadBuffer

# glReadBuffer( $mode, );

#=cut

  $ffi->attach( glReadBuffer => [ 'GLenum', ] => 'void' );

#=head2 glEnable

# glEnable( $cap, );

#=cut

  $ffi->attach( glEnable => [ 'GLenum', ] => 'void' );

#=head2 glDisable

# glDisable( $cap, );

#=cut

  $ffi->attach( glDisable => [ 'GLenum', ] => 'void' );

#=head2 glIsEnabled

# glIsEnabled( $cap, );

#=cut

  $ffi->attach( glIsEnabled => [ 'GLenum', ] => 'GLboolean' );

#=head2 glEnableClientState

# glEnableClientState( $cap, );

#=cut

  $ffi->attach( glEnableClientState => [ 'GLenum', ] => 'void' );

#=head2 glDisableClientState

# glDisableClientState( $cap, );

#=cut

  $ffi->attach( glDisableClientState => [ 'GLenum', ] => 'void' );

#=head2 glGetBooleanv

# glGetBooleanv( $pname, \@params, );

#=cut

  $ffi->attach( glGetBooleanv => [ 'GLenum', 'GLboolean_params', ] => 'void' );

#=head2 glGetDoublev

# glGetDoublev( $pname, \@params, );

#=cut

  $ffi->attach( glGetDoublev => [ 'GLenum', 'GLdouble_params', ] => 'void' );

#=head2 glGetFloatv

# glGetFloatv( $pname, \@params, );

#=cut

  $ffi->attach( glGetFloatv => [ 'GLenum', 'GLfloat_params', ] => 'void' );

#=head2 glGetIntegerv

# glGetIntegerv( $pname, \@params, );

#=cut

  $ffi->attach( glGetIntegerv => [ 'GLenum', 'GLint_params', ] => 'void' );

#=head2 glPushAttrib

# glPushAttrib( $mask, );

#=cut

  $ffi->attach( glPushAttrib => [ 'GLbitfield', ] => 'void' );

#=head2 glPopAttrib

# glPopAttrib();

#=cut

  $ffi->attach( glPopAttrib => [] => 'void' );

#=head2 glPushClientAttrib

# glPushClientAttrib( $mask, );

#=cut

  $ffi->attach( glPushClientAttrib => [ 'GLbitfield', ] => 'void' );

#=head2 glPopClientAttrib

# glPopClientAttrib();

#=cut

  $ffi->attach( glPopClientAttrib => [] => 'void' );

#=head2 glRenderMode

# glRenderMode( $mode, );

#=cut

  $ffi->attach( glRenderMode => [ 'GLenum', ] => 'GLint' );

#=head2 glGetError

# glGetError();

#=cut

  $ffi->attach( glGetError => [] => 'GLenum' );

#=head2 glFinish

# glFinish();

#=cut

  $ffi->attach( glFinish => [] => 'void' );

#=head2 glFlush

# glFlush();

#=cut

  $ffi->attach( glFlush => [] => 'void' );

#=head2 glHint

# glHint( $target, $mode, );

#=cut

  $ffi->attach( glHint => [ 'GLenum', 'GLenum', ] => 'void' );

#=head2 glClearDepth

# glClearDepth( $depth, );

#=cut

  $ffi->attach( glClearDepth => [ 'GLclampd', ] => 'void' );

#=head2 glDepthFunc

# glDepthFunc( $func, );

#=cut

  $ffi->attach( glDepthFunc => [ 'GLenum', ] => 'void' );

#=head2 glDepthMask

# glDepthMask( $flag, );

#=cut

  $ffi->attach( glDepthMask => [ 'GLboolean', ] => 'void' );

#=head2 glDepthRange

# glDepthRange( $near_val, $far_val, );

#=cut

  $ffi->attach( glDepthRange => [ 'GLclampd', 'GLclampd', ] => 'void' );

#=head2 glClearAccum

# glClearAccum( $red, $green, $blue, $alpha, );

#=cut

  $ffi->attach( glClearAccum => [ 'GLfloat', 'GLfloat', 'GLfloat', 'GLfloat', ] => 'void' );

#=head2 glAccum

# glAccum( $op, $value, );

#=cut

  $ffi->attach( glAccum => [ 'GLenum', 'GLfloat', ] => 'void' );

#=head2 glMatrixMode

# glMatrixMode( $mode, );

#=cut

  $ffi->attach( glMatrixMode => [ 'GLenum', ] => 'void' );

#=head2 glOrtho

# glOrtho( $left, $right, $bottom, $top, $near_val, $far_val, );

#=cut

  $ffi->attach( glOrtho => [ 'GLdouble', 'GLdouble', 'GLdouble', 'GLdouble', 'GLdouble', 'GLdouble', ] => 'void' );

#=head2 glFrustum

# glFrustum( $left, $right, $bottom, $top, $near_val, $far_val, );

#=cut

  $ffi->attach( glFrustum => [ 'GLdouble', 'GLdouble', 'GLdouble', 'GLdouble', 'GLdouble', 'GLdouble', ] => 'void' );

#=head2 glViewport

# glViewport( $x, $y, $width, $height, );

#=cut

  $ffi->attach( glViewport => [ 'GLint', 'GLint', 'GLsizei', 'GLsizei', ] => 'void' );

#=head2 glPushMatrix

# glPushMatrix();

#=cut

  $ffi->attach( glPushMatrix => [] => 'void' );

#=head2 glPopMatrix

# glPopMatrix();

#=cut

  $ffi->attach( glPopMatrix => [] => 'void' );

#=head2 glLoadIdentity

# glLoadIdentity();

#=cut

  $ffi->attach( glLoadIdentity => [] => 'void' );

#=head2 glLoadMatrixd

# glLoadMatrixd( $*m, );

#=cut

  $ffi->attach( glLoadMatrixd => [ 'GLdouble', ] => 'void' );

#=head2 glLoadMatrixf

# glLoadMatrixf( $*m, );

#=cut

  $ffi->attach( glLoadMatrixf => [ 'GLfloat', ] => 'void' );

#=head2 glMultMatrixd

# glMultMatrixd( $*m, );

#=cut

  $ffi->attach( glMultMatrixd => [ 'GLdouble', ] => 'void' );

#=head2 glMultMatrixf

# glMultMatrixf( $*m, );

#=cut

  $ffi->attach( glMultMatrixf => [ 'GLfloat', ] => 'void' );

#=head2 glRotated

# glRotated( $angle, $x, $y, $z, );

#=cut

  $ffi->attach( glRotated => [ 'GLdouble', 'GLdouble', 'GLdouble', 'GLdouble', ] => 'void' );

#=head2 glRotatef

# glRotatef( $angle, $x, $y, $z, );

#=cut

  $ffi->attach( glRotatef => [ 'GLfloat', 'GLfloat', 'GLfloat', 'GLfloat', ] => 'void' );

#=head2 glScaled

# glScaled( $x, $y, $z, );

#=cut

  $ffi->attach( glScaled => [ 'GLdouble', 'GLdouble', 'GLdouble', ] => 'void' );

#=head2 glScalef

# glScalef( $x, $y, $z, );

#=cut

  $ffi->attach( glScalef => [ 'GLfloat', 'GLfloat', 'GLfloat', ] => 'void' );

#=head2 glTranslated

# glTranslated( $x, $y, $z, );

#=cut

  $ffi->attach( glTranslated => [ 'GLdouble', 'GLdouble', 'GLdouble', ] => 'void' );

#=head2 glTranslatef

# glTranslatef( $x, $y, $z, );

#=cut

  $ffi->attach( glTranslatef => [ 'GLfloat', 'GLfloat', 'GLfloat', ] => 'void' );

#=head2 glIsList

# glIsList( $list, );

#=cut

  $ffi->attach( glIsList => [ 'GLuint', ] => 'GLboolean' );

#=head2 glDeleteLists

# glDeleteLists( $list, $range, );

#=cut

  $ffi->attach( glDeleteLists => [ 'GLuint', 'GLsizei', ] => 'void' );

#=head2 glGenLists

# glGenLists( $range, );

#=cut

  $ffi->attach( glGenLists => [ 'GLsizei', ] => 'GLuint' );

#=head2 glNewList

# glNewList( $list, $mode, );

#=cut

  $ffi->attach( glNewList => [ 'GLuint', 'GLenum', ] => 'void' );

#=head2 glEndList

# glEndList();

#=cut

  $ffi->attach( glEndList => [] => 'void' );

#=head2 glCallList

# glCallList( $list, );

#=cut

  $ffi->attach( glCallList => [ 'GLuint', ] => 'void' );

#=head2 glCallLists

# glCallLists( $n, $type, $*lists, );

#=cut

  $ffi->attach( glCallLists => [ 'GLsizei', 'GLenum', 'GLvoid', ] => 'void' );

#=head2 glListBase

# glListBase( $base, );

#=cut

  $ffi->attach( glListBase => [ 'GLuint', ] => 'void' );

#=head2 glBegin

# glBegin( $mode, );

#=cut

  $ffi->attach( glBegin => [ 'GLenum', ] => 'void' );

#=head2 glEnd

# glEnd();

#=cut

  $ffi->attach( glEnd => [] => 'void' );

#=head2 glVertex2d

# glVertex2d( $x, $y, );

#=cut

  $ffi->attach( glVertex2d => [ 'GLdouble', 'GLdouble', ] => 'void' );

#=head2 glVertex2f

# glVertex2f( $x, $y, );

#=cut

  $ffi->attach( glVertex2f => [ 'GLfloat', 'GLfloat', ] => 'void' );

#=head2 glVertex2i

# glVertex2i( $x, $y, );

#=cut

  $ffi->attach( glVertex2i => [ 'GLint', 'GLint', ] => 'void' );

#=head2 glVertex2s

# glVertex2s( $x, $y, );

#=cut

  $ffi->attach( glVertex2s => [ 'GLshort', 'GLshort', ] => 'void' );

#=head2 glVertex3d

# glVertex3d( $x, $y, $z, );

#=cut

  $ffi->attach( glVertex3d => [ 'GLdouble', 'GLdouble', 'GLdouble', ] => 'void' );

#=head2 glVertex3f

# glVertex3f( $x, $y, $z, );

#=cut

  $ffi->attach( glVertex3f => [ 'GLfloat', 'GLfloat', 'GLfloat', ] => 'void' );

#=head2 glVertex3i

# glVertex3i( $x, $y, $z, );

#=cut

  $ffi->attach( glVertex3i => [ 'GLint', 'GLint', 'GLint', ] => 'void' );

#=head2 glVertex3s

# glVertex3s( $x, $y, $z, );

#=cut

  $ffi->attach( glVertex3s => [ 'GLshort', 'GLshort', 'GLshort', ] => 'void' );

#=head2 glVertex4d

# glVertex4d( $x, $y, $z, $w, );

#=cut

  $ffi->attach( glVertex4d => [ 'GLdouble', 'GLdouble', 'GLdouble', 'GLdouble', ] => 'void' );

#=head2 glVertex4f

# glVertex4f( $x, $y, $z, $w, );

#=cut

  $ffi->attach( glVertex4f => [ 'GLfloat', 'GLfloat', 'GLfloat', 'GLfloat', ] => 'void' );

#=head2 glVertex4i

# glVertex4i( $x, $y, $z, $w, );

#=cut

  $ffi->attach( glVertex4i => [ 'GLint', 'GLint', 'GLint', 'GLint', ] => 'void' );

#=head2 glVertex4s

# glVertex4s( $x, $y, $z, $w, );

#=cut

  $ffi->attach( glVertex4s => [ 'GLshort', 'GLshort', 'GLshort', 'GLshort', ] => 'void' );

#=head2 glVertex2dv

# glVertex2dv( $*v, );

#=cut

  $ffi->attach( glVertex2dv => [ 'GLdouble', ] => 'void' );

#=head2 glVertex2fv

# glVertex2fv( $*v, );

#=cut

  $ffi->attach( glVertex2fv => [ 'GLfloat', ] => 'void' );

#=head2 glVertex2iv

# glVertex2iv( $*v, );

#=cut

  $ffi->attach( glVertex2iv => [ 'GLint', ] => 'void' );

#=head2 glVertex2sv

# glVertex2sv( $*v, );

#=cut

  $ffi->attach( glVertex2sv => [ 'GLshort', ] => 'void' );

#=head2 glVertex3dv

# glVertex3dv( $*v, );

#=cut

  $ffi->attach( glVertex3dv => [ 'GLdouble', ] => 'void' );

#=head2 glVertex3fv

# glVertex3fv( $*v, );

#=cut

  $ffi->attach( glVertex3fv => [ 'GLfloat', ] => 'void' );

#=head2 glVertex3iv

# glVertex3iv( $*v, );

#=cut

  $ffi->attach( glVertex3iv => [ 'GLint', ] => 'void' );

#=head2 glVertex3sv

# glVertex3sv( $*v, );

#=cut

  $ffi->attach( glVertex3sv => [ 'GLshort', ] => 'void' );

#=head2 glVertex4dv

# glVertex4dv( $*v, );

#=cut

  $ffi->attach( glVertex4dv => [ 'GLdouble', ] => 'void' );

#=head2 glVertex4fv

# glVertex4fv( $*v, );

#=cut

  $ffi->attach( glVertex4fv => [ 'GLfloat', ] => 'void' );

#=head2 glVertex4iv

# glVertex4iv( $*v, );

#=cut

  $ffi->attach( glVertex4iv => [ 'GLint', ] => 'void' );

#=head2 glVertex4sv

# glVertex4sv( $*v, );

#=cut

  $ffi->attach( glVertex4sv => [ 'GLshort', ] => 'void' );

#=head2 glNormal3b

# glNormal3b( $nx, $ny, $nz, );

#=cut

  $ffi->attach( glNormal3b => [ 'GLbyte', 'GLbyte', 'GLbyte', ] => 'void' );

#=head2 glNormal3d

# glNormal3d( $nx, $ny, $nz, );

#=cut

  $ffi->attach( glNormal3d => [ 'GLdouble', 'GLdouble', 'GLdouble', ] => 'void' );

#=head2 glNormal3f

# glNormal3f( $nx, $ny, $nz, );

#=cut

  $ffi->attach( glNormal3f => [ 'GLfloat', 'GLfloat', 'GLfloat', ] => 'void' );

#=head2 glNormal3i

# glNormal3i( $nx, $ny, $nz, );

#=cut

  $ffi->attach( glNormal3i => [ 'GLint', 'GLint', 'GLint', ] => 'void' );

#=head2 glNormal3s

# glNormal3s( $nx, $ny, $nz, );

#=cut

  $ffi->attach( glNormal3s => [ 'GLshort', 'GLshort', 'GLshort', ] => 'void' );

#=head2 glNormal3bv

# glNormal3bv( $*v, );

#=cut

  $ffi->attach( glNormal3bv => [ 'GLbyte', ] => 'void' );

#=head2 glNormal3dv

# glNormal3dv( $*v, );

#=cut

  $ffi->attach( glNormal3dv => [ 'GLdouble', ] => 'void' );

#=head2 glNormal3fv

# glNormal3fv( $*v, );

#=cut

  $ffi->attach( glNormal3fv => [ 'GLfloat', ] => 'void' );

#=head2 glNormal3iv

# glNormal3iv( $*v, );

#=cut

  $ffi->attach( glNormal3iv => [ 'GLint', ] => 'void' );

#=head2 glNormal3sv

# glNormal3sv( $*v, );

#=cut

  $ffi->attach( glNormal3sv => [ 'GLshort', ] => 'void' );

#=head2 glIndexd

# glIndexd( $c, );

#=cut

  $ffi->attach( glIndexd => [ 'GLdouble', ] => 'void' );

#=head2 glIndexf

# glIndexf( $c, );

#=cut

  $ffi->attach( glIndexf => [ 'GLfloat', ] => 'void' );

#=head2 glIndexi

# glIndexi( $c, );

#=cut

  $ffi->attach( glIndexi => [ 'GLint', ] => 'void' );

#=head2 glIndexs

# glIndexs( $c, );

#=cut

  $ffi->attach( glIndexs => [ 'GLshort', ] => 'void' );

#=head2 glIndexub

# glIndexub( $c, );

#=cut

  $ffi->attach( glIndexub => [ 'GLubyte', ] => 'void' );

#=head2 glIndexdv

# glIndexdv( $*c, );

#=cut

  $ffi->attach( glIndexdv => [ 'GLdouble', ] => 'void' );

#=head2 glIndexfv

# glIndexfv( $*c, );

#=cut

  $ffi->attach( glIndexfv => [ 'GLfloat', ] => 'void' );

#=head2 glIndexiv

# glIndexiv( $*c, );

#=cut

  $ffi->attach( glIndexiv => [ 'GLint', ] => 'void' );

#=head2 glIndexsv

# glIndexsv( $*c, );

#=cut

  $ffi->attach( glIndexsv => [ 'GLshort', ] => 'void' );

#=head2 glIndexubv

# glIndexubv( $*c, );

#=cut

  $ffi->attach( glIndexubv => [ 'GLubyte', ] => 'void' );

#=head2 glColor3b

# glColor3b( $red, $green, $blue, );

#=cut

  $ffi->attach( glColor3b => [ 'GLbyte', 'GLbyte', 'GLbyte', ] => 'void' );

#=head2 glColor3d

# glColor3d( $red, $green, $blue, );

#=cut

  $ffi->attach( glColor3d => [ 'GLdouble', 'GLdouble', 'GLdouble', ] => 'void' );

#=head2 glColor3f

# glColor3f( $red, $green, $blue, );

#=cut

  $ffi->attach( glColor3f => [ 'GLfloat', 'GLfloat', 'GLfloat', ] => 'void' );

#=head2 glColor3i

# glColor3i( $red, $green, $blue, );

#=cut

  $ffi->attach( glColor3i => [ 'GLint', 'GLint', 'GLint', ] => 'void' );

#=head2 glColor3s

# glColor3s( $red, $green, $blue, );

#=cut

  $ffi->attach( glColor3s => [ 'GLshort', 'GLshort', 'GLshort', ] => 'void' );

#=head2 glColor3ub

# glColor3ub( $red, $green, $blue, );

#=cut

  $ffi->attach( glColor3ub => [ 'GLubyte', 'GLubyte', 'GLubyte', ] => 'void' );

#=head2 glColor3ui

# glColor3ui( $red, $green, $blue, );

#=cut

  $ffi->attach( glColor3ui => [ 'GLuint', 'GLuint', 'GLuint', ] => 'void' );

#=head2 glColor3us

# glColor3us( $red, $green, $blue, );

#=cut

  $ffi->attach( glColor3us => [ 'GLushort', 'GLushort', 'GLushort', ] => 'void' );

#=head2 glColor4b

# glColor4b( $red, $green, $blue, $alpha, );

#=cut

  $ffi->attach( glColor4b => [ 'GLbyte', 'GLbyte', 'GLbyte', 'GLbyte', ] => 'void' );

#=head2 glColor4d

# glColor4d( $red, $green, $blue, $alpha, );

#=cut

  $ffi->attach( glColor4d => [ 'GLdouble', 'GLdouble', 'GLdouble', 'GLdouble', ] => 'void' );

#=head2 glColor4f

# glColor4f( $red, $green, $blue, $alpha, );

#=cut

  $ffi->attach( glColor4f => [ 'GLfloat', 'GLfloat', 'GLfloat', 'GLfloat', ] => 'void' );

#=head2 glColor4i

# glColor4i( $red, $green, $blue, $alpha, );

#=cut

  $ffi->attach( glColor4i => [ 'GLint', 'GLint', 'GLint', 'GLint', ] => 'void' );

#=head2 glColor4s

# glColor4s( $red, $green, $blue, $alpha, );

#=cut

  $ffi->attach( glColor4s => [ 'GLshort', 'GLshort', 'GLshort', 'GLshort', ] => 'void' );

#=head2 glColor4ub

# glColor4ub( $red, $green, $blue, $alpha, );

#=cut

  $ffi->attach( glColor4ub => [ 'GLubyte', 'GLubyte', 'GLubyte', 'GLubyte', ] => 'void' );

#=head2 glColor4ui

# glColor4ui( $red, $green, $blue, $alpha, );

#=cut

  $ffi->attach( glColor4ui => [ 'GLuint', 'GLuint', 'GLuint', 'GLuint', ] => 'void' );

#=head2 glColor4us

# glColor4us( $red, $green, $blue, $alpha, );

#=cut

  $ffi->attach( glColor4us => [ 'GLushort', 'GLushort', 'GLushort', 'GLushort', ] => 'void' );

#=head2 glColor3bv

# glColor3bv( $*v, );

#=cut

  $ffi->attach( glColor3bv => [ 'GLbyte', ] => 'void' );

#=head2 glColor3dv

# glColor3dv( $*v, );

#=cut

  $ffi->attach( glColor3dv => [ 'GLdouble', ] => 'void' );

#=head2 glColor3fv

# glColor3fv( $*v, );

#=cut

  $ffi->attach( glColor3fv => [ 'GLfloat', ] => 'void' );

#=head2 glColor3iv

# glColor3iv( $*v, );

#=cut

  $ffi->attach( glColor3iv => [ 'GLint', ] => 'void' );

#=head2 glColor3sv

# glColor3sv( $*v, );

#=cut

  $ffi->attach( glColor3sv => [ 'GLshort', ] => 'void' );

#=head2 glColor3ubv

# glColor3ubv( $*v, );

#=cut

  $ffi->attach( glColor3ubv => [ 'GLubyte', ] => 'void' );

#=head2 glColor3uiv

# glColor3uiv( $*v, );

#=cut

  $ffi->attach( glColor3uiv => [ 'GLuint', ] => 'void' );

#=head2 glColor3usv

# glColor3usv( $*v, );

#=cut

  $ffi->attach( glColor3usv => [ 'GLushort', ] => 'void' );

#=head2 glColor4bv

# glColor4bv( $*v, );

#=cut

  $ffi->attach( glColor4bv => [ 'GLbyte', ] => 'void' );

#=head2 glColor4dv

# glColor4dv( $*v, );

#=cut

  $ffi->attach( glColor4dv => [ 'GLdouble', ] => 'void' );

#=head2 glColor4fv

# glColor4fv( $*v, );

#=cut

  $ffi->attach( glColor4fv => [ 'GLfloat', ] => 'void' );

#=head2 glColor4iv

# glColor4iv( $*v, );

#=cut

  $ffi->attach( glColor4iv => [ 'GLint', ] => 'void' );

#=head2 glColor4sv

# glColor4sv( $*v, );

#=cut

  $ffi->attach( glColor4sv => [ 'GLshort', ] => 'void' );

#=head2 glColor4ubv

# glColor4ubv( $*v, );

#=cut

  $ffi->attach( glColor4ubv => [ 'GLubyte', ] => 'void' );

#=head2 glColor4uiv

# glColor4uiv( $*v, );

#=cut

  $ffi->attach( glColor4uiv => [ 'GLuint', ] => 'void' );

#=head2 glColor4usv

# glColor4usv( $*v, );

#=cut

  $ffi->attach( glColor4usv => [ 'GLushort', ] => 'void' );

#=head2 glTexCoord1d

# glTexCoord1d( $s, );

#=cut

  $ffi->attach( glTexCoord1d => [ 'GLdouble', ] => 'void' );

#=head2 glTexCoord1f

# glTexCoord1f( $s, );

#=cut

  $ffi->attach( glTexCoord1f => [ 'GLfloat', ] => 'void' );

#=head2 glTexCoord1i

# glTexCoord1i( $s, );

#=cut

  $ffi->attach( glTexCoord1i => [ 'GLint', ] => 'void' );

#=head2 glTexCoord1s

# glTexCoord1s( $s, );

#=cut

  $ffi->attach( glTexCoord1s => [ 'GLshort', ] => 'void' );

#=head2 glTexCoord2d

# glTexCoord2d( $s, $t, );

#=cut

  $ffi->attach( glTexCoord2d => [ 'GLdouble', 'GLdouble', ] => 'void' );

#=head2 glTexCoord2f

# glTexCoord2f( $s, $t, );

#=cut

  $ffi->attach( glTexCoord2f => [ 'GLfloat', 'GLfloat', ] => 'void' );

#=head2 glTexCoord2i

# glTexCoord2i( $s, $t, );

#=cut

  $ffi->attach( glTexCoord2i => [ 'GLint', 'GLint', ] => 'void' );

#=head2 glTexCoord2s

# glTexCoord2s( $s, $t, );

#=cut

  $ffi->attach( glTexCoord2s => [ 'GLshort', 'GLshort', ] => 'void' );

#=head2 glTexCoord3d

# glTexCoord3d( $s, $t, $r, );

#=cut

  $ffi->attach( glTexCoord3d => [ 'GLdouble', 'GLdouble', 'GLdouble', ] => 'void' );

#=head2 glTexCoord3f

# glTexCoord3f( $s, $t, $r, );

#=cut

  $ffi->attach( glTexCoord3f => [ 'GLfloat', 'GLfloat', 'GLfloat', ] => 'void' );

#=head2 glTexCoord3i

# glTexCoord3i( $s, $t, $r, );

#=cut

  $ffi->attach( glTexCoord3i => [ 'GLint', 'GLint', 'GLint', ] => 'void' );

#=head2 glTexCoord3s

# glTexCoord3s( $s, $t, $r, );

#=cut

  $ffi->attach( glTexCoord3s => [ 'GLshort', 'GLshort', 'GLshort', ] => 'void' );

#=head2 glTexCoord4d

# glTexCoord4d( $s, $t, $r, $q, );

#=cut

  $ffi->attach( glTexCoord4d => [ 'GLdouble', 'GLdouble', 'GLdouble', 'GLdouble', ] => 'void' );

#=head2 glTexCoord4f

# glTexCoord4f( $s, $t, $r, $q, );

#=cut

  $ffi->attach( glTexCoord4f => [ 'GLfloat', 'GLfloat', 'GLfloat', 'GLfloat', ] => 'void' );

#=head2 glTexCoord4i

# glTexCoord4i( $s, $t, $r, $q, );

#=cut

  $ffi->attach( glTexCoord4i => [ 'GLint', 'GLint', 'GLint', 'GLint', ] => 'void' );

#=head2 glTexCoord4s

# glTexCoord4s( $s, $t, $r, $q, );

#=cut

  $ffi->attach( glTexCoord4s => [ 'GLshort', 'GLshort', 'GLshort', 'GLshort', ] => 'void' );

#=head2 glTexCoord1dv

# glTexCoord1dv( $*v, );

#=cut

  $ffi->attach( glTexCoord1dv => [ 'GLdouble', ] => 'void' );

#=head2 glTexCoord1fv

# glTexCoord1fv( $*v, );

#=cut

  $ffi->attach( glTexCoord1fv => [ 'GLfloat', ] => 'void' );

#=head2 glTexCoord1iv

# glTexCoord1iv( $*v, );

#=cut

  $ffi->attach( glTexCoord1iv => [ 'GLint', ] => 'void' );

#=head2 glTexCoord1sv

# glTexCoord1sv( $*v, );

#=cut

  $ffi->attach( glTexCoord1sv => [ 'GLshort', ] => 'void' );

#=head2 glTexCoord2dv

# glTexCoord2dv( $*v, );

#=cut

  $ffi->attach( glTexCoord2dv => [ 'GLdouble', ] => 'void' );

#=head2 glTexCoord2fv

# glTexCoord2fv( $*v, );

#=cut

  $ffi->attach( glTexCoord2fv => [ 'GLfloat', ] => 'void' );

#=head2 glTexCoord2iv

# glTexCoord2iv( $*v, );

#=cut

  $ffi->attach( glTexCoord2iv => [ 'GLint', ] => 'void' );

#=head2 glTexCoord2sv

# glTexCoord2sv( $*v, );

#=cut

  $ffi->attach( glTexCoord2sv => [ 'GLshort', ] => 'void' );

#=head2 glTexCoord3dv

# glTexCoord3dv( $*v, );

#=cut

  $ffi->attach( glTexCoord3dv => [ 'GLdouble', ] => 'void' );

#=head2 glTexCoord3fv

# glTexCoord3fv( $*v, );

#=cut

  $ffi->attach( glTexCoord3fv => [ 'GLfloat', ] => 'void' );

#=head2 glTexCoord3iv

# glTexCoord3iv( $*v, );

#=cut

  $ffi->attach( glTexCoord3iv => [ 'GLint', ] => 'void' );

#=head2 glTexCoord3sv

# glTexCoord3sv( $*v, );

#=cut

  $ffi->attach( glTexCoord3sv => [ 'GLshort', ] => 'void' );

#=head2 glTexCoord4dv

# glTexCoord4dv( $*v, );

#=cut

  $ffi->attach( glTexCoord4dv => [ 'GLdouble', ] => 'void' );

#=head2 glTexCoord4fv

# glTexCoord4fv( $*v, );

#=cut

  $ffi->attach( glTexCoord4fv => [ 'GLfloat', ] => 'void' );

#=head2 glTexCoord4iv

# glTexCoord4iv( $*v, );

#=cut

  $ffi->attach( glTexCoord4iv => [ 'GLint', ] => 'void' );

#=head2 glTexCoord4sv

# glTexCoord4sv( $*v, );

#=cut

  $ffi->attach( glTexCoord4sv => [ 'GLshort', ] => 'void' );

#=head2 glRasterPos2d

# glRasterPos2d( $x, $y, );

#=cut

  $ffi->attach( glRasterPos2d => [ 'GLdouble', 'GLdouble', ] => 'void' );

#=head2 glRasterPos2f

# glRasterPos2f( $x, $y, );

#=cut

  $ffi->attach( glRasterPos2f => [ 'GLfloat', 'GLfloat', ] => 'void' );

#=head2 glRasterPos2i

# glRasterPos2i( $x, $y, );

#=cut

  $ffi->attach( glRasterPos2i => [ 'GLint', 'GLint', ] => 'void' );

#=head2 glRasterPos2s

# glRasterPos2s( $x, $y, );

#=cut

  $ffi->attach( glRasterPos2s => [ 'GLshort', 'GLshort', ] => 'void' );

#=head2 glRasterPos3d

# glRasterPos3d( $x, $y, $z, );

#=cut

  $ffi->attach( glRasterPos3d => [ 'GLdouble', 'GLdouble', 'GLdouble', ] => 'void' );

#=head2 glRasterPos3f

# glRasterPos3f( $x, $y, $z, );

#=cut

  $ffi->attach( glRasterPos3f => [ 'GLfloat', 'GLfloat', 'GLfloat', ] => 'void' );

#=head2 glRasterPos3i

# glRasterPos3i( $x, $y, $z, );

#=cut

  $ffi->attach( glRasterPos3i => [ 'GLint', 'GLint', 'GLint', ] => 'void' );

#=head2 glRasterPos3s

# glRasterPos3s( $x, $y, $z, );

#=cut

  $ffi->attach( glRasterPos3s => [ 'GLshort', 'GLshort', 'GLshort', ] => 'void' );

#=head2 glRasterPos4d

# glRasterPos4d( $x, $y, $z, $w, );

#=cut

  $ffi->attach( glRasterPos4d => [ 'GLdouble', 'GLdouble', 'GLdouble', 'GLdouble', ] => 'void' );

#=head2 glRasterPos4f

# glRasterPos4f( $x, $y, $z, $w, );

#=cut

  $ffi->attach( glRasterPos4f => [ 'GLfloat', 'GLfloat', 'GLfloat', 'GLfloat', ] => 'void' );

#=head2 glRasterPos4i

# glRasterPos4i( $x, $y, $z, $w, );

#=cut

  $ffi->attach( glRasterPos4i => [ 'GLint', 'GLint', 'GLint', 'GLint', ] => 'void' );

#=head2 glRasterPos4s

# glRasterPos4s( $x, $y, $z, $w, );

#=cut

  $ffi->attach( glRasterPos4s => [ 'GLshort', 'GLshort', 'GLshort', 'GLshort', ] => 'void' );

#=head2 glRasterPos2dv

# glRasterPos2dv( $*v, );

#=cut

  $ffi->attach( glRasterPos2dv => [ 'GLdouble', ] => 'void' );

#=head2 glRasterPos2fv

# glRasterPos2fv( $*v, );

#=cut

  $ffi->attach( glRasterPos2fv => [ 'GLfloat', ] => 'void' );

#=head2 glRasterPos2iv

# glRasterPos2iv( $*v, );

#=cut

  $ffi->attach( glRasterPos2iv => [ 'GLint', ] => 'void' );

#=head2 glRasterPos2sv

# glRasterPos2sv( $*v, );

#=cut

  $ffi->attach( glRasterPos2sv => [ 'GLshort', ] => 'void' );

#=head2 glRasterPos3dv

# glRasterPos3dv( $*v, );

#=cut

  $ffi->attach( glRasterPos3dv => [ 'GLdouble', ] => 'void' );

#=head2 glRasterPos3fv

# glRasterPos3fv( $*v, );

#=cut

  $ffi->attach( glRasterPos3fv => [ 'GLfloat', ] => 'void' );

#=head2 glRasterPos3iv

# glRasterPos3iv( $*v, );

#=cut

  $ffi->attach( glRasterPos3iv => [ 'GLint', ] => 'void' );

#=head2 glRasterPos3sv

# glRasterPos3sv( $*v, );

#=cut

  $ffi->attach( glRasterPos3sv => [ 'GLshort', ] => 'void' );

#=head2 glRasterPos4dv

# glRasterPos4dv( $*v, );

#=cut

  $ffi->attach( glRasterPos4dv => [ 'GLdouble', ] => 'void' );

#=head2 glRasterPos4fv

# glRasterPos4fv( $*v, );

#=cut

  $ffi->attach( glRasterPos4fv => [ 'GLfloat', ] => 'void' );

#=head2 glRasterPos4iv

# glRasterPos4iv( $*v, );

#=cut

  $ffi->attach( glRasterPos4iv => [ 'GLint', ] => 'void' );

#=head2 glRasterPos4sv

# glRasterPos4sv( $*v, );

#=cut

  $ffi->attach( glRasterPos4sv => [ 'GLshort', ] => 'void' );

#=head2 glRectd

# glRectd( $x1, $y1, $x2, $y2, );

#=cut

  $ffi->attach( glRectd => [ 'GLdouble', 'GLdouble', 'GLdouble', 'GLdouble', ] => 'void' );

#=head2 glRectf

# glRectf( $x1, $y1, $x2, $y2, );

#=cut

  $ffi->attach( glRectf => [ 'GLfloat', 'GLfloat', 'GLfloat', 'GLfloat', ] => 'void' );

#=head2 glRecti

# glRecti( $x1, $y1, $x2, $y2, );

#=cut

  $ffi->attach( glRecti => [ 'GLint', 'GLint', 'GLint', 'GLint', ] => 'void' );

#=head2 glRects

# glRects( $x1, $y1, $x2, $y2, );

#=cut

  $ffi->attach( glRects => [ 'GLshort', 'GLshort', 'GLshort', 'GLshort', ] => 'void' );

#=head2 glRectdv

# glRectdv( $*v1, $*v2, );

#=cut

  $ffi->attach( glRectdv => [ 'GLdouble', 'GLdouble', ] => 'void' );

#=head2 glRectfv

# glRectfv( $*v1, $*v2, );

#=cut

  $ffi->attach( glRectfv => [ 'GLfloat', 'GLfloat', ] => 'void' );

#=head2 glRectiv

# glRectiv( $*v1, $*v2, );

#=cut

  $ffi->attach( glRectiv => [ 'GLint', 'GLint', ] => 'void' );

#=head2 glRectsv

# glRectsv( $*v1, $*v2, );

#=cut

  $ffi->attach( glRectsv => [ 'GLshort', 'GLshort', ] => 'void' );

#=head2 glVertexPointer

# glVertexPointer( $size, $type, $stride, $*ptr, );

#=cut

  $ffi->attach( glVertexPointer => [ 'GLint', 'GLenum', 'GLsizei', 'GLvoid', ] => 'void' );

#=head2 glNormalPointer

# glNormalPointer( $type, $stride, $*ptr, );

#=cut

  $ffi->attach( glNormalPointer => [ 'GLenum', 'GLsizei', 'GLvoid', ] => 'void' );

#=head2 glColorPointer

# glColorPointer( $size, $type, $stride, $*ptr, );

#=cut

  $ffi->attach( glColorPointer => [ 'GLint', 'GLenum', 'GLsizei', 'GLvoid', ] => 'void' );

#=head2 glIndexPointer

# glIndexPointer( $type, $stride, $*ptr, );

#=cut

  $ffi->attach( glIndexPointer => [ 'GLenum', 'GLsizei', 'GLvoid', ] => 'void' );

#=head2 glTexCoordPointer

# glTexCoordPointer( $size, $type, $stride, $*ptr, );

#=cut

  $ffi->attach( glTexCoordPointer => [ 'GLint', 'GLenum', 'GLsizei', 'GLvoid', ] => 'void' );

#=head2 glEdgeFlagPointer

# glEdgeFlagPointer( $stride, $*ptr, );

#=cut

  $ffi->attach( glEdgeFlagPointer => [ 'GLsizei', 'GLvoid', ] => 'void' );

#=head2 glGetPointerv

# glGetPointerv( $pname, $**params, );

#=cut

  $ffi->attach( glGetPointerv => [ 'GLenum', 'GLvoid', ] => 'void' );

#=head2 glArrayElement

# glArrayElement( $i, );

#=cut

  $ffi->attach( glArrayElement => [ 'GLint', ] => 'void' );

#=head2 glDrawArrays

# glDrawArrays( $mode, $first, $count, );

#=cut

  $ffi->attach( glDrawArrays => [ 'GLenum', 'GLint', 'GLsizei', ] => 'void' );

#=head2 glDrawElements

# glDrawElements( $mode, $count, $type, $*indices, );

#=cut

  $ffi->attach( glDrawElements => [ 'GLenum', 'GLsizei', 'GLenum', 'GLvoid', ] => 'void' );

#=head2 glInterleavedArrays

# glInterleavedArrays( $format, $stride, $*pointer, );

#=cut

  $ffi->attach( glInterleavedArrays => [ 'GLenum', 'GLsizei', 'GLvoid', ] => 'void' );

#=head2 glShadeModel

# glShadeModel( $mode, );

#=cut

  $ffi->attach( glShadeModel => [ 'GLenum', ] => 'void' );

#=head2 glLightf

# glLightf( $light, $pname, $param, );

#=cut

  $ffi->attach( glLightf => [ 'GLenum', 'GLenum', 'GLfloat', ] => 'void' );

#=head2 glLighti

# glLighti( $light, $pname, $param, );

#=cut

  $ffi->attach( glLighti => [ 'GLenum', 'GLenum', 'GLint', ] => 'void' );

#=head2 glLightfv

# glLightfv( $light, $pname, \@params, );

#=cut

  $ffi->attach( glLightfv => [ 'GLenum', 'GLenum', 'GLfloat_params', ] => 'void' );

#=head2 glLightiv

# glLightiv( $light, $pname, \@params, );

#=cut

  $ffi->attach( glLightiv => [ 'GLenum', 'GLenum', 'GLint_params', ] => 'void' );

#=head2 glGetLightfv

# glGetLightfv( $light, $pname, \@params, );

#=cut

  $ffi->attach( glGetLightfv => [ 'GLenum', 'GLenum', 'GLfloat_params', ] => 'void' );

#=head2 glGetLightiv

# glGetLightiv( $light, $pname, \@params, );

#=cut

  $ffi->attach( glGetLightiv => [ 'GLenum', 'GLenum', 'GLint_params', ] => 'void' );

#=head2 glLightModelf

# glLightModelf( $pname, $param, );

#=cut

  $ffi->attach( glLightModelf => [ 'GLenum', 'GLfloat', ] => 'void' );

#=head2 glLightModeli

# glLightModeli( $pname, $param, );

#=cut

  $ffi->attach( glLightModeli => [ 'GLenum', 'GLint', ] => 'void' );

#=head2 glLightModelfv

# glLightModelfv( $pname, \@params, );

#=cut

  $ffi->attach( glLightModelfv => [ 'GLenum', 'GLfloat_params', ] => 'void' );

#=head2 glLightModeliv

# glLightModeliv( $pname, \@params, );

#=cut

  $ffi->attach( glLightModeliv => [ 'GLenum', 'GLint_params', ] => 'void' );

#=head2 glMaterialf

# glMaterialf( $face, $pname, $param, );

#=cut

  $ffi->attach( glMaterialf => [ 'GLenum', 'GLenum', 'GLfloat', ] => 'void' );

#=head2 glMateriali

# glMateriali( $face, $pname, $param, );

#=cut

  $ffi->attach( glMateriali => [ 'GLenum', 'GLenum', 'GLint', ] => 'void' );

#=head2 glMaterialfv

# glMaterialfv( $face, $pname, \@params, );

#=cut

  $ffi->attach( glMaterialfv => [ 'GLenum', 'GLenum', 'GLfloat_params', ] => 'void' );

#=head2 glMaterialiv

# glMaterialiv( $face, $pname, \@params, );

#=cut

  $ffi->attach( glMaterialiv => [ 'GLenum', 'GLenum', 'GLint_params', ] => 'void' );

#=head2 glGetMaterialfv

# glGetMaterialfv( $face, $pname, \@params, );

#=cut

  $ffi->attach( glGetMaterialfv => [ 'GLenum', 'GLenum', 'GLfloat_params', ] => 'void' );

#=head2 glGetMaterialiv

# glGetMaterialiv( $face, $pname, \@params, );

#=cut

  $ffi->attach( glGetMaterialiv => [ 'GLenum', 'GLenum', 'GLint_params', ] => 'void' );

#=head2 glColorMaterial

# glColorMaterial( $face, $mode, );

#=cut

  $ffi->attach( glColorMaterial => [ 'GLenum', 'GLenum', ] => 'void' );

#=head2 glPixelZoom

# glPixelZoom( $xfactor, $yfactor, );

#=cut

  $ffi->attach( glPixelZoom => [ 'GLfloat', 'GLfloat', ] => 'void' );

#=head2 glPixelStoref

# glPixelStoref( $pname, $param, );

#=cut

  $ffi->attach( glPixelStoref => [ 'GLenum', 'GLfloat', ] => 'void' );

#=head2 glPixelStorei

# glPixelStorei( $pname, $param, );

#=cut

  $ffi->attach( glPixelStorei => [ 'GLenum', 'GLint', ] => 'void' );

#=head2 glPixelTransferf

# glPixelTransferf( $pname, $param, );

#=cut

  $ffi->attach( glPixelTransferf => [ 'GLenum', 'GLfloat', ] => 'void' );

#=head2 glPixelTransferi

# glPixelTransferi( $pname, $param, );

#=cut

  $ffi->attach( glPixelTransferi => [ 'GLenum', 'GLint', ] => 'void' );

#=head2 glPixelMapfv

# glPixelMapfv( $map, $mapsize, $*values, );

#=cut

  $ffi->attach( glPixelMapfv => [ 'GLenum', 'GLsizei', 'GLfloat', ] => 'void' );

#=head2 glPixelMapuiv

# glPixelMapuiv( $map, $mapsize, $*values, );

#=cut

  $ffi->attach( glPixelMapuiv => [ 'GLenum', 'GLsizei', 'GLuint', ] => 'void' );

#=head2 glPixelMapusv

# glPixelMapusv( $map, $mapsize, $*values, );

#=cut

  $ffi->attach( glPixelMapusv => [ 'GLenum', 'GLsizei', 'GLushort', ] => 'void' );

#=head2 glGetPixelMapfv

# glGetPixelMapfv( $map, $*values, );

#=cut

  $ffi->attach( glGetPixelMapfv => [ 'GLenum', 'GLfloat', ] => 'void' );

#=head2 glGetPixelMapuiv

# glGetPixelMapuiv( $map, $*values, );

#=cut

  $ffi->attach( glGetPixelMapuiv => [ 'GLenum', 'GLuint', ] => 'void' );

#=head2 glGetPixelMapusv

# glGetPixelMapusv( $map, $*values, );

#=cut

  $ffi->attach( glGetPixelMapusv => [ 'GLenum', 'GLushort', ] => 'void' );

#=head2 glBitmap

# glBitmap( $width, $height, $xorig, $yorig, $xmove, $ymove, $*bitmap, );

#=cut

  $ffi->attach( glBitmap => [ 'GLsizei', 'GLsizei', 'GLfloat', 'GLfloat', 'GLfloat', 'GLfloat', 'GLubyte', ] => 'void' );

#=head2 glReadPixels

# glReadPixels( $x, $y, $width, $height, $format, $type, $*pixels, );

#=cut

  $ffi->attach( glReadPixels => [ 'GLint', 'GLint', 'GLsizei', 'GLsizei', 'GLenum', 'GLenum', 'GLvoid', ] => 'void' );

#=head2 glDrawPixels

# glDrawPixels( $width, $height, $format, $type, $*pixels, );

#=cut

  $ffi->attach( glDrawPixels => [ 'GLsizei', 'GLsizei', 'GLenum', 'GLenum', 'GLvoid', ] => 'void' );

#=head2 glCopyPixels

# glCopyPixels( $x, $y, $width, $height, $type, );

#=cut

  $ffi->attach( glCopyPixels => [ 'GLint', 'GLint', 'GLsizei', 'GLsizei', 'GLenum', ] => 'void' );

#=head2 glStencilFunc

# glStencilFunc( $func, $ref, $mask, );

#=cut

  $ffi->attach( glStencilFunc => [ 'GLenum', 'GLint', 'GLuint', ] => 'void' );

#=head2 glStencilMask

# glStencilMask( $mask, );

#=cut

  $ffi->attach( glStencilMask => [ 'GLuint', ] => 'void' );

#=head2 glStencilOp

# glStencilOp( $fail, $zfail, $zpass, );

#=cut

  $ffi->attach( glStencilOp => [ 'GLenum', 'GLenum', 'GLenum', ] => 'void' );

#=head2 glClearStencil

# glClearStencil( $s, );

#=cut

  $ffi->attach( glClearStencil => [ 'GLint', ] => 'void' );

#=head2 glTexGend

# glTexGend( $coord, $pname, $param, );

#=cut

  $ffi->attach( glTexGend => [ 'GLenum', 'GLenum', 'GLdouble', ] => 'void' );

#=head2 glTexGenf

# glTexGenf( $coord, $pname, $param, );

#=cut

  $ffi->attach( glTexGenf => [ 'GLenum', 'GLenum', 'GLfloat', ] => 'void' );

#=head2 glTexGeni

# glTexGeni( $coord, $pname, $param, );

#=cut

  $ffi->attach( glTexGeni => [ 'GLenum', 'GLenum', 'GLint', ] => 'void' );

#=head2 glTexGendv

# glTexGendv( $coord, $pname, \@params, );

#=cut

  $ffi->attach( glTexGendv => [ 'GLenum', 'GLenum', 'GLdouble_params', ] => 'void' );

#=head2 glTexGenfv

# glTexGenfv( $coord, $pname, \@params, );

#=cut

  $ffi->attach( glTexGenfv => [ 'GLenum', 'GLenum', 'GLfloat_params', ] => 'void' );

#=head2 glTexGeniv

# glTexGeniv( $coord, $pname, \@params, );

#=cut

  $ffi->attach( glTexGeniv => [ 'GLenum', 'GLenum', 'GLint_params', ] => 'void' );

#=head2 glGetTexGendv

# glGetTexGendv( $coord, $pname, \@params, );

#=cut

  $ffi->attach( glGetTexGendv => [ 'GLenum', 'GLenum', 'GLdouble_params', ] => 'void' );

#=head2 glGetTexGenfv

# glGetTexGenfv( $coord, $pname, \@params, );

#=cut

  $ffi->attach( glGetTexGenfv => [ 'GLenum', 'GLenum', 'GLfloat_params', ] => 'void' );

#=head2 glGetTexGeniv

# glGetTexGeniv( $coord, $pname, \@params, );

#=cut

  $ffi->attach( glGetTexGeniv => [ 'GLenum', 'GLenum', 'GLint_params', ] => 'void' );

#=head2 glTexEnvf

# glTexEnvf( $target, $pname, $param, );

#=cut

  $ffi->attach( glTexEnvf => [ 'GLenum', 'GLenum', 'GLfloat', ] => 'void' );

#=head2 glTexEnvi

# glTexEnvi( $target, $pname, $param, );

#=cut

  $ffi->attach( glTexEnvi => [ 'GLenum', 'GLenum', 'GLint', ] => 'void' );

#=head2 glTexEnvfv

# glTexEnvfv( $target, $pname, \@params, );

#=cut

  $ffi->attach( glTexEnvfv => [ 'GLenum', 'GLenum', 'GLfloat_params', ] => 'void' );

#=head2 glTexEnviv

# glTexEnviv( $target, $pname, \@params, );

#=cut

  $ffi->attach( glTexEnviv => [ 'GLenum', 'GLenum', 'GLint_params', ] => 'void' );

#=head2 glGetTexEnvfv

# glGetTexEnvfv( $target, $pname, \@params, );

#=cut

  $ffi->attach( glGetTexEnvfv => [ 'GLenum', 'GLenum', 'GLfloat_params', ] => 'void' );

#=head2 glGetTexEnviv

# glGetTexEnviv( $target, $pname, \@params, );

#=cut

  $ffi->attach( glGetTexEnviv => [ 'GLenum', 'GLenum', 'GLint_params', ] => 'void' );

#=head2 glTexParameterf

# glTexParameterf( $target, $pname, $param, );

#=cut

  $ffi->attach( glTexParameterf => [ 'GLenum', 'GLenum', 'GLfloat', ] => 'void' );

#=head2 glTexParameteri

# glTexParameteri( $target, $pname, $param, );

#=cut

  $ffi->attach( glTexParameteri => [ 'GLenum', 'GLenum', 'GLint', ] => 'void' );

#=head2 glTexParameterfv

# glTexParameterfv( $target, $pname, \@params, );

#=cut

  $ffi->attach( glTexParameterfv => [ 'GLenum', 'GLenum', 'GLfloat_params', ] => 'void' );

#=head2 glTexParameteriv

# glTexParameteriv( $target, $pname, \@params, );

#=cut

  $ffi->attach( glTexParameteriv => [ 'GLenum', 'GLenum', 'GLint_params', ] => 'void' );

#=head2 glGetTexParameterfv

# glGetTexParameterfv( $target, $pname, \@params, );

#=cut

  $ffi->attach( glGetTexParameterfv => [ 'GLenum', 'GLenum', 'GLfloat_params', ] => 'void' );

#=head2 glGetTexParameteriv

# glGetTexParameteriv( $target, $pname, \@params, );

#=cut

  $ffi->attach( glGetTexParameteriv => [ 'GLenum', 'GLenum', 'GLint_params', ] => 'void' );

#=head2 glGetTexLevelParameterfv

# glGetTexLevelParameterfv( $target, $level, $pname, \@params, );

#=cut

  $ffi->attach( glGetTexLevelParameterfv => [ 'GLenum', 'GLint', 'GLenum', 'GLfloat_params', ] => 'void' );

#=head2 glGetTexLevelParameteriv

# glGetTexLevelParameteriv( $target, $level, $pname, \@params, );

#=cut

  $ffi->attach( glGetTexLevelParameteriv => [ 'GLenum', 'GLint', 'GLenum', 'GLint_params', ] => 'void' );

#=head2 glTexImage1D

# glTexImage1D( $target, $level, $internalFormat, $width, $border, $format, $type, $*pixels, );

#=cut

  $ffi->attach( glTexImage1D => [ 'GLenum', 'GLint', 'GLint', 'GLsizei', 'GLint', 'GLenum', 'GLenum', 'GLvoid', ] => 'void' );

#=head2 glTexImage2D

# glTexImage2D( $target, $level, $internalFormat, $width, $height, $border, $format, $type, $*pixels, );

#=cut

  $ffi->attach( glTexImage2D => [ 'GLenum', 'GLint', 'GLint', 'GLsizei', 'GLsizei', 'GLint', 'GLenum', 'GLenum', 'GLvoid', ] => 'void' );

#=head2 glGetTexImage

# glGetTexImage( $target, $level, $format, $type, $*pixels, );

#=cut

  $ffi->attach( glGetTexImage => [ 'GLenum', 'GLint', 'GLenum', 'GLenum', 'GLvoid', ] => 'void' );

#=head2 glGenTextures

# glGenTextures( $n, $*textures, );

#=cut

  $ffi->attach( glGenTextures => [ 'GLsizei', 'GLuint', ] => 'void' );

#=head2 glDeleteTextures

# glDeleteTextures( $n, $*textures, );

#=cut

  $ffi->attach( glDeleteTextures => [ 'GLsizei', 'GLuint', ] => 'void' );

#=head2 glBindTexture

# glBindTexture( $target, $texture, );

#=cut

  $ffi->attach( glBindTexture => [ 'GLenum', 'GLuint', ] => 'void' );

#=head2 glPrioritizeTextures

# glPrioritizeTextures( $n, $*textures, $*priorities, );

#=cut

  $ffi->attach( glPrioritizeTextures => [ 'GLsizei', 'GLuint', 'GLclampf', ] => 'void' );

#=head2 glAreTexturesResident

# glAreTexturesResident( $n, $*textures, $*residences, );

#=cut

  $ffi->attach( glAreTexturesResident => [ 'GLsizei', 'GLuint', 'GLboolean', ] => 'GLboolean' );

#=head2 glIsTexture

# glIsTexture( $texture, );

#=cut

  $ffi->attach( glIsTexture => [ 'GLuint', ] => 'GLboolean' );

#=head2 glTexSubImage1D

# glTexSubImage1D( $target, $level, $xoffset, $width, $format, $type, $*pixels, );

#=cut

  $ffi->attach( glTexSubImage1D => [ 'GLenum', 'GLint', 'GLint', 'GLsizei', 'GLenum', 'GLenum', 'GLvoid', ] => 'void' );

#=head2 glTexSubImage2D

# glTexSubImage2D( $target, $level, $xoffset, $yoffset, $width, $height, $format, $type, $*pixels, );

#=cut

  $ffi->attach( glTexSubImage2D => [ 'GLenum', 'GLint', 'GLint', 'GLint', 'GLsizei', 'GLsizei', 'GLenum', 'GLenum', 'GLvoid', ] => 'void' );

#=head2 glCopyTexImage1D

# glCopyTexImage1D( $target, $level, $internalformat, $x, $y, $width, $border, );

#=cut

  $ffi->attach( glCopyTexImage1D => [ 'GLenum', 'GLint', 'GLenum', 'GLint', 'GLint', 'GLsizei', 'GLint', ] => 'void' );

#=head2 glCopyTexImage2D

# glCopyTexImage2D( $target, $level, $internalformat, $x, $y, $width, $height, $border, );

#=cut

  $ffi->attach( glCopyTexImage2D => [ 'GLenum', 'GLint', 'GLenum', 'GLint', 'GLint', 'GLsizei', 'GLsizei', 'GLint', ] => 'void' );

#=head2 glCopyTexSubImage1D

# glCopyTexSubImage1D( $target, $level, $xoffset, $x, $y, $width, );

#=cut

  $ffi->attach( glCopyTexSubImage1D => [ 'GLenum', 'GLint', 'GLint', 'GLint', 'GLint', 'GLsizei', ] => 'void' );

#=head2 glCopyTexSubImage2D

# glCopyTexSubImage2D( $target, $level, $xoffset, $yoffset, $x, $y, $width, $height, );

#=cut

  $ffi->attach( glCopyTexSubImage2D => [ 'GLenum', 'GLint', 'GLint', 'GLint', 'GLint', 'GLint', 'GLsizei', 'GLsizei', ] => 'void' );

#=head2 glMap1d

# glMap1d( $target, $u1, $u2, $stride, $order, $*points, );

#=cut

  $ffi->attach( glMap1d => [ 'GLenum', 'GLdouble', 'GLdouble', 'GLint', 'GLint', 'GLdouble', ] => 'void' );

#=head2 glMap1f

# glMap1f( $target, $u1, $u2, $stride, $order, $*points, );

#=cut

  $ffi->attach( glMap1f => [ 'GLenum', 'GLfloat', 'GLfloat', 'GLint', 'GLint', 'GLfloat', ] => 'void' );

#=head2 glMap2d

# glMap2d( $target, $u1, $u2, $ustride, $uorder, $v1, $v2, $vstride, $vorder, $*points, );

#=cut

  $ffi->attach( glMap2d => [ 'GLenum', 'GLdouble', 'GLdouble', 'GLint', 'GLint', 'GLdouble', 'GLdouble', 'GLint', 'GLint', 'GLdouble', ] => 'void' );

#=head2 glMap2f

# glMap2f( $target, $u1, $u2, $ustride, $uorder, $v1, $v2, $vstride, $vorder, $*points, );

#=cut

  $ffi->attach( glMap2f => [ 'GLenum', 'GLfloat', 'GLfloat', 'GLint', 'GLint', 'GLfloat', 'GLfloat', 'GLint', 'GLint', 'GLfloat', ] => 'void' );

#=head2 glGetMapdv

# glGetMapdv( $target, $query, $*v, );

#=cut

  $ffi->attach( glGetMapdv => [ 'GLenum', 'GLenum', 'GLdouble', ] => 'void' );

#=head2 glGetMapfv

# glGetMapfv( $target, $query, $*v, );

#=cut

  $ffi->attach( glGetMapfv => [ 'GLenum', 'GLenum', 'GLfloat', ] => 'void' );

#=head2 glGetMapiv

# glGetMapiv( $target, $query, $*v, );

#=cut

  $ffi->attach( glGetMapiv => [ 'GLenum', 'GLenum', 'GLint', ] => 'void' );

#=head2 glEvalCoord1d

# glEvalCoord1d( $u, );

#=cut

  $ffi->attach( glEvalCoord1d => [ 'GLdouble', ] => 'void' );

#=head2 glEvalCoord1f

# glEvalCoord1f( $u, );

#=cut

  $ffi->attach( glEvalCoord1f => [ 'GLfloat', ] => 'void' );

#=head2 glEvalCoord1dv

# glEvalCoord1dv( $*u, );

#=cut

  $ffi->attach( glEvalCoord1dv => [ 'GLdouble', ] => 'void' );

#=head2 glEvalCoord1fv

# glEvalCoord1fv( $*u, );

#=cut

  $ffi->attach( glEvalCoord1fv => [ 'GLfloat', ] => 'void' );

#=head2 glEvalCoord2d

# glEvalCoord2d( $u, $v, );

#=cut

  $ffi->attach( glEvalCoord2d => [ 'GLdouble', 'GLdouble', ] => 'void' );

#=head2 glEvalCoord2f

# glEvalCoord2f( $u, $v, );

#=cut

  $ffi->attach( glEvalCoord2f => [ 'GLfloat', 'GLfloat', ] => 'void' );

#=head2 glEvalCoord2dv

# glEvalCoord2dv( $*u, );

#=cut

  $ffi->attach( glEvalCoord2dv => [ 'GLdouble', ] => 'void' );

#=head2 glEvalCoord2fv

# glEvalCoord2fv( $*u, );

#=cut

  $ffi->attach( glEvalCoord2fv => [ 'GLfloat', ] => 'void' );

#=head2 glMapGrid1d

# glMapGrid1d( $un, $u1, $u2, );

#=cut

  $ffi->attach( glMapGrid1d => [ 'GLint', 'GLdouble', 'GLdouble', ] => 'void' );

#=head2 glMapGrid1f

# glMapGrid1f( $un, $u1, $u2, );

#=cut

  $ffi->attach( glMapGrid1f => [ 'GLint', 'GLfloat', 'GLfloat', ] => 'void' );

#=head2 glMapGrid2d

# glMapGrid2d( $un, $u1, $u2, $vn, $v1, $v2, );

#=cut

  $ffi->attach( glMapGrid2d => [ 'GLint', 'GLdouble', 'GLdouble', 'GLint', 'GLdouble', 'GLdouble', ] => 'void' );

#=head2 glMapGrid2f

# glMapGrid2f( $un, $u1, $u2, $vn, $v1, $v2, );

#=cut

  $ffi->attach( glMapGrid2f => [ 'GLint', 'GLfloat', 'GLfloat', 'GLint', 'GLfloat', 'GLfloat', ] => 'void' );

#=head2 glEvalPoint1

# glEvalPoint1( $i, );

#=cut

  $ffi->attach( glEvalPoint1 => [ 'GLint', ] => 'void' );

#=head2 glEvalPoint2

# glEvalPoint2( $i, $j, );

#=cut

  $ffi->attach( glEvalPoint2 => [ 'GLint', 'GLint', ] => 'void' );

#=head2 glEvalMesh1

# glEvalMesh1( $mode, $i1, $i2, );

#=cut

  $ffi->attach( glEvalMesh1 => [ 'GLenum', 'GLint', 'GLint', ] => 'void' );

#=head2 glEvalMesh2

# glEvalMesh2( $mode, $i1, $i2, $j1, $j2, );

#=cut

  $ffi->attach( glEvalMesh2 => [ 'GLenum', 'GLint', 'GLint', 'GLint', 'GLint', ] => 'void' );

#=head2 glFogf

# glFogf( $pname, $param, );

#=cut

  $ffi->attach( glFogf => [ 'GLenum', 'GLfloat', ] => 'void' );

#=head2 glFogi

# glFogi( $pname, $param, );

#=cut

  $ffi->attach( glFogi => [ 'GLenum', 'GLint', ] => 'void' );

#=head2 glFogfv

# glFogfv( $pname, \@params, );

#=cut

  $ffi->attach( glFogfv => [ 'GLenum', 'GLfloat_params', ] => 'void' );

#=head2 glFogiv

# glFogiv( $pname, \@params, );

#=cut

  $ffi->attach( glFogiv => [ 'GLenum', 'GLint_params', ] => 'void' );

#=head2 glFeedbackBuffer

# glFeedbackBuffer( $size, $type, $*buffer, );

#=cut

  $ffi->attach( glFeedbackBuffer => [ 'GLsizei', 'GLenum', 'GLfloat', ] => 'void' );

#=head2 glPassThrough

# glPassThrough( $token, );

#=cut

  $ffi->attach( glPassThrough => [ 'GLfloat', ] => 'void' );

#=head2 glSelectBuffer

# glSelectBuffer( $size, $*buffer, );

#=cut

  $ffi->attach( glSelectBuffer => [ 'GLsizei', 'GLuint', ] => 'void' );

#=head2 glInitNames

# glInitNames();

#=cut

  $ffi->attach( glInitNames => [] => 'void' );

#=head2 glLoadName

# glLoadName( $name, );

#=cut

  $ffi->attach( glLoadName => [ 'GLuint', ] => 'void' );

#=head2 glPushName

# glPushName( $name, );

#=cut

  $ffi->attach( glPushName => [ 'GLuint', ] => 'void' );

#=head2 glPopName

# glPopName();

#=cut

  $ffi->attach( glPopName => [] => 'void' );

#=head2 glDrawRangeElements

# glDrawRangeElements( $mode, $start, $end, $count, $type, $*indices, );

#=cut

  $ffi->attach( glDrawRangeElements => [ 'GLenum', 'GLuint', 'GLuint', 'GLsizei', 'GLenum', 'GLvoid', ] => 'void' );

#=head2 glTexImage3D

# glTexImage3D( $target, $level, $internalFormat, $width, $height, $depth, $border, $format, $type, $*pixels, );

#=cut

  $ffi->attach( glTexImage3D => [ 'GLenum', 'GLint', 'GLint', 'GLsizei', 'GLsizei', 'GLsizei', 'GLint', 'GLenum', 'GLenum', 'GLvoid', ] => 'void' );

#=head2 glTexSubImage3D

# glTexSubImage3D( $target, $level, $xoffset, $yoffset, $zoffset, $width, $height, $depth, $format, $type, $*pixels, );

#=cut

  $ffi->attach( glTexSubImage3D => [ 'GLenum', 'GLint', 'GLint', 'GLint', 'GLint', 'GLsizei', 'GLsizei', 'GLsizei', 'GLenum', 'GLenum', 'GLvoid', ] => 'void' );

#=head2 glCopyTexSubImage3D

# glCopyTexSubImage3D( $target, $level, $xoffset, $yoffset, $zoffset, $x, $y, $width, $height, );

#=cut

  $ffi->attach( glCopyTexSubImage3D => [ 'GLenum', 'GLint', 'GLint', 'GLint', 'GLint', 'GLint', 'GLint', 'GLsizei', 'GLsizei', ] => 'void' );

#=head2 glColorTable

# glColorTable( $target, $internalformat, $width, $format, $type, $*table, );

#=cut

  $ffi->attach( glColorTable => [ 'GLenum', 'GLenum', 'GLsizei', 'GLenum', 'GLenum', 'GLvoid', ] => 'void' );

#=head2 glColorSubTable

# glColorSubTable( $target, $start, $count, $format, $type, $*data, );

#=cut

  $ffi->attach( glColorSubTable => [ 'GLenum', 'GLsizei', 'GLsizei', 'GLenum', 'GLenum', 'GLvoid', ] => 'void' );

#=head2 glColorTableParameteriv

# glColorTableParameteriv( $target, $pname, \@params, );

#=cut

  $ffi->attach( glColorTableParameteriv => [ 'GLenum', 'GLenum', 'GLint_params', ] => 'void' );

#=head2 glColorTableParameterfv

# glColorTableParameterfv( $target, $pname, \@params, );

#=cut

  $ffi->attach( glColorTableParameterfv => [ 'GLenum', 'GLenum', 'GLfloat_params', ] => 'void' );

#=head2 glCopyColorSubTable

# glCopyColorSubTable( $target, $start, $x, $y, $width, );

#=cut

  $ffi->attach( glCopyColorSubTable => [ 'GLenum', 'GLsizei', 'GLint', 'GLint', 'GLsizei', ] => 'void' );

#=head2 glCopyColorTable

# glCopyColorTable( $target, $internalformat, $x, $y, $width, );

#=cut

  $ffi->attach( glCopyColorTable => [ 'GLenum', 'GLenum', 'GLint', 'GLint', 'GLsizei', ] => 'void' );

#=head2 glGetColorTable

# glGetColorTable( $target, $format, $type, $*table, );

#=cut

  $ffi->attach( glGetColorTable => [ 'GLenum', 'GLenum', 'GLenum', 'GLvoid', ] => 'void' );

#=head2 glGetColorTableParameterfv

# glGetColorTableParameterfv( $target, $pname, \@params, );

#=cut

  $ffi->attach( glGetColorTableParameterfv => [ 'GLenum', 'GLenum', 'GLfloat_params', ] => 'void' );

#=head2 glGetColorTableParameteriv

# glGetColorTableParameteriv( $target, $pname, \@params, );

#=cut

  $ffi->attach( glGetColorTableParameteriv => [ 'GLenum', 'GLenum', 'GLint_params', ] => 'void' );

#=head2 glBlendEquation

# glBlendEquation( $mode, );

#=cut

  $ffi->attach( glBlendEquation => [ 'GLenum', ] => 'void' );

#=head2 glBlendColor

# glBlendColor( $red, $green, $blue, $alpha, );

#=cut

  $ffi->attach( glBlendColor => [ 'GLclampf', 'GLclampf', 'GLclampf', 'GLclampf', ] => 'void' );

#=head2 glHistogram

# glHistogram( $target, $width, $internalformat, $sink, );

#=cut

  $ffi->attach( glHistogram => [ 'GLenum', 'GLsizei', 'GLenum', 'GLboolean', ] => 'void' );

#=head2 glResetHistogram

# glResetHistogram( $target, );

#=cut

  $ffi->attach( glResetHistogram => [ 'GLenum', ] => 'void' );

#=head2 glGetHistogram

# glGetHistogram( $target, $reset, $format, $type, $*values, );

#=cut

  $ffi->attach( glGetHistogram => [ 'GLenum', 'GLboolean', 'GLenum', 'GLenum', 'GLvoid', ] => 'void' );

#=head2 glGetHistogramParameterfv

# glGetHistogramParameterfv( $target, $pname, \@params, );

#=cut

  $ffi->attach( glGetHistogramParameterfv => [ 'GLenum', 'GLenum', 'GLfloat_params', ] => 'void' );

#=head2 glGetHistogramParameteriv

# glGetHistogramParameteriv( $target, $pname, \@params, );

#=cut

  $ffi->attach( glGetHistogramParameteriv => [ 'GLenum', 'GLenum', 'GLint_params', ] => 'void' );

#=head2 glMinmax

# glMinmax( $target, $internalformat, $sink, );

#=cut

  $ffi->attach( glMinmax => [ 'GLenum', 'GLenum', 'GLboolean', ] => 'void' );

#=head2 glResetMinmax

# glResetMinmax( $target, );

#=cut

  $ffi->attach( glResetMinmax => [ 'GLenum', ] => 'void' );

#=head2 glGetMinmax

# glGetMinmax( $target, $reset, $format, $types, $*values, );

#=cut

  $ffi->attach( glGetMinmax => [ 'GLenum', 'GLboolean', 'GLenum', 'GLenum', 'GLvoid', ] => 'void' );

#=head2 glGetMinmaxParameterfv

# glGetMinmaxParameterfv( $target, $pname, \@params, );

#=cut

  $ffi->attach( glGetMinmaxParameterfv => [ 'GLenum', 'GLenum', 'GLfloat_params', ] => 'void' );

#=head2 glGetMinmaxParameteriv

# glGetMinmaxParameteriv( $target, $pname, \@params, );

#=cut

  $ffi->attach( glGetMinmaxParameteriv => [ 'GLenum', 'GLenum', 'GLint_params', ] => 'void' );

#=head2 glConvolutionFilter1D

# glConvolutionFilter1D( $target, $internalformat, $width, $format, $type, $*image, );

#=cut

  $ffi->attach( glConvolutionFilter1D => [ 'GLenum', 'GLenum', 'GLsizei', 'GLenum', 'GLenum', 'GLvoid', ] => 'void' );

#=head2 glConvolutionFilter2D

# glConvolutionFilter2D( $target, $internalformat, $width, $height, $format, $type, $*image, );

#=cut

  $ffi->attach( glConvolutionFilter2D => [ 'GLenum', 'GLenum', 'GLsizei', 'GLsizei', 'GLenum', 'GLenum', 'GLvoid', ] => 'void' );

#=head2 glConvolutionParameterf

# glConvolutionParameterf( $target, $pname, $params, );

#=cut

  $ffi->attach( glConvolutionParameterf => [ 'GLenum', 'GLenum', 'GLfloat', ] => 'void' );

#=head2 glConvolutionParameterfv

# glConvolutionParameterfv( $target, $pname, \@params, );

#=cut

  $ffi->attach( glConvolutionParameterfv => [ 'GLenum', 'GLenum', 'GLfloat_params', ] => 'void' );

#=head2 glConvolutionParameteri

# glConvolutionParameteri( $target, $pname, $params, );

#=cut

  $ffi->attach( glConvolutionParameteri => [ 'GLenum', 'GLenum', 'GLint', ] => 'void' );

#=head2 glConvolutionParameteriv

# glConvolutionParameteriv( $target, $pname, \@params, );

#=cut

  $ffi->attach( glConvolutionParameteriv => [ 'GLenum', 'GLenum', 'GLint_params', ] => 'void' );

#=head2 glCopyConvolutionFilter1D

# glCopyConvolutionFilter1D( $target, $internalformat, $x, $y, $width, );

#=cut

  $ffi->attach( glCopyConvolutionFilter1D => [ 'GLenum', 'GLenum', 'GLint', 'GLint', 'GLsizei', ] => 'void' );

#=head2 glCopyConvolutionFilter2D

# glCopyConvolutionFilter2D( $target, $internalformat, $x, $y, $width, $height, );

#=cut

  $ffi->attach( glCopyConvolutionFilter2D => [ 'GLenum', 'GLenum', 'GLint', 'GLint', 'GLsizei', 'GLsizei', ] => 'void' );

#=head2 glGetConvolutionFilter

# glGetConvolutionFilter( $target, $format, $type, $*image, );

#=cut

  $ffi->attach( glGetConvolutionFilter => [ 'GLenum', 'GLenum', 'GLenum', 'GLvoid', ] => 'void' );

#=head2 glGetConvolutionParameterfv

# glGetConvolutionParameterfv( $target, $pname, \@params, );

#=cut

  $ffi->attach( glGetConvolutionParameterfv => [ 'GLenum', 'GLenum', 'GLfloat_params', ] => 'void' );

#=head2 glGetConvolutionParameteriv

# glGetConvolutionParameteriv( $target, $pname, \@params, );

#=cut

  $ffi->attach( glGetConvolutionParameteriv => [ 'GLenum', 'GLenum', 'GLint_params', ] => 'void' );

#=head2 glSeparableFilter2D

# glSeparableFilter2D( $target, $internalformat, $width, $height, $format, $type, $*row, $*column, );

#=cut

  $ffi->attach( glSeparableFilter2D => [ 'GLenum', 'GLenum', 'GLsizei', 'GLsizei', 'GLenum', 'GLenum', 'GLvoid', 'GLvoid', ] => 'void' );

#=head2 glGetSeparableFilter

# glGetSeparableFilter( $target, $format, $type, $*row, $*column, $*span, );

#=cut

  $ffi->attach( glGetSeparableFilter => [ 'GLenum', 'GLenum', 'GLenum', 'GLvoid', 'GLvoid', 'GLvoid', ] => 'void' );

#=head2 glActiveTexture

# glActiveTexture( $texture, );

#=cut

  $ffi->attach( glActiveTexture => [ 'GLenum', ] => 'void' );

#=head2 glClientActiveTexture

# glClientActiveTexture( $texture, );

#=cut

  $ffi->attach( glClientActiveTexture => [ 'GLenum', ] => 'void' );

#=head2 glCompressedTexImage1D

# glCompressedTexImage1D( $target, $level, $internalformat, $width, $border, $imageSize, $*data, );

#=cut

  $ffi->attach( glCompressedTexImage1D => [ 'GLenum', 'GLint', 'GLenum', 'GLsizei', 'GLint', 'GLsizei', 'GLvoid', ] => 'void' );

#=head2 glCompressedTexImage2D

# glCompressedTexImage2D( $target, $level, $internalformat, $width, $height, $border, $imageSize, $*data, );

#=cut

  $ffi->attach( glCompressedTexImage2D => [ 'GLenum', 'GLint', 'GLenum', 'GLsizei', 'GLsizei', 'GLint', 'GLsizei', 'GLvoid', ] => 'void' );

#=head2 glCompressedTexImage3D

# glCompressedTexImage3D( $target, $level, $internalformat, $width, $height, $depth, $border, $imageSize, $*data, );

#=cut

  $ffi->attach( glCompressedTexImage3D => [ 'GLenum', 'GLint', 'GLenum', 'GLsizei', 'GLsizei', 'GLsizei', 'GLint', 'GLsizei', 'GLvoid', ] => 'void' );

#=head2 glCompressedTexSubImage1D

# glCompressedTexSubImage1D( $target, $level, $xoffset, $width, $format, $imageSize, $*data, );

#=cut

  $ffi->attach( glCompressedTexSubImage1D => [ 'GLenum', 'GLint', 'GLint', 'GLsizei', 'GLenum', 'GLsizei', 'GLvoid', ] => 'void' );

#=head2 glCompressedTexSubImage2D

# glCompressedTexSubImage2D( $target, $level, $xoffset, $yoffset, $width, $height, $format, $imageSize, $*data, );

#=cut

  $ffi->attach( glCompressedTexSubImage2D => [ 'GLenum', 'GLint', 'GLint', 'GLint', 'GLsizei', 'GLsizei', 'GLenum', 'GLsizei', 'GLvoid', ] => 'void' );

#=head2 glCompressedTexSubImage3D

# glCompressedTexSubImage3D( $target, $level, $xoffset, $yoffset, $zoffset, $width, $height, $depth, $format, $imageSize, $*data, );

#=cut

  $ffi->attach( glCompressedTexSubImage3D => [ 'GLenum', 'GLint', 'GLint', 'GLint', 'GLint', 'GLsizei', 'GLsizei', 'GLsizei', 'GLenum', 'GLsizei', 'GLvoid', ] => 'void' );

#=head2 glGetCompressedTexImage

# glGetCompressedTexImage( $target, $lod, $*img, );

#=cut

  $ffi->attach( glGetCompressedTexImage => [ 'GLenum', 'GLint', 'GLvoid', ] => 'void' );

#=head2 glMultiTexCoord1d

# glMultiTexCoord1d( $target, $s, );

#=cut

  $ffi->attach( glMultiTexCoord1d => [ 'GLenum', 'GLdouble', ] => 'void' );

#=head2 glMultiTexCoord1dv

# glMultiTexCoord1dv( $target, $*v, );

#=cut

  $ffi->attach( glMultiTexCoord1dv => [ 'GLenum', 'GLdouble', ] => 'void' );

#=head2 glMultiTexCoord1f

# glMultiTexCoord1f( $target, $s, );

#=cut

  $ffi->attach( glMultiTexCoord1f => [ 'GLenum', 'GLfloat', ] => 'void' );

#=head2 glMultiTexCoord1fv

# glMultiTexCoord1fv( $target, $*v, );

#=cut

  $ffi->attach( glMultiTexCoord1fv => [ 'GLenum', 'GLfloat', ] => 'void' );

#=head2 glMultiTexCoord1i

# glMultiTexCoord1i( $target, $s, );

#=cut

  $ffi->attach( glMultiTexCoord1i => [ 'GLenum', 'GLint', ] => 'void' );

#=head2 glMultiTexCoord1iv

# glMultiTexCoord1iv( $target, $*v, );

#=cut

  $ffi->attach( glMultiTexCoord1iv => [ 'GLenum', 'GLint', ] => 'void' );

#=head2 glMultiTexCoord1s

# glMultiTexCoord1s( $target, $s, );

#=cut

  $ffi->attach( glMultiTexCoord1s => [ 'GLenum', 'GLshort', ] => 'void' );

#=head2 glMultiTexCoord1sv

# glMultiTexCoord1sv( $target, $*v, );

#=cut

  $ffi->attach( glMultiTexCoord1sv => [ 'GLenum', 'GLshort', ] => 'void' );

#=head2 glMultiTexCoord2d

# glMultiTexCoord2d( $target, $s, $t, );

#=cut

  $ffi->attach( glMultiTexCoord2d => [ 'GLenum', 'GLdouble', 'GLdouble', ] => 'void' );

#=head2 glMultiTexCoord2dv

# glMultiTexCoord2dv( $target, $*v, );

#=cut

  $ffi->attach( glMultiTexCoord2dv => [ 'GLenum', 'GLdouble', ] => 'void' );

#=head2 glMultiTexCoord2f

# glMultiTexCoord2f( $target, $s, $t, );

#=cut

  $ffi->attach( glMultiTexCoord2f => [ 'GLenum', 'GLfloat', 'GLfloat', ] => 'void' );

#=head2 glMultiTexCoord2fv

# glMultiTexCoord2fv( $target, $*v, );

#=cut

  $ffi->attach( glMultiTexCoord2fv => [ 'GLenum', 'GLfloat', ] => 'void' );

#=head2 glMultiTexCoord2i

# glMultiTexCoord2i( $target, $s, $t, );

#=cut

  $ffi->attach( glMultiTexCoord2i => [ 'GLenum', 'GLint', 'GLint', ] => 'void' );

#=head2 glMultiTexCoord2iv

# glMultiTexCoord2iv( $target, $*v, );

#=cut

  $ffi->attach( glMultiTexCoord2iv => [ 'GLenum', 'GLint', ] => 'void' );

#=head2 glMultiTexCoord2s

# glMultiTexCoord2s( $target, $s, $t, );

#=cut

  $ffi->attach( glMultiTexCoord2s => [ 'GLenum', 'GLshort', 'GLshort', ] => 'void' );

#=head2 glMultiTexCoord2sv

# glMultiTexCoord2sv( $target, $*v, );

#=cut

  $ffi->attach( glMultiTexCoord2sv => [ 'GLenum', 'GLshort', ] => 'void' );

#=head2 glMultiTexCoord3d

# glMultiTexCoord3d( $target, $s, $t, $r, );

#=cut

  $ffi->attach( glMultiTexCoord3d => [ 'GLenum', 'GLdouble', 'GLdouble', 'GLdouble', ] => 'void' );

#=head2 glMultiTexCoord3dv

# glMultiTexCoord3dv( $target, $*v, );

#=cut

  $ffi->attach( glMultiTexCoord3dv => [ 'GLenum', 'GLdouble', ] => 'void' );

#=head2 glMultiTexCoord3f

# glMultiTexCoord3f( $target, $s, $t, $r, );

#=cut

  $ffi->attach( glMultiTexCoord3f => [ 'GLenum', 'GLfloat', 'GLfloat', 'GLfloat', ] => 'void' );

#=head2 glMultiTexCoord3fv

# glMultiTexCoord3fv( $target, $*v, );

#=cut

  $ffi->attach( glMultiTexCoord3fv => [ 'GLenum', 'GLfloat', ] => 'void' );

#=head2 glMultiTexCoord3i

# glMultiTexCoord3i( $target, $s, $t, $r, );

#=cut

  $ffi->attach( glMultiTexCoord3i => [ 'GLenum', 'GLint', 'GLint', 'GLint', ] => 'void' );

#=head2 glMultiTexCoord3iv

# glMultiTexCoord3iv( $target, $*v, );

#=cut

  $ffi->attach( glMultiTexCoord3iv => [ 'GLenum', 'GLint', ] => 'void' );

#=head2 glMultiTexCoord3s

# glMultiTexCoord3s( $target, $s, $t, $r, );

#=cut

  $ffi->attach( glMultiTexCoord3s => [ 'GLenum', 'GLshort', 'GLshort', 'GLshort', ] => 'void' );

#=head2 glMultiTexCoord3sv

# glMultiTexCoord3sv( $target, $*v, );

#=cut

  $ffi->attach( glMultiTexCoord3sv => [ 'GLenum', 'GLshort', ] => 'void' );

#=head2 glMultiTexCoord4d

# glMultiTexCoord4d( $target, $s, $t, $r, $q, );

#=cut

  $ffi->attach( glMultiTexCoord4d => [ 'GLenum', 'GLdouble', 'GLdouble', 'GLdouble', 'GLdouble', ] => 'void' );

#=head2 glMultiTexCoord4dv

# glMultiTexCoord4dv( $target, $*v, );

#=cut

  $ffi->attach( glMultiTexCoord4dv => [ 'GLenum', 'GLdouble', ] => 'void' );

#=head2 glMultiTexCoord4f

# glMultiTexCoord4f( $target, $s, $t, $r, $q, );

#=cut

  $ffi->attach( glMultiTexCoord4f => [ 'GLenum', 'GLfloat', 'GLfloat', 'GLfloat', 'GLfloat', ] => 'void' );

#=head2 glMultiTexCoord4fv

# glMultiTexCoord4fv( $target, $*v, );

#=cut

  $ffi->attach( glMultiTexCoord4fv => [ 'GLenum', 'GLfloat', ] => 'void' );

#=head2 glMultiTexCoord4i

# glMultiTexCoord4i( $target, $s, $t, $r, $q, );

#=cut

  $ffi->attach( glMultiTexCoord4i => [ 'GLenum', 'GLint', 'GLint', 'GLint', 'GLint', ] => 'void' );

#=head2 glMultiTexCoord4iv

# glMultiTexCoord4iv( $target, $*v, );

#=cut

  $ffi->attach( glMultiTexCoord4iv => [ 'GLenum', 'GLint', ] => 'void' );

#=head2 glMultiTexCoord4s

# glMultiTexCoord4s( $target, $s, $t, $r, $q, );

#=cut

  $ffi->attach( glMultiTexCoord4s => [ 'GLenum', 'GLshort', 'GLshort', 'GLshort', 'GLshort', ] => 'void' );

#=head2 glMultiTexCoord4sv

# glMultiTexCoord4sv( $target, $*v, );

#=cut

  $ffi->attach( glMultiTexCoord4sv => [ 'GLenum', 'GLshort', ] => 'void' );

#=head2 glLoadTransposeMatrixd

# glLoadTransposeMatrixd( $m[16], );

#=cut

  $ffi->attach( glLoadTransposeMatrixd => [ 'GLdouble', ] => 'void' );

#=head2 glLoadTransposeMatrixf

# glLoadTransposeMatrixf( $m[16], );

#=cut

  $ffi->attach( glLoadTransposeMatrixf => [ 'GLfloat', ] => 'void' );

#=head2 glMultTransposeMatrixd

# glMultTransposeMatrixd( $m[16], );

#=cut

  $ffi->attach( glMultTransposeMatrixd => [ 'GLdouble', ] => 'void' );

#=head2 glMultTransposeMatrixf

# glMultTransposeMatrixf( $m[16], );

#=cut

  $ffi->attach( glMultTransposeMatrixf => [ 'GLfloat', ] => 'void' );

#=head2 glSampleCoverage

# glSampleCoverage( $value, $invert, );

#=cut

  $ffi->attach( glSampleCoverage => [ 'GLclampf', 'GLboolean', ] => 'void' );

#=head2 glActiveTextureARB

# glActiveTextureARB( $texture, );

#=cut

  $ffi->attach( glActiveTextureARB => [ 'GLenum', ] => 'void' );

#=head2 glClientActiveTextureARB

# glClientActiveTextureARB( $texture, );

#=cut

  $ffi->attach( glClientActiveTextureARB => [ 'GLenum', ] => 'void' );

#=head2 glMultiTexCoord1dARB

# glMultiTexCoord1dARB( $target, $s, );

#=cut

  $ffi->attach( glMultiTexCoord1dARB => [ 'GLenum', 'GLdouble', ] => 'void' );

#=head2 glMultiTexCoord1dvARB

# glMultiTexCoord1dvARB( $target, $*v, );

#=cut

  $ffi->attach( glMultiTexCoord1dvARB => [ 'GLenum', 'GLdouble', ] => 'void' );

#=head2 glMultiTexCoord1fARB

# glMultiTexCoord1fARB( $target, $s, );

#=cut

  $ffi->attach( glMultiTexCoord1fARB => [ 'GLenum', 'GLfloat', ] => 'void' );

#=head2 glMultiTexCoord1fvARB

# glMultiTexCoord1fvARB( $target, $*v, );

#=cut

  $ffi->attach( glMultiTexCoord1fvARB => [ 'GLenum', 'GLfloat', ] => 'void' );

#=head2 glMultiTexCoord1iARB

# glMultiTexCoord1iARB( $target, $s, );

#=cut

  $ffi->attach( glMultiTexCoord1iARB => [ 'GLenum', 'GLint', ] => 'void' );

#=head2 glMultiTexCoord1ivARB

# glMultiTexCoord1ivARB( $target, $*v, );

#=cut

  $ffi->attach( glMultiTexCoord1ivARB => [ 'GLenum', 'GLint', ] => 'void' );

#=head2 glMultiTexCoord1sARB

# glMultiTexCoord1sARB( $target, $s, );

#=cut

  $ffi->attach( glMultiTexCoord1sARB => [ 'GLenum', 'GLshort', ] => 'void' );

#=head2 glMultiTexCoord1svARB

# glMultiTexCoord1svARB( $target, $*v, );

#=cut

  $ffi->attach( glMultiTexCoord1svARB => [ 'GLenum', 'GLshort', ] => 'void' );

#=head2 glMultiTexCoord2dARB

# glMultiTexCoord2dARB( $target, $s, $t, );

#=cut

  $ffi->attach( glMultiTexCoord2dARB => [ 'GLenum', 'GLdouble', 'GLdouble', ] => 'void' );

#=head2 glMultiTexCoord2dvARB

# glMultiTexCoord2dvARB( $target, $*v, );

#=cut

  $ffi->attach( glMultiTexCoord2dvARB => [ 'GLenum', 'GLdouble', ] => 'void' );

#=head2 glMultiTexCoord2fARB

# glMultiTexCoord2fARB( $target, $s, $t, );

#=cut

  $ffi->attach( glMultiTexCoord2fARB => [ 'GLenum', 'GLfloat', 'GLfloat', ] => 'void' );

#=head2 glMultiTexCoord2fvARB

# glMultiTexCoord2fvARB( $target, $*v, );

#=cut

  $ffi->attach( glMultiTexCoord2fvARB => [ 'GLenum', 'GLfloat', ] => 'void' );

#=head2 glMultiTexCoord2iARB

# glMultiTexCoord2iARB( $target, $s, $t, );

#=cut

  $ffi->attach( glMultiTexCoord2iARB => [ 'GLenum', 'GLint', 'GLint', ] => 'void' );

#=head2 glMultiTexCoord2ivARB

# glMultiTexCoord2ivARB( $target, $*v, );

#=cut

  $ffi->attach( glMultiTexCoord2ivARB => [ 'GLenum', 'GLint', ] => 'void' );

#=head2 glMultiTexCoord2sARB

# glMultiTexCoord2sARB( $target, $s, $t, );

#=cut

  $ffi->attach( glMultiTexCoord2sARB => [ 'GLenum', 'GLshort', 'GLshort', ] => 'void' );

#=head2 glMultiTexCoord2svARB

# glMultiTexCoord2svARB( $target, $*v, );

#=cut

  $ffi->attach( glMultiTexCoord2svARB => [ 'GLenum', 'GLshort', ] => 'void' );

#=head2 glMultiTexCoord3dARB

# glMultiTexCoord3dARB( $target, $s, $t, $r, );

#=cut

  $ffi->attach( glMultiTexCoord3dARB => [ 'GLenum', 'GLdouble', 'GLdouble', 'GLdouble', ] => 'void' );

#=head2 glMultiTexCoord3dvARB

# glMultiTexCoord3dvARB( $target, $*v, );

#=cut

  $ffi->attach( glMultiTexCoord3dvARB => [ 'GLenum', 'GLdouble', ] => 'void' );

#=head2 glMultiTexCoord3fARB

# glMultiTexCoord3fARB( $target, $s, $t, $r, );

#=cut

  $ffi->attach( glMultiTexCoord3fARB => [ 'GLenum', 'GLfloat', 'GLfloat', 'GLfloat', ] => 'void' );

#=head2 glMultiTexCoord3fvARB

# glMultiTexCoord3fvARB( $target, $*v, );

#=cut

  $ffi->attach( glMultiTexCoord3fvARB => [ 'GLenum', 'GLfloat', ] => 'void' );

#=head2 glMultiTexCoord3iARB

# glMultiTexCoord3iARB( $target, $s, $t, $r, );

#=cut

  $ffi->attach( glMultiTexCoord3iARB => [ 'GLenum', 'GLint', 'GLint', 'GLint', ] => 'void' );

#=head2 glMultiTexCoord3ivARB

# glMultiTexCoord3ivARB( $target, $*v, );

#=cut

  $ffi->attach( glMultiTexCoord3ivARB => [ 'GLenum', 'GLint', ] => 'void' );

#=head2 glMultiTexCoord3sARB

# glMultiTexCoord3sARB( $target, $s, $t, $r, );

#=cut

  $ffi->attach( glMultiTexCoord3sARB => [ 'GLenum', 'GLshort', 'GLshort', 'GLshort', ] => 'void' );

#=head2 glMultiTexCoord3svARB

# glMultiTexCoord3svARB( $target, $*v, );

#=cut

  $ffi->attach( glMultiTexCoord3svARB => [ 'GLenum', 'GLshort', ] => 'void' );

#=head2 glMultiTexCoord4dARB

# glMultiTexCoord4dARB( $target, $s, $t, $r, $q, );

#=cut

  $ffi->attach( glMultiTexCoord4dARB => [ 'GLenum', 'GLdouble', 'GLdouble', 'GLdouble', 'GLdouble', ] => 'void' );

#=head2 glMultiTexCoord4dvARB

# glMultiTexCoord4dvARB( $target, $*v, );

#=cut

  $ffi->attach( glMultiTexCoord4dvARB => [ 'GLenum', 'GLdouble', ] => 'void' );

#=head2 glMultiTexCoord4fARB

# glMultiTexCoord4fARB( $target, $s, $t, $r, $q, );

#=cut

  $ffi->attach( glMultiTexCoord4fARB => [ 'GLenum', 'GLfloat', 'GLfloat', 'GLfloat', 'GLfloat', ] => 'void' );

#=head2 glMultiTexCoord4fvARB

# glMultiTexCoord4fvARB( $target, $*v, );

#=cut

  $ffi->attach( glMultiTexCoord4fvARB => [ 'GLenum', 'GLfloat', ] => 'void' );

#=head2 glMultiTexCoord4iARB

# glMultiTexCoord4iARB( $target, $s, $t, $r, $q, );

#=cut

  $ffi->attach( glMultiTexCoord4iARB => [ 'GLenum', 'GLint', 'GLint', 'GLint', 'GLint', ] => 'void' );

#=head2 glMultiTexCoord4ivARB

# glMultiTexCoord4ivARB( $target, $*v, );

#=cut

  $ffi->attach( glMultiTexCoord4ivARB => [ 'GLenum', 'GLint', ] => 'void' );

#=head2 glMultiTexCoord4sARB

# glMultiTexCoord4sARB( $target, $s, $t, $r, $q, );

#=cut

  $ffi->attach( glMultiTexCoord4sARB => [ 'GLenum', 'GLshort', 'GLshort', 'GLshort', 'GLshort', ] => 'void' );

#=head2 glMultiTexCoord4svARB

# glMultiTexCoord4svARB( $target, $*v, );

#=cut

  $ffi->attach( glMultiTexCoord4svARB => [ 'GLenum', 'GLshort', ] => 'void' );

#=head2 glBlendEquationSeparateATI

# glBlendEquationSeparateATI( $modeRGB, $modeA, );

#=cut

  $ffi->attach( glBlendEquationSeparateATI => [ 'GLenum', 'GLenum', ] => 'void' );



1;
}