package com.google.android.gms.measurement.internal;

import android.content.ContentValues;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import androidx.collection.ArrayMap;
import androidx.collection.LruCache;
import com.google.android.gms.common.internal.Preconditions;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.TPDownloadProxyEnum;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.SortedSet;
import java.util.TreeSet;
import java.util.concurrent.Callable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzht extends zzos implements zzak {
    @VisibleForTesting
    final Map zza;
    @VisibleForTesting
    final Map zzb;
    @VisibleForTesting
    final Map zzc;
    @VisibleForTesting
    final LruCache zzd;
    final com.google.android.gms.internal.measurement.zzr zze;
    private final Map zzf;
    private final Map zzh;
    private final Map zzi;
    private final Map zzj;
    private final Map zzk;
    private final Map zzl;

    public zzht(zzpg zzpgVar) {
        super(zzpgVar);
        this.zzf = new ArrayMap();
        this.zza = new ArrayMap();
        this.zzb = new ArrayMap();
        this.zzc = new ArrayMap();
        this.zzh = new ArrayMap();
        this.zzj = new ArrayMap();
        this.zzk = new ArrayMap();
        this.zzl = new ArrayMap();
        this.zzi = new ArrayMap();
        this.zzd = new zzhm(this, 20);
        this.zze = new zzhn(this);
    }

    @WorkerThread
    private final void zzE(String str) {
        zzaw();
        zzg();
        Preconditions.checkNotEmpty(str);
        Map map = this.zzh;
        if (map.get(str) == null) {
            zzaq zzy = this.zzg.zzj().zzy(str);
            if (zzy == null) {
                this.zzf.put(str, null);
                this.zzb.put(str, null);
                this.zza.put(str, null);
                this.zzc.put(str, null);
                map.put(str, null);
                this.zzj.put(str, null);
                this.zzk.put(str, null);
                this.zzl.put(str, null);
                this.zzi.put(str, null);
                return;
            }
            com.google.android.gms.internal.measurement.zzgk zzgkVar = (com.google.android.gms.internal.measurement.zzgk) zzH(str, zzy.zza).zzcl();
            zzF(str, zzgkVar);
            this.zzf.put(str, zzI((com.google.android.gms.internal.measurement.zzgl) zzgkVar.zzbc()));
            map.put(str, (com.google.android.gms.internal.measurement.zzgl) zzgkVar.zzbc());
            zzG(str, (com.google.android.gms.internal.measurement.zzgl) zzgkVar.zzbc());
            this.zzj.put(str, zzgkVar.zzh());
            this.zzk.put(str, zzy.zzb);
            this.zzl.put(str, zzy.zzc);
        }
    }

    private final void zzF(String str, com.google.android.gms.internal.measurement.zzgk zzgkVar) {
        HashSet hashSet = new HashSet();
        ArrayMap arrayMap = new ArrayMap();
        ArrayMap arrayMap2 = new ArrayMap();
        ArrayMap arrayMap3 = new ArrayMap();
        for (com.google.android.gms.internal.measurement.zzgh zzghVar : zzgkVar.zzg()) {
            hashSet.add(zzghVar.zza());
        }
        for (int i = 0; i < zzgkVar.zza(); i++) {
            com.google.android.gms.internal.measurement.zzgi zzgiVar = (com.google.android.gms.internal.measurement.zzgi) zzgkVar.zzb(i).zzcl();
            if (zzgiVar.zza().isEmpty()) {
                this.zzu.zzaV().zze().zza("EventConfig contained null event name");
            } else {
                String zza = zzgiVar.zza();
                String zzb = zzjm.zzb(zzgiVar.zza());
                if (!TextUtils.isEmpty(zzb)) {
                    zzgiVar.zzb(zzb);
                    zzgkVar.zzc(i, zzgiVar);
                }
                if (zzgiVar.zzc() && zzgiVar.zzd()) {
                    arrayMap.put(zza, Boolean.TRUE);
                }
                if (zzgiVar.zze() && zzgiVar.zzf()) {
                    arrayMap2.put(zzgiVar.zza(), Boolean.TRUE);
                }
                if (zzgiVar.zzg()) {
                    if (zzgiVar.zzh() >= 2 && zzgiVar.zzh() <= 65535) {
                        arrayMap3.put(zzgiVar.zza(), Integer.valueOf(zzgiVar.zzh()));
                    } else {
                        this.zzu.zzaV().zze().zzc("Invalid sampling rate. Event name, sample rate", zzgiVar.zza(), Integer.valueOf(zzgiVar.zzh()));
                    }
                }
            }
        }
        this.zza.put(str, hashSet);
        this.zzb.put(str, arrayMap);
        this.zzc.put(str, arrayMap2);
        this.zzi.put(str, arrayMap3);
    }

    @WorkerThread
    private final void zzG(final String str, com.google.android.gms.internal.measurement.zzgl zzglVar) {
        if (zzglVar.zzj() != 0) {
            zzic zzicVar = this.zzu;
            zzicVar.zzaV().zzk().zzb("EES programs found", Integer.valueOf(zzglVar.zzj()));
            com.google.android.gms.internal.measurement.zzja zzjaVar = (com.google.android.gms.internal.measurement.zzja) zzglVar.zzi().get(0);
            try {
                com.google.android.gms.internal.measurement.zzc zzcVar = new com.google.android.gms.internal.measurement.zzc();
                zzcVar.zza("internal.remoteConfig", new Callable() { // from class: com.google.android.gms.measurement.internal.zzhs
                    @Override // java.util.concurrent.Callable
                    public final /* synthetic */ Object call() {
                        return new com.google.android.gms.internal.measurement.zzn("internal.remoteConfig", new zzho(zzht.this, str));
                    }
                });
                zzcVar.zza("internal.appMetadata", new Callable() { // from class: com.google.android.gms.measurement.internal.zzhp
                    @Override // java.util.concurrent.Callable
                    public final /* synthetic */ Object call() {
                        final zzht zzhtVar = zzht.this;
                        final String str2 = str;
                        return new com.google.android.gms.internal.measurement.zzu("internal.appMetadata", new Callable() { // from class: com.google.android.gms.measurement.internal.zzhr
                            @Override // java.util.concurrent.Callable
                            public final /* synthetic */ Object call() {
                                zzht zzhtVar2 = zzht.this;
                                zzav zzj = zzhtVar2.zzg.zzj();
                                String str3 = str2;
                                zzh zzu = zzj.zzu(str3);
                                HashMap hashMap = new HashMap();
                                hashMap.put(TPDownloadProxyEnum.USER_PLATFORM, "android");
                                hashMap.put(CampaignEx.JSON_KEY_PACKAGE_NAME, str3);
                                zzhtVar2.zzu.zzc().zzi();
                                hashMap.put("gmp_version", 133005L);
                                if (zzu != null) {
                                    String zzr = zzu.zzr();
                                    if (zzr != null) {
                                        hashMap.put("app_version", zzr);
                                    }
                                    hashMap.put("app_version_int", Long.valueOf(zzu.zzt()));
                                    hashMap.put("dynamite_version", Long.valueOf(zzu.zzB()));
                                }
                                return hashMap;
                            }
                        });
                    }
                });
                zzcVar.zza("internal.logger", new Callable() { // from class: com.google.android.gms.measurement.internal.zzhq
                    @Override // java.util.concurrent.Callable
                    public final /* synthetic */ Object call() {
                        return new com.google.android.gms.internal.measurement.zzt(zzht.this.zze);
                    }
                });
                zzcVar.zzf(zzjaVar);
                this.zzd.put(str, zzcVar);
                zzicVar.zzaV().zzk().zzc("EES program loaded for appId, activities", str, Integer.valueOf(zzjaVar.zzb().zzb()));
                for (com.google.android.gms.internal.measurement.zziy zziyVar : zzjaVar.zzb().zza()) {
                    zzicVar.zzaV().zzk().zzb("EES program activity", zziyVar.zza());
                }
                return;
            } catch (com.google.android.gms.internal.measurement.zzd unused) {
                this.zzu.zzaV().zzb().zzb("Failed to load EES program. appId", str);
                return;
            }
        }
        this.zzd.remove(str);
    }

    @WorkerThread
    private final com.google.android.gms.internal.measurement.zzgl zzH(String str, byte[] bArr) {
        Long l;
        if (bArr == null) {
            return com.google.android.gms.internal.measurement.zzgl.zzs();
        }
        try {
            com.google.android.gms.internal.measurement.zzgl zzglVar = (com.google.android.gms.internal.measurement.zzgl) ((com.google.android.gms.internal.measurement.zzgk) zzpk.zzw(com.google.android.gms.internal.measurement.zzgl.zzr(), bArr)).zzbc();
            zzgs zzk = this.zzu.zzaV().zzk();
            String str2 = null;
            if (zzglVar.zza()) {
                l = Long.valueOf(zzglVar.zzb());
            } else {
                l = null;
            }
            if (zzglVar.zzc()) {
                str2 = zzglVar.zzd();
            }
            zzk.zzc("Parsed config. version, gmp_app_id", l, str2);
            return zzglVar;
        } catch (com.google.android.gms.internal.measurement.zzmr e) {
            this.zzu.zzaV().zze().zzc("Unable to merge remote config. appId", zzgu.zzl(str), e);
            return com.google.android.gms.internal.measurement.zzgl.zzs();
        } catch (RuntimeException e2) {
            this.zzu.zzaV().zze().zzc("Unable to merge remote config. appId", zzgu.zzl(str), e2);
            return com.google.android.gms.internal.measurement.zzgl.zzs();
        }
    }

    private static final Map zzI(com.google.android.gms.internal.measurement.zzgl zzglVar) {
        ArrayMap arrayMap = new ArrayMap();
        if (zzglVar != null) {
            for (com.google.android.gms.internal.measurement.zzgt zzgtVar : zzglVar.zze()) {
                arrayMap.put(zzgtVar.zza(), zzgtVar.zzb());
            }
        }
        return arrayMap;
    }

    private static final zzjk zzJ(int i) {
        int i2 = i - 1;
        if (i2 != 1) {
            if (i2 != 2) {
                if (i2 != 3) {
                    if (i2 != 4) {
                        return null;
                    }
                    return zzjk.AD_PERSONALIZATION;
                }
                return zzjk.AD_USER_DATA;
            }
            return zzjk.ANALYTICS_STORAGE;
        }
        return zzjk.AD_STORAGE;
    }

    @WorkerThread
    public final zzji zzA(String str, zzjk zzjkVar) {
        zzg();
        zzE(str);
        com.google.android.gms.internal.measurement.zzgf zzx = zzx(str);
        if (zzx == null) {
            return zzji.UNINITIALIZED;
        }
        for (com.google.android.gms.internal.measurement.zzfu zzfuVar : zzx.zzf()) {
            if (zzJ(zzfuVar.zzb()) == zzjkVar) {
                int zzc = zzfuVar.zzc() - 1;
                if (zzc != 1) {
                    if (zzc != 2) {
                        return zzji.UNINITIALIZED;
                    }
                    return zzji.DENIED;
                }
                return zzji.GRANTED;
            }
        }
        return zzji.UNINITIALIZED;
    }

    @WorkerThread
    public final boolean zzB(String str) {
        zzg();
        zzE(str);
        com.google.android.gms.internal.measurement.zzgf zzx = zzx(str);
        if (zzx == null) {
            return false;
        }
        for (com.google.android.gms.internal.measurement.zzfu zzfuVar : zzx.zza()) {
            if (zzfuVar.zzb() == 3 && zzfuVar.zzd() == 3) {
                return true;
            }
        }
        return false;
    }

    public final /* synthetic */ com.google.android.gms.internal.measurement.zzc zzC(String str) {
        zzaw();
        Preconditions.checkNotEmpty(str);
        zzaq zzy = this.zzg.zzj().zzy(str);
        if (zzy == null) {
            return null;
        }
        this.zzu.zzaV().zzk().zzb("Populate EES config from database on cache miss. appId", str);
        zzG(str, zzH(str, zzy.zza));
        return (com.google.android.gms.internal.measurement.zzc) this.zzd.snapshot().get(str);
    }

    public final /* synthetic */ Map zzD() {
        return this.zzf;
    }

    @Override // com.google.android.gms.measurement.internal.zzak
    @WorkerThread
    public final String zza(String str, String str2) {
        zzg();
        zzE(str);
        Map map = (Map) this.zzf.get(str);
        if (map != null) {
            return (String) map.get(str2);
        }
        return null;
    }

    @WorkerThread
    public final com.google.android.gms.internal.measurement.zzgl zzb(String str) {
        zzaw();
        zzg();
        Preconditions.checkNotEmpty(str);
        zzE(str);
        return (com.google.android.gms.internal.measurement.zzgl) this.zzh.get(str);
    }

    @Override // com.google.android.gms.measurement.internal.zzos
    public final boolean zzbb() {
        return false;
    }

    @WorkerThread
    public final String zzc(String str) {
        zzg();
        zzE(str);
        return (String) this.zzj.get(str);
    }

    @WorkerThread
    public final String zzd(String str) {
        zzg();
        return (String) this.zzk.get(str);
    }

    @WorkerThread
    public final String zze(String str) {
        zzg();
        return (String) this.zzl.get(str);
    }

    @WorkerThread
    public final void zzf(String str) {
        zzg();
        this.zzk.put(str, null);
    }

    @WorkerThread
    public final void zzh(String str) {
        zzg();
        this.zzh.remove(str);
    }

    @WorkerThread
    public final boolean zzi(String str, byte[] bArr, String str2, String str3) {
        zzaw();
        zzg();
        Preconditions.checkNotEmpty(str);
        com.google.android.gms.internal.measurement.zzgk zzgkVar = (com.google.android.gms.internal.measurement.zzgk) zzH(str, bArr).zzcl();
        zzF(str, zzgkVar);
        zzG(str, (com.google.android.gms.internal.measurement.zzgl) zzgkVar.zzbc());
        this.zzh.put(str, (com.google.android.gms.internal.measurement.zzgl) zzgkVar.zzbc());
        this.zzj.put(str, zzgkVar.zzh());
        this.zzk.put(str, str2);
        this.zzl.put(str, str3);
        this.zzf.put(str, zzI((com.google.android.gms.internal.measurement.zzgl) zzgkVar.zzbc()));
        this.zzg.zzj().zzae(str, new ArrayList(zzgkVar.zzd()));
        try {
            zzgkVar.zze();
            bArr = ((com.google.android.gms.internal.measurement.zzgl) zzgkVar.zzbc()).zzcc();
        } catch (RuntimeException e) {
            this.zzu.zzaV().zze().zzc("Unable to serialize reduced-size config. Storing full config instead. appId", zzgu.zzl(str), e);
        }
        zzav zzj = this.zzg.zzj();
        Preconditions.checkNotEmpty(str);
        zzj.zzg();
        zzj.zzaw();
        ContentValues contentValues = new ContentValues();
        contentValues.put("remote_config", bArr);
        contentValues.put("config_last_modified_time", str2);
        contentValues.put("e_tag", str3);
        try {
            if (zzj.zze().update("apps", contentValues, "app_id = ?", new String[]{str}) == 0) {
                zzj.zzu.zzaV().zzb().zzb("Failed to update remote config (got 0). appId", zzgu.zzl(str));
            }
        } catch (SQLiteException e2) {
            zzj.zzu.zzaV().zzb().zzc("Error storing remote config. appId", zzgu.zzl(str), e2);
        }
        zzgkVar.zzf();
        this.zzh.put(str, (com.google.android.gms.internal.measurement.zzgl) zzgkVar.zzbc());
        return true;
    }

    @WorkerThread
    public final boolean zzj(String str, String str2) {
        Boolean bool;
        zzg();
        zzE(str);
        if (zzn(str) && zzpp.zzZ(str2)) {
            return true;
        }
        if (zzo(str) && zzpp.zzh(str2)) {
            return true;
        }
        Map map = (Map) this.zzb.get(str);
        if (map == null || (bool = (Boolean) map.get(str2)) == null) {
            return false;
        }
        return bool.booleanValue();
    }

    @WorkerThread
    public final boolean zzk(String str, String str2) {
        Boolean bool;
        zzg();
        zzE(str);
        if ("ecommerce_purchase".equals(str2) || FirebaseAnalytics.Event.PURCHASE.equals(str2) || FirebaseAnalytics.Event.REFUND.equals(str2)) {
            return true;
        }
        Map map = (Map) this.zzc.get(str);
        if (map == null || (bool = (Boolean) map.get(str2)) == null) {
            return false;
        }
        return bool.booleanValue();
    }

    @WorkerThread
    public final Set zzl(String str) {
        zzg();
        zzE(str);
        return (Set) this.zza.get(str);
    }

    @WorkerThread
    public final int zzm(String str, String str2) {
        Integer num;
        zzg();
        zzE(str);
        Map map = (Map) this.zzi.get(str);
        if (map != null && (num = (Integer) map.get(str2)) != null) {
            return num.intValue();
        }
        return 1;
    }

    public final boolean zzn(String str) {
        return "1".equals(zza(str, "measurement.upload.blacklist_internal"));
    }

    public final boolean zzo(String str) {
        return "1".equals(zza(str, "measurement.upload.blacklist_public"));
    }

    @WorkerThread
    public final boolean zzp(String str) {
        zzg();
        zzE(str);
        Map map = this.zza;
        if (map.get(str) == null) {
            return false;
        }
        if (!((Set) map.get(str)).contains(TPDownloadProxyEnum.USER_DEVICE_MODEL) && !((Set) map.get(str)).contains("device_info")) {
            return false;
        }
        return true;
    }

    @WorkerThread
    public final boolean zzq(String str) {
        zzg();
        zzE(str);
        Map map = this.zza;
        if (map.get(str) == null) {
            return false;
        }
        if (!((Set) map.get(str)).contains(TPDownloadProxyEnum.USER_OS_VERSION) && !((Set) map.get(str)).contains("device_info")) {
            return false;
        }
        return true;
    }

    @WorkerThread
    public final boolean zzr(String str) {
        zzg();
        zzE(str);
        Map map = this.zza;
        if (map.get(str) != null && ((Set) map.get(str)).contains("user_id")) {
            return true;
        }
        return false;
    }

    @WorkerThread
    public final boolean zzs(String str) {
        zzg();
        zzE(str);
        Map map = this.zza;
        if (map.get(str) != null && ((Set) map.get(str)).contains("google_signals")) {
            return true;
        }
        return false;
    }

    @WorkerThread
    public final boolean zzt(String str) {
        zzg();
        zzE(str);
        Map map = this.zza;
        if (map.get(str) != null && ((Set) map.get(str)).contains("app_instance_id")) {
            return true;
        }
        return false;
    }

    @WorkerThread
    public final boolean zzu(String str) {
        zzg();
        zzE(str);
        Map map = this.zza;
        if (map.get(str) != null && ((Set) map.get(str)).contains("enhanced_user_id")) {
            return true;
        }
        return false;
    }

    @WorkerThread
    public final boolean zzv(String str, zzjk zzjkVar) {
        zzg();
        zzE(str);
        com.google.android.gms.internal.measurement.zzgf zzx = zzx(str);
        if (zzx == null) {
            return false;
        }
        Iterator it = zzx.zza().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            com.google.android.gms.internal.measurement.zzfu zzfuVar = (com.google.android.gms.internal.measurement.zzfu) it.next();
            if (zzjkVar == zzJ(zzfuVar.zzb())) {
                if (zzfuVar.zzc() == 2) {
                    return true;
                }
            }
        }
        return false;
    }

    @WorkerThread
    public final zzjk zzw(String str, zzjk zzjkVar) {
        zzg();
        zzE(str);
        com.google.android.gms.internal.measurement.zzgf zzx = zzx(str);
        if (zzx != null) {
            for (com.google.android.gms.internal.measurement.zzfw zzfwVar : zzx.zzb()) {
                if (zzjkVar == zzJ(zzfwVar.zzb())) {
                    return zzJ(zzfwVar.zzc());
                }
            }
            return null;
        }
        return null;
    }

    @WorkerThread
    public final com.google.android.gms.internal.measurement.zzgf zzx(String str) {
        zzg();
        zzE(str);
        com.google.android.gms.internal.measurement.zzgl zzb = zzb(str);
        if (zzb != null && zzb.zzn()) {
            return zzb.zzo();
        }
        return null;
    }

    @WorkerThread
    public final boolean zzy(String str) {
        zzg();
        zzE(str);
        com.google.android.gms.internal.measurement.zzgf zzx = zzx(str);
        if (zzx == null || !zzx.zzd() || zzx.zze()) {
            return true;
        }
        return false;
    }

    @WorkerThread
    public final SortedSet zzz(String str) {
        zzg();
        zzE(str);
        TreeSet treeSet = new TreeSet();
        com.google.android.gms.internal.measurement.zzgf zzx = zzx(str);
        if (zzx != null) {
            for (com.google.android.gms.internal.measurement.zzgc zzgcVar : zzx.zzc()) {
                treeSet.add(zzgcVar.zza());
            }
        }
        return treeSet;
    }
}
