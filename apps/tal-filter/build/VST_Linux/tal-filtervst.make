# C++ Shared Library Makefile autogenerated by premake
# Don't edit this file! Instead edit `premake.lua` then rerun `make`

ifndef CONFIG
  CONFIG=Debug
endif

# if multiple archs are defined turn off automated dependency generation
DEPFLAGS := $(if $(word 2, $(TARGET_ARCH)), , -MMD)

ifeq ($(CONFIG),Debug)
  BINDIR := ../../../../bin
  LIBDIR := ../../../../bin
  OBJDIR := ../../../../bin/intermediate_linux/tal-filtervstDebug
  OUTDIR := ../../../../bin
  CPPFLAGS := $(DEPFLAGS) -D "LINUX=1" -D "JUCE_USE_XSHM=1" -D "JUCE_USE_VSTSDK_2_4=1" -D "XTALFILTER_VST_PLUGIN=1" -D "DEBUG=1" -D "_DEBUG=1" -I "../../src" -I "/usr/include" -I "/usr/include/freetype2" -I "../../../../juce" -I "../../../../juce/src" -I "../../../../juce/extras/audio plugins" -I "../../src" -I "../../../../vst/vstsdk2.4/public.sdk/source/vst2.x" -I "../../../../vst/vstsdk2.4" -I "../../../../vstsdk2.4/public.sdk/source/vst2.x" -I "../../../../vstsdk2.4" -I "../../vst/vstsdk2.4/public.sdk/source/vst2.x" -I "../../vst/vstsdk2.4" -I "../../vstsdk2.4/public.sdk/source/vst2.x" -I "../../vstsdk2.4" -I "/usr/include/vstsdk2.4/public.sdk/source/vst2.x" -I "/usr/include/vst/public.sdk/source/vst2.x"
  CFLAGS += $(CPPFLAGS) $(TARGET_ARCH) -fPIC -g -O0 -g -Wall
  CXXFLAGS += $(CFLAGS)
  LDFLAGS += -L$(BINDIR) -L$(LIBDIR) -shared -L"../../../../bin" -L"/usr/X11R6/lib/" -L"/usr/lib/" -lfreetype -lpthread -lrt -lX11 -lXext -ljuce_debug
  LDDEPS :=
  RESFLAGS := -D "LINUX=1" -D "JUCE_USE_XSHM=1" -D "JUCE_USE_VSTSDK_2_4=1" -D "XTALFILTER_VST_PLUGIN=1" -D "DEBUG=1" -D "_DEBUG=1" -I "../../src" -I "/usr/include" -I "/usr/include/freetype2" -I "../../../../juce" -I "../../../../juce/src" -I "../../../../juce/extras/audio plugins" -I "../../src" -I "../../../../vst/vstsdk2.4/public.sdk/source/vst2.x" -I "../../../../vst/vstsdk2.4" -I "../../../../vstsdk2.4/public.sdk/source/vst2.x" -I "../../../../vstsdk2.4" -I "../../vst/vstsdk2.4/public.sdk/source/vst2.x" -I "../../vst/vstsdk2.4" -I "../../vstsdk2.4/public.sdk/source/vst2.x" -I "../../vstsdk2.4" -I "/usr/include/vstsdk2.4/public.sdk/source/vst2.x" -I "/usr/include/vst/public.sdk/source/vst2.x"
  TARGET := tal-filtervst_debug.so
 BLDCMD = $(CXX) -o $(OUTDIR)/$(TARGET) $(OBJECTS) $(LDFLAGS) $(RESOURCES) $(TARGET_ARCH)
endif

