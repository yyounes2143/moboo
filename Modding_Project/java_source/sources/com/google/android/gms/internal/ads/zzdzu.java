package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import android.os.Bundle;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.util.IOUtils;
import com.google.common.util.concurrent.ListenableFuture;
import j$.util.Objects;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.concurrent.Callable;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdzu extends zzbuy {
    private final Context zza;
    private final zzgdj zzb;
    private final zzeac zzc;
    private final zzcla zzd;
    private final ArrayDeque zze;
    private final zzfhq zzf;
    private final zzbvt zzg;

    public zzdzu(Context context, zzgdj zzgdjVar, zzbvt zzbvtVar, zzcla zzclaVar, zzeac zzeacVar, ArrayDeque arrayDeque, zzdzz zzdzzVar, zzfhq zzfhqVar) {
        zzbcv.zza(context);
        this.zza = context;
        this.zzb = zzgdjVar;
        this.zzg = zzbvtVar;
        this.zzc = zzeacVar;
        this.zzd = zzclaVar;
        this.zze = arrayDeque;
        this.zzf = zzfhqVar;
    }

    public static /* synthetic */ InputStream zzk(zzdzu zzdzuVar, ListenableFuture listenableFuture, ListenableFuture listenableFuture2, zzbvl zzbvlVar, zzfhc zzfhcVar) {
        String zze = ((zzbvn) listenableFuture.get()).zze();
        String str = zzbvlVar.zzh;
        zzdzuVar.zzo(new zzdzr((zzbvn) listenableFuture.get(), (JSONObject) listenableFuture2.get(), str, zze, zzfhcVar));
        return new ByteArrayInputStream(zze.getBytes(StandardCharsets.UTF_8));
    }

    @Nullable
    private final synchronized zzdzr zzl(String str) {
        Iterator it = this.zze.iterator();
        while (it.hasNext()) {
            zzdzr zzdzrVar = (zzdzr) it.next();
            if (zzdzrVar.zzc.equals(str)) {
                it.remove();
                return zzdzrVar;
            }
        }
        return null;
    }

    private static ListenableFuture zzm(ListenableFuture listenableFuture, zzfgt zzfgtVar, zzbon zzbonVar, zzfhn zzfhnVar, zzfhc zzfhcVar) {
        zzbod zza = zzbonVar.zza("AFMA_getAdDictionary", zzbok.zza, new zzbof() { // from class: com.google.android.gms.internal.ads.zzdzl
            @Override // com.google.android.gms.internal.ads.zzbof
            public final Object zza(JSONObject jSONObject) {
                return new zzbvn(jSONObject);
            }
        });
        zzfhm.zzd(listenableFuture, zzfhcVar);
        zzffz zza2 = zzfgtVar.zzb(zzfgn.BUILD_URL, listenableFuture).zzf(zza).zza();
        zzfhm.zzc(zza2, zzfhnVar, zzfhcVar);
        return zza2;
    }

    private static ListenableFuture zzn(final zzbvl zzbvlVar, zzfgt zzfgtVar, final zzeuy zzeuyVar) {
        zzgcf zzgcfVar = new zzgcf() { // from class: com.google.android.gms.internal.ads.zzdzf
            @Override // com.google.android.gms.internal.ads.zzgcf
            public final ListenableFuture zza(Object obj) {
                return zzeuy.this.zzb().zza(com.google.android.gms.ads.internal.client.zzbb.zzb().zzj((Bundle) obj), zzbvlVar.zzm, false);
            }
        };
        return zzfgtVar.zzb(zzfgn.GMS_SIGNALS, zzgcy.zzh(zzbvlVar.zza)).zzf(zzgcfVar).zze(new zzffx() { // from class: com.google.android.gms.internal.ads.zzdzg
            @Override // com.google.android.gms.internal.ads.zzffx
            public final Object zza(Object obj) {
                JSONObject jSONObject = (JSONObject) obj;
                com.google.android.gms.ads.internal.util.zze.zza("Ad request signals:");
                com.google.android.gms.ads.internal.util.zze.zza(jSONObject.toString(2));
                return jSONObject;
            }
        }).zza();
    }

    private final synchronized void zzo(zzdzr zzdzrVar) {
        zzp();
        this.zze.addLast(zzdzrVar);
    }

    private final synchronized void zzp() {
        int intValue = ((Long) zzbfc.zzb.zze()).intValue();
        while (true) {
            ArrayDeque arrayDeque = this.zze;
            if (arrayDeque.size() >= intValue) {
                arrayDeque.removeFirst();
            }
        }
    }

    private final void zzq(ListenableFuture listenableFuture, zzbvd zzbvdVar, zzbvl zzbvlVar) {
        zzgcy.zzr(zzgcy.zzn(listenableFuture, new zzgcf(this) { // from class: com.google.android.gms.internal.ads.zzdzm
            @Override // com.google.android.gms.internal.ads.zzgcf
            public final ListenableFuture zza(Object obj) {
                final InputStream inputStream = (InputStream) obj;
                ParcelFileDescriptor[] createPipe = ParcelFileDescriptor.createPipe();
                ParcelFileDescriptor parcelFileDescriptor = createPipe[0];
                final ParcelFileDescriptor parcelFileDescriptor2 = createPipe[1];
                zzcaa.zza.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfdp
                    @Override // java.lang.Runnable
                    public final void run() {
                        InputStream inputStream2 = inputStream;
                        try {
                            ParcelFileDescriptor.AutoCloseOutputStream autoCloseOutputStream = new ParcelFileDescriptor.AutoCloseOutputStream(parcelFileDescriptor2);
                            IOUtils.copyStream(inputStream2, autoCloseOutputStream);
                            autoCloseOutputStream.close();
                            if (inputStream2 != null) {
                                inputStream2.close();
                            }
                        } catch (IOException unused) {
                        }
                    }
                });
                return zzgcy.zzh(parcelFileDescriptor);
            }
        }, zzcaa.zza), new zzdzq(this, zzbvlVar, zzbvdVar), zzcaa.zzg);
    }

    public final ListenableFuture zzb(final zzbvl zzbvlVar, int i) {
        if (!((Boolean) zzbfc.zza.zze()).booleanValue()) {
            return zzgcy.zzg(new Exception("Split request is disabled."));
        }
        zzfej zzfejVar = zzbvlVar.zzi;
        if (zzfejVar == null) {
            return zzgcy.zzg(new Exception("Pool configuration missing from request."));
        }
        if (zzfejVar.zzc != 0 && zzfejVar.zzd != 0) {
            Context context = this.zza;
            zzbon zzb = com.google.android.gms.ads.internal.zzv.zzg().zzb(context, VersionInfoParcel.forPackage(), this.zzf);
            zzeuy zzq = this.zzd.zzq(zzbvlVar, i);
            zzfgt zze = zzq.zze();
            final ListenableFuture zzn = zzn(zzbvlVar, zze, zzq);
            zzfhn zzf = zzq.zzf();
            final zzfhc zza = zzfhb.zza(context, 9);
            final ListenableFuture zzm = zzm(zzn, zze, zzb, zzf, zza);
            return zze.zza(zzfgn.GET_URL_AND_CACHE_KEY, zzn, zzm).zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzdzj
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return zzdzu.zzk(zzdzu.this, zzm, zzn, zzbvlVar, zza);
                }
            }).zza();
        }
        return zzgcy.zzg(new Exception("Caching is disabled."));
    }

    public final ListenableFuture zzc(final zzbvl zzbvlVar, int i) {
        zzdzr zzl;
        zzfhc zzfhcVar;
        zzffz zza;
        zzboe zzg = com.google.android.gms.ads.internal.zzv.zzg();
        Context context = this.zza;
        zzbon zzb = zzg.zzb(context, VersionInfoParcel.forPackage(), this.zzf);
        zzeuy zzq = this.zzd.zzq(zzbvlVar, i);
        zzbod zza2 = zzb.zza("google.afma.response.normalize", zzdzt.zza, zzbok.zzb);
        if (!((Boolean) zzbfc.zza.zze()).booleanValue()) {
            String str = zzbvlVar.zzj;
            zzl = null;
            if (str != null && !str.isEmpty()) {
                com.google.android.gms.ads.internal.util.zze.zza("Request contained a PoolKey but split request is disabled.");
            }
        } else {
            zzl = zzl(zzbvlVar.zzh);
            if (zzl == null) {
                com.google.android.gms.ads.internal.util.zze.zza("Request contained a PoolKey but no matching parameters were found.");
            }
        }
        if (zzl == null) {
            zzfhcVar = zzfhb.zza(context, 9);
        } else {
            zzfhcVar = zzl.zzd;
        }
        zzfhn zzf = zzq.zzf();
        zzf.zzd(zzbvlVar.zza.getStringArrayList("ad_types"));
        zzeab zzeabVar = new zzeab(zzbvlVar.zzg, zzf, zzfhcVar);
        zzdzy zzdzyVar = new zzdzy(context, zzbvlVar.zzb.afmaVersion, this.zzg, i);
        zzfgt zze = zzq.zze();
        zzfhc zza3 = zzfhb.zza(context, 11);
        if (zzl == null) {
            final ListenableFuture zzn = zzn(zzbvlVar, zze, zzq);
            final ListenableFuture zzm = zzm(zzn, zze, zzb, zzf, zzfhcVar);
            zzfhc zza4 = zzfhb.zza(context, 10);
            final zzffz zza5 = zze.zza(zzfgn.HTTP, zzm, zzn).zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzdzh
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    Bundle bundle;
                    zzbvn zzbvnVar = (zzbvn) ListenableFuture.this.get();
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzcq)).booleanValue() && (bundle = zzbvlVar.zzm) != null) {
                        bundle.putLong(zzdrl.GET_AD_DICTIONARY_SDKCORE_START.zza(), zzbvnVar.zzc());
                        bundle.putLong(zzdrl.GET_AD_DICTIONARY_SDKCORE_END.zza(), zzbvnVar.zzb());
                    }
                    return new zzeaa((JSONObject) zzn.get(), zzbvnVar);
                }
            }).zze(zzeabVar).zze(new zzfhi(zza4)).zze(zzdzyVar).zza();
            zzfhm.zza(zza5, zzf, zza4);
            zzfhm.zzd(zza5, zza3);
            zza = zze.zza(zzfgn.PRE_PROCESS, zzn, zzm, zza5).zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzdzi
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    Bundle bundle;
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzcq)).booleanValue() && (bundle = zzbvl.this.zzm) != null) {
                        bundle.putLong(zzdrl.HTTP_RESPONSE_READY.zza(), com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis());
                    }
                    return new zzdzt((zzdzx) zza5.get(), (JSONObject) zzn.get(), (zzbvn) zzm.get());
                }
            }).zzf(zza2).zza();
        } else {
            zzeaa zzeaaVar = new zzeaa(zzl.zzb, zzl.zza);
            zzfhc zza6 = zzfhb.zza(context, 10);
            final zzffz zza7 = zze.zzb(zzfgn.HTTP, zzgcy.zzh(zzeaaVar)).zze(zzeabVar).zze(new zzfhi(zza6)).zze(zzdzyVar).zza();
            zzfhm.zza(zza7, zzf, zza6);
            final ListenableFuture zzh = zzgcy.zzh(zzl);
            zzfhm.zzd(zza7, zza3);
            zza = zze.zza(zzfgn.PRE_PROCESS, zza7, zzh).zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzdze
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    ListenableFuture listenableFuture = zzh;
                    return new zzdzt((zzdzx) ListenableFuture.this.get(), ((zzdzr) listenableFuture.get()).zzb, ((zzdzr) listenableFuture.get()).zza);
                }
            }).zzf(zza2).zza();
        }
        zzfhm.zza(zza, zzf, zza3);
        return zza;
    }

    public final ListenableFuture zzd(final zzbvl zzbvlVar, int i) {
        zzboe zzg = com.google.android.gms.ads.internal.zzv.zzg();
        Context context = this.zza;
        zzbon zzb = zzg.zzb(context, VersionInfoParcel.forPackage(), this.zzf);
        if (!((Boolean) zzbfh.zza.zze()).booleanValue()) {
            return zzgcy.zzg(new Exception("Signal collection disabled."));
        }
        zzeuy zzq = this.zzd.zzq(zzbvlVar, i);
        final zzety zza = zzq.zza();
        zzbod zza2 = zzb.zza("google.afma.request.getSignals", zzbok.zza, zzbok.zzb);
        zzfhc zza3 = zzfhb.zza(context, 22);
        zzfgt zze = zzq.zze();
        zzfgn zzfgnVar = zzfgn.GET_SIGNALS;
        Bundle bundle = zzbvlVar.zza;
        zzffz zza4 = zze.zzb(zzfgnVar, zzgcy.zzh(bundle)).zze(new zzfhi(zza3)).zzf(new zzgcf() { // from class: com.google.android.gms.internal.ads.zzdzn
            @Override // com.google.android.gms.internal.ads.zzgcf
            public final ListenableFuture zza(Object obj) {
                return zzety.this.zza(com.google.android.gms.ads.internal.client.zzbb.zzb().zzj((Bundle) obj), zzbvlVar.zzm, false);
            }
        }).zzb(zzfgn.JS_SIGNALS).zzf(zza2).zza();
        zzfhn zzf = zzq.zzf();
        zzf.zzd(bundle.getStringArrayList("ad_types"));
        zzf.zzf(bundle.getBundle("extras"));
        zzfhm.zzb(zza4, zzf, zza3);
        if (((Boolean) zzbev.zzf.zze()).booleanValue()) {
            zzeac zzeacVar = this.zzc;
            Objects.requireNonNull(zzeacVar);
            zza4.addListener(new zzdzk(zzeacVar), this.zzb);
        }
        return zza4;
    }

    @Override // com.google.android.gms.internal.ads.zzbuz
    public final void zze(zzbvl zzbvlVar, zzbvd zzbvdVar) {
        zzq(zzb(zzbvlVar, Binder.getCallingUid()), zzbvdVar, zzbvlVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbuz
    public final void zzf(zzbvl zzbvlVar, zzbvd zzbvdVar) {
        Bundle bundle;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzcq)).booleanValue() && (bundle = zzbvlVar.zzm) != null) {
            bundle.putLong(zzdrl.SERVICE_CONNECTED.zza(), com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis());
        }
        zzq(zzd(zzbvlVar, Binder.getCallingUid()), zzbvdVar, zzbvlVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbuz
    public final void zzg(zzbvl zzbvlVar, zzbvd zzbvdVar) {
        Bundle bundle;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzcq)).booleanValue() && (bundle = zzbvlVar.zzm) != null) {
            bundle.putLong(zzdrl.SERVICE_CONNECTED.zza(), com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis());
        }
        ListenableFuture zzc = zzc(zzbvlVar, Binder.getCallingUid());
        zzq(zzc, zzbvdVar, zzbvlVar);
        if (((Boolean) zzbev.zze.zze()).booleanValue()) {
            zzeac zzeacVar = this.zzc;
            Objects.requireNonNull(zzeacVar);
            zzc.addListener(new zzdzk(zzeacVar), this.zzb);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbuz
    public final void zzh(String str, zzbvd zzbvdVar) {
        zzq(zzj(str), zzbvdVar, null);
    }

    @Override // com.google.android.gms.internal.ads.zzbuz
    public final void zzi(zzbuv zzbuvVar, zzbve zzbveVar) {
        if (!((Boolean) zzbfj.zza.zze()).booleanValue()) {
            try {
                zzbveVar.zzf("", zzbuvVar);
                return;
            } catch (RemoteException e) {
                com.google.android.gms.ads.internal.util.zze.zzb("Service can't call client", e);
                return;
            }
        }
        this.zzd.zzD();
        String str = zzbuvVar.zza;
        zzgcy.zzr(zzgcy.zzh(null), new zzdzo(this, zzbveVar, zzbuvVar), zzcaa.zzg);
    }

    public final ListenableFuture zzj(String str) {
        if (!((Boolean) zzbfc.zza.zze()).booleanValue()) {
            return zzgcy.zzg(new Exception("Split request is disabled."));
        }
        zzdzp zzdzpVar = new zzdzp(this);
        if (zzl(str) == null) {
            return zzgcy.zzg(new Exception("URL to be removed not found for cache key: ".concat(String.valueOf(str))));
        }
        return zzgcy.zzh(zzdzpVar);
    }
}
