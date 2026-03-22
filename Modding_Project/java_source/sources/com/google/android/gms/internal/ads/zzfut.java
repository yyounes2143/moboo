package com.google.android.gms.internal.ads;

import java.io.Serializable;
import java.util.regex.Pattern;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzfut extends zzfup implements Serializable {
    private final Pattern zza;

    public zzfut(Pattern pattern) {
        pattern.getClass();
        this.zza = pattern;
    }

    public final String toString() {
        return this.zza.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzfup
    public final zzfuo zza(CharSequence charSequence) {
        return new zzfus(this.zza.matcher(charSequence));
    }
}
