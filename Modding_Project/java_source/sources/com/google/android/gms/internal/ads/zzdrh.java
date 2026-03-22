package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.browser.customtabs.CustomTabsCallback;
import androidx.core.app.NotificationCompat;
import com.google.android.gms.ads.MobileAds;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.regex.Pattern;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdrh implements zzdas, com.google.android.gms.ads.internal.client.zza, zzcwn, zzcvx, zzcyj {
    private final Context zzc;
    private final zzfdh zzd;
    private final zzdsd zze;
    private final zzfcg zzf;
    private final zzfbu zzg;
    private final zzebt zzh;
    private final String zzi;
    @Nullable
    private Boolean zzk;
    private long zzj = -1;
    @VisibleForTesting
    final AtomicBoolean zza = new AtomicBoolean(false);
    @VisibleForTesting
    final AtomicBoolean zzb = new AtomicBoolean(false);
    private final boolean zzl = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzgW)).booleanValue();

    public zzdrh(Context context, zzfdh zzfdhVar, zzdsd zzdsdVar, zzfcg zzfcgVar, zzfbu zzfbuVar, zzebt zzebtVar, String str) {
        this.zzc = context;
        this.zzd = zzfdhVar;
        this.zze = zzdsdVar;
        this.zzf = zzfcgVar;
        this.zzg = zzfbuVar;
        this.zzh = zzebtVar;
        this.zzi = str;
    }

    private final zzdsc zzf(String str) {
        String str2;
        zzfcg zzfcgVar = this.zzf;
        zzfcf zzfcfVar = zzfcgVar.zzb;
        zzdsc zza = this.zze.zza();
        zza.zzd(zzfcfVar.zzb);
        zzfbu zzfbuVar = this.zzg;
        zza.zzc(zzfbuVar);
        zza.zzb("action", str);
        zza.zzb(FirebaseAnalytics.Param.AD_FORMAT, this.zzi.toUpperCase(Locale.ROOT));
        List list = zzfbuVar.zzt;
        if (!list.isEmpty()) {
            zza.zzb("ancn", (String) list.get(0));
        }
        if (zzfbuVar.zzb()) {
            if (true != com.google.android.gms.ads.internal.zzv.zzp().zzA(this.zzc)) {
                str2 = "offline";
            } else {
                str2 = CustomTabsCallback.ONLINE_EXTRAS_KEY;
            }
            zza.zzb("device_connectivity", str2);
            zza.zzb("event_timestamp", String.valueOf(com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis()));
            zza.zzb("offline_ad", "1");
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzhd)).booleanValue()) {
            boolean zzf = com.google.android.gms.ads.nonagon.signalgeneration.zzaa.zzf(zzfcgVar);
            zza.zzb("scar", String.valueOf(zzf));
            if (zzf) {
                com.google.android.gms.ads.internal.client.zzm zzmVar = zzfcgVar.zza.zza.zzd;
                zza.zzb("ragent", zzmVar.zzp);
                zza.zzb("rtype", com.google.android.gms.ads.nonagon.signalgeneration.zzaa.zzb(com.google.android.gms.ads.nonagon.signalgeneration.zzaa.zzc(zzmVar)));
            }
        }
        return zza;
    }

    private final void zzg(zzdsc zzdscVar) {
        if (this.zzg.zzb()) {
            this.zzh.zzd(new zzebv(com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis(), this.zzf.zzb.zzb.zzb, zzdscVar.zze(), 2));
            return;
        }
        zzdscVar.zzj();
    }

    private final boolean zzh() {
        int i = this.zzg.zzb;
        if (i != 2 && i != 5 && i != 6 && i != 7) {
            return false;
        }
        return true;
    }

    private final boolean zzi() {
        String str;
        if (this.zzk == null) {
            synchronized (this) {
                if (this.zzk == null) {
                    String str2 = (String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzbF);
                    com.google.android.gms.ads.internal.zzv.zzr();
                    try {
                        str = com.google.android.gms.ads.internal.util.zzs.zzq(this.zzc);
                    } catch (RemoteException unused) {
                        str = null;
                    }
                    boolean z = false;
                    if (str2 != null && str != null) {
                        try {
                            z = Pattern.matches(str2, str);
                        } catch (RuntimeException e) {
                            com.google.android.gms.ads.internal.zzv.zzp().zzw(e, "CsiActionsListener.isPatternMatched");
                        }
                    }
                    this.zzk = Boolean.valueOf(z);
                }
            }
        }
        return this.zzk.booleanValue();
    }

    @Override // com.google.android.gms.ads.internal.client.zza
    public final void onAdClicked() {
        if (!this.zzg.zzb()) {
            return;
        }
        zzg(zzf(CampaignEx.JSON_NATIVE_VIDEO_CLICK));
    }

    @Override // com.google.android.gms.internal.ads.zzcvx
    public final void zzc(com.google.android.gms.ads.internal.client.zze zzeVar) {
        com.google.android.gms.ads.internal.client.zze zzeVar2;
        if (!this.zzl) {
            return;
        }
        zzdsc zzf = zzf("ifts");
        zzf.zzb("reason", "adapter");
        int i = zzeVar.zza;
        String str = zzeVar.zzb;
        if (zzeVar.zzc.equals(MobileAds.ERROR_DOMAIN) && (zzeVar2 = zzeVar.zzd) != null && !zzeVar2.zzc.equals(MobileAds.ERROR_DOMAIN)) {
            com.google.android.gms.ads.internal.client.zze zzeVar3 = zzeVar.zzd;
            i = zzeVar3.zza;
            str = zzeVar3.zzb;
        }
        if (i >= 0) {
            zzf.zzb("arec", String.valueOf(i));
        }
        String zza = this.zzd.zza(str);
        if (zza != null) {
            zzf.zzb("areec", zza);
        }
        zzf.zzj();
    }

    @Override // com.google.android.gms.internal.ads.zzcvx
    public final void zzd() {
        if (!this.zzl) {
            return;
        }
        zzdsc zzf = zzf("ifts");
        zzf.zzb("reason", "blocked");
        zzf.zzj();
    }

    @Override // com.google.android.gms.internal.ads.zzdas
    public final void zzdp() {
        if (!zzi()) {
            return;
        }
        zzf("adapter_shown").zzj();
    }

    @Override // com.google.android.gms.internal.ads.zzdas
    public final void zzdq() {
        String str;
        if (!zzi()) {
            return;
        }
        zzdsc zzf = zzf("adapter_impression");
        String str2 = "0";
        if (this.zzb.get()) {
            zzf.zzb("po", "1");
            zzf.zzb("pil", String.valueOf(com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis() - this.zzj));
        } else {
            zzf.zzb("po", "0");
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zznC)).booleanValue() && zzh()) {
            com.google.android.gms.ads.internal.zzv.zzr();
            if (true == com.google.android.gms.ads.internal.util.zzs.zzH(this.zzc)) {
                str = "0";
            } else {
                str = "1";
            }
            zzf.zzb("foreground", str);
            if (true == this.zza.get()) {
                str2 = "1";
            }
            zzf.zzb("fg_show", str2);
        }
        zzf.zzj();
    }

    @Override // com.google.android.gms.internal.ads.zzcvx
    public final void zze(zzdgh zzdghVar) {
        if (!this.zzl) {
            return;
        }
        zzdsc zzf = zzf("ifts");
        zzf.zzb("reason", "exception");
        if (!TextUtils.isEmpty(zzdghVar.getMessage())) {
            zzf.zzb(NotificationCompat.CATEGORY_MESSAGE, zzdghVar.getMessage());
        }
        zzf.zzj();
    }

    @Override // com.google.android.gms.internal.ads.zzcwn
    public final void zzs() {
        String str;
        if (!zzi() && !this.zzg.zzb()) {
            return;
        }
        zzdsc zzf = zzf("impression");
        if (this.zzj > 0) {
            zzf.zzb("p_imp_l", String.valueOf(com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis() - this.zzj));
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zznC)).booleanValue() && zzh()) {
            com.google.android.gms.ads.internal.zzv.zzr();
            String str2 = "0";
            if (true == com.google.android.gms.ads.internal.util.zzs.zzH(this.zzc)) {
                str = "0";
            } else {
                str = "1";
            }
            zzf.zzb("foreground", str);
            if (true == this.zza.get()) {
                str2 = "1";
            }
            zzf.zzb("fg_show", str2);
        }
        zzg(zzf);
    }

    @Override // com.google.android.gms.internal.ads.zzcyj
    public final void zzu() {
        String str;
        if (!zzi()) {
            return;
        }
        this.zzb.set(true);
        this.zzj = com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis();
        zzdsc zzf = zzf("presentation");
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zznC)).booleanValue() && zzh()) {
            AtomicBoolean atomicBoolean = this.zza;
            com.google.android.gms.ads.internal.zzv.zzr();
            atomicBoolean.set(!com.google.android.gms.ads.internal.util.zzs.zzH(this.zzc));
            if (true != atomicBoolean.get()) {
                str = "0";
            } else {
                str = "1";
            }
            zzf.zzb("foreground", str);
        }
        zzf.zzj();
    }
}
