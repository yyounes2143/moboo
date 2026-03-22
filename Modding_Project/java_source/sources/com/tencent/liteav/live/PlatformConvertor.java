package com.tencent.liteav.live;

import android.view.Surface;
import android.view.SurfaceView;
import android.view.TextureView;
import com.tencent.liteav.base.ContextUtils;
import com.tencent.liteav.base.annotations.JNINamespace;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.videobase.videobase.DisplayTarget;
import com.tencent.rtmp.ui.TXCloudVideoView;
/* compiled from: Proguard */
@JNINamespace("liteav")
/* loaded from: classes6.dex */
public class PlatformConvertor {
    private static final String TAG = "PlatformConvertor";

    public static DisplayTarget createDisplayTarget(Object obj) {
        if (obj instanceof DisplayTarget) {
            return (DisplayTarget) obj;
        }
        if (obj instanceof TXCloudVideoView) {
            return new DisplayTarget((TXCloudVideoView) obj);
        }
        if (obj instanceof TextureView) {
            return new DisplayTarget((TextureView) obj);
        }
        if (obj instanceof SurfaceView) {
            return new DisplayTarget((SurfaceView) obj);
        }
        if (obj instanceof Surface) {
            return new DisplayTarget((Surface) obj);
        }
        LiteavLog.w(TAG, "object is unknown. object=".concat(String.valueOf(obj)));
        return null;
    }

    public static void initContextFromNative(String str) {
        ContextUtils.initContextFromNative(str);
    }
}
