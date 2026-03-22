package com.google.android.gms.internal.ads;

import android.view.View;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzfmb {
    private static final Pattern zza = Pattern.compile("^[a-zA-Z0-9 ]+$");
    private final List zzb = new ArrayList();

    public final List zza() {
        return this.zzb;
    }

    public final void zzb(View view, zzfli zzfliVar, @Nullable String str) {
        zzfma zzfmaVar;
        if (view != null) {
            if (zza.matcher("Ad overlay").matches()) {
                List list = this.zzb;
                Iterator it = list.iterator();
                while (true) {
                    if (it.hasNext()) {
                        zzfmaVar = (zzfma) it.next();
                        if (zzfmaVar.zzb().get() == view) {
                            break;
                        }
                    } else {
                        zzfmaVar = null;
                        break;
                    }
                }
                if (zzfmaVar == null) {
                    list.add(new zzfma(view, zzfliVar, "Ad overlay"));
                    return;
                }
                return;
            }
            throw new IllegalArgumentException("FriendlyObstruction has detailed reason that contains characters not in [a-z][A-Z][0-9] or space");
        }
        throw new IllegalArgumentException("FriendlyObstruction is null");
    }

    public final void zzc() {
        this.zzb.clear();
    }
}
