package com.mbridge.msdk.out;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public interface MBSplashLoadListener {
    void isSupportZoomOut(MBridgeIds mBridgeIds, boolean z);

    void onLoadFailed(MBridgeIds mBridgeIds, String str, int i);

    void onLoadSuccessed(MBridgeIds mBridgeIds, int i);
}
