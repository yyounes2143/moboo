package com.google.android.gms.internal.ads;

import java.io.IOException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public class zzgzh extends IOException {
    private boolean zza;

    public zzgzh(IOException iOException) {
        super(iOException.getMessage(), iOException);
    }

    public final void zza() {
        this.zza = true;
    }

    public final boolean zzb() {
        return this.zza;
    }

    public zzgzh(String str) {
        super(str);
    }
}
