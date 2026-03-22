package com.tencent.liteav.device;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public interface TXDeviceManager {

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public enum TXAudioRoute {
        TXAudioRouteSpeakerphone,
        TXAudioRouteEarpiece,
        TXAudioRouteWiredHeadset,
        TXAudioRouteBluetoothHeadset
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public enum TXCameraCaptureMode {
        TXCameraResolutionStrategyAuto,
        TXCameraResolutionStrategyPerformance,
        TXCameraResolutionStrategyHighQuality,
        TXCameraCaptureManual
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static class TXCameraCaptureParam {
        public int height;
        public TXCameraCaptureMode mode;
        public int width;
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public enum TXSystemVolumeType {
        TXSystemVolumeTypeAuto,
        TXSystemVolumeTypeMedia,
        TXSystemVolumeTypeVOIP
    }

    int enableCameraAutoFocus(boolean z);

    boolean enableCameraTorch(boolean z);

    float getCameraZoomMaxRatio();

    boolean isAutoFocusEnabled();

    boolean isFrontCamera();

    int setAudioRoute(TXAudioRoute tXAudioRoute);

    void setCameraCapturerParam(TXCameraCaptureParam tXCameraCaptureParam);

    int setCameraFocusPosition(int i, int i2);

    int setCameraZoomRatio(float f);

    int setExposureCompensation(float f);

    int setSystemVolumeType(TXSystemVolumeType tXSystemVolumeType);

    int switchCamera(boolean z);
}
