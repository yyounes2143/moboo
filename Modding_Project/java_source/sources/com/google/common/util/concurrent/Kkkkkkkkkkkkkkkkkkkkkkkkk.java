package com.google.common.util.concurrent;

import java.util.concurrent.atomic.AtomicReferenceArray;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public final /* synthetic */ class Kkkkkkkkkkkkkkkkkkkkkkkkk {
    public static /* synthetic */ boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(AtomicReferenceArray atomicReferenceArray, int i, Object obj, Object obj2) {
        while (!atomicReferenceArray.compareAndSet(i, obj, obj2)) {
            if (atomicReferenceArray.get(i) != obj) {
                return false;
            }
        }
        return true;
    }
}
