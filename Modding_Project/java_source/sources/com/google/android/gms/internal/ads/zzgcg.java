package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgcg extends zzgci {
    public zzgcg(zzfxx zzfxxVar, boolean z) {
        super(zzfxxVar, z);
        zzz();
    }

    @Override // com.google.android.gms.internal.ads.zzgci
    public final /* bridge */ /* synthetic */ Object zzD(List list) {
        Object obj;
        ArrayList zza = zzfys.zza(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            zzgch zzgchVar = (zzgch) it.next();
            if (zzgchVar != null) {
                obj = zzgchVar.zza;
            } else {
                obj = null;
            }
            zza.add(obj);
        }
        return Collections.unmodifiableList(zza);
    }
}
