package com.google.android.gms.ads.nonagon.signalgeneration;

import android.os.Bundle;
import android.util.JsonReader;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.google.android.gms.internal.ads.zzbvl;
import com.google.android.gms.internal.ads.zzdxh;
import com.google.android.gms.internal.ads.zzdyr;
import com.google.android.gms.internal.ads.zzgcf;
import com.google.android.gms.internal.ads.zzgcy;
import com.google.common.util.concurrent.ListenableFuture;
import java.io.InputStreamReader;
import java.util.concurrent.Executor;
import org.json.JSONException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbi implements zzgcf {
    private final Executor zza;
    private final zzdxh zzb;

    public zzbi(Executor executor, zzdxh zzdxhVar) {
        this.zza = executor;
        this.zzb = zzdxhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgcf
    public final /* bridge */ /* synthetic */ ListenableFuture zza(Object obj) throws Exception {
        final zzbvl zzbvlVar = (zzbvl) obj;
        return zzgcy.zzn(this.zzb.zzc(zzbvlVar), new zzgcf() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzbh
            @Override // com.google.android.gms.internal.ads.zzgcf
            public final ListenableFuture zza(Object obj2) {
                zzdyr zzdyrVar = (zzdyr) obj2;
                zzbk zzbkVar = new zzbk(new JsonReader(new InputStreamReader(zzdyrVar.zzb())), zzdyrVar.zza());
                zzbvl zzbvlVar2 = zzbvl.this;
                try {
                    zzbkVar.zzb = com.google.android.gms.ads.internal.client.zzbb.zzb().zzj(zzbvlVar2.zza).toString();
                } catch (JSONException unused) {
                    zzbkVar.zzb = JsonUtils.EMPTY_JSON;
                }
                Bundle bundle = zzbvlVar2.zzn;
                if (!bundle.isEmpty()) {
                    try {
                        zzbkVar.zzc = com.google.android.gms.ads.internal.client.zzbb.zzb().zzj(bundle).toString();
                    } catch (JSONException unused2) {
                    }
                }
                return zzgcy.zzh(zzbkVar);
            }
        }, this.zza);
    }
}
