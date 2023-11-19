export DESIGN_NICKNAME = micro_blossom
export DESIGN_NAME = DualAccelerator
export PLATFORM    = asap7

export SYNTH_HIERARCHICAL = 1
export RTLMP_FLOW = True
export MAX_UNGROUP_SIZE ?= 1000

# export VERILOG_FILES = $(sort $(wildcard ./designs/src/$(DESIGN_NICKNAME)/*.v))
export VERILOG_FILES = ../../micro-blossom/gen/example_phenomenological_rotated_d5/DualAccelerator.v

export SDC_FILE      = ./designs/$(PLATFORM)/$(DESIGN_NICKNAME)/constraint.sdc
# export ADDITIONAL_LEFS = ./platforms/$(PLATFORM)/lef/fakeram7_256x32.lef
# export ADDITIONAL_LIBS = ./platforms/$(PLATFORM)/lib/fakeram7_256x32.lib

export PLACE_DENSITY = 0.3
export PLACE_DENSITY_LB_ADDON = 0.10

export DIE_AREA = 0 0 320 320
export CORE_AREA = 5 5 315 315 


# export HAS_IO_CONSTRAINTS = 1
# export PLACE_PINS_ARGS    = -exclude left:* -exclude right:* -exclude top:*
# export MACRO_PLACE_HALO    = 3 3
# export MACRO_PLACE_CHANNEL = 6 6
export PLACE_PINS_ARGS=-min_distance 6 -min_distance_in_tracks
#
export TNS_END_PERCENT   = 100
