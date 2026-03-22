package com.mbridge.msdk.out;

import androidx.media3.common.PlaybackException;
import com.mbridge.msdk.util.a;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public abstract class NativeAdvancedAdWithCodeListener implements NativeAdvancedAdListener {
    @Override // com.mbridge.msdk.out.NativeAdvancedAdListener
    public void onLoadFailed(MBridgeIds mBridgeIds, String str) {
        onLoadFailedWithCode(mBridgeIds, a.a(PlaybackException.ERROR_CODE_DRM_UNSPECIFIED, str), str);
    }

    public abstract void onLoadFailedWithCode(MBridgeIds mBridgeIds, int i, String str);
}
