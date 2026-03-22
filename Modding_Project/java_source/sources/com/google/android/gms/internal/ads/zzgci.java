package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public abstract class zzgci extends zzgby {
    private List zza;

    public zzgci(zzfxx zzfxxVar, boolean z) {
        super(zzfxxVar, z, true);
        List zza;
        if (zzfxxVar.isEmpty()) {
            zza = Collections.EMPTY_LIST;
        } else {
            zza = zzfys.zza(zzfxxVar.size());
        }
        for (int i = 0; i < zzfxxVar.size(); i++) {
            zza.add(null);
        }
        this.zza = zza;
    }

    @Override // com.google.android.gms.internal.ads.zzgby
    public final void zzA(int i) {
        super.zzA(i);
        this.zza = null;
    }

    public abstract Object zzD(List list);

    @Override // com.google.android.gms.internal.ads.zzgby
    public final void zzx(int i, Object obj) {
        List list = this.zza;
        if (list != null) {
            list.set(i, new zzgch(obj));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgby
    public final void zzy() {
        List list = this.zza;
        if (list != null) {
            zzc(zzD(list));
        }
    }
}
