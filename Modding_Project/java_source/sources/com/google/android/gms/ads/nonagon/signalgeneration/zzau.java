package com.google.android.gms.ads.nonagon.signalgeneration;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Point;
import android.net.Uri;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.WebView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.browser.customtabs.CustomTabsCallback;
import androidx.browser.customtabs.CustomTabsClient;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.zzbv;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzavl;
import com.google.android.gms.internal.ads.zzavm;
import com.google.android.gms.internal.ads.zzbcm;
import com.google.android.gms.internal.ads.zzbcv;
import com.google.android.gms.internal.ads.zzbea;
import com.google.android.gms.internal.ads.zzbeo;
import com.google.android.gms.internal.ads.zzbfa;
import com.google.android.gms.internal.ads.zzbua;
import com.google.android.gms.internal.ads.zzbud;
import com.google.android.gms.internal.ads.zzbys;
import com.google.android.gms.internal.ads.zzbyu;
import com.google.android.gms.internal.ads.zzbyz;
import com.google.android.gms.internal.ads.zzcaa;
import com.google.android.gms.internal.ads.zzchb;
import com.google.android.gms.internal.ads.zzcva;
import com.google.android.gms.internal.ads.zzdbp;
import com.google.android.gms.internal.ads.zzdns;
import com.google.android.gms.internal.ads.zzdrl;
import com.google.android.gms.internal.ads.zzdsi;
import com.google.android.gms.internal.ads.zzfcn;
import com.google.android.gms.internal.ads.zzfct;
import com.google.android.gms.internal.ads.zzfdo;
import com.google.android.gms.internal.ads.zzfhb;
import com.google.android.gms.internal.ads.zzfhc;
import com.google.android.gms.internal.ads.zzfhn;
import com.google.android.gms.internal.ads.zzfhq;
import com.google.android.gms.internal.ads.zzfjr;
import com.google.android.gms.internal.ads.zzfur;
import com.google.android.gms.internal.ads.zzfvt;
import com.google.android.gms.internal.ads.zzgce;
import com.google.android.gms.internal.ads.zzgcf;
import com.google.android.gms.internal.ads.zzgcp;
import com.google.android.gms.internal.ads.zzgcy;
import com.google.android.gms.internal.ads.zzgdj;
import com.google.common.util.concurrent.ListenableFuture;
import com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzau extends zzbyu {
    protected static final List zza = new ArrayList(Arrays.asList("/aclk", "/pcs/click", "/dbm/clk"));
    protected static final List zzb = new ArrayList(Arrays.asList(".doubleclick.net", ".googleadservices.com"));
    protected static final List zzc = new ArrayList(Arrays.asList("/pagead/adview", "/pcs/view", "/pagead/conversion", "/dbm/ad"));
    protected static final List zzd = new ArrayList(Arrays.asList(".doubleclick.net", ".googleadservices.com", ".googlesyndication.com"));
    public static final /* synthetic */ int zze = 0;
    private final List zzB;
    private final List zzC;
    private final List zzD;
    private final List zzE;
    private final zzbea zzI;
    private final zzo zzJ;
    private final zzf zzK;
    private final zzchb zzf;
    private Context zzg;
    private final zzavl zzh;
    private final zzfct zzi;
    private final zzfdo zzj;
    private final zzgdj zzk;
    private final ScheduledExecutorService zzl;
    @Nullable
    private zzbud zzm;
    private final zzdsi zzp;
    private final zzfjr zzq;
    private final VersionInfoParcel zzy;
    private String zzz;
    private Point zzn = new Point();
    private Point zzo = new Point();
    private final AtomicInteger zzx = new AtomicInteger(0);
    private final AtomicBoolean zzF = new AtomicBoolean(false);
    private final AtomicBoolean zzG = new AtomicBoolean(false);
    private final AtomicInteger zzH = new AtomicInteger(0);
    private final boolean zzr = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzht)).booleanValue();
    private final boolean zzs = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzhs)).booleanValue();
    private final boolean zzt = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzhv)).booleanValue();
    private final boolean zzu = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzhx)).booleanValue();
    private final String zzv = (String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzhw);
    private final String zzw = (String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzhy);
    private final String zzA = (String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzhz);

    public zzau(zzchb zzchbVar, Context context, zzavl zzavlVar, zzfdo zzfdoVar, zzgdj zzgdjVar, ScheduledExecutorService scheduledExecutorService, zzdsi zzdsiVar, zzfjr zzfjrVar, VersionInfoParcel versionInfoParcel, zzbea zzbeaVar, zzfct zzfctVar, zzo zzoVar, zzf zzfVar) {
        List list;
        this.zzf = zzchbVar;
        this.zzg = context;
        this.zzh = zzavlVar;
        this.zzi = zzfctVar;
        this.zzj = zzfdoVar;
        this.zzk = zzgdjVar;
        this.zzl = scheduledExecutorService;
        this.zzp = zzdsiVar;
        this.zzq = zzfjrVar;
        this.zzy = versionInfoParcel;
        this.zzI = zzbeaVar;
        this.zzJ = zzoVar;
        this.zzK = zzfVar;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzhA)).booleanValue()) {
            this.zzB = zzZ((String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzhB));
            this.zzC = zzZ((String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzhC));
            this.zzD = zzZ((String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzhD));
            list = zzZ((String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzhE));
        } else {
            this.zzB = zza;
            this.zzC = zzb;
            this.zzD = zzc;
            list = zzd;
        }
        this.zzE = list;
    }

    public static /* synthetic */ ArrayList zzC(zzau zzauVar, List list, String str) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Uri uri = (Uri) it.next();
            if (zzauVar.zzQ(uri) && !TextUtils.isEmpty(str)) {
                arrayList.add(zzaa(uri, "nas", str));
            } else {
                arrayList.add(uri);
            }
        }
        return arrayList;
    }

    public static /* synthetic */ ArrayList zzD(zzau zzauVar, List list, IObjectWrapper iObjectWrapper) {
        String str;
        zzavl zzavlVar = zzauVar.zzh;
        if (zzavlVar.zzc() != null) {
            str = zzavlVar.zzc().zzh(zzauVar.zzg, (View) ObjectWrapper.unwrap(iObjectWrapper), null);
        } else {
            str = "";
        }
        if (!TextUtils.isEmpty(str)) {
            ArrayList arrayList = new ArrayList();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                Uri uri = (Uri) it.next();
                if (!zzauVar.zzQ(uri)) {
                    String valueOf = String.valueOf(uri);
                    int i = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzj("Not a Google URL: ".concat(valueOf));
                    arrayList.add(uri);
                } else {
                    arrayList.add(zzaa(uri, "ms", str));
                }
            }
            if (!arrayList.isEmpty()) {
                return arrayList;
            }
            throw new Exception("Empty impression URLs result.");
        }
        throw new Exception("Failed to get view signals.");
    }

    public static /* synthetic */ void zzH(zzau zzauVar, zzdns[] zzdnsVarArr) {
        zzdns zzdnsVar = zzdnsVarArr[0];
        if (zzdnsVar != null) {
            zzauVar.zzj.zzb(zzgcy.zzh(zzdnsVar));
        }
    }

    public static /* bridge */ /* synthetic */ void zzJ(zzau zzauVar, List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            if (zzauVar.zzP((Uri) it.next())) {
                zzauVar.zzx.getAndIncrement();
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public final zzac zzR(Context context, String str, String str2, com.google.android.gms.ads.internal.client.zzr zzrVar, com.google.android.gms.ads.internal.client.zzm zzmVar, int i, @Nullable String str3, Bundle bundle, @Nullable zzbyz zzbyzVar) {
        com.google.android.gms.ads.internal.client.zzm zzmVar2;
        com.google.android.gms.ads.internal.client.zzr zzrVar2;
        char c;
        zzfcn zzfcnVar = new zzfcn();
        if ("REWARDED".equals(str2)) {
            zzfcnVar.zzp().zza(2);
        } else if ("REWARDED_INTERSTITIAL".equals(str2)) {
            zzfcnVar.zzp().zza(3);
        }
        zzab zzo = this.zzf.zzo();
        zzcva zzcvaVar = new zzcva();
        zzcvaVar.zzf(context);
        if (str == null) {
            str = HandleInvocationsFromAdViewer.KEY_AD_UNIT_ID;
        }
        zzfcnVar.zzt(str);
        if (zzmVar == null) {
            zzmVar2 = new com.google.android.gms.ads.internal.client.zzn().zza();
        } else {
            zzmVar2 = zzmVar;
        }
        zzfcnVar.zzH(zzmVar2);
        if (zzrVar == null) {
            switch (str2.hashCode()) {
                case -1999289321:
                    if (str2.equals("NATIVE")) {
                        c = 3;
                        break;
                    }
                    c = 65535;
                    break;
                case -428325382:
                    if (str2.equals("APP_OPEN_AD")) {
                        c = 4;
                        break;
                    }
                    c = 65535;
                    break;
                case 543046670:
                    if (str2.equals("REWARDED")) {
                        c = 1;
                        break;
                    }
                    c = 65535;
                    break;
                case 1854800829:
                    if (str2.equals("REWARDED_INTERSTITIAL")) {
                        c = 2;
                        break;
                    }
                    c = 65535;
                    break;
                case 1951953708:
                    if (str2.equals("BANNER")) {
                        c = 0;
                        break;
                    }
                    c = 65535;
                    break;
                default:
                    c = 65535;
                    break;
            }
            if (c != 0) {
                if (c != 1 && c != 2) {
                    if (c != 3) {
                        if (c != 4) {
                            zzrVar2 = new com.google.android.gms.ads.internal.client.zzr();
                        } else {
                            zzrVar2 = com.google.android.gms.ads.internal.client.zzr.zzb();
                        }
                    } else {
                        zzrVar2 = com.google.android.gms.ads.internal.client.zzr.zzc();
                    }
                } else {
                    zzrVar2 = com.google.android.gms.ads.internal.client.zzr.zzd();
                }
            } else {
                zzrVar2 = new com.google.android.gms.ads.internal.client.zzr(context, AdSize.BANNER);
            }
        } else {
            zzrVar2 = zzrVar;
        }
        zzfcnVar.zzs(zzrVar2);
        zzfcnVar.zzz(true);
        zzfcnVar.zzA(bundle);
        zzcvaVar.zzk(zzfcnVar.zzJ());
        zzcvaVar.zzi(i);
        zzo.zza(zzcvaVar.zzl());
        zzax zzaxVar = new zzax();
        zzaxVar.zzb(str2);
        zzaxVar.zzc(str3);
        zzaxVar.zzd(zzbyzVar);
        zzo.zzb(new zzaz(zzaxVar, null));
        new zzdbp();
        return zzo.zzc();
    }

    private final ListenableFuture zzS(final String str) {
        final zzdns[] zzdnsVarArr = new zzdns[1];
        ListenableFuture zza2 = this.zzj.zza();
        zzgcf zzgcfVar = new zzgcf() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzaf
            @Override // com.google.android.gms.internal.ads.zzgcf
            public final ListenableFuture zza(Object obj) {
                return zzau.zzx(zzau.this, zzdnsVarArr, str, (zzdns) obj);
            }
        };
        zzgdj zzgdjVar = this.zzk;
        ListenableFuture zzn = zzgcy.zzn(zza2, zzgcfVar, zzgdjVar);
        zzn.addListener(new Runnable() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzag
            @Override // java.lang.Runnable
            public final void run() {
                zzau.zzH(zzau.this, zzdnsVarArr);
            }
        }, zzgdjVar);
        return (zzgcp) zzgcy.zze((zzgcp) zzgcy.zzm((zzgcp) zzgcy.zzo(zzgcp.zzw(zzn), ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzhR)).intValue(), TimeUnit.MILLISECONDS, this.zzl), new zzfur() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzam
            @Override // com.google.android.gms.internal.ads.zzfur
            public final Object apply(Object obj) {
                int i = zzau.zze;
                return ((JSONObject) obj).optString("nas");
            }
        }, zzgdjVar), Exception.class, new zzfur() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzan
            @Override // com.google.android.gms.internal.ads.zzfur
            public final Object apply(Object obj) {
                int i = zzau.zze;
                int i2 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzh("", (Exception) obj);
                return null;
            }
        }, zzgdjVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzT() {
        zzau zzauVar;
        ListenableFuture zzb2;
        if (((Boolean) zzbfa.zze.zze()).booleanValue()) {
            this.zzJ.zze();
            return;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzlr)).booleanValue()) {
            zzb2 = zzgcy.zzk(new zzgce() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzad
                @Override // com.google.android.gms.internal.ads.zzgce
                public final ListenableFuture zza() {
                    ListenableFuture zzb3;
                    zzb3 = r0.zzR(zzau.this.zzg, null, AdFormat.BANNER.name(), null, null, 0, null, new Bundle(), null).zzb();
                    return zzb3;
                }
            }, zzcaa.zza);
            zzauVar = this;
        } else {
            zzauVar = this;
            zzb2 = zzauVar.zzR(this.zzg, null, AdFormat.BANNER.name(), null, null, 0, null, new Bundle(), null).zzb();
        }
        zzgcy.zzr(zzb2, new zzat(this), zzauVar.zzf.zzA());
    }

    private final void zzU() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzjQ)).booleanValue()) {
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzjT)).booleanValue()) {
                if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzjX)).booleanValue() || !this.zzF.getAndSet(true)) {
                    zzT();
                }
            }
        }
    }

    private final void zzV(List list, final IObjectWrapper iObjectWrapper, zzbua zzbuaVar, boolean z) {
        ListenableFuture zzb2;
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzhQ)).booleanValue()) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("The updating URL feature is not enabled.");
            try {
                zzbuaVar.zze("The updating URL feature is not enabled.");
                return;
            } catch (RemoteException e) {
                com.google.android.gms.ads.internal.util.client.zzo.zzh("", e);
                return;
            }
        }
        Iterator it = list.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            if (zzP((Uri) it.next())) {
                i2++;
            }
        }
        if (i2 > 1) {
            String valueOf = String.valueOf(list);
            int i3 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Multiple google urls found: ".concat(valueOf));
        }
        ArrayList arrayList = new ArrayList();
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            final Uri uri = (Uri) it2.next();
            if (!zzP(uri)) {
                String valueOf2 = String.valueOf(uri);
                int i4 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzj("Not a Google URL: ".concat(valueOf2));
                zzb2 = zzgcy.zzh(uri);
            } else {
                zzgdj zzgdjVar = this.zzk;
                zzb2 = zzgdjVar.zzb(new Callable() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzah
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return zzau.zzn(zzau.this, uri, iObjectWrapper);
                    }
                });
                if (zzY()) {
                    zzb2 = zzgcy.zzn(zzb2, new zzgcf() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzai
                        @Override // com.google.android.gms.internal.ads.zzgcf
                        public final ListenableFuture zza(Object obj) {
                            ListenableFuture zzm;
                            zzm = zzgcy.zzm(r0.zzS("google.afma.nativeAds.getPublisherCustomRenderedClickSignals"), new zzfur() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzaj
                                @Override // com.google.android.gms.internal.ads.zzfur
                                public final Object apply(Object obj2) {
                                    return zzau.zzd(zzau.this, r2, (String) obj2);
                                }
                            }, zzau.this.zzk);
                            return zzm;
                        }
                    }, zzgdjVar);
                } else {
                    int i5 = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzi("Asset view map is empty.");
                }
            }
            arrayList.add(zzb2);
        }
        zzgcy.zzr(zzgcy.zzd(arrayList), new zzas(this, zzbuaVar, z), this.zzf.zzA());
    }

    private final void zzW(final List list, final IObjectWrapper iObjectWrapper, zzbua zzbuaVar, boolean z) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzhQ)).booleanValue()) {
            try {
                zzbuaVar.zze("The updating URL feature is not enabled.");
                return;
            } catch (RemoteException e) {
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzh("", e);
                return;
            }
        }
        zzgdj zzgdjVar = this.zzk;
        ListenableFuture zzb2 = zzgdjVar.zzb(new Callable() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzao
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzau.zzD(zzau.this, list, iObjectWrapper);
            }
        });
        if (zzY()) {
            zzb2 = zzgcy.zzn(zzb2, new zzgcf() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzap
                @Override // com.google.android.gms.internal.ads.zzgcf
                public final ListenableFuture zza(Object obj) {
                    ListenableFuture zzm;
                    zzm = zzgcy.zzm(r0.zzS("google.afma.nativeAds.getPublisherCustomRenderedImpressionSignals"), new zzfur() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzae
                        @Override // com.google.android.gms.internal.ads.zzfur
                        public final Object apply(Object obj2) {
                            return zzau.zzC(zzau.this, r2, (String) obj2);
                        }
                    }, zzau.this.zzk);
                    return zzm;
                }
            }, zzgdjVar);
        } else {
            int i2 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzi("Asset view map is empty.");
        }
        zzgcy.zzr(zzb2, new zzar(this, zzbuaVar, z), this.zzf.zzA());
    }

    private static boolean zzX(@NonNull Uri uri, List list, List list2) {
        String host = uri.getHost();
        String path = uri.getPath();
        if (host != null && path != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                if (path.contains((String) it.next())) {
                    Iterator it2 = list2.iterator();
                    while (it2.hasNext()) {
                        if (host.endsWith((String) it2.next())) {
                            return true;
                        }
                    }
                    continue;
                }
            }
        }
        return false;
    }

    private final boolean zzY() {
        Map map;
        zzbud zzbudVar = this.zzm;
        if (zzbudVar != null && (map = zzbudVar.zzb) != null && !map.isEmpty()) {
            return true;
        }
        return false;
    }

    private static final List zzZ(String str) {
        String[] split = TextUtils.split(str, ",");
        ArrayList arrayList = new ArrayList();
        for (String str2 : split) {
            if (!zzfvt.zzd(str2)) {
                arrayList.add(str2);
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Uri zzaa(Uri uri, String str, String str2) {
        String uri2 = uri.toString();
        int indexOf = uri2.indexOf("&adurl=");
        if (indexOf == -1) {
            indexOf = uri2.indexOf("?adurl=");
        }
        if (indexOf != -1) {
            int i = indexOf + 1;
            return Uri.parse(uri2.substring(0, i) + str + "=" + str2 + "&" + uri2.substring(i));
        }
        return uri.buildUpon().appendQueryParameter(str, str2).build();
    }

    public static /* synthetic */ Uri zzd(zzau zzauVar, Uri uri, String str) {
        if (!TextUtils.isEmpty(str)) {
            return zzaa(uri, "nas", str);
        }
        return uri;
    }

    public static /* synthetic */ Uri zzn(zzau zzauVar, Uri uri, IObjectWrapper iObjectWrapper) {
        zzfct zzfctVar;
        try {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzmm)).booleanValue() && (zzfctVar = zzauVar.zzi) != null) {
                uri = zzfctVar.zza(uri, zzauVar.zzg, (View) ObjectWrapper.unwrap(iObjectWrapper), null);
            } else {
                uri = zzauVar.zzh.zza(uri, zzauVar.zzg, (View) ObjectWrapper.unwrap(iObjectWrapper), null);
            }
        } catch (zzavm e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzk("", e);
        }
        if (uri.getQueryParameter("ms") != null) {
            return uri;
        }
        throw new Exception("Failed to append spam signals to click url.");
    }

    public static /* bridge */ /* synthetic */ zzfhn zzs(ListenableFuture listenableFuture, zzbyz zzbyzVar) {
        String str;
        if (!zzfhq.zza() || !((Boolean) zzbeo.zze.zze()).booleanValue()) {
            return null;
        }
        try {
            zzfhn zza2 = ((zzac) zzgcy.zzp(listenableFuture)).zza();
            zza2.zzd(new ArrayList(Collections.singletonList(zzbyzVar.zzb)));
            com.google.android.gms.ads.internal.client.zzm zzmVar = zzbyzVar.zzd;
            if (zzmVar == null) {
                str = "";
            } else {
                str = zzmVar.zzp;
            }
            zza2.zzb(str);
            zza2.zzf(zzmVar.zzm);
            return zza2;
        } catch (ExecutionException e) {
            com.google.android.gms.ads.internal.zzv.zzp().zzw(e, "SignalGeneratorImpl.getConfiguredCriticalUserJourney");
            return null;
        }
    }

    public static /* synthetic */ ListenableFuture zzx(zzau zzauVar, zzdns[] zzdnsVarArr, String str, zzdns zzdnsVar) {
        zzdnsVarArr[0] = zzdnsVar;
        Context context = zzauVar.zzg;
        zzbud zzbudVar = zzauVar.zzm;
        Map map = zzbudVar.zzb;
        JSONObject zzd2 = zzbv.zzd(context, map, map, zzbudVar.zza, null);
        JSONObject zzh = zzbv.zzh(zzauVar.zzg, zzauVar.zzm.zza);
        JSONObject zzg = zzbv.zzg(zzauVar.zzm.zza);
        JSONObject zze2 = zzbv.zze(zzauVar.zzg, zzauVar.zzm.zza);
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("asset_view_signal", zzd2);
        jSONObject.put("ad_view_signal", zzh);
        jSONObject.put("scroll_view_signal", zzg);
        jSONObject.put("lock_screen_signal", zze2);
        if ("google.afma.nativeAds.getPublisherCustomRenderedClickSignals".equals(str)) {
            jSONObject.put("click_signal", zzbv.zzc(null, zzauVar.zzg, zzauVar.zzo, zzauVar.zzn));
        }
        return zzdnsVar.zzg(str, jSONObject);
    }

    @VisibleForTesting
    public final boolean zzP(@NonNull Uri uri) {
        return zzX(uri, this.zzB, this.zzC);
    }

    @VisibleForTesting
    public final boolean zzQ(@NonNull Uri uri) {
        return zzX(uri, this.zzD, this.zzE);
    }

    @Override // com.google.android.gms.internal.ads.zzbyv
    public final IObjectWrapper zze(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, String str, IObjectWrapper iObjectWrapper3) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzkd)).booleanValue()) {
            return ObjectWrapper.wrap(null);
        }
        zzbea zzbeaVar = this.zzI;
        zzbeaVar.zzg((Context) ObjectWrapper.unwrap(iObjectWrapper), (CustomTabsClient) ObjectWrapper.unwrap(iObjectWrapper2), str, (CustomTabsCallback) ObjectWrapper.unwrap(iObjectWrapper3));
        if (((Boolean) zzbfa.zze.zze()).booleanValue()) {
            this.zzJ.zze();
        }
        if (((Boolean) zzbfa.zzc.zze()).booleanValue()) {
            this.zzK.zzb(null);
        }
        return ObjectWrapper.wrap(zzbeaVar.zzb());
    }

    @Override // com.google.android.gms.internal.ads.zzbyv
    public final void zzf(IObjectWrapper iObjectWrapper, final zzbyz zzbyzVar, @Nullable zzbys zzbysVar) {
        zzbyz zzbyzVar2;
        ListenableFuture zzh;
        ListenableFuture zzb2;
        ListenableFuture zzn;
        ListenableFuture listenableFuture;
        final Bundle bundle = new Bundle();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzcq)).booleanValue()) {
            bundle.putLong(zzdrl.PUBLIC_API_CALL.zza(), zzbyzVar.zzd.zzz);
            bundle.putLong(zzdrl.DYNAMITE_ENTER.zza(), com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis());
        }
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        this.zzg = context;
        zzfhc zza2 = zzfhb.zza(context, 22);
        zza2.zzi();
        int i = 0;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzhJ)).booleanValue()) {
            com.google.android.gms.ads.internal.client.zzm zzmVar = zzbyzVar.zzd;
            if (zzmVar.zzc.getBoolean("optimize_for_app_start", false) && Objects.equals(zzaa.zzc(zzmVar), "requester_type_8")) {
                i = 2;
                if (zzbyzVar.zze != 2) {
                    i = 1;
                }
            }
        }
        final int i2 = i;
        String str = zzbyzVar.zzb;
        if ("UNKNOWN".equals(str)) {
            List arrayList = new ArrayList();
            zzbcm zzbcmVar = zzbcv.zzhI;
            if (!((String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcmVar)).isEmpty()) {
                arrayList = Arrays.asList(((String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcmVar)).split(","));
            }
            if (arrayList.contains(zzaa.zzc(zzbyzVar.zzd))) {
                zzh = zzgcy.zzg(new IllegalArgumentException("Unknown format is no longer supported."));
                zzb2 = zzgcy.zzg(new IllegalArgumentException("Unknown format is no longer supported."));
                zzbyzVar2 = zzbyzVar;
                listenableFuture = zzh;
                zzn = zzb2;
                zzgcy.zzr(zzn, new zzaq(this, listenableFuture, zzbyzVar2, zzbysVar, zza2), this.zzf.zzA());
            }
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzlr)).booleanValue()) {
            zzgdj zzgdjVar = zzcaa.zza;
            ListenableFuture zzb3 = zzgdjVar.zzb(new Callable() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzak
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    zzac zzR;
                    zzR = r0.zzR(zzau.this.zzg, r1.zza, r1.zzb, r1.zzc, r1.zzd, i2, r1.zzf, bundle, zzbyzVar);
                    return zzR;
                }
            });
            zzn = zzgcy.zzn(zzb3, new zzgcf() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzal
                @Override // com.google.android.gms.internal.ads.zzgcf
                public final ListenableFuture zza(Object obj) {
                    return ((zzac) obj).zzb();
                }
            }, zzgdjVar);
            zzbyzVar2 = zzbyzVar;
            listenableFuture = zzb3;
            zzgcy.zzr(zzn, new zzaq(this, listenableFuture, zzbyzVar2, zzbysVar, zza2), this.zzf.zzA());
        }
        zzac zzR = zzR(this.zzg, zzbyzVar.zza, str, zzbyzVar.zzc, zzbyzVar.zzd, i2, zzbyzVar.zzf, bundle, zzbyzVar);
        zzbyzVar2 = zzbyzVar;
        zzh = zzgcy.zzh(zzR);
        zzb2 = zzR.zzb();
        listenableFuture = zzh;
        zzn = zzb2;
        zzgcy.zzr(zzn, new zzaq(this, listenableFuture, zzbyzVar2, zzbysVar, zza2), this.zzf.zzA());
    }

    @Override // com.google.android.gms.internal.ads.zzbyv
    public final void zzg(zzbud zzbudVar) {
        this.zzm = zzbudVar;
        this.zzj.zzc(1);
    }

    @Override // com.google.android.gms.internal.ads.zzbyv
    public final void zzh(List list, IObjectWrapper iObjectWrapper, zzbua zzbuaVar) {
        zzV(list, iObjectWrapper, zzbuaVar, true);
    }

    @Override // com.google.android.gms.internal.ads.zzbyv
    public final void zzi(List list, IObjectWrapper iObjectWrapper, zzbua zzbuaVar) {
        zzW(list, iObjectWrapper, zzbuaVar, true);
    }

    @Override // com.google.android.gms.internal.ads.zzbyv
    @SuppressLint({"AddJavascriptInterface"})
    public final void zzj(IObjectWrapper iObjectWrapper) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzjP)).booleanValue()) {
            zzbcm zzbcmVar = zzbcv.zzhH;
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcmVar)).booleanValue()) {
                zzU();
            }
            WebView webView = (WebView) ObjectWrapper.unwrap(iObjectWrapper);
            if (webView == null) {
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzg("The webView cannot be null.");
                return;
            }
            zzf zzfVar = this.zzK;
            final zzj zzjVar = new zzj(webView, zzfVar, zzcaa.zzf);
            webView.addJavascriptInterface(new TaggingLibraryJsInterface(webView, this.zzh, this.zzp, this.zzq, this.zzi, this.zzJ, zzfVar, zzjVar), "gmaSdk");
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzjZ)).booleanValue()) {
                com.google.android.gms.ads.internal.zzv.zzp().zzs();
            }
            if (((Boolean) zzbfa.zzc.zze()).booleanValue()) {
                zzfVar.zzb(webView);
                if (((Boolean) zzbfa.zzd.zze()).booleanValue()) {
                    zzcaa.zzd.scheduleWithFixedDelay(new Runnable() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzi
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzj.this.zzb();
                        }
                    }, 0L, ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzka)).intValue(), TimeUnit.MILLISECONDS);
                }
            }
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcmVar)).booleanValue()) {
                zzU();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbyv
    public final void zzk(IObjectWrapper iObjectWrapper) {
        View view;
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzhQ)).booleanValue()) {
            return;
        }
        MotionEvent motionEvent = (MotionEvent) ObjectWrapper.unwrap(iObjectWrapper);
        zzbud zzbudVar = this.zzm;
        if (zzbudVar == null) {
            view = null;
        } else {
            view = zzbudVar.zza;
        }
        this.zzn = zzbv.zza(motionEvent, view);
        if (motionEvent.getAction() == 0) {
            this.zzo = this.zzn;
        }
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        Point point = this.zzn;
        obtain.setLocation(point.x, point.y);
        this.zzh.zzd(obtain);
        obtain.recycle();
    }

    @Override // com.google.android.gms.internal.ads.zzbyv
    public final void zzl(List list, IObjectWrapper iObjectWrapper, zzbua zzbuaVar) {
        zzV(list, iObjectWrapper, zzbuaVar, false);
    }

    @Override // com.google.android.gms.internal.ads.zzbyv
    public final void zzm(List list, IObjectWrapper iObjectWrapper, zzbua zzbuaVar) {
        zzW(list, iObjectWrapper, zzbuaVar, false);
    }
}
