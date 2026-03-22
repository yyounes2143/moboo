package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.view.View;
import androidx.annotation.Nullable;
import androidx.collection.SimpleArrayMap;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.Collections;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdio {
    private int zza;
    @Nullable
    private com.google.android.gms.ads.internal.client.zzea zzb;
    @Nullable
    private zzbfz zzc;
    @Nullable
    private View zzd;
    @Nullable
    private List zze;
    @Nullable
    private com.google.android.gms.ads.internal.client.zzev zzg;
    @Nullable
    private Bundle zzh;
    @Nullable
    private zzcfb zzi;
    @Nullable
    private zzcfb zzj;
    @Nullable
    private zzcfb zzk;
    @Nullable
    private zzeda zzl;
    @Nullable
    private ListenableFuture zzm;
    @Nullable
    private zzcaf zzn;
    @Nullable
    private View zzo;
    @Nullable
    private View zzp;
    @Nullable
    private IObjectWrapper zzq;
    private double zzr;
    @Nullable
    private zzbgg zzs;
    @Nullable
    private zzbgg zzt;
    @Nullable
    private String zzu;
    private float zzx;
    @Nullable
    private String zzy;
    private final SimpleArrayMap zzv = new SimpleArrayMap();
    private final SimpleArrayMap zzw = new SimpleArrayMap();
    private List zzf = Collections.EMPTY_LIST;

    @Nullable
    public static zzdio zzag(zzbpw zzbpwVar) {
        zzdio zzdioVar;
        try {
            zzdin zzak = zzak(zzbpwVar.zzg(), null);
            zzbfz zzh = zzbpwVar.zzh();
            View view = (View) zzam(zzbpwVar.zzj());
            String zzo = zzbpwVar.zzo();
            List zzr = zzbpwVar.zzr();
            String zzm = zzbpwVar.zzm();
            Bundle zzf = zzbpwVar.zzf();
            String zzn = zzbpwVar.zzn();
            View view2 = (View) zzam(zzbpwVar.zzk());
            IObjectWrapper zzl = zzbpwVar.zzl();
            String zzq = zzbpwVar.zzq();
            String zzp = zzbpwVar.zzp();
            double zze = zzbpwVar.zze();
            zzbgg zzi = zzbpwVar.zzi();
            zzdioVar = null;
            try {
                zzdio zzdioVar2 = new zzdio();
                zzdioVar2.zza = 2;
                zzdioVar2.zzb = zzak;
                zzdioVar2.zzc = zzh;
                zzdioVar2.zzd = view;
                zzdioVar2.zzZ("headline", zzo);
                zzdioVar2.zze = zzr;
                zzdioVar2.zzZ("body", zzm);
                zzdioVar2.zzh = zzf;
                zzdioVar2.zzZ("call_to_action", zzn);
                zzdioVar2.zzo = view2;
                zzdioVar2.zzq = zzl;
                zzdioVar2.zzZ("store", zzq);
                zzdioVar2.zzZ("price", zzp);
                zzdioVar2.zzr = zze;
                zzdioVar2.zzs = zzi;
                return zzdioVar2;
            } catch (RemoteException e) {
                e = e;
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzk("Failed to get native ad from app install ad mapper", e);
                return zzdioVar;
            }
        } catch (RemoteException e2) {
            e = e2;
            zzdioVar = null;
        }
    }

    @Nullable
    public static zzdio zzah(zzbpx zzbpxVar) {
        try {
            zzdin zzak = zzak(zzbpxVar.zzf(), null);
            zzbfz zzg = zzbpxVar.zzg();
            String zzo = zzbpxVar.zzo();
            List zzp = zzbpxVar.zzp();
            String zzm = zzbpxVar.zzm();
            Bundle zze = zzbpxVar.zze();
            String zzn = zzbpxVar.zzn();
            IObjectWrapper zzk = zzbpxVar.zzk();
            String zzl = zzbpxVar.zzl();
            zzbgg zzh = zzbpxVar.zzh();
            zzdio zzdioVar = new zzdio();
            zzdioVar.zza = 1;
            zzdioVar.zzb = zzak;
            zzdioVar.zzc = zzg;
            zzdioVar.zzd = (View) zzam(zzbpxVar.zzi());
            zzdioVar.zzZ("headline", zzo);
            zzdioVar.zze = zzp;
            zzdioVar.zzZ("body", zzm);
            zzdioVar.zzh = zze;
            zzdioVar.zzZ("call_to_action", zzn);
            zzdioVar.zzo = (View) zzam(zzbpxVar.zzj());
            zzdioVar.zzq = zzk;
            zzdioVar.zzZ("advertiser", zzl);
            zzdioVar.zzt = zzh;
            return zzdioVar;
        } catch (RemoteException e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzk("Failed to get native ad from content ad mapper", e);
            return null;
        }
    }

    @Nullable
    public static zzdio zzai(zzbpw zzbpwVar) {
        try {
            return zzal(zzak(zzbpwVar.zzg(), null), zzbpwVar.zzh(), (View) zzam(zzbpwVar.zzj()), zzbpwVar.zzo(), zzbpwVar.zzr(), zzbpwVar.zzm(), zzbpwVar.zzf(), zzbpwVar.zzn(), (View) zzam(zzbpwVar.zzk()), zzbpwVar.zzl(), zzbpwVar.zzq(), zzbpwVar.zzp(), zzbpwVar.zze(), zzbpwVar.zzi(), null, 0.0f);
        } catch (RemoteException e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzk("Failed to get native ad assets from app install ad mapper", e);
            return null;
        }
    }

    @Nullable
    public static zzdio zzaj(zzbpx zzbpxVar) {
        try {
            return zzal(zzak(zzbpxVar.zzf(), null), zzbpxVar.zzg(), (View) zzam(zzbpxVar.zzi()), zzbpxVar.zzo(), zzbpxVar.zzp(), zzbpxVar.zzm(), zzbpxVar.zze(), zzbpxVar.zzn(), (View) zzam(zzbpxVar.zzj()), zzbpxVar.zzk(), null, null, -1.0d, zzbpxVar.zzh(), zzbpxVar.zzl(), 0.0f);
        } catch (RemoteException e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzk("Failed to get native ad assets from content ad mapper", e);
            return null;
        }
    }

    @Nullable
    private static zzdin zzak(@Nullable com.google.android.gms.ads.internal.client.zzea zzeaVar, @Nullable zzbqa zzbqaVar) {
        if (zzeaVar == null) {
            return null;
        }
        return new zzdin(zzeaVar, zzbqaVar);
    }

    private static zzdio zzal(@Nullable com.google.android.gms.ads.internal.client.zzea zzeaVar, zzbfz zzbfzVar, @Nullable View view, String str, List list, String str2, Bundle bundle, String str3, @Nullable View view2, IObjectWrapper iObjectWrapper, @Nullable String str4, @Nullable String str5, double d, zzbgg zzbggVar, @Nullable String str6, float f) {
        zzdio zzdioVar = new zzdio();
        zzdioVar.zza = 6;
        zzdioVar.zzb = zzeaVar;
        zzdioVar.zzc = zzbfzVar;
        zzdioVar.zzd = view;
        zzdioVar.zzZ("headline", str);
        zzdioVar.zze = list;
        zzdioVar.zzZ("body", str2);
        zzdioVar.zzh = bundle;
        zzdioVar.zzZ("call_to_action", str3);
        zzdioVar.zzo = view2;
        zzdioVar.zzq = iObjectWrapper;
        zzdioVar.zzZ("store", str4);
        zzdioVar.zzZ("price", str5);
        zzdioVar.zzr = d;
        zzdioVar.zzs = zzbggVar;
        zzdioVar.zzZ("advertiser", str6);
        zzdioVar.zzR(f);
        return zzdioVar;
    }

    @Nullable
    private static Object zzam(@Nullable IObjectWrapper iObjectWrapper) {
        if (iObjectWrapper == null) {
            return null;
        }
        return ObjectWrapper.unwrap(iObjectWrapper);
    }

    @Nullable
    public static zzdio zzt(zzbqa zzbqaVar) {
        try {
            return zzal(zzak(zzbqaVar.zzj(), zzbqaVar), zzbqaVar.zzk(), (View) zzam(zzbqaVar.zzm()), zzbqaVar.zzs(), zzbqaVar.zzv(), zzbqaVar.zzq(), zzbqaVar.zzi(), zzbqaVar.zzr(), (View) zzam(zzbqaVar.zzn()), zzbqaVar.zzo(), zzbqaVar.zzu(), zzbqaVar.zzt(), zzbqaVar.zze(), zzbqaVar.zzl(), zzbqaVar.zzp(), zzbqaVar.zzf());
        } catch (RemoteException e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzk("Failed to get native ad assets from unified ad mapper", e);
            return null;
        }
    }

    @Nullable
    public final synchronized String zzA() {
        return this.zzu;
    }

    @Nullable
    public final synchronized String zzB() {
        return zzF("headline");
    }

    @Nullable
    public final synchronized String zzC() {
        return this.zzy;
    }

    @Nullable
    public final synchronized String zzD() {
        return zzF("price");
    }

    @Nullable
    public final synchronized String zzE() {
        return zzF("store");
    }

    @Nullable
    public final synchronized String zzF(String str) {
        return (String) this.zzw.get(str);
    }

    @Nullable
    public final synchronized List zzG() {
        return this.zze;
    }

    public final synchronized List zzH() {
        return this.zzf;
    }

    public final synchronized void zzI() {
        try {
            zzcfb zzcfbVar = this.zzi;
            if (zzcfbVar != null) {
                zzcfbVar.destroy();
                this.zzi = null;
            }
            zzcfb zzcfbVar2 = this.zzj;
            if (zzcfbVar2 != null) {
                zzcfbVar2.destroy();
                this.zzj = null;
            }
            zzcfb zzcfbVar3 = this.zzk;
            if (zzcfbVar3 != null) {
                zzcfbVar3.destroy();
                this.zzk = null;
            }
            ListenableFuture listenableFuture = this.zzm;
            if (listenableFuture != null) {
                listenableFuture.cancel(false);
                this.zzm = null;
            }
            zzcaf zzcafVar = this.zzn;
            if (zzcafVar != null) {
                zzcafVar.cancel(false);
                this.zzn = null;
            }
            this.zzl = null;
            this.zzv.clear();
            this.zzw.clear();
            this.zzb = null;
            this.zzc = null;
            this.zzd = null;
            this.zze = null;
            this.zzh = null;
            this.zzo = null;
            this.zzp = null;
            this.zzq = null;
            this.zzs = null;
            this.zzt = null;
            this.zzu = null;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void zzJ(zzbfz zzbfzVar) {
        this.zzc = zzbfzVar;
    }

    public final synchronized void zzK(String str) {
        this.zzu = str;
    }

    public final synchronized void zzL(@Nullable com.google.android.gms.ads.internal.client.zzev zzevVar) {
        this.zzg = zzevVar;
    }

    public final synchronized void zzM(zzbgg zzbggVar) {
        this.zzs = zzbggVar;
    }

    public final synchronized void zzN(String str, zzbft zzbftVar) {
        if (zzbftVar == null) {
            this.zzv.remove(str);
        } else {
            this.zzv.put(str, zzbftVar);
        }
    }

    public final synchronized void zzO(zzcfb zzcfbVar) {
        this.zzj = zzcfbVar;
    }

    public final synchronized void zzP(List list) {
        this.zze = list;
    }

    public final synchronized void zzQ(zzbgg zzbggVar) {
        this.zzt = zzbggVar;
    }

    public final synchronized void zzR(float f) {
        this.zzx = f;
    }

    public final synchronized void zzS(List list) {
        this.zzf = list;
    }

    public final synchronized void zzT(zzcfb zzcfbVar) {
        this.zzk = zzcfbVar;
    }

    public final synchronized void zzU(ListenableFuture listenableFuture) {
        this.zzm = listenableFuture;
    }

    public final synchronized void zzV(@Nullable String str) {
        this.zzy = str;
    }

    public final synchronized void zzW(zzeda zzedaVar) {
        this.zzl = zzedaVar;
    }

    public final synchronized void zzX(zzcaf zzcafVar) {
        this.zzn = zzcafVar;
    }

    public final synchronized void zzY(double d) {
        this.zzr = d;
    }

    public final synchronized void zzZ(String str, @Nullable String str2) {
        if (str2 == null) {
            this.zzw.remove(str);
        } else {
            this.zzw.put(str, str2);
        }
    }

    public final synchronized double zza() {
        return this.zzr;
    }

    public final synchronized void zzaa(int i) {
        this.zza = i;
    }

    public final synchronized void zzab(com.google.android.gms.ads.internal.client.zzea zzeaVar) {
        this.zzb = zzeaVar;
    }

    public final synchronized void zzac(View view) {
        this.zzo = view;
    }

    public final synchronized void zzad(zzcfb zzcfbVar) {
        this.zzi = zzcfbVar;
    }

    public final synchronized void zzae(View view) {
        this.zzp = view;
    }

    public final synchronized boolean zzaf() {
        if (this.zzj != null) {
            return true;
        }
        return false;
    }

    public final synchronized float zzb() {
        return this.zzx;
    }

    public final synchronized int zzc() {
        return this.zza;
    }

    public final synchronized Bundle zzd() {
        try {
            if (this.zzh == null) {
                this.zzh = new Bundle();
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.zzh;
    }

    @Nullable
    public final synchronized View zze() {
        return this.zzd;
    }

    @Nullable
    public final synchronized View zzf() {
        return this.zzo;
    }

    @Nullable
    public final synchronized View zzg() {
        return this.zzp;
    }

    @Nullable
    public final synchronized SimpleArrayMap zzh() {
        return this.zzv;
    }

    public final synchronized SimpleArrayMap zzi() {
        return this.zzw;
    }

    @Nullable
    public final synchronized com.google.android.gms.ads.internal.client.zzea zzj() {
        return this.zzb;
    }

    @Nullable
    public final synchronized com.google.android.gms.ads.internal.client.zzev zzk() {
        return this.zzg;
    }

    @Nullable
    public final synchronized zzbfz zzl() {
        return this.zzc;
    }

    @Nullable
    public final zzbgg zzm() {
        List list = this.zze;
        if (list != null && !list.isEmpty()) {
            Object obj = this.zze.get(0);
            if (obj instanceof IBinder) {
                return zzbgf.zzg((IBinder) obj);
            }
            return null;
        }
        return null;
    }

    @Nullable
    public final synchronized zzbgg zzn() {
        return this.zzs;
    }

    @Nullable
    public final synchronized zzbgg zzo() {
        return this.zzt;
    }

    @Nullable
    public final synchronized zzcaf zzp() {
        return this.zzn;
    }

    @Nullable
    public final synchronized zzcfb zzq() {
        return this.zzj;
    }

    @Nullable
    public final synchronized zzcfb zzr() {
        return this.zzk;
    }

    @Nullable
    public final synchronized zzcfb zzs() {
        return this.zzi;
    }

    @Nullable
    public final synchronized zzeda zzu() {
        return this.zzl;
    }

    @Nullable
    public final synchronized IObjectWrapper zzv() {
        return this.zzq;
    }

    @Nullable
    public final synchronized ListenableFuture zzw() {
        return this.zzm;
    }

    @Nullable
    public final synchronized String zzx() {
        return zzF("advertiser");
    }

    @Nullable
    public final synchronized String zzy() {
        return zzF("body");
    }

    @Nullable
    public final synchronized String zzz() {
        return zzF("call_to_action");
    }
}
