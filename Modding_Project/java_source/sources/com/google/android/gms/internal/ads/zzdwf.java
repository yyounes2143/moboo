package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public class zzdwf extends Exception {
    private final int zza;

    public zzdwf(int i) {
        this.zza = i;
    }

    public final int zza() {
        return this.zza;
    }

    public zzdwf(int i, String str) {
        super(str);
        this.zza = i;
    }

    public zzdwf(int i, String str, Throwable th) {
        super(str, th);
        this.zza = 1;
    }
}
