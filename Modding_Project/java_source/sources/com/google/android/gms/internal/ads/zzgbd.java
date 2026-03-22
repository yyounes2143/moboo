package com.google.android.gms.internal.ads;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.Serializable;
import java.util.Arrays;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgbd implements Serializable {
    private final int[] zza;
    private final int zzb;

    private zzgbd(int[] iArr, int i, int i2) {
        this.zza = iArr;
        this.zzb = i2;
    }

    public static zzgbd zzb(int[] iArr) {
        int[] copyOf = Arrays.copyOf(iArr, iArr.length);
        return new zzgbd(copyOf, 0, copyOf.length);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzgbd)) {
            return false;
        }
        zzgbd zzgbdVar = (zzgbd) obj;
        int i = this.zzb;
        if (i != zzgbdVar.zzb) {
            return false;
        }
        for (int i2 = 0; i2 < i; i2++) {
            if (zza(i2) != zzgbdVar.zza(i2)) {
                return false;
            }
        }
        return true;
    }

    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.zzb; i2++) {
            i = (i * 31) + this.zza[i2];
        }
        return i;
    }

    public final String toString() {
        int i = this.zzb;
        if (i != 0) {
            StringBuilder sb = new StringBuilder(i * 5);
            sb.append(AbstractJsonLexerKt.BEGIN_LIST);
            int[] iArr = this.zza;
            sb.append(iArr[0]);
            for (int i2 = 1; i2 < i; i2++) {
                sb.append(", ");
                sb.append(iArr[i2]);
            }
            sb.append(AbstractJsonLexerKt.END_LIST);
            return sb.toString();
        }
        return "[]";
    }

    public final int zza(int i) {
        zzfvc.zza(i, this.zzb, FirebaseAnalytics.Param.INDEX);
        return this.zza[i];
    }
}
