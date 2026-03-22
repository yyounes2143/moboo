package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.ConnectivityManager;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.PlatformVersion;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.ArrayList;
import java.util.EnumMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.atomic.AtomicInteger;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzfkg {
    private final ConcurrentMap zza = new ConcurrentHashMap();
    private final ConcurrentMap zzb = new ConcurrentHashMap();
    private final zzfku zzc;
    private final zzfkc zzd;
    private final Context zze;
    @Nullable
    private volatile ConnectivityManager zzf;
    private final Clock zzg;
    private AtomicInteger zzh;

    public zzfkg(zzfku zzfkuVar, zzfkc zzfkcVar, Context context, Clock clock) {
        this.zzc = zzfkuVar;
        this.zzd = zzfkcVar;
        this.zze = context;
        this.zzg = clock;
    }

    public static String zzd(String str, @Nullable AdFormat adFormat) {
        String name;
        if (adFormat == null) {
            name = "NULL";
        } else {
            name = adFormat.name();
        }
        return str + "#" + name;
    }

    @Nullable
    private final synchronized zzfkt zzm(String str, AdFormat adFormat) {
        return (zzfkt) this.zza.get(zzd(str, adFormat));
    }

    @Nullable
    private final synchronized Object zzn(Class cls, String str, AdFormat adFormat) {
        Object cast;
        zzfkk zzfkkVar = new zzfkk(new zzfki(str, adFormat), null);
        zzfkc zzfkcVar = this.zzd;
        Clock clock = this.zzg;
        zzfkcVar.zze(clock.currentTimeMillis(), zzfkkVar);
        zzfkt zzm = zzm(str, adFormat);
        if (zzm == null) {
            return null;
        }
        try {
            String zzl = zzm.zzl();
            Object zzj = zzm.zzj();
            if (zzj == null) {
                cast = null;
            } else {
                cast = cls.cast(zzj);
            }
            if (cast != null) {
                zzfkcVar.zzf(clock.currentTimeMillis(), zzm.zze.zzd, zzm.zzd(), zzl, zzfkkVar);
            }
            return cast;
        } catch (ClassCastException e) {
            com.google.android.gms.ads.internal.zzv.zzp().zzw(e, "PreloadAdManager.pollAd");
            com.google.android.gms.ads.internal.util.zze.zzb("Unable to cast ad to the requested type:".concat(cls.getName()), e);
            return null;
        }
    }

    private final synchronized List zzo(List list) {
        ArrayList arrayList;
        try {
            HashSet hashSet = new HashSet();
            arrayList = new ArrayList();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                com.google.android.gms.ads.internal.client.zzfp zzfpVar = (com.google.android.gms.ads.internal.client.zzfp) it.next();
                String zzd = zzd(zzfpVar.zza, AdFormat.getAdFormat(zzfpVar.zzb));
                hashSet.add(zzd);
                ConcurrentMap concurrentMap = this.zza;
                zzfkt zzfktVar = (zzfkt) concurrentMap.get(zzd);
                if (zzfktVar != null) {
                    if (!zzfktVar.zze.equals(zzfpVar)) {
                        this.zzb.put(zzd, zzfktVar);
                        concurrentMap.remove(zzd);
                    } else {
                        zzfktVar.zzx(zzfpVar.zzd);
                    }
                } else {
                    ConcurrentMap concurrentMap2 = this.zzb;
                    if (concurrentMap2.containsKey(zzd)) {
                        zzfkt zzfktVar2 = (zzfkt) concurrentMap2.get(zzd);
                        if (zzfktVar2.zze.equals(zzfpVar)) {
                            zzfktVar2.zzx(zzfpVar.zzd);
                            zzfktVar2.zzu();
                            concurrentMap.put(zzd, zzfktVar2);
                            concurrentMap2.remove(zzd);
                        }
                    } else {
                        arrayList.add(zzfpVar);
                    }
                }
            }
            Iterator it2 = this.zza.entrySet().iterator();
            while (it2.hasNext()) {
                Map.Entry entry = (Map.Entry) it2.next();
                if (!hashSet.contains((String) entry.getKey())) {
                    this.zzb.put((String) entry.getKey(), (zzfkt) entry.getValue());
                    it2.remove();
                }
            }
            Iterator it3 = this.zzb.entrySet().iterator();
            while (it3.hasNext()) {
                zzfkt zzfktVar3 = (zzfkt) ((Map.Entry) it3.next()).getValue();
                zzfktVar3.zzw();
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzx)).booleanValue()) {
                    zzfktVar3.zzr();
                }
                if (!zzfktVar3.zzy()) {
                    it3.remove();
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return arrayList;
    }

    private final synchronized void zzp(String str, zzfkt zzfktVar) {
        zzfktVar.zzg();
        this.zza.put(str, zzfktVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized void zzq(boolean z) {
        try {
            if (z) {
                for (zzfkt zzfktVar : this.zza.values()) {
                    zzfktVar.zzu();
                }
            } else {
                for (zzfkt zzfktVar2 : this.zza.values()) {
                    zzfktVar2.zzf.set(false);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized void zzr(boolean z) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzv)).booleanValue()) {
            zzq(z);
        }
    }

    private final synchronized boolean zzs(String str, AdFormat adFormat) {
        boolean z;
        Long l;
        int i;
        try {
            Clock clock = this.zzg;
            long currentTimeMillis = clock.currentTimeMillis();
            zzfkt zzm = zzm(str, adFormat);
            int i2 = 0;
            if (zzm != null && zzm.zzy()) {
                z = true;
            } else {
                z = false;
            }
            String str2 = null;
            if (z) {
                l = Long.valueOf(clock.currentTimeMillis());
            } else {
                l = null;
            }
            zzfkk zzfkkVar = new zzfkk(new zzfki(str, adFormat), null);
            zzfkc zzfkcVar = this.zzd;
            if (zzm == null) {
                i = 0;
            } else {
                i = zzm.zze.zzd;
            }
            if (zzm != null) {
                i2 = zzm.zzd();
            }
            if (zzm != null) {
                str2 = zzm.zzl();
            }
            zzfkcVar.zzb(i, i2, currentTimeMillis, l, str2, zzfkkVar);
        } catch (Throwable th) {
            throw th;
        }
        return z;
    }

    @Nullable
    public final synchronized zzban zza(String str) {
        return (zzban) zzn(zzban.class, str, AdFormat.APP_OPEN_AD);
    }

    @Nullable
    public final synchronized com.google.android.gms.ads.internal.client.zzbx zzb(String str) {
        return (com.google.android.gms.ads.internal.client.zzbx) zzn(com.google.android.gms.ads.internal.client.zzbx.class, str, AdFormat.INTERSTITIAL);
    }

    @Nullable
    public final synchronized zzbwq zzc(String str) {
        return (zzbwq) zzn(zzbwq.class, str, AdFormat.REWARDED);
    }

    public final void zzg(zzbpl zzbplVar) {
        this.zzc.zzb(zzbplVar);
    }

    public final synchronized void zzh(List list, com.google.android.gms.ads.internal.client.zzce zzceVar) {
        try {
            List<com.google.android.gms.ads.internal.client.zzfp> zzo = zzo(list);
            EnumMap enumMap = new EnumMap(AdFormat.class);
            for (com.google.android.gms.ads.internal.client.zzfp zzfpVar : zzo) {
                String str = zzfpVar.zza;
                AdFormat adFormat = AdFormat.getAdFormat(zzfpVar.zzb);
                zzfkt zza = this.zzc.zza(zzfpVar, zzceVar);
                if (adFormat != null && zza != null) {
                    AtomicInteger atomicInteger = this.zzh;
                    if (atomicInteger != null) {
                        zza.zzt(atomicInteger.get());
                    }
                    zzfkc zzfkcVar = this.zzd;
                    zza.zzv(zzfkcVar);
                    zzp(zzd(str, adFormat), zza);
                    enumMap.put((EnumMap) adFormat, (AdFormat) Integer.valueOf(((Integer) com.google.android.gms.ads.internal.util.client.zzf.zze(enumMap, adFormat, 0)).intValue() + 1));
                    zzfkcVar.zzi(zzfpVar.zzd, this.zzg.currentTimeMillis(), new zzfkk(new zzfki(str, adFormat), null));
                }
            }
            this.zzd.zzh(enumMap, this.zzg.currentTimeMillis());
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void zzi() {
        if (this.zzf == null) {
            synchronized (this) {
                if (this.zzf == null) {
                    try {
                        this.zzf = (ConnectivityManager) this.zze.getSystemService("connectivity");
                    } catch (ClassCastException e) {
                        int i = com.google.android.gms.ads.internal.util.zze.zza;
                        com.google.android.gms.ads.internal.util.client.zzo.zzk("Failed to get connectivity manager", e);
                    }
                }
            }
        }
        if (PlatformVersion.isAtLeastO() && this.zzf != null) {
            try {
                this.zzf.registerDefaultNetworkCallback(new zzfkf(this));
            } catch (RuntimeException e2) {
                int i2 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzk("Failed to register network callback", e2);
                this.zzh = new AtomicInteger(((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzB)).intValue());
            }
        } else {
            this.zzh = new AtomicInteger(((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzB)).intValue());
        }
        com.google.android.gms.ads.internal.zzv.zzb().zzc(new zzfke(this));
    }

    public final synchronized boolean zzj(String str) {
        return zzs(str, AdFormat.APP_OPEN_AD);
    }

    public final synchronized boolean zzk(String str) {
        return zzs(str, AdFormat.INTERSTITIAL);
    }

    public final synchronized boolean zzl(String str) {
        return zzs(str, AdFormat.REWARDED);
    }
}
