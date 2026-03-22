package com.google.android.gms.ads.nonagon.signalgeneration;

import android.os.Bundle;
import com.google.android.gms.internal.ads.zzbcv;
import com.google.android.gms.internal.ads.zzbyz;
import com.google.android.gms.internal.ads.zzcaa;
import com.google.android.gms.internal.ads.zzcuw;
import com.google.android.gms.internal.ads.zzcux;
import com.google.android.gms.internal.ads.zzcvk;
import com.google.android.gms.internal.ads.zzden;
import com.google.android.gms.internal.ads.zzdrl;
import com.google.android.gms.internal.ads.zzfgn;
import com.google.android.gms.internal.ads.zzfgt;
import com.google.android.gms.internal.ads.zzgcy;
import com.google.android.gms.internal.ads.zzhfv;
import com.google.android.gms.internal.ads.zzhgd;
import com.google.android.gms.internal.ads.zzhge;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.TimeUnit;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbg implements zzhfv {
    private final zzhge zza;
    private final zzhge zzb;
    private final zzhge zzc;
    private final zzhge zzd;
    private final zzhge zze;
    private final zzhge zzf;
    private final zzhge zzg;
    private final zzhge zzh;
    private final zzhge zzi;

    public zzbg(zzhge zzhgeVar, zzhge zzhgeVar2, zzhge zzhgeVar3, zzhge zzhgeVar4, zzhge zzhgeVar5, zzhge zzhgeVar6, zzhge zzhgeVar7, zzhge zzhgeVar8, zzhge zzhgeVar9) {
        this.zza = zzhgeVar;
        this.zzb = zzhgeVar2;
        this.zzc = zzhgeVar3;
        this.zzd = zzhgeVar4;
        this.zze = zzhgeVar5;
        this.zzf = zzhgeVar6;
        this.zzg = zzhgeVar7;
        this.zzh = zzhgeVar8;
        this.zzi = zzhgeVar9;
    }

    @Override // com.google.android.gms.internal.ads.zzhgk, com.google.android.gms.internal.ads.zzhgj
    public final /* bridge */ /* synthetic */ Object zzb() {
        ListenableFuture zza;
        zzau zzauVar = (zzau) this.zza.zzb();
        zzfgt zzfgtVar = (zzfgt) this.zzb.zzb();
        zzbi zzb = ((zzbj) this.zzc).zzb();
        zzcuw zzb2 = ((zzcux) this.zzd).zzb();
        zzden zzdenVar = (zzden) this.zze.zzb();
        zzb zzbVar = (zzb) this.zzf.zzb();
        zzbyz zzbyzVar = (zzbyz) this.zzg.zzb();
        int intValue = ((Integer) this.zzh.zzb()).intValue();
        Bundle bundle = ((zzcvk) this.zzi).zza().zzs;
        zzbk zzbkVar = null;
        if (intValue == 1 && zzbyzVar != null) {
            bundle.putLong(zzdrl.READ_FROM_DISK_START.zza(), com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis());
            zzbkVar = zzbVar.zza(zzbyzVar, zzauVar, bundle);
            bundle.putLong(zzdrl.READ_FROM_DISK_END.zza(), com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis());
        }
        if (zzbkVar != null) {
            zzdenVar.zza(zzbkVar);
            zza = zzgcy.zzh(zzbkVar);
        } else {
            zza = zzfgtVar.zzb(zzfgn.GENERATE_SIGNALS, zzb2.zzc()).zzf(zzb).zzi(((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzfP)).intValue(), TimeUnit.SECONDS).zza();
            zzgcy.zzr(zza, new zzaw(zzdenVar), zzcaa.zza);
        }
        zzhgd.zzb(zza);
        return zza;
    }
}
