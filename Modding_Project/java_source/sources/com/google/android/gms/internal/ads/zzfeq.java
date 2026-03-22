package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.HashMap;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzfeq {
    private final HashMap zza = new HashMap();

    public final zzfep zza(zzfeg zzfegVar, Context context, zzfdy zzfdyVar, zzfew zzfewVar) {
        HashMap hashMap = this.zza;
        zzfep zzfepVar = (zzfep) hashMap.get(zzfegVar);
        if (zzfepVar == null) {
            zzfed zzfedVar = new zzfed(zzfej.zza(zzfegVar, context));
            zzfep zzfepVar2 = new zzfep(zzfedVar, new zzfey(zzfedVar, zzfdyVar, zzfewVar));
            hashMap.put(zzfegVar, zzfepVar2);
            return zzfepVar2;
        }
        return zzfepVar;
    }
}
