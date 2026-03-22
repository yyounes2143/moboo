package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.admanager.AppEventListener;
import java.util.Set;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdau extends zzdbo implements zzbio {
    public zzdau(Set set) {
        super(set);
    }

    @Override // com.google.android.gms.internal.ads.zzbio
    public final synchronized void zzb(final String str, final String str2) {
        zzq(new zzdbn() { // from class: com.google.android.gms.internal.ads.zzdat
            @Override // com.google.android.gms.internal.ads.zzdbn
            public final void zza(Object obj) {
                ((AppEventListener) obj).onAppEvent(str, str2);
            }
        });
    }
}
