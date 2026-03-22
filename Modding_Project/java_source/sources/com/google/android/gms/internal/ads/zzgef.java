package com.google.android.gms.internal.ads;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgef {
    private final InputStream zza;

    private zzgef(InputStream inputStream) {
        this.zza = inputStream;
    }

    public static zzgef zzb(byte[] bArr) {
        return new zzgef(new ByteArrayInputStream(bArr));
    }

    public final zzgty zza() throws IOException {
        try {
            return zzgty.zzg(this.zza, zzgyc.zza());
        } finally {
            this.zza.close();
        }
    }
}
