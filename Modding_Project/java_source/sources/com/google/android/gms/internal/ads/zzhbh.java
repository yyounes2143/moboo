package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzhbh extends RuntimeException {
    public zzhbh(zzhad zzhadVar) {
        super("Message was missing required fields.  (Lite runtime could not determine which fields were missing).");
    }

    public final zzgzh zza() {
        return new zzgzh(getMessage());
    }
}
