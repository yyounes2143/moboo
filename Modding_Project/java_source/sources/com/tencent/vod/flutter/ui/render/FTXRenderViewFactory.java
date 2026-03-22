package com.tencent.vod.flutter.ui.render;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.tencent.liteav.base.util.LiteavLog;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.StandardMessageCodec;
import io.flutter.plugin.platform.PlatformView;
import io.flutter.plugin.platform.PlatformViewFactory;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class FTXRenderViewFactory extends PlatformViewFactory {
    private static final String TAG = "FTXRenderViewFactory";
    private final BinaryMessenger mBinaryMessenger;
    private final Map<Integer, WeakReference<FTXRenderView>> mRenderViewCache;

    public FTXRenderViewFactory(@Nullable BinaryMessenger binaryMessenger) {
        super(StandardMessageCodec.INSTANCE);
        this.mRenderViewCache = new HashMap();
        this.mBinaryMessenger = binaryMessenger;
    }

    @Override // io.flutter.plugin.platform.PlatformViewFactory
    @NonNull
    public PlatformView create(Context context, int i, @Nullable Object obj) {
        FTXRenderView fTXRenderView = new FTXRenderView(context, i, (Map) obj, this);
        this.mRenderViewCache.put(Integer.valueOf(i), new WeakReference<>(fTXRenderView));
        LiteavLog.i(TAG, "create renderView: " + i);
        return fTXRenderView;
    }

    public FTXRenderView findViewById(int i) {
        WeakReference<FTXRenderView> weakReference = this.mRenderViewCache.get(Integer.valueOf(i));
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    public void removeByViewId(int i) {
        this.mRenderViewCache.remove(Integer.valueOf(i));
    }
}
