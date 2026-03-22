package com.google.android.gms.internal.ads;

import sun.misc.Unsafe;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final /* synthetic */ class Wwwwwwwwwwwwwwwwww {
    public static /* synthetic */ boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Unsafe unsafe, Object obj, long j, Object obj2, Object obj3) {
        while (!unsafe.compareAndSwapObject(obj, j, obj2, obj3)) {
            if (unsafe.getObject(obj, j) != obj2) {
                return false;
            }
        }
        return true;
    }
}
