//
//  passion-cameraif/cameraif.cpp
//    passion(froyo) 'libcamera.so' wrapper for gingerbread
//
#include <camera/CameraHardwareInterface.h>
#include <binder/MemoryBase.h>
#include <binder/MemoryHeapBase.h>
 
using namespace android;
 
// passion(froyo) libcamera.so
extern "C" sp<CameraHardwareInterface> openCameraHardware();
 
static CameraInfo sCameraInfo[] = {
    {
        CAMERA_FACING_BACK,
        90,  /* orientation */
    },
};
 
extern "C" int HAL_getNumberOfCameras()
{
    return sizeof(sCameraInfo) / sizeof(sCameraInfo[0]);
}
 
extern "C" void HAL_getCameraInfo(int cameraId, struct CameraInfo *cameraInfo)
{
    memcpy(cameraInfo, &sCameraInfo[cameraId], sizeof(CameraInfo));
}
 
extern "C" sp<CameraHardwareInterface> HAL_openCameraHardware(int /*cameraId*/)
{
    return openCameraHardware();
}