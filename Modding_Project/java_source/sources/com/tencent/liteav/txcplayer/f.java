package com.tencent.liteav.txcplayer;

import android.content.Context;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.thumbplayer.ThumbMediaPlayer;
import java.lang.reflect.Constructor;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private static final String f10293a = "com.tencent.liteav.txcplayer.f";

    public static ITXVCubePlayer a(Context context) {
        return b(context);
    }

    private static ITXVCubePlayer b(Context context) {
        try {
            int i = ThumbMediaPlayer.f10288Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            Constructor declaredConstructor = ThumbMediaPlayer.class.getDeclaredConstructor(Context.class);
            declaredConstructor.setAccessible(true);
            return (ITXVCubePlayer) declaredConstructor.newInstance(context);
        } catch (Exception e) {
            String str = f10293a;
            LiteavLog.e(str, "create thumbplayer exception: " + e.getMessage());
            return null;
        }
    }
}
