/** @file HelloWorld.c
 * EFI Hello World application
 **/

#include <Uefi.h>
#include <Library/UefiLib.h>

/**
 * Entry point for the application
 *
 * @param[in] ImageHandle  The firmware allocated handle for the EFI image
 * @param[in] SystemTable  A pointer to the EFI System Table
 *
 * @retval EFI_SUCCESS  The entry point is executed successufully
 * @retval other        Some error occurs while executing the application
 **/
EFI_STATUS
EFIAPI
EntryPoint (
  IN EFI_HANDLE        ImageHandle,
  IN EFI_SYSTEM_TABLE* SystemTable
  )
{
  Print(L"Hello World!!!\n");
  return EFI_SUCCESS;
}
