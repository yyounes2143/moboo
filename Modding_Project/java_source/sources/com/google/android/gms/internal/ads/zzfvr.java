package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzfvr {
    private final zzfvq zza;

    private zzfvr(zzfvq zzfvqVar) {
        int i = zzfum.zzb;
        this.zza = zzfvqVar;
    }

    public static zzfvr zza(int i) {
        return new zzfvr(new zzfvq(4000) { // from class: com.google.android.gms.internal.ads.zzfvi
            @Override // com.google.android.gms.internal.ads.zzfvq
            public final Iterator zza(zzfvr zzfvrVar, CharSequence charSequence) {
                return new zzfvn(zzfvrVar, charSequence, 4000);
            }
        });
    }

    public static zzfvr zzb(final zzfun zzfunVar) {
        return new zzfvr(new zzfvq() { // from class: com.google.android.gms.internal.ads.zzfvj
            @Override // com.google.android.gms.internal.ads.zzfvq
            public final Iterator zza(zzfvr zzfvrVar, CharSequence charSequence) {
                return new zzfvl(zzfvrVar, charSequence, zzfun.this);
            }
        });
    }

    public static zzfvr zzc(Pattern pattern) {
        final zzfut zzfutVar = new zzfut(pattern);
        zzfvc.zzi(!((zzfus) zzfutVar.zza("")).zza.matches(), "The pattern may not match the empty string: %s", zzfutVar);
        return new zzfvr(new zzfvq() { // from class: com.google.android.gms.internal.ads.zzfvk
            @Override // com.google.android.gms.internal.ads.zzfvq
            public final Iterator zza(zzfvr zzfvrVar, CharSequence charSequence) {
                return new zzfvm(zzfvrVar, charSequence, zzfup.this.zza(charSequence));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Iterator zzg(CharSequence charSequence) {
        return this.zza.zza(this, charSequence);
    }

    public final Iterable zzd(CharSequence charSequence) {
        charSequence.getClass();
        return new zzfvo(this, charSequence);
    }

    public final List zzf(CharSequence charSequence) {
        charSequence.getClass();
        Iterator zzg = zzg(charSequence);
        ArrayList arrayList = new ArrayList();
        while (zzg.hasNext()) {
            arrayList.add((String) zzg.next());
        }
        return Collections.unmodifiableList(arrayList);
    }
}
