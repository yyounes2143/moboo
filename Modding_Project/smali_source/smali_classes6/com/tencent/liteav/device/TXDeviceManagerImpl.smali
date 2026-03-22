.class public Lcom/tencent/liteav/device/TXDeviceManagerImpl;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/tencent/liteav/device/TXDeviceManager;


# annotations
.annotation runtime Lcom/tencent/liteav/base/annotations/JNINamespace;
    value = "liteav::manager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/device/TXDeviceManagerImpl$CameraCaptureParam;
    }
.end annotation


# instance fields
.field private mNativeDeviceMgr:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/tencent/liteav/device/TXDeviceManagerImpl;->mNativeDeviceMgr:J

    .line 5
    .line 6
    return-void
.end method

.method public static audioRouteAsInt(Lcom/tencent/liteav/device/TXDeviceManager$TXAudioRoute;)I
    .locals 2

    .line 1
    sget-object v0, Lcom/tencent/liteav/device/TXDeviceManager$TXAudioRoute;->TXAudioRouteSpeakerphone:Lcom/tencent/liteav/device/TXDeviceManager$TXAudioRoute;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    sget-object v0, Lcom/tencent/liteav/device/TXDeviceManager$TXAudioRoute;->TXAudioRouteEarpiece:Lcom/tencent/liteav/device/TXDeviceManager$TXAudioRoute;

    .line 8
    .line 9
    if-ne p0, v0, :cond_1

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_1
    sget-object v0, Lcom/tencent/liteav/device/TXDeviceManager$TXAudioRoute;->TXAudioRouteWiredHeadset:Lcom/tencent/liteav/device/TXDeviceManager$TXAudioRoute;

    .line 14
    .line 15
    if-ne p0, v0, :cond_2

    .line 16
    .line 17
    const/4 p0, 0x2

    .line 18
    return p0

    .line 19
    :cond_2
    sget-object v0, Lcom/tencent/liteav/device/TXDeviceManager$TXAudioRoute;->TXAudioRouteBluetoothHeadset:Lcom/tencent/liteav/device/TXDeviceManager$TXAudioRoute;

    .line 20
    .line 21
    if-ne p0, v0, :cond_3

    .line 22
    .line 23
    const/4 p0, 0x3

    .line 24
    return p0

    .line 25
    :cond_3
    return v1
.end method

.method public static audioRouteFromInt(I)Lcom/tencent/liteav/device/TXDeviceManager$TXAudioRoute;
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    sget-object p0, Lcom/tencent/liteav/device/TXDeviceManager$TXAudioRoute;->TXAudioRouteSpeakerphone:Lcom/tencent/liteav/device/TXDeviceManager$TXAudioRoute;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    if-ne p0, v0, :cond_1

    .line 8
    .line 9
    sget-object p0, Lcom/tencent/liteav/device/TXDeviceManager$TXAudioRoute;->TXAudioRouteEarpiece:Lcom/tencent/liteav/device/TXDeviceManager$TXAudioRoute;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_1
    const/4 v0, 0x2

    .line 13
    if-ne p0, v0, :cond_2

    .line 14
    .line 15
    sget-object p0, Lcom/tencent/liteav/device/TXDeviceManager$TXAudioRoute;->TXAudioRouteWiredHeadset:Lcom/tencent/liteav/device/TXDeviceManager$TXAudioRoute;

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_2
    const/4 v0, 0x3

    .line 19
    if-ne p0, v0, :cond_3

    .line 20
    .line 21
    sget-object p0, Lcom/tencent/liteav/device/TXDeviceManager$TXAudioRoute;->TXAudioRouteBluetoothHeadset:Lcom/tencent/liteav/device/TXDeviceManager$TXAudioRoute;

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_3
    sget-object p0, Lcom/tencent/liteav/device/TXDeviceManager$TXAudioRoute;->TXAudioRouteSpeakerphone:Lcom/tencent/liteav/device/TXDeviceManager$TXAudioRoute;

    .line 25
    .line 26
    return-object p0
.end method

