package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbbj extends zzcaf {
    final /* synthetic */ zzbbp zza;

    public zzbbj(zzbbp zzbbpVar) {
        this.zza = zzbbpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcaf, java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        zzbbp.zze(this.zza);
        return super.cancel(z);
    }
}
