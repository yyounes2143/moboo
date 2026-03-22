package com.google.android.gms.internal.ads;

import java.util.Arrays;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzfuw {
    private final String zza;
    private final zzfuv zzb;
    private zzfuv zzc;

    public /* synthetic */ zzfuw(String str, zzfux zzfuxVar) {
        zzfuv zzfuvVar = new zzfuv();
        this.zzb = zzfuvVar;
        this.zzc = zzfuvVar;
        str.getClass();
        this.zza = str;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(32);
        sb.append(this.zza);
        sb.append(AbstractJsonLexerKt.BEGIN_OBJ);
        zzfuv zzfuvVar = this.zzb.zzb;
        String str = "";
        while (zzfuvVar != null) {
            Object obj = zzfuvVar.zza;
            sb.append(str);
            if (obj != null && obj.getClass().isArray()) {
                String deepToString = Arrays.deepToString(new Object[]{obj});
                sb.append((CharSequence) deepToString, 1, deepToString.length() - 1);
            } else {
                sb.append(obj);
            }
            zzfuvVar = zzfuvVar.zzb;
            str = ", ";
        }
        sb.append(AbstractJsonLexerKt.END_OBJ);
        return sb.toString();
    }

    public final zzfuw zza(Object obj) {
        zzfuv zzfuvVar = new zzfuv();
        this.zzc.zzb = zzfuvVar;
        this.zzc = zzfuvVar;
        zzfuvVar.zza = obj;
        return this;
    }
}