.method public static cameraCaptureModeAsInt(Lcom/tencent/liteav/device/TXDeviceManager$TXCameraCaptureMode;)I
    .locals 2

    .line 1
    sget-object v0, Lcom/tencent/liteav/device/TXDeviceManager$TXCameraCaptureMode;->TXCameraResolutionStrategyAuto:Lcom/tencent/liteav/device/TXDeviceManager$TXCameraCaptureMode;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    sget-object v0, Lcom/tencent/liteav/device/TXDeviceManager$TXCameraCaptureMode;->TXCameraResolutionStrategyPerformance:Lcom/tencent/liteav/device/TXDeviceManager$TXCameraCaptureMode;

    .line 8
    .line 9
    if-ne p0, v0, :cond_1

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_1
    sget-object v0, Lcom/tencent/liteav/device/TXDeviceManager$TXCameraCaptureMode;->TXCameraResolutionStrategyHighQuality:Lcom/tencent/liteav/device/TXDeviceManager$TXCameraCaptureMode;

    .line 14
    .line 15
    if-ne p0, v0, :cond_2

    .line 16
    .line 17
    const/4 p0, 0x2

    .line 18
    return p0

    .line 19
    :cond_2
    sget-object v0, Lcom/tencent/liteav/device/TXDeviceManager$TXCameraCaptureMode;->TXCameraCaptureManual:Lcom/tencent/liteav/device/TXDeviceManager$TXCameraCaptureMode;

    .line 20
    .line 21
    if-ne p0, v0, :cond_3

    .line 22
    .line 23
    const/4 p0, 0x3

    .line 24
    return p0

    .line 25
    :cond_3
    return v1
.end method

.method public static cameraCaptureModeFromInt(I)Lcom/tencent/liteav/device/TXDeviceManager$TXCameraCaptureMode;
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    sget-object p0, Lcom/tencent/liteav/device/TXDeviceManager$TXCameraCaptureMode;->TXCameraResolutionStrategyAuto:Lcom/tencent/liteav/device/TXDeviceManager$TXCameraCaptureMode;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    if-ne p0, v0, :cond_1

    .line 8
    .line 9
    sget-object p0, Lcom/tencent/liteav/device/TXDeviceManager$TXCameraCaptureMode;->TXCameraResolutionStrategyPerformance:Lcom/tencent/liteav/device/TXDeviceManager$TXCameraCaptureMode;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_1
    const/4 v0, 0x2

    .line 13
    if-ne p0, v0, :cond_2

    .line 14
    .line 15
    sget-object p0, Lcom/tencent/liteav/device/TXDeviceManager$TXCameraCaptureMode;->TXCameraResolutionStrategyHighQuality:Lcom/tencent/liteav/device/TXDeviceManager$TXCameraCaptureMode;

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_2
    const/4 v0, 0x3

    .line 19
    if-ne p0, v0, :cond_3

    .line 20
    .line 21
    sget-object p0, Lcom/tencent/liteav/device/TXDeviceManager$TXCameraCaptureMode;->TXCameraCaptureManual:Lcom/tencent/liteav/device/TXDeviceManager$TXCameraCaptureMode;

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_3
    sget-object p0, Lcom/tencent/liteav/device/TXDeviceManager$TXCameraCaptureMode;->TXCameraResolutionStrategyAuto:Lcom/tencent/liteav/device/TXDeviceManager$TXCameraCaptureMode;

    .line 25
    .line 26
    return-object p0
.end method

.method private static native nativeDestroy(J)V
.end method

.method private static native nativeEnableCameraAutoFocus(JZ)I
.end method

.method private static native nativeEnableCameraTorch(JZ)Z
.end method

.method private static native nativeGetCameraZoomMaxRatio(J)F
.end method

.method private static native nativeIsAutoFocusEnabled(J)Z
.end method

.method private static native nativeIsCameraAutoFocusFaceModeSupported(J)Z
.end method

.method private static native nativeIsCameraFocusPositionInPreviewSupported(J)Z
.end method

.method private static native nativeIsCameraTorchSupported(J)Z
.end method

.method private static native nativeIsCameraZoomSupported(J)Z
.end method

.method private static native nativeIsFrontCamera(J)Z
.end method

.method private static native nativeIsLowLatencyEarMonitorSupported(J)Z
.end method

.method private static native nativeSetAudioRoute(JI)I
.end method

.method private static native nativeSetCameraCapturerParam(JLcom/tencent/liteav/device/TXDeviceManagerImpl$CameraCaptureParam;)V
.end method

.method private static native nativeSetCameraFocusPosition(JII)I
.end method

.method private static native nativeSetCameraZoomRatio(JF)I
.end method

.method private static native nativeSetExposureCompensation(JF)I
.end method

.method private static native nativeSetSystemVolumeType(JI)I
.end method

.method private static native nativeSwitchCamera(JZ)I
.end method

