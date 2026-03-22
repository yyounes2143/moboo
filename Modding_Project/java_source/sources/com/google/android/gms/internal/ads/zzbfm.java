package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbfm {
    private static final AtomicReference zza = new AtomicReference();
    private static final AtomicReference zzb = new AtomicReference();

    static {
        new AtomicBoolean();
    }

    public static zzbfk zza() {
        return (zzbfk) zza.get();
    }

    public static zzbfl zzb() {
        return (zzbfl) zzb.get();
    }

    public static void zzc(zzbfk zzbfkVar) {
        zza.set(zzbfkVar);
    }
}
