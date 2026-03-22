package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzfya extends zzfwc {
    private final zzfyc zza;

    public zzfya(zzfyc zzfycVar, int i) {
        super(zzfycVar.size(), i);
        this.zza = zzfycVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfwc
    public final Object zza(int i) {
        return this.zza.get(i);
    }
}
