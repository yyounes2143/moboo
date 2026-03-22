package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.io.EOFException;
import java.io.IOException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzadj implements zzaet {
    private final byte[] zza = new byte[4096];

    @Override // com.google.android.gms.internal.ads.zzaet
    public final /* synthetic */ int zzf(zzl zzlVar, int i, boolean z) {
        return zzaer.zza(this, zzlVar, i, z);
    }

    @Override // com.google.android.gms.internal.ads.zzaet
    public final int zzg(zzl zzlVar, int i, boolean z, int i2) throws IOException {
        int zza = zzlVar.zza(this.zza, 0, Math.min(4096, i));
        if (zza == -1) {
            if (z) {
                return -1;
            }
            throw new EOFException();
        }
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzaet
    public final /* synthetic */ void zzr(zzek zzekVar, int i) {
        zzaer.zzb(this, zzekVar, i);
    }

    @Override // com.google.android.gms.internal.ads.zzaet
    public final void zzs(zzek zzekVar, int i, int i2) {
        zzekVar.zzM(i);
    }

    @Override // com.google.android.gms.internal.ads.zzaet
    public final /* synthetic */ void zzl(long j) {
    }

    @Override // com.google.android.gms.internal.ads.zzaet
    public final void zzm(zzz zzzVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzaet
    public final void zzt(long j, int i, int i2, int i3, @Nullable zzaes zzaesVar) {
    }
}
