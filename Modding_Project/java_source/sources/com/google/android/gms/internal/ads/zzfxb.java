package com.google.android.gms.internal.ads;

import java.util.Collection;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzfxb {
    public static boolean zza(Collection collection, Object obj) {
        collection.getClass();
        try {
            return collection.contains(obj);
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }
}