.method public static systemVolumeTypeAsInt(Lcom/tencent/liteav/device/TXDeviceManager$TXSystemVolumeType;)I
    .locals 2

    .line 1
    sget-object v0, Lcom/tencent/liteav/device/TXDeviceManager$TXSystemVolumeType;->TXSystemVolumeTypeAuto:Lcom/tencent/liteav/device/TXDeviceManager$TXSystemVolumeType;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    sget-object v0, Lcom/tencent/liteav/device/TXDeviceManager$TXSystemVolumeType;->TXSystemVolumeTypeMedia:Lcom/tencent/liteav/device/TXDeviceManager$TXSystemVolumeType;

    .line 8
    .line 9
    if-ne p0, v0, :cond_1

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_1
    sget-object v0, Lcom/tencent/liteav/device/TXDeviceManager$TXSystemVolumeType;->TXSystemVolumeTypeVOIP:Lcom/tencent/liteav/device/TXDeviceManager$TXSystemVolumeType;

    .line 14
    .line 15
    if-ne p0, v0, :cond_2

    .line 16
    .line 17
    const/4 p0, 0x2

    .line 18
    return p0

    .line 19
    :cond_2
    return v1
.end method

.method public static systemVolumeTypefromInt(I)Lcom/tencent/liteav/device/TXDeviceManager$TXSystemVolumeType;
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    sget-object p0, Lcom/tencent/liteav/device/TXDeviceManager$TXSystemVolumeType;->TXSystemVolumeTypeAuto:Lcom/tencent/liteav/device/TXDeviceManager$TXSystemVolumeType;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    if-ne p0, v0, :cond_1

    .line 8
    .line 9
    sget-object p0, Lcom/tencent/liteav/device/TXDeviceManager$TXSystemVolumeType;->TXSystemVolumeTypeMedia:Lcom/tencent/liteav/device/TXDeviceManager$TXSystemVolumeType;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_1
    const/4 v0, 0x2

    .line 13
    if-ne p0, v0, :cond_2

    .line 14
    .line 15
    sget-object p0, Lcom/tencent/liteav/device/TXDeviceManager$TXSystemVolumeType;->TXSystemVolumeTypeVOIP:Lcom/tencent/liteav/device/TXDeviceManager$TXSystemVolumeType;

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_2
    sget-object p0, Lcom/tencent/liteav/device/TXDeviceManager$TXSystemVolumeType;->TXSystemVolumeTypeAuto:Lcom/tencent/liteav/device/TXDeviceManager$TXSystemVolumeType;

    .line 19
    .line 20
    return-object p0
.end method


# virtual methods
.method public enableCameraAutoFocus(Z)I
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/tencent/liteav/device/TXDeviceManagerImpl;->mNativeDeviceMgr:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/device/TXDeviceManagerImpl;->nativeEnableCameraAutoFocus(JZ)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    return p1
.end method

.method public enableCameraTorch(Z)Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/tencent/liteav/device/TXDeviceManagerImpl;->mNativeDeviceMgr:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/device/TXDeviceManagerImpl;->nativeEnableCameraTorch(JZ)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    return p1
.end method

.method public finalize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 2
    .line 3
    .line 4
    iget-wide v0, p0, Lcom/tencent/liteav/device/TXDeviceManagerImpl;->mNativeDeviceMgr:J

    .line 5
    .line 6
    const-wide/16 v2, 0x0

    .line 7
    .line 8
    cmp-long v4, v0, v2

    .line 9
    .line 10
    if-eqz v4, :cond_0

    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/tencent/liteav/device/TXDeviceManagerImpl;->nativeDestroy(J)V

    .line 13
    .line 14
    .line 15
    iput-wide v2, p0, Lcom/tencent/liteav/device/TXDeviceManagerImpl;->mNativeDeviceMgr:J

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public getCameraZoomMaxRatio()F
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/tencent/liteav/device/TXDeviceManagerImpl;->mNativeDeviceMgr:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/tencent/liteav/device/TXDeviceManagerImpl;->nativeGetCameraZoomMaxRatio(J)F

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    return v0
.end method

.method public isAutoFocusEnabled()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/tencent/liteav/device/TXDeviceManagerImpl;->mNativeDeviceMgr:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/tencent/liteav/device/TXDeviceManagerImpl;->nativeIsAutoFocusEnabled(J)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    return v0
.end method

