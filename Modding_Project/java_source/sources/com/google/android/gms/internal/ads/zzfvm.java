package com.google.android.gms.internal.ads;

import java.util.regex.Matcher;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzfvm extends zzfvp {
    final /* synthetic */ zzfuo zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzfvm(zzfvr zzfvrVar, CharSequence charSequence, zzfuo zzfuoVar) {
        super(zzfvrVar, charSequence);
        this.zza = zzfuoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfvp
    public final int zzc(int i) {
        return ((zzfus) this.zza).zza.end();
    }

    @Override // com.google.android.gms.internal.ads.zzfvp
    public final int zzd(int i) {
        Matcher matcher = ((zzfus) this.zza).zza;
        if (matcher.find(i)) {
            return matcher.start();
        }
        return -1;
    }
}
