package com.tencent.liteav.base.util;

import java.io.Closeable;
import java.io.IOException;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public final class f {
    public static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }
}