.method public isCameraAutoFocusFaceModeSupported()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/tencent/liteav/device/TXDeviceManagerImpl;->mNativeDeviceMgr:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return v0

    .line 11
    :cond_0
    invoke-static {v0, v1}, Lcom/tencent/liteav/device/TXDeviceManagerImpl;->nativeIsCameraAutoFocusFaceModeSupported(J)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public isCameraFocusPositionInPreviewSupported()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/tencent/liteav/device/TXDeviceManagerImpl;->mNativeDeviceMgr:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return v0

    .line 11
    :cond_0
    invoke-static {v0, v1}, Lcom/tencent/liteav/device/TXDeviceManagerImpl;->nativeIsCameraFocusPositionInPreviewSupported(J)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public isCameraTorchSupported()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/tencent/liteav/device/TXDeviceManagerImpl;->mNativeDeviceMgr:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return v0

    .line 11
    :cond_0
    invoke-static {v0, v1}, Lcom/tencent/liteav/device/TXDeviceManagerImpl;->nativeIsCameraTorchSupported(J)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public isCameraZoomSupported()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/tencent/liteav/device/TXDeviceManagerImpl;->mNativeDeviceMgr:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/tencent/liteav/device/TXDeviceManagerImpl;->nativeIsCameraZoomSupported(J)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    return v0
.end method

.method public isFrontCamera()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/tencent/liteav/device/TXDeviceManagerImpl;->mNativeDeviceMgr:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/tencent/liteav/device/TXDeviceManagerImpl;->nativeIsFrontCamera(J)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    return v0
.end method

.method public isLowLatencyEarMonitorSupported()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/tencent/liteav/device/TXDeviceManagerImpl;->mNativeDeviceMgr:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/tencent/liteav/device/TXDeviceManagerImpl;->nativeIsLowLatencyEarMonitorSupported(J)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    return v0
.end method

.method public setAudioRoute(Lcom/tencent/liteav/device/TXDeviceManager$TXAudioRoute;)I
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/tencent/liteav/device/TXDeviceManagerImpl;->mNativeDeviceMgr:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    invoke-static {p1}, Lcom/tencent/liteav/device/TXDeviceManagerImpl;->audioRouteAsInt(Lcom/tencent/liteav/device/TXDeviceManager$TXAudioRoute;)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/device/TXDeviceManagerImpl;->nativeSetAudioRoute(JI)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    return p1
.end method

.method public setCameraCapturerParam(Lcom/tencent/liteav/device/TXDeviceManager$TXCameraCaptureParam;)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/tencent/liteav/device/TXDeviceManagerImpl;->mNativeDeviceMgr:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    new-instance v2, Lcom/tencent/liteav/device/TXDeviceManagerImpl$CameraCaptureParam;

    .line 12
    .line 13
    invoke-direct {v2, p1}, Lcom/tencent/liteav/device/TXDeviceManagerImpl$CameraCaptureParam;-><init>(Lcom/tencent/liteav/device/TXDeviceManager$TXCameraCaptureParam;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1, v2}, Lcom/tencent/liteav/device/TXDeviceManagerImpl;->nativeSetCameraCapturerParam(JLcom/tencent/liteav/device/TXDeviceManagerImpl$CameraCaptureParam;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public setCameraFocusPosition(II)I
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/tencent/liteav/device/TXDeviceManagerImpl;->mNativeDeviceMgr:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    invoke-static {v0, v1, p1, p2}, Lcom/tencent/liteav/device/TXDeviceManagerImpl;->nativeSetCameraFocusPosition(JII)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    return p1
.end method

.method public setCameraZoomRatio(F)I
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/tencent/liteav/device/TXDeviceManagerImpl;->mNativeDeviceMgr:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/device/TXDeviceManagerImpl;->nativeSetCameraZoomRatio(JF)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    return p1
.end method

.method public setExposureCompensation(F)I
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/tencent/liteav/device/TXDeviceManagerImpl;->mNativeDeviceMgr:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/device/TXDeviceManagerImpl;->nativeSetExposureCompensation(JF)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    return p1
.end method

.method public setSystemVolumeType(Lcom/tencent/liteav/device/TXDeviceManager$TXSystemVolumeType;)I
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/tencent/liteav/device/TXDeviceManagerImpl;->mNativeDeviceMgr:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    invoke-static {p1}, Lcom/tencent/liteav/device/TXDeviceManagerImpl;->systemVolumeTypeAsInt(Lcom/tencent/liteav/device/TXDeviceManager$TXSystemVolumeType;)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/device/TXDeviceManagerImpl;->nativeSetSystemVolumeType(JI)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    return p1
.end method

.method public switchCamera(Z)I
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/tencent/liteav/device/TXDeviceManagerImpl;->mNativeDeviceMgr:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/device/TXDeviceManagerImpl;->nativeSwitchCamera(JZ)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    return p1
.end method
