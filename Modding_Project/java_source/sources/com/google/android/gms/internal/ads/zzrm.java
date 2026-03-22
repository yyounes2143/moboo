package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzrm implements zzqf {
    final /* synthetic */ zzro zza;

    public /* synthetic */ zzrm(zzro zzroVar, zzrn zzrnVar) {
        this.zza = zzroVar;
    }

    @Override // com.google.android.gms.internal.ads.zzqf
    public final void zza(Exception exc) {
        zzdx.zzd("MediaCodecAudioRenderer", "Audio sink error", exc);
        zzro.zzae(this.zza).zzn(exc);
    }
}
