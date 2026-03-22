package com.tencent.liteav.videobase.utils;

import android.content.Intent;
import com.tencent.liteav.base.util.LiteavLog;
import java.nio.ByteBuffer;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    private static final com.tencent.liteav.base.a.a f10402a = new com.tencent.liteav.base.a.a(1000);

    public static byte[] a(int i) {
        try {
            return new byte[i];
        } catch (OutOfMemoryError e) {
            a(e.getMessage());
            return null;
        }
    }

    public static ByteBuffer b(int i) {
        try {
            return ByteBuffer.allocateDirect(i);
        } catch (OutOfMemoryError e) {
            a(e.getMessage());
            return null;
        }
    }

    private static synchronized void a(String str) {
        synchronized (d.class) {
            if (f10402a.a()) {
                LiteavLog.e("MemoryAllocator", "allocate buffer failed with oom error, msg:".concat(String.valueOf(str)));
                c.a().a(new Intent("com.tencent.liteav.video.action.OUT_OF_MEMORY"));
            }
        }
    }
}
