package com.google.android.gms.internal.play_billing;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzcl extends zzbh {
    private final zzco zza;

    public zzcl(zzco zzcoVar, int i) {
        super(zzcoVar.size(), i);
        this.zza = zzcoVar;
    }

    @Override // com.google.android.gms.internal.play_billing.zzbh
    public final Object zza(int i) {
        return this.zza.get(i);
    }
}
