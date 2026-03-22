package com.google.android.gms.measurement.internal;

import j$.util.Objects;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final /* synthetic */ class Wwwwwwwwwwwwwwwwwwwwwwwww {
    public static /* synthetic */ Set Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Object[] objArr) {
        HashSet hashSet = new HashSet(objArr.length);
        for (Object obj : objArr) {
            Objects.requireNonNull(obj);
            if (!hashSet.add(obj)) {
                throw new IllegalArgumentException("duplicate element: " + obj);
            }
        }
        return Collections.unmodifiableSet(hashSet);
    }
}
