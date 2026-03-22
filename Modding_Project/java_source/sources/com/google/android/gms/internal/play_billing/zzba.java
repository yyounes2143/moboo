package com.google.android.gms.internal.play_billing;

import java.util.Arrays;
import javax.annotation.CheckForNull;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzba {
    private final String zza;
    private final zzaz zzb;
    private zzaz zzc;

    public /* synthetic */ zzba(String str, zzbb zzbbVar) {
        zzaz zzazVar = new zzaz();
        this.zzb = zzazVar;
        this.zzc = zzazVar;
        str.getClass();
        this.zza = str;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(32);
        sb.append(this.zza);
        sb.append(AbstractJsonLexerKt.BEGIN_OBJ);
        zzaz zzazVar = this.zzb.zzb;
        String str = "";
        while (zzazVar != null) {
            Object obj = zzazVar.zza;
            sb.append(str);
            if (obj != null && obj.getClass().isArray()) {
                String deepToString = Arrays.deepToString(new Object[]{obj});
                sb.append((CharSequence) deepToString, 1, deepToString.length() - 1);
            } else {
                sb.append(obj);
            }
            zzazVar = zzazVar.zzb;
            str = ", ";
        }
        sb.append(AbstractJsonLexerKt.END_OBJ);
        return sb.toString();
    }

    public final zzba zza(@CheckForNull Object obj) {
        zzaz zzazVar = new zzaz();
        this.zzc.zzb = zzazVar;
        this.zzc = zzazVar;
        zzazVar.zza = obj;
        return this;
    }
}
