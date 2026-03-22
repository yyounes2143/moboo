package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.io.OutputStream;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgeg {
    private final OutputStream zza;

    private zzgeg(OutputStream outputStream) {
        this.zza = outputStream;
    }

    public static zzgeg zzb(OutputStream outputStream) {
        return new zzgeg(outputStream);
    }

    public final void zza(zzgty zzgtyVar) throws IOException {
        try {
            zzgtyVar.zzaU(this.zza);
        } finally {
            this.zza.close();
        }
    }
}
