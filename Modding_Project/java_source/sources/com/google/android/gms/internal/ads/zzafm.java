package com.google.android.gms.internal.ads;

import androidx.media3.common.MimeTypes;
import androidx.media3.extractor.mp4.Atom;
import java.io.IOException;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzafm implements zzadn {
    private final zzek zza = new zzek(4);
    private final zzaeo zzb = new zzaeo(-1, -1, MimeTypes.IMAGE_AVIF);

    private final boolean zza(zzado zzadoVar, int i) throws IOException {
        zzek zzekVar = this.zza;
        zzekVar.zzI(4);
        ((zzadd) zzadoVar).zzm(zzekVar.zzN(), 0, 4, false);
        if (zzekVar.zzu() != i) {
            return false;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzadn
    public final int zzb(zzado zzadoVar, zzaej zzaejVar) throws IOException {
        return this.zzb.zzb(zzadoVar, zzaejVar);
    }

    @Override // com.google.android.gms.internal.ads.zzadn
    public final /* synthetic */ List zzd() {
        return zzfyc.zzn();
    }

    @Override // com.google.android.gms.internal.ads.zzadn
    public final void zze(zzadq zzadqVar) {
        this.zzb.zze(zzadqVar);
    }

    @Override // com.google.android.gms.internal.ads.zzadn
    public final void zzf(long j, long j2) {
        this.zzb.zzf(j, j2);
    }

    @Override // com.google.android.gms.internal.ads.zzadn
    public final boolean zzi(zzado zzadoVar) throws IOException {
        ((zzadd) zzadoVar).zzl(4, false);
        if (!zza(zzadoVar, Atom.TYPE_ftyp) || !zza(zzadoVar, 1635150182)) {
            return false;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzadn
    public final /* synthetic */ zzadn zzc() {
        return this;
    }
}
