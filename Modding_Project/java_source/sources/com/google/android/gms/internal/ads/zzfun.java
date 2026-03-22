package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public abstract class zzfun implements zzfvd {
    public static zzfun zzc(char c) {
        return new zzfuk(c);
    }

    @Override // com.google.android.gms.internal.ads.zzfvd
    @Deprecated
    public final /* synthetic */ boolean zza(Object obj) {
        return zzb(((Character) obj).charValue());
    }

    public abstract boolean zzb(char c);
}
