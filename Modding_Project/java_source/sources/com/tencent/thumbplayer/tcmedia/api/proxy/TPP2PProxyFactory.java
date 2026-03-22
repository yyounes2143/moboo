package com.tencent.thumbplayer.tcmedia.api.proxy;

import android.content.Context;
import com.tencent.thumbplayer.tcmedia.c.g;
/* loaded from: classes6.dex */
public class TPP2PProxyFactory {
    public static ITPPreloadProxy createPreloadManager(Context context, int i) {
        return new g(context, i);
    }
}
