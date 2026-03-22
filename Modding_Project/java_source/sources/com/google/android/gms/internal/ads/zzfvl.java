package com.google.android.gms.internal.ads;

import com.google.firebase.analytics.FirebaseAnalytics;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzfvl extends zzfvp {
    final /* synthetic */ zzfun zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzfvl(zzfvr zzfvrVar, CharSequence charSequence, zzfun zzfunVar) {
        super(zzfvrVar, charSequence);
        this.zza = zzfunVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfvp
    public final int zzc(int i) {
        return i + 1;
    }

    @Override // com.google.android.gms.internal.ads.zzfvp
    public final int zzd(int i) {
        CharSequence charSequence = ((zzfvp) this).zzb;
        int length = charSequence.length();
        zzfvc.zzb(i, length, FirebaseAnalytics.Param.INDEX);
        while (i < length) {
            if (this.zza.zzb(charSequence.charAt(i))) {
                return i;
            }
            i++;
        }
        return -1;
    }
}
