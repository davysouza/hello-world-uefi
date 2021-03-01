[Defines]
  DSC_SPECIFICATION         = 0x0001001A
  PLATFORM_GUID             = 6bddbee1-fceb-4e26-9673-c904912bab01
  PLATFORM_VERSION          = 0.01
  PLATFORM_NAME             = HelloWorld
  SKUID_IDENTIFIER          = DEFAULT
  SUPPORTED_ARCHITECTURES   = AARCH64|X64
  BUILD_TARGETS             = DEBUG|RELEASE|NOOPT
  OUTPUT_DIRECTORY          = $(PKG_OUTPUT_DIR)

[LibraryClasses]
  BaseLib|MdePkg/Library/BaseLib/BaseLib.inf
  BaseMemoryLib|MdePkg/Library/BaseMemoryLib/BaseMemoryLib.inf

  UefiApplicationEntryPoint|MdePkg/Library/UefiApplicationEntryPoint/UefiApplicationEntryPoint.inf
  UefiBootServicesTableLib|MdePkg/Library/UefiBootServicesTableLib/UefiBootServicesTableLib.inf

  DebugLib|MdePkg/Library/BaseDebugLibNull/BaseDebugLibNull.inf
  PcdLib|MdePkg/Library/BasePcdLibNull/BasePcdLibNull.inf

[Components]
  HelloWorld.inf
