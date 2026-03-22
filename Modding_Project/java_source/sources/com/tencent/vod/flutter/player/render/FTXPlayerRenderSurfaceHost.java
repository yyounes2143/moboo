package com.tencent.vod.flutter.player.render;

import android.view.Surface;
import com.tencent.vod.flutter.ui.render.FTXRenderCarrier;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public interface FTXPlayerRenderSurfaceHost {
    FTXRenderCarrier getCurCarrier();

    long getPlayerRenderMode();

    int getVideoHeight();

    int getVideoWidth();

    void setSurface(Surface surface);
}