ifeq ($(CONFIG),Release)
  BINDIR := ../../../../bin
  LIBDIR := ../../../../bin
  OBJDIR := ../../../../bin/intermediate_linux/tal-filtervstRelease
  OUTDIR := ../../../../bin
  CPPFLAGS := $(DEPFLAGS) -D "LINUX=1" -D "JUCE_USE_XSHM=1" -D "JUCE_USE_VSTSDK_2_4=1" -D "XTALFILTER_VST_PLUGIN=1" -D "NDEBUG=1" -I "../../src" -I "/usr/include" -I "/usr/include/freetype2" -I "../../../../juce" -I "../../../../juce/src" -I "../../../../juce/extras/audio plugins" -I "../../src" -I "../../../../vst/vstsdk2.4/public.sdk/source/vst2.x" -I "../../../../vst/vstsdk2.4" -I "../../../../vstsdk2.4/public.sdk/source/vst2.x" -I "../../../../vstsdk2.4" -I "../../vst/vstsdk2.4/public.sdk/source/vst2.x" -I "../../vst/vstsdk2.4" -I "../../vstsdk2.4/public.sdk/source/vst2.x" -I "../../vstsdk2.4" -I "/usr/include/vstsdk2.4/public.sdk/source/vst2.x" -I "/usr/include/vst/public.sdk/source/vst2.x"
  CFLAGS += $(CPPFLAGS) $(TARGET_ARCH) -fPIC -O3 -fomit-frame-pointer -pipe -fvisibility=hidden -Wall
  CXXFLAGS += $(CFLAGS)
  LDFLAGS += -L$(BINDIR) -L$(LIBDIR) -shared -s -L"../../../../bin" -L"/usr/X11R6/lib/" -L"/usr/lib/" -lfreetype -lpthread -lrt -lX11 -lXext -ljuce
  LDDEPS :=
  RESFLAGS := -D "LINUX=1" -D "JUCE_USE_XSHM=1" -D "JUCE_USE_VSTSDK_2_4=1" -D "XTALFILTER_VST_PLUGIN=1" -D "NDEBUG=1" -I "../../src" -I "/usr/include" -I "/usr/include/freetype2" -I "../../../../juce" -I "../../../../juce/src" -I "../../../../juce/extras/audio plugins" -I "../../src" -I "../../../../vst/vstsdk2.4/public.sdk/source/vst2.x" -I "../../../../vst/vstsdk2.4" -I "../../../../vstsdk2.4/public.sdk/source/vst2.x" -I "../../../../vstsdk2.4" -I "../../vst/vstsdk2.4/public.sdk/source/vst2.x" -I "../../vst/vstsdk2.4" -I "../../vstsdk2.4/public.sdk/source/vst2.x" -I "../../vstsdk2.4" -I "/usr/include/vstsdk2.4/public.sdk/source/vst2.x" -I "/usr/include/vst/public.sdk/source/vst2.x"
  TARGET := tal-filtervst.so
 BLDCMD = $(CXX) -o $(OUTDIR)/$(TARGET) $(OBJECTS) $(LDFLAGS) $(RESOURCES) $(TARGET_ARCH)
endif

OBJECTS := \
	$(OBJDIR)/TalCore.o \
	$(OBJDIR)/TalComponent.o \
	$(OBJDIR)/Main.o \
	$(OBJDIR)/Lfo.o \

MKDIR_TYPE := msdos
CMD := $(subst \,\\,$(ComSpec)$(COMSPEC))
ifeq (,$(CMD))
  MKDIR_TYPE := posix
endif
ifeq (/bin,$(findstring /bin,$(SHELL)))
  MKDIR_TYPE := posix
endif
ifeq ($(MKDIR_TYPE),posix)
  CMD_MKBINDIR := mkdir -p $(BINDIR)
  CMD_MKLIBDIR := mkdir -p $(LIBDIR)
  CMD_MKOUTDIR := mkdir -p $(OUTDIR)
  CMD_MKOBJDIR := mkdir -p $(OBJDIR)
else
  CMD_MKBINDIR := $(CMD) /c if not exist $(subst /,\\,$(BINDIR)) mkdir $(subst /,\\,$(BINDIR))
  CMD_MKLIBDIR := $(CMD) /c if not exist $(subst /,\\,$(LIBDIR)) mkdir $(subst /,\\,$(LIBDIR))
  CMD_MKOUTDIR := $(CMD) /c if not exist $(subst /,\\,$(OUTDIR)) mkdir $(subst /,\\,$(OUTDIR))
  CMD_MKOBJDIR := $(CMD) /c if not exist $(subst /,\\,$(OBJDIR)) mkdir $(subst /,\\,$(OBJDIR))
endif

.PHONY: clean

$(OUTDIR)/$(TARGET): $(OBJECTS) $(LDDEPS) $(RESOURCES)
	@echo Linking tal-filtervst
	-@$(CMD_MKBINDIR)
	-@$(CMD_MKLIBDIR)
	-@$(CMD_MKOUTDIR)
	@$(BLDCMD)

clean:
	@echo Cleaning tal-filtervst
ifeq ($(MKDIR_TYPE),posix)
	-@rm -f $(OUTDIR)/$(TARGET)
	-@rm -rf $(OBJDIR)
else
	-@if exist $(subst /,\,$(OUTDIR)/$(TARGET)) del /q $(subst /,\,$(OUTDIR)/$(TARGET))
	-@if exist $(subst /,\,$(OBJDIR)) del /q $(subst /,\,$(OBJDIR))
	-@if exist $(subst /,\,$(OBJDIR)) rmdir /s /q $(subst /,\,$(OBJDIR))
endif

$(OBJDIR)/TalCore.o: ../../src/TalCore.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/TalComponent.o: ../../src/TalComponent.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/Main.o: ../../src/Main.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/Lfo.o: ../../src/Engine/Lfo.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

-include $(OBJECTS:%.o=%.d)

