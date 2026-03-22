package com.google.android.gms.internal.ads;

import android.os.Bundle;
import androidx.annotation.VisibleForTesting;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.Iterator;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzeim implements zzedf {
    private final zzedh zza;
    private final zzedl zzb;
    private final zzfgt zzc;
    private final zzgdj zzd;

    public zzeim(zzfgt zzfgtVar, zzgdj zzgdjVar, zzedh zzedhVar, zzedl zzedlVar) {
        this.zzc = zzfgtVar;
        this.zzd = zzgdjVar;
        this.zzb = zzedlVar;
        this.zza = zzedhVar;
    }

    @VisibleForTesting
    public static final String zze(String str, int i) {
        return "Error from: " + str + ", code: " + i;
    }

    @Override // com.google.android.gms.internal.ads.zzedf
    public final ListenableFuture zza(final zzfcg zzfcgVar, final zzfbu zzfbuVar) {
        final zzedi zzediVar;
        Iterator it = zzfbuVar.zzt.iterator();
        while (true) {
            if (it.hasNext()) {
                try {
                    zzediVar = this.zza.zza((String) it.next(), zzfbuVar.zzv);
                    break;
                } catch (zzfcw unused) {
                }
            } else {
                zzediVar = null;
                break;
            }
        }
        if (zzediVar == null) {
            return zzgcy.zzg(new zzegc("Unable to instantiate mediation adapter class."));
        }
        zzcaf zzcafVar = new zzcaf();
        zzediVar.zzc.zza(new zzeil(this, zzediVar, zzcafVar));
        if (zzfbuVar.zzM) {
            Bundle bundle = zzfcgVar.zza.zza.zzd.zzm;
            Bundle bundle2 = bundle.getBundle(AdMobAdapter.class.getName());
            if (bundle2 == null) {
                bundle2 = new Bundle();
                bundle.putBundle(AdMobAdapter.class.getName(), bundle2);
            }
            bundle2.putBoolean("render_test_ad_label", true);
        }
        zzfgt zzfgtVar = this.zzc;
        return zzfgd.zzd(new zzffy() { // from class: com.google.android.gms.internal.ads.zzeij
            @Override // com.google.android.gms.internal.ads.zzffy
            public final void zza() {
                zzeim.this.zzb.zzb(zzfcgVar, zzfbuVar, zzediVar);
            }
        }, this.zzd, zzfgn.ADAPTER_LOAD_AD_SYN, zzfgtVar).zzb(zzfgn.ADAPTER_LOAD_AD_ACK).zzd(zzcafVar).zzb(zzfgn.ADAPTER_WRAP_ADAPTER).zze(new zzffx() { // from class: com.google.android.gms.internal.ads.zzeik
            @Override // com.google.android.gms.internal.ads.zzffx
            public final Object zza(Object obj) {
                Object zza;
                Void r5 = (Void) obj;
                zza = zzeim.this.zzb.zza(zzfcgVar, zzfbuVar, zzediVar);
                return zza;
            }
        }).zza();
    }

    @Override // com.google.android.gms.internal.ads.zzedf
    public final boolean zzb(zzfcg zzfcgVar, zzfbu zzfbuVar) {
        if (!zzfbuVar.zzt.isEmpty()) {
            return true;
        }
        return false;
    }
}
