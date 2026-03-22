package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import androidx.annotation.AnyThread;
import androidx.annotation.Nullable;
import androidx.collection.ArrayMap;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import j$.util.Objects;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdij extends zzcqx {
    public static final zzfyc zzc = zzfyc.zzs("3010", "3008", "1005", "1009", "2011", "2007");
    private final List zzA;
    private final Executor zzd;
    private final zzdio zze;
    private final zzdiw zzf;
    private final zzdjo zzg;
    private final zzdit zzh;
    private final zzdiz zzi;
    private final zzhfp zzj;
    private final zzhfp zzk;
    private final zzhfp zzl;
    private final zzhfp zzm;
    private final zzhfp zzn;
    @Nullable
    private zzdkm zzo;
    private boolean zzp;
    private boolean zzq;
    private boolean zzr;
    private boolean zzs;
    private final zzbyf zzt;
    private final zzavl zzu;
    private final VersionInfoParcel zzv;
    private final Context zzw;
    private final zzdil zzx;
    private final zzeku zzy;
    private final Map zzz;

    public zzdij(zzcqw zzcqwVar, Executor executor, zzdio zzdioVar, zzdiw zzdiwVar, zzdjo zzdjoVar, zzdit zzditVar, zzdiz zzdizVar, zzhfp zzhfpVar, zzhfp zzhfpVar2, zzhfp zzhfpVar3, zzhfp zzhfpVar4, zzhfp zzhfpVar5, zzbyf zzbyfVar, zzavl zzavlVar, VersionInfoParcel versionInfoParcel, Context context, zzdil zzdilVar, zzeku zzekuVar, zzayw zzaywVar) {
        super(zzcqwVar);
        this.zzd = executor;
        this.zze = zzdioVar;
        this.zzf = zzdiwVar;
        this.zzg = zzdjoVar;
        this.zzh = zzditVar;
        this.zzi = zzdizVar;
        this.zzj = zzhfpVar;
        this.zzk = zzhfpVar2;
        this.zzl = zzhfpVar3;
        this.zzm = zzhfpVar4;
        this.zzn = zzhfpVar5;
        this.zzt = zzbyfVar;
        this.zzu = zzavlVar;
        this.zzv = versionInfoParcel;
        this.zzw = context;
        this.zzx = zzdilVar;
        this.zzy = zzekuVar;
        this.zzz = new HashMap();
        this.zzA = new ArrayList();
    }

    public static boolean zzY(View view) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzkS)).booleanValue()) {
            com.google.android.gms.ads.internal.zzv.zzr();
            long zzx = com.google.android.gms.ads.internal.util.zzs.zzx(view);
            if (view.isShown() && view.getGlobalVisibleRect(new Rect(), new Point())) {
                if (zzx >= ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzkT)).intValue()) {
                    return true;
                }
            }
            return false;
        } else if (!view.isShown() || !view.getGlobalVisibleRect(new Rect(), new Point())) {
            return false;
        } else {
            return true;
        }
    }

    @Nullable
    private final synchronized View zzaa(Map map) {
        if (map != null) {
            zzfyc zzfycVar = zzc;
            int size = zzfycVar.size();
            int i = 0;
            while (i < size) {
                WeakReference weakReference = (WeakReference) map.get((String) zzfycVar.get(i));
                i++;
                if (weakReference != null) {
                    return (View) weakReference.get();
                }
            }
        }
        return null;
    }

    @Nullable
    private final synchronized ImageView.ScaleType zzab() {
        zzdkm zzdkmVar = this.zzo;
        if (zzdkmVar == null) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zze("Ad should be associated with an ad view before calling getMediaviewScaleType()");
            return null;
        }
        IObjectWrapper zzj = zzdkmVar.zzj();
        if (zzj != null) {
            return (ImageView.ScaleType) ObjectWrapper.unwrap(zzj);
        }
        return zzdjo.zza;
    }

    private final void zzac(String str, boolean z) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzfD)).booleanValue()) {
            ListenableFuture zzw = this.zze.zzw();
            if (zzw == null) {
                return;
            }
            zzgcy.zzr(zzw, new zzdih(this, "Google", true), this.zzd);
            return;
        }
        zzf("Google", true);
    }

    private final synchronized void zzad(View view, Map map, Map map2) {
        View zzaa;
        Rect rect;
        if (!this.zzr && (zzaa = zzaa(map)) != null) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zznD)).booleanValue()) {
                Rect rect2 = new Rect();
                if (zzaa.getGlobalVisibleRect(rect2, new Point()) && zzaa.getHeight() == rect2.height() && zzaa.getWidth() == rect2.width()) {
                    this.zzf.zzr(view, map, map2, zzab());
                    this.zzr = true;
                }
            } else if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zznE)).booleanValue()) {
                if (zzY(zzaa)) {
                    this.zzf.zzr(view, map, map2, zzab());
                    this.zzr = true;
                }
            } else {
                zzbcm zzbcmVar = zzbcv.zznF;
                if (((Float) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcmVar)).floatValue() > FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE) {
                    double floatValue = ((Float) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcmVar)).floatValue();
                    if (zzaa.getGlobalVisibleRect(new Rect(), new Point())) {
                        if (rect.height() * rect.width() >= zzaa.getHeight() * zzaa.getWidth() * (floatValue / 100.0d)) {
                            this.zzf.zzr(view, map, map2, zzab());
                            this.zzr = true;
                        }
                    }
                }
            }
        }
    }

    private final synchronized void zzae(View view, Map map, Map map2) {
        this.zzg.zzd(this.zzo);
        this.zzf.zzt(view, map, map2, zzab());
        this.zzq = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzaf(View view, @Nullable zzeda zzedaVar) {
        zzcfb zzr = this.zze.zzr();
        if (this.zzh.zzd() && zzedaVar != null && zzr != null && view != null) {
            com.google.android.gms.ads.internal.zzv.zzC().zzj(zzedaVar.zza(), view);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized void zzag(zzdkm zzdkmVar) {
        Iterator<String> keys;
        WeakReference weakReference;
        View view;
        zzavg zzc2;
        try {
            if (!this.zzp) {
                this.zzo = zzdkmVar;
                this.zzg.zze(zzdkmVar);
                this.zzf.zzB(zzdkmVar.zzf(), zzdkmVar.zzm(), zzdkmVar.zzn(), zzdkmVar, zzdkmVar);
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzcT)).booleanValue() && (zzc2 = this.zzu.zzc()) != null) {
                    zzc2.zzo(zzdkmVar.zzf());
                }
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzbW)).booleanValue()) {
                    zzfbu zzfbuVar = this.zzb;
                    if (zzfbuVar.zzak && (keys = zzfbuVar.zzaj.keys()) != null) {
                        while (keys.hasNext()) {
                            String next = keys.next();
                            zzdkm zzdkmVar2 = this.zzo;
                            if (zzdkmVar2 == null) {
                                weakReference = null;
                            } else {
                                weakReference = (WeakReference) zzdkmVar2.zzl().get(next);
                            }
                            this.zzz.put(next, Boolean.FALSE);
                            if (weakReference != null && (view = (View) weakReference.get()) != null) {
                                zzayv zzayvVar = new zzayv(this.zzw, view);
                                this.zzA.add(zzayvVar);
                                zzayvVar.zzd(new zzdig(this, next));
                            }
                        }
                    }
                }
                if (zzdkmVar.zzi() != null) {
                    zzdkmVar.zzi().zzd(this.zzt);
                }
            }
        } finally {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzah(zzdkm zzdkmVar) {
        this.zzf.zzC(zzdkmVar.zzf(), zzdkmVar.zzl());
        if (zzdkmVar.zzh() != null) {
            zzdkmVar.zzh().setClickable(false);
            zzdkmVar.zzh().removeAllViews();
        }
        if (zzdkmVar.zzi() != null) {
            zzdkmVar.zzi().zze(this.zzt);
        }
        this.zzo = null;
    }

    public static /* synthetic */ void zzs(zzdij zzdijVar, boolean z) {
        zzdkm zzdkmVar = zzdijVar.zzo;
        if (zzdkmVar == null) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zze("Ad should be associated with an ad view before calling recordCustomClickGesture()");
            return;
        }
        zzdijVar.zzf.zzq(null, zzdkmVar.zzf(), zzdijVar.zzo.zzl(), zzdijVar.zzo.zzm(), z, zzdijVar.zzab(), 0);
    }

    public static /* synthetic */ void zzt(zzdij zzdijVar) {
        try {
            zzdio zzdioVar = zzdijVar.zze;
            int zzc2 = zzdioVar.zzc();
            if (zzc2 != 1) {
                if (zzc2 != 2) {
                    if (zzc2 != 3) {
                        if (zzc2 != 6) {
                            if (zzc2 != 7) {
                                int i = com.google.android.gms.ads.internal.util.zze.zza;
                                com.google.android.gms.ads.internal.util.client.zzo.zzg("Wrong native template id!");
                                return;
                            }
                            zzbmp zzg = zzdijVar.zzi.zzg();
                            if (zzg != null) {
                                zzg.zzg((zzbmj) zzdijVar.zzm.zzb());
                                return;
                            }
                            return;
                        }
                        zzbhu zzf = zzdijVar.zzi.zzf();
                        if (zzf != null) {
                            zzdijVar.zzac("Google", true);
                            zzf.zze((zzbia) zzdijVar.zzl.zzb());
                            return;
                        }
                        return;
                    }
                    zzbhn zzd = zzdijVar.zzi.zzd(zzdioVar.zzA());
                    if (zzd != null) {
                        if (zzdioVar.zzs() != null) {
                            zzdijVar.zzf("Google", true);
                        }
                        zzd.zze((zzbha) zzdijVar.zzn.zzb());
                        return;
                    }
                    return;
                }
                zzbhe zza = zzdijVar.zzi.zza();
                if (zza != null) {
                    zzdijVar.zzac("Google", true);
                    zza.zze((zzbgv) zzdijVar.zzk.zzb());
                    return;
                }
                return;
            }
            zzbhh zzb = zzdijVar.zzi.zzb();
            if (zzb != null) {
                zzdijVar.zzac("Google", true);
                zzb.zze((zzbgx) zzdijVar.zzj.zzb());
            }
        } catch (RemoteException e) {
            int i2 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzh("RemoteException when notifyAdLoad is called", e);
        }
    }

    public static /* synthetic */ void zzu(zzdij zzdijVar, View view, boolean z, int i) {
        zzdkm zzdkmVar = zzdijVar.zzo;
        if (zzdkmVar == null) {
            int i2 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zze("Ad should be associated with an ad view before calling performClickForCustomGesture()");
            return;
        }
        zzdijVar.zzf.zzq(view, zzdkmVar.zzf(), zzdijVar.zzo.zzl(), zzdijVar.zzo.zzm(), z, zzdijVar.zzab(), i);
    }

    public static /* synthetic */ void zzv(zzdij zzdijVar) {
        zzdijVar.zzf.zzk();
        zzdijVar.zze.zzI();
    }

    public final synchronized void zzA() {
        this.zzf.zzj();
    }

    public final synchronized void zzB(View view, Map map, Map map2, boolean z) {
        if (this.zzq) {
            zzad(view, map, map2);
            return;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzbW)).booleanValue() && this.zzb.zzak) {
            Map map3 = this.zzz;
            for (String str : map3.keySet()) {
                if (!((Boolean) map3.get(str)).booleanValue()) {
                    break;
                }
            }
        }
        if (!z) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzeh)).booleanValue() && map != null) {
                for (Map.Entry entry : map.entrySet()) {
                    View view2 = (View) ((WeakReference) entry.getValue()).get();
                    if (view2 != null && zzY(view2)) {
                        zzae(view, map, map2);
                        return;
                    }
                }
            }
            return;
        }
        zzae(view, map, map2);
        zzad(view, map, map2);
    }

    public final synchronized void zzC(@Nullable com.google.android.gms.ads.internal.client.zzdg zzdgVar) {
        this.zzf.zzl(zzdgVar);
    }

    public final synchronized void zzD(View view, View view2, Map map, Map map2, boolean z) {
        zzcfb zzs;
        this.zzg.zzc(this.zzo);
        this.zzf.zzm(view, view2, map, map2, z, zzab());
        if (this.zzs) {
            zzdio zzdioVar = this.zze;
            if (zzdioVar.zzs() != null && (zzs = zzdioVar.zzs()) != null) {
                zzs.zzd("onSdkAdUserInteractionClick", new ArrayMap());
            }
        }
    }

    public final synchronized void zzE(@Nullable final View view, final int i) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzlO)).booleanValue()) {
            return;
        }
        zzdkm zzdkmVar = this.zzo;
        if (zzdkmVar == null) {
            int i2 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zze("Ad should be associated with an ad view before calling performClickForCustomGesture()");
            return;
        }
        final boolean z = zzdkmVar instanceof zzdji;
        this.zzd.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdid
            @Override // java.lang.Runnable
            public final void run() {
                zzdij.zzu(zzdij.this, view, z, i);
            }
        });
    }

    public final synchronized void zzF(String str) {
        this.zzf.zzn(str);
    }

    public final synchronized void zzG(Bundle bundle) {
        this.zzf.zzo(bundle);
    }

    public final synchronized void zzH() {
        zzdkm zzdkmVar = this.zzo;
        if (zzdkmVar == null) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zze("Ad should be associated with an ad view before calling recordCustomClickGesture()");
            return;
        }
        final boolean z = zzdkmVar instanceof zzdji;
        this.zzd.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdif
            @Override // java.lang.Runnable
            public final void run() {
                zzdij.zzs(zzdij.this, z);
            }
        });
    }

    public final void zzI(Bundle bundle) {
        final zzcfb zzs = this.zze.zzs();
        if (zzs == null) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzg("Video webview is null");
            return;
        }
        try {
            final JSONObject jSONObject = new JSONObject();
            for (String str : bundle.keySet()) {
                jSONObject.put(str, bundle.get(str));
            }
            this.zzd.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdic
                @Override // java.lang.Runnable
                public final void run() {
                    zzfyc zzfycVar = zzdij.zzc;
                    zzcfb.this.zze("onVideoEvent", jSONObject);
                }
            });
        } catch (JSONException e) {
            int i2 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzh("Error reading event signals", e);
        }
    }

    public final synchronized void zzJ() {
        if (this.zzq) {
            return;
        }
        this.zzf.zzu();
    }

    public final void zzK(View view) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzfD)).booleanValue()) {
            zzdio zzdioVar = this.zze;
            if (zzdioVar.zzc() != 3) {
                zzcaf zzp = zzdioVar.zzp();
                if (zzp == null) {
                    return;
                }
                zzgcy.zzr(zzp, new zzdii(this, view), this.zzd);
                return;
            }
        }
        zzaf(view, this.zze.zzu());
    }

    public final synchronized void zzL(View view, MotionEvent motionEvent, View view2) {
        this.zzf.zzv(view, motionEvent, view2);
    }

    public final synchronized void zzM(Bundle bundle) {
        this.zzf.zzw(bundle);
    }

    public final synchronized void zzN(View view) {
        this.zzf.zzx(view);
    }

    public final synchronized void zzO() {
        this.zzf.zzy();
    }

    public final synchronized void zzP(com.google.android.gms.ads.internal.client.zzdc zzdcVar) {
        this.zzf.zzz(zzdcVar);
    }

    public final synchronized void zzQ(com.google.android.gms.ads.internal.client.zzdq zzdqVar) {
        this.zzy.zza(zzdqVar);
    }

    public final synchronized void zzR(zzbhx zzbhxVar) {
        this.zzf.zzA(zzbhxVar);
    }

    public final synchronized void zzS(final zzdkm zzdkmVar) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzbU)).booleanValue()) {
            com.google.android.gms.ads.internal.util.zzs.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdhy
                @Override // java.lang.Runnable
                public final void run() {
                    zzdij.this.zzag(zzdkmVar);
                }
            });
        } else {
            zzag(zzdkmVar);
        }
    }

    public final synchronized void zzT(final zzdkm zzdkmVar) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzbU)).booleanValue()) {
            com.google.android.gms.ads.internal.util.zzs.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdhz
                @Override // java.lang.Runnable
                public final void run() {
                    zzdij.this.zzah(zzdkmVar);
                }
            });
        } else {
            zzah(zzdkmVar);
        }
    }

    public final boolean zzU() {
        return this.zzh.zze();
    }

    public final synchronized boolean zzV() {
        return this.zzf.zzD();
    }

    public final synchronized boolean zzW() {
        return this.zzf.zzE();
    }

    public final boolean zzX() {
        return this.zzh.zzd();
    }

    public final synchronized boolean zzZ(Bundle bundle) {
        if (this.zzq) {
            return true;
        }
        boolean zzF = this.zzf.zzF(bundle);
        this.zzq = zzF;
        return zzF;
    }

    public final synchronized int zza() {
        return this.zzf.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzcqx
    public final synchronized void zzb() {
        this.zzp = true;
        this.zzd.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdie
            @Override // java.lang.Runnable
            public final void run() {
                zzdij.zzv(zzdij.this);
            }
        });
        super.zzb();
    }

    public final zzdil zzc() {
        return this.zzx;
    }

    @Nullable
    public final zzeda zzf(String str, boolean z) {
        boolean z2;
        String str2;
        zzecw zzecwVar;
        zzecx zzecxVar;
        String str3;
        zzdit zzditVar = this.zzh;
        if (zzditVar.zzd() && !TextUtils.isEmpty(str)) {
            zzdio zzdioVar = this.zze;
            zzcfb zzr = zzdioVar.zzr();
            zzcfb zzs = zzdioVar.zzs();
            if (zzr == null && zzs == null) {
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzj("Omid display and video webview are null. Skipping initialization.");
                return null;
            }
            zzditVar.zza();
            int zzc2 = zzditVar.zza().zzc();
            int i2 = zzc2 - 1;
            boolean z3 = false;
            if (i2 != 0) {
                if (i2 != 1) {
                    if (zzc2 != 1) {
                        if (zzc2 != 2) {
                            str3 = "UNKNOWN";
                        } else {
                            str3 = "DISPLAY";
                        }
                    } else {
                        str3 = "VIDEO";
                    }
                    int i3 = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzj("Unknown omid media type: " + str3 + ". Not initializing Omid.");
                    return null;
                } else if (zzr != null) {
                    z2 = false;
                    z3 = true;
                } else {
                    int i4 = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzj("Omid media type was display but there was no display webview.");
                    return null;
                }
            } else if (zzs != null) {
                z2 = true;
            } else {
                int i5 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzj("Omid media type was video but there was no video webview.");
            }
            if (z3) {
                str2 = null;
            } else {
                str2 = "javascript";
                zzr = zzs;
            }
            if (zzr != null) {
                if (!com.google.android.gms.ads.internal.zzv.zzC().zzl(this.zzw)) {
                    int i6 = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzj("Failed to initialize omid in InternalNativeAd");
                    return null;
                }
                VersionInfoParcel versionInfoParcel = this.zzv;
                String str4 = versionInfoParcel.buddyApkVersion + "." + versionInfoParcel.clientJarVersion;
                if (z2) {
                    zzecwVar = zzecw.VIDEO;
                    zzecxVar = zzecx.DEFINED_BY_JAVASCRIPT;
                } else {
                    zzecwVar = zzecw.NATIVE_DISPLAY;
                    if (zzdioVar.zzc() == 3) {
                        zzecxVar = zzecx.UNSPECIFIED;
                    } else {
                        zzecxVar = zzecx.ONE_PIXEL;
                    }
                }
                zzeda zzb = com.google.android.gms.ads.internal.zzv.zzC().zzb(str4, zzr.zzG(), "", "javascript", str2, str, zzecxVar, zzecwVar, this.zzb.zzal);
                if (zzb == null) {
                    int i7 = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzj("Failed to create omid session in InternalNativeAd");
                    return null;
                }
                zzdioVar.zzW(zzb);
                zzr.zzat(zzb);
                if (z2) {
                    zzflb zza = zzb.zza();
                    if (zzs != null) {
                        com.google.android.gms.ads.internal.zzv.zzC().zzj(zza, zzs.zzF());
                    }
                    this.zzs = true;
                }
                if (z) {
                    com.google.android.gms.ads.internal.zzv.zzC().zzk(zzb.zza());
                    zzr.zzd("onSdkLoaded", new ArrayMap());
                }
                return zzb;
            }
            int i8 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Webview is null in InternalNativeAd");
            return null;
        }
        return null;
    }

    public final String zzg() {
        return this.zzh.zzb();
    }

    public final synchronized JSONObject zzi(View view, Map map, Map map2) {
        return this.zzf.zzf(view, map, map2, zzab());
    }

    public final synchronized JSONObject zzj(View view, Map map, Map map2) {
        return this.zzf.zzg(view, map, map2, zzab());
    }

    @Override // com.google.android.gms.internal.ads.zzcqx
    @AnyThread
    public final void zzk() {
        Runnable runnable = new Runnable() { // from class: com.google.android.gms.internal.ads.zzdia
            @Override // java.lang.Runnable
            public final void run() {
                zzdij.zzt(zzdij.this);
            }
        };
        Executor executor = this.zzd;
        executor.execute(runnable);
        if (this.zze.zzc() != 7) {
            final zzdiw zzdiwVar = this.zzf;
            Objects.requireNonNull(zzdiwVar);
            executor.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdib
                @Override // java.lang.Runnable
                public final void run() {
                    zzdiw.this.zzs();
                }
            });
        }
        super.zzk();
    }

    public final void zzz(View view) {
        zzeda zzu = this.zze.zzu();
        if (this.zzh.zzd() && zzu != null && view != null) {
            com.google.android.gms.ads.internal.zzv.zzC().zzg(zzu.zza(), view);
        }
    }
}
