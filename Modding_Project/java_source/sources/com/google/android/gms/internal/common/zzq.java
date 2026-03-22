package com.google.android.gms.internal.common;

import j$.util.Objects;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzq {
    public static final CharSequence zza(Object obj, String str) {
        Objects.requireNonNull(obj);
        if (obj instanceof CharSequence) {
            return (CharSequence) obj;
        }
        return obj.toString();
    }
}
