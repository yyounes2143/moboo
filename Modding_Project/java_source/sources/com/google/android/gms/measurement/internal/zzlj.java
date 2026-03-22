package com.google.android.gms.measurement.internal;

import android.annotation.TargetApi;
import android.app.Application;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.SparseArray;
import androidx.annotation.GuardedBy;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import androidx.collection.ArrayMap;
import androidx.privacysandbox.ads.adservices.java.measurement.MeasurementManagerFutures;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzqp;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.UnmodifiableIterator;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.mbridge.msdk.MBridgeConstans;
import com.vungle.ads.internal.model.Cookie;
import j$.util.Comparator;
import j$.util.Objects;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.PriorityQueue;
import java.util.Set;
import java.util.TreeSet;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Unit;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzlj extends zzg {
    @VisibleForTesting
    protected zzky zza;
    final zzx zzb;
    @VisibleForTesting
    protected boolean zzc;
    private zzjp zzd;
    private final Set zze;
    private boolean zzf;
    private final AtomicReference zzg;
    private final Object zzh;
    private boolean zzi;
    private int zzj;
    private zzay zzk;
    private zzay zzl;
    private PriorityQueue zzm;
    private boolean zzn;
    @GuardedBy("consentLock")
    private zzjl zzo;
    private final AtomicLong zzp;
    private long zzq;
    private zzay zzr;
    private SharedPreferences.OnSharedPreferenceChangeListener zzs;
    private zzay zzt;
    private final zzpo zzv;

    public zzlj(zzic zzicVar) {
        super(zzicVar);
        this.zze = new CopyOnWriteArraySet();
        this.zzh = new Object();
        this.zzi = false;
        this.zzj = 1;
        this.zzc = true;
        this.zzv = new zzkn(this);
        this.zzg = new AtomicReference();
        this.zzo = zzjl.zza;
        this.zzq = -1L;
        this.zzp = new AtomicLong(0L);
        this.zzb = new zzx(zzicVar);
    }

    private final zzlr zzar(final zzom zzomVar) {
        try {
            URL url = new URI(zzomVar.zzc).toURL();
            final AtomicReference atomicReference = new AtomicReference();
            String zzl = this.zzu.zzv().zzl();
            zzic zzicVar = this.zzu;
            zzgs zzk = zzicVar.zzaV().zzk();
            Long valueOf = Long.valueOf(zzomVar.zza);
            zzk.zzd("[sgtm] Uploading data from app. row_id, url, uncompressed size", valueOf, zzomVar.zzc, Integer.valueOf(zzomVar.zzb.length));
            if (!TextUtils.isEmpty(zzomVar.zzg)) {
                zzicVar.zzaV().zzk().zzc("[sgtm] Uploading data from app. row_id", valueOf, zzomVar.zzg);
            }
            HashMap hashMap = new HashMap();
            Bundle bundle = zzomVar.zzd;
            for (String str : bundle.keySet()) {
                String string = bundle.getString(str);
                if (!TextUtils.isEmpty(string)) {
                    hashMap.put(str, string);
                }
            }
            zzlo zzn = zzicVar.zzn();
            byte[] bArr = zzomVar.zzb;
            zzll zzllVar = new zzll() { // from class: com.google.android.gms.measurement.internal.zzkz
                /* JADX WARN: Removed duplicated region for block: B:13:0x0064  */
                /* JADX WARN: Removed duplicated region for block: B:14:0x0067  */
                /* JADX WARN: Removed duplicated region for block: B:24:0x0095 A[EXC_TOP_SPLITTER, SYNTHETIC] */
                @Override // com.google.android.gms.measurement.internal.zzll
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final /* synthetic */ void zza(java.lang.String r7, int r8, java.lang.Throwable r9, byte[] r10, java.util.Map r11) {
                    /*
                        r6 = this;
                        com.google.android.gms.measurement.internal.zzlj r7 = com.google.android.gms.measurement.internal.zzlj.this
                        r7.zzg()
                        com.google.android.gms.measurement.internal.zzom r10 = r3
                        r11 = 200(0xc8, float:2.8E-43)
                        if (r8 == r11) goto L14
                        r11 = 204(0xcc, float:2.86E-43)
                        if (r8 == r11) goto L14
                        r11 = 304(0x130, float:4.26E-43)
                        if (r8 != r11) goto L2e
                        r8 = r11
                    L14:
                        if (r9 != 0) goto L2e
                        com.google.android.gms.measurement.internal.zzic r8 = r7.zzu
                        com.google.android.gms.measurement.internal.zzgu r8 = r8.zzaV()
                        com.google.android.gms.measurement.internal.zzgs r8 = r8.zzk()
                        long r0 = r10.zza
                        java.lang.Long r9 = java.lang.Long.valueOf(r0)
                        java.lang.String r11 = "[sgtm] Upload succeeded for row_id"
                        r8.zzb(r11, r9)
                        com.google.android.gms.measurement.internal.zzlr r8 = com.google.android.gms.measurement.internal.zzlr.SUCCESS
                        goto L69
                    L2e:
                        com.google.android.gms.measurement.internal.zzic r11 = r7.zzu
                        com.google.android.gms.measurement.internal.zzgu r11 = r11.zzaV()
                        com.google.android.gms.measurement.internal.zzgs r11 = r11.zze()
                        long r0 = r10.zza
                        java.lang.Long r0 = java.lang.Long.valueOf(r0)
                        java.lang.Integer r1 = java.lang.Integer.valueOf(r8)
                        java.lang.String r2 = "[sgtm] Upload failed for row_id. response, exception"
                        r11.zzd(r2, r0, r1, r9)
                        com.google.android.gms.measurement.internal.zzfx r9 = com.google.android.gms.measurement.internal.zzfy.zzt
                        r11 = 0
                        java.lang.Object r9 = r9.zzb(r11)
                        java.lang.String r9 = (java.lang.String) r9
                        java.lang.String r11 = ","
                        java.lang.String[] r9 = r9.split(r11)
                        java.util.List r9 = java.util.Arrays.asList(r9)
                        java.lang.String r8 = java.lang.String.valueOf(r8)
                        boolean r8 = r9.contains(r8)
                        if (r8 == 0) goto L67
                        com.google.android.gms.measurement.internal.zzlr r8 = com.google.android.gms.measurement.internal.zzlr.BACKOFF
                        goto L69
                    L67:
                        com.google.android.gms.measurement.internal.zzlr r8 = com.google.android.gms.measurement.internal.zzlr.FAILURE
                    L69:
                        java.util.concurrent.atomic.AtomicReference r9 = r2
                        com.google.android.gms.measurement.internal.zzic r11 = r7.zzu
                        com.google.android.gms.measurement.internal.zznl r11 = r11.zzt()
                        com.google.android.gms.measurement.internal.zzaf r0 = new com.google.android.gms.measurement.internal.zzaf
                        long r1 = r10.zza
                        int r3 = r8.zza()
                        long r4 = r10.zzf
                        r0.<init>(r1, r3, r4)
                        r11.zzy(r0)
                        com.google.android.gms.measurement.internal.zzic r7 = r7.zzu
                        com.google.android.gms.measurement.internal.zzgu r7 = r7.zzaV()
                        com.google.android.gms.measurement.internal.zzgs r7 = r7.zzk()
                        java.lang.Long r10 = java.lang.Long.valueOf(r1)
                        java.lang.String r11 = "[sgtm] Updated status for row_id"
                        r7.zzc(r11, r10, r8)
                        monitor-enter(r9)
                        r9.set(r8)     // Catch: java.lang.Throwable -> L9d
                        r9.notifyAll()     // Catch: java.lang.Throwable -> L9d
                        monitor-exit(r9)     // Catch: java.lang.Throwable -> L9d
                        return
                    L9d:
                        r0 = move-exception
                        r7 = r0
                        monitor-exit(r9)     // Catch: java.lang.Throwable -> L9d
                        throw r7
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzkz.zza(java.lang.String, int, java.lang.Throwable, byte[], java.util.Map):void");
                }
            };
            zzn.zzw();
            Preconditions.checkNotNull(url);
            Preconditions.checkNotNull(bArr);
            Preconditions.checkNotNull(zzllVar);
            zzn.zzu.zzaW().zzm(new zzln(zzn, zzl, url, bArr, hashMap, zzllVar));
            try {
                zzic zzicVar2 = zzicVar.zzk().zzu;
                long currentTimeMillis = zzicVar2.zzaZ().currentTimeMillis() + 60000;
                synchronized (atomicReference) {
                    for (long j = 60000; atomicReference.get() == null && j > 0; j = currentTimeMillis - zzicVar2.zzaZ().currentTimeMillis()) {
                        atomicReference.wait(j);
                    }
                }
            } catch (InterruptedException unused) {
                this.zzu.zzaV().zze().zza("[sgtm] Interrupted waiting for uploading batch");
            }
            if (atomicReference.get() == null) {
                return zzlr.UNKNOWN;
            }
            return (zzlr) atomicReference.get();
        } catch (MalformedURLException | URISyntaxException e) {
            this.zzu.zzaV().zzb().zzd("[sgtm] Bad upload url for row_id", zzomVar.zzc, Long.valueOf(zzomVar.zza), e);
            return zzlr.FAILURE;
        }
    }

    @WorkerThread
    private final void zzas(Boolean bool, boolean z) {
        zzg();
        zzb();
        zzic zzicVar = this.zzu;
        zzicVar.zzaV().zzj().zzb("Setting app measurement enabled (FE)", bool);
        zzicVar.zzd().zzh(bool);
        if (z) {
            zzhh zzd = zzicVar.zzd();
            zzic zzicVar2 = zzd.zzu;
            zzd.zzg();
            SharedPreferences.Editor edit = zzd.zzd().edit();
            if (bool != null) {
                edit.putBoolean("measurement_enabled_from_api", bool.booleanValue());
            } else {
                edit.remove("measurement_enabled_from_api");
            }
            edit.apply();
        }
        if (!this.zzu.zzE() && (bool == null || bool.booleanValue())) {
            return;
        }
        zzal();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    /* renamed from: zzat */
    public final void zzal() {
        zzlj zzljVar;
        long j;
        zzg();
        zzic zzicVar = this.zzu;
        String zza = zzicVar.zzd().zzh.zza();
        if (zza != null) {
            if ("unset".equals(zza)) {
                zzljVar = this;
                zzljVar.zzN(MBridgeConstans.DYNAMIC_VIEW_WX_APP, "_npa", null, zzicVar.zzaZ().currentTimeMillis());
            } else {
                if (true != "true".equals(zza)) {
                    j = 0;
                } else {
                    j = 1;
                }
                zzN(MBridgeConstans.DYNAMIC_VIEW_WX_APP, "_npa", Long.valueOf(j), zzicVar.zzaZ().currentTimeMillis());
                zzljVar = this;
            }
        } else {
            zzljVar = this;
        }
        if (zzljVar.zzu.zzB() && zzljVar.zzc) {
            zzicVar.zzaV().zzj().zza("Recording app launch after enabling measurement for the first time (FE)");
            zzU();
            zzljVar.zzu.zzh().zza.zza();
            zzicVar.zzaW().zzj(new zzjz(this));
            return;
        }
        zzicVar.zzaV().zzj().zza("Updating Scion state (FE)");
        zzljVar.zzu.zzt().zzi();
    }

    @WorkerThread
    public final void zzA(zzjl zzjlVar) {
        boolean z;
        Boolean bool;
        zzg();
        if ((zzjlVar.zzo(zzjk.ANALYTICS_STORAGE) && zzjlVar.zzo(zzjk.AD_STORAGE)) || this.zzu.zzt().zzO()) {
            z = true;
        } else {
            z = false;
        }
        zzic zzicVar = this.zzu;
        if (z != zzicVar.zzE()) {
            zzicVar.zzD(z);
            zzhh zzd = this.zzu.zzd();
            zzic zzicVar2 = zzd.zzu;
            zzd.zzg();
            if (zzd.zzd().contains("measurement_enabled_from_api")) {
                bool = Boolean.valueOf(zzd.zzd().getBoolean("measurement_enabled_from_api", true));
            } else {
                bool = null;
            }
            if (!z || bool == null || bool.booleanValue()) {
                zzas(Boolean.valueOf(z), false);
            }
        }
    }

    public final void zzB(String str, String str2, Bundle bundle) {
        zzC(str, str2, bundle, true, true, this.zzu.zzaZ().currentTimeMillis());
    }

    public final void zzC(String str, String str2, Bundle bundle, boolean z, boolean z2, long j) {
        if (bundle == null) {
            bundle = new Bundle();
        }
        Bundle bundle2 = bundle;
        if (Objects.equals(str2, FirebaseAnalytics.Event.SCREEN_VIEW)) {
            this.zzu.zzs().zzj(bundle2, j);
            return;
        }
        boolean z3 = true;
        if (z2 && this.zzd != null && !zzpp.zzZ(str2)) {
            z3 = false;
        }
        boolean z4 = z3;
        if (str == null) {
            str = MBridgeConstans.DYNAMIC_VIEW_WX_APP;
        }
        zzJ(str, str2, j, bundle2, z2, z4, z, null);
    }

    @WorkerThread
    public final void zzD() {
        zzod zzodVar;
        zzod zzodVar2;
        boolean z;
        boolean z2;
        com.google.android.gms.internal.measurement.zzkq zzkqVar;
        zzg();
        zzic zzicVar = this.zzu;
        zzicVar.zzaV().zzj().zza("Handle tcf update.");
        SharedPreferences zze = zzicVar.zzd().zze();
        HashMap hashMap = new HashMap();
        zzfx zzfxVar = zzfy.zzaZ;
        int i = 2;
        if (((Boolean) zzfxVar.zzb(null)).booleanValue()) {
            int i2 = zzof.zzb;
            com.google.android.gms.internal.measurement.zzkp zzkpVar = com.google.android.gms.internal.measurement.zzkp.IAB_TCF_PURPOSE_STORE_AND_ACCESS_INFORMATION_ON_A_DEVICE;
            zzoe zzoeVar = zzoe.CONSENT;
            Map.Entry Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(zzkpVar, zzoeVar);
            int i3 = 1;
            com.google.android.gms.internal.measurement.zzkp zzkpVar2 = com.google.android.gms.internal.measurement.zzkp.IAB_TCF_PURPOSE_SELECT_BASIC_ADS;
            zzoe zzoeVar2 = zzoe.FLEXIBLE_LEGITIMATE_INTEREST;
            ImmutableMap ofEntries = ImmutableMap.ofEntries(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(zzkpVar2, zzoeVar2), Wwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(com.google.android.gms.internal.measurement.zzkp.IAB_TCF_PURPOSE_CREATE_A_PERSONALISED_ADS_PROFILE, zzoeVar), Wwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(com.google.android.gms.internal.measurement.zzkp.IAB_TCF_PURPOSE_SELECT_PERSONALISED_ADS, zzoeVar), Wwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(com.google.android.gms.internal.measurement.zzkp.IAB_TCF_PURPOSE_MEASURE_AD_PERFORMANCE, zzoeVar2), Wwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(com.google.android.gms.internal.measurement.zzkp.IAB_TCF_PURPOSE_APPLY_MARKET_RESEARCH_TO_GENERATE_AUDIENCE_INSIGHTS, zzoeVar2), Wwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(com.google.android.gms.internal.measurement.zzkp.IAB_TCF_PURPOSE_DEVELOP_AND_IMPROVE_PRODUCTS, zzoeVar2));
            ImmutableSet of = ImmutableSet.of("CH");
            char[] cArr = new char[5];
            boolean contains = zze.contains("IABTCF_TCString");
            int zzb = zzof.zzb(zze, "IABTCF_CmpSdkID");
            int zzb2 = zzof.zzb(zze, "IABTCF_PolicyVersion");
            int zzb3 = zzof.zzb(zze, Cookie.IABTCF_GDPR_APPLIES);
            int zzb4 = zzof.zzb(zze, "IABTCF_PurposeOneTreatment");
            int zzb5 = zzof.zzb(zze, "IABTCF_EnableAdvertiserConsentMode");
            String zza = zzof.zza(zze, "IABTCF_PublisherCC");
            ImmutableMap.Builder builder = ImmutableMap.builder();
            UnmodifiableIterator it = ofEntries.keySet().iterator();
            while (it.hasNext()) {
                com.google.android.gms.internal.measurement.zzkp zzkpVar3 = (com.google.android.gms.internal.measurement.zzkp) it.next();
                int zza2 = zzkpVar3.zza();
                StringBuilder sb = new StringBuilder(String.valueOf(zza2).length() + 28);
                sb.append("IABTCF_PublisherRestrictions");
                sb.append(zza2);
                String zza3 = zzof.zza(zze, sb.toString());
                if (!TextUtils.isEmpty(zza3) && zza3.length() >= 755) {
                    int digit = Character.digit(zza3.charAt(754), 10);
                    if (digit >= 0 && digit <= com.google.android.gms.internal.measurement.zzkq.values().length && digit != 0) {
                        if (digit != i3) {
                            if (digit != i) {
                                zzkqVar = com.google.android.gms.internal.measurement.zzkq.PURPOSE_RESTRICTION_UNDEFINED;
                            } else {
                                zzkqVar = com.google.android.gms.internal.measurement.zzkq.PURPOSE_RESTRICTION_REQUIRE_LEGITIMATE_INTEREST;
                            }
                        } else {
                            zzkqVar = com.google.android.gms.internal.measurement.zzkq.PURPOSE_RESTRICTION_REQUIRE_CONSENT;
                        }
                    } else {
                        zzkqVar = com.google.android.gms.internal.measurement.zzkq.PURPOSE_RESTRICTION_NOT_ALLOWED;
                    }
                } else {
                    zzkqVar = com.google.android.gms.internal.measurement.zzkq.PURPOSE_RESTRICTION_UNDEFINED;
                }
                builder.put(zzkpVar3, zzkqVar);
                i = 2;
                i3 = 1;
            }
            ImmutableMap buildOrThrow = builder.buildOrThrow();
            String zza4 = zzof.zza(zze, "IABTCF_PurposeConsents");
            String zza5 = zzof.zza(zze, "IABTCF_VendorConsents");
            if (!TextUtils.isEmpty(zza5) && zza5.length() >= 755 && zza5.charAt(754) == '1') {
                z = true;
            } else {
                z = false;
            }
            String zza6 = zzof.zza(zze, "IABTCF_PurposeLegitimateInterests");
            String zza7 = zzof.zza(zze, "IABTCF_VendorLegitimateInterests");
            if (!TextUtils.isEmpty(zza7) && zza7.length() >= 755 && zza7.charAt(754) == '1') {
                z2 = true;
            } else {
                z2 = false;
            }
            cArr[0] = '2';
            zzodVar = new zzod(zzof.zzd(ofEntries, buildOrThrow, of, cArr, zzb, zzb5, zzb3, zzb2, zzb4, zza, zza4, zza6, z, z2, contains));
        } else {
            String zza8 = zzof.zza(zze, "IABTCF_VendorConsents");
            if (!"".equals(zza8) && zza8.length() > 754) {
                hashMap.put("GoogleConsent", String.valueOf(zza8.charAt(754)));
            }
            int zzb6 = zzof.zzb(zze, Cookie.IABTCF_GDPR_APPLIES);
            if (zzb6 != -1) {
                hashMap.put("gdprApplies", String.valueOf(zzb6));
            }
            int zzb7 = zzof.zzb(zze, "IABTCF_EnableAdvertiserConsentMode");
            if (zzb7 != -1) {
                hashMap.put("EnableAdvertiserConsentMode", String.valueOf(zzb7));
            }
            int zzb8 = zzof.zzb(zze, "IABTCF_PolicyVersion");
            if (zzb8 != -1) {
                hashMap.put("PolicyVersion", String.valueOf(zzb8));
            }
            String zza9 = zzof.zza(zze, "IABTCF_PurposeConsents");
            if (!"".equals(zza9)) {
                hashMap.put("PurposeConsents", zza9);
            }
            int zzb9 = zzof.zzb(zze, "IABTCF_CmpSdkID");
            if (zzb9 != -1) {
                hashMap.put("CmpSdkID", String.valueOf(zzb9));
            }
            zzodVar = new zzod(hashMap);
        }
        zzicVar.zzaV().zzk().zzb("Tcf preferences read", zzodVar);
        if (zzicVar.zzc().zzp(null, zzfxVar)) {
            zzhh zzd = zzicVar.zzd();
            zzd.zzg();
            String string = zzd.zzd().getString("stored_tcf_param", "");
            HashMap hashMap2 = new HashMap();
            if (TextUtils.isEmpty(string)) {
                zzodVar2 = new zzod(hashMap2);
            } else {
                for (String str : string.split(";")) {
                    String[] split = str.split("=");
                    if (split.length >= 2 && zzof.zza.contains(split[0])) {
                        hashMap2.put(split[0], split[1]);
                    }
                }
                zzodVar2 = new zzod(hashMap2);
            }
            if (zzicVar.zzd().zzm(zzodVar)) {
                Bundle zzb10 = zzodVar.zzb();
                zzicVar.zzaV().zzk().zzb("Consent generated from Tcf", zzb10);
                if (zzb10 != Bundle.EMPTY) {
                    zzp(zzb10, -30, zzicVar.zzaZ().currentTimeMillis());
                }
                Bundle bundle = new Bundle();
                bundle.putString("_tcfm", zzodVar.zzd(zzodVar2));
                bundle.putString("_tcfd2", zzodVar.zzc());
                bundle.putString("_tcfd", zzodVar.zze());
                zzF("auto", "_tcf", bundle);
            }
        } else if (zzicVar.zzd().zzm(zzodVar)) {
            Bundle zzb11 = zzodVar.zzb();
            zzicVar.zzaV().zzk().zzb("Consent generated from Tcf", zzb11);
            if (zzb11 != Bundle.EMPTY) {
                zzp(zzb11, -30, zzicVar.zzaZ().currentTimeMillis());
            }
            Bundle bundle2 = new Bundle();
            bundle2.putString("_tcfd", zzodVar.zze());
            zzF("auto", "_tcf", bundle2);
        }
    }

    @WorkerThread
    public final void zzE() {
        zzg();
        zzic zzicVar = this.zzu;
        zzicVar.zzaV().zzj().zza("Register tcfPrefChangeListener.");
        if (this.zzs == null) {
            this.zzt = new zzkb(this, this.zzu);
            this.zzs = new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: com.google.android.gms.measurement.internal.zzle
                @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
                public final /* synthetic */ void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
                    zzlj.this.zzag(sharedPreferences, str);
                }
            };
        }
        zzicVar.zzd().zze().registerOnSharedPreferenceChangeListener(this.zzs);
    }

    @WorkerThread
    public final void zzF(String str, String str2, Bundle bundle) {
        zzg();
        zzG(str, str2, this.zzu.zzaZ().currentTimeMillis(), bundle);
    }

    @WorkerThread
    public final void zzG(String str, String str2, long j, Bundle bundle) {
        zzg();
        boolean z = true;
        if (this.zzd != null && !zzpp.zzZ(str2)) {
            z = false;
        }
        zzH(str, str2, j, bundle, true, z, true, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:128:0x03b6  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x03e1  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x0434  */
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzH(java.lang.String r23, java.lang.String r24, long r25, android.os.Bundle r27, boolean r28, boolean r29, boolean r30, java.lang.String r31) {
        /*
            Method dump skipped, instructions count: 1235
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzlj.zzH(java.lang.String, java.lang.String, long, android.os.Bundle, boolean, boolean, boolean, java.lang.String):void");
    }

    public final void zzI(String str, String str2, Bundle bundle, String str3) {
        zzic.zzL();
        zzJ("auto", str2, this.zzu.zzaZ().currentTimeMillis(), bundle, false, true, true, str3);
    }

    public final void zzJ(String str, String str2, long j, Bundle bundle, boolean z, boolean z2, boolean z3, String str3) {
        int i = zzpp.zza;
        Bundle bundle2 = new Bundle(bundle);
        for (String str4 : bundle2.keySet()) {
            Object obj = bundle2.get(str4);
            if (obj instanceof Bundle) {
                bundle2.putBundle(str4, new Bundle((Bundle) obj));
            } else {
                int i2 = 0;
                if (obj instanceof Parcelable[]) {
                    Parcelable[] parcelableArr = (Parcelable[]) obj;
                    while (i2 < parcelableArr.length) {
                        Parcelable parcelable = parcelableArr[i2];
                        if (parcelable instanceof Bundle) {
                            parcelableArr[i2] = new Bundle((Bundle) parcelable);
                        }
                        i2++;
                    }
                } else if (obj instanceof List) {
                    List list = (List) obj;
                    while (i2 < list.size()) {
                        Object obj2 = list.get(i2);
                        if (obj2 instanceof Bundle) {
                            list.set(i2, new Bundle((Bundle) obj2));
                        }
                        i2++;
                    }
                }
            }
        }
        this.zzu.zzaW().zzj(new zzkc(this, str, str2, j, bundle2, z, z2, z3, str3));
    }

    public final void zzK(String str, String str2, Object obj, boolean z) {
        zzL("auto", "_ldl", obj, true, this.zzu.zzaZ().currentTimeMillis());
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0067  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzL(java.lang.String r17, java.lang.String r18, java.lang.Object r19, boolean r20, long r21) {
        /*
            r16 = this;
            r0 = r16
            r2 = r18
            r1 = r19
            r3 = 0
            r4 = 24
            if (r20 == 0) goto L17
            com.google.android.gms.measurement.internal.zzic r5 = r0.zzu
            com.google.android.gms.measurement.internal.zzpp r5 = r5.zzk()
            int r5 = r5.zzp(r2)
        L15:
            r12 = r5
            goto L41
        L17:
            com.google.android.gms.measurement.internal.zzic r5 = r0.zzu
            com.google.android.gms.measurement.internal.zzpp r5 = r5.zzk()
            java.lang.String r6 = "user property"
            boolean r7 = r5.zzj(r6, r2)
            r8 = 6
            if (r7 != 0) goto L28
        L26:
            r12 = r8
            goto L41
        L28:
            java.lang.String[] r7 = com.google.android.gms.measurement.internal.zzjo.zza
            r9 = 0
            boolean r7 = r5.zzl(r6, r7, r9, r2)
            if (r7 != 0) goto L34
            r5 = 15
            goto L15
        L34:
            com.google.android.gms.measurement.internal.zzic r7 = r5.zzu
            r7.zzc()
            boolean r5 = r5.zzm(r6, r4, r2)
            if (r5 != 0) goto L40
            goto L26
        L40:
            r12 = r3
        L41:
            r5 = 1
            if (r12 == 0) goto L67
            com.google.android.gms.measurement.internal.zzic r1 = r0.zzu
            com.google.android.gms.measurement.internal.zzpp r6 = r1.zzk()
            r1.zzc()
            java.lang.String r14 = r6.zzC(r2, r4, r5)
            if (r2 == 0) goto L57
            int r3 = r2.length()
        L57:
            r15 = r3
            com.google.android.gms.measurement.internal.zzic r1 = r0.zzu
            com.google.android.gms.measurement.internal.zzpo r10 = r0.zzv
            com.google.android.gms.measurement.internal.zzpp r9 = r1.zzk()
            r11 = 0
            java.lang.String r13 = "_ev"
            r9.zzN(r10, r11, r12, r13, r14, r15)
            return
        L67:
            if (r17 != 0) goto L6c
            java.lang.String r6 = "app"
            goto L6e
        L6c:
            r6 = r17
        L6e:
            if (r1 == 0) goto Lbb
            com.google.android.gms.measurement.internal.zzic r7 = r0.zzu
            com.google.android.gms.measurement.internal.zzpp r8 = r7.zzk()
            int r12 = r8.zzK(r2, r1)
            if (r12 == 0) goto Laa
            com.google.android.gms.measurement.internal.zzpp r6 = r7.zzk()
            r7.zzc()
            java.lang.String r14 = r6.zzC(r2, r4, r5)
            boolean r2 = r1 instanceof java.lang.String
            if (r2 != 0) goto L92
            boolean r2 = r1 instanceof java.lang.CharSequence
            if (r2 == 0) goto L90
            goto L92
        L90:
            r15 = r3
            goto L9b
        L92:
            java.lang.String r1 = r1.toString()
            int r3 = r1.length()
            goto L90
        L9b:
            com.google.android.gms.measurement.internal.zzic r1 = r0.zzu
            com.google.android.gms.measurement.internal.zzpo r10 = r0.zzv
            com.google.android.gms.measurement.internal.zzpp r9 = r1.zzk()
            r11 = 0
            java.lang.String r13 = "_ev"
            r9.zzN(r10, r11, r12, r13, r14, r15)
            return
        Laa:
            com.google.android.gms.measurement.internal.zzpp r3 = r7.zzk()
            java.lang.Object r5 = r3.zzL(r2, r1)
            if (r5 == 0) goto Lba
            r3 = r21
            r1 = r6
            r0.zzM(r1, r2, r3, r5)
        Lba:
            return
        Lbb:
            r1 = r6
            r5 = 0
            r0 = r16
            r2 = r18
            r3 = r21
            r0.zzM(r1, r2, r3, r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzlj.zzL(java.lang.String, java.lang.String, java.lang.Object, boolean, long):void");
    }

    public final void zzM(String str, String str2, long j, Object obj) {
        this.zzu.zzaW().zzj(new zzkd(this, str, str2, obj, j));
    }

    @WorkerThread
    public final void zzN(String str, String str2, Object obj, long j) {
        long j2;
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        zzg();
        zzb();
        Object obj2 = obj;
        if (FirebaseAnalytics.UserProperty.ALLOW_AD_PERSONALIZATION_SIGNALS.equals(str2)) {
            if (obj instanceof String) {
                String str3 = (String) obj;
                if (!TextUtils.isEmpty(str3)) {
                    String lowerCase = str3.toLowerCase(Locale.ENGLISH);
                    String str4 = "false";
                    if (true != "false".equals(lowerCase)) {
                        j2 = 0;
                    } else {
                        j2 = 1;
                    }
                    zzic zzicVar = this.zzu;
                    Long valueOf = Long.valueOf(j2);
                    zzhg zzhgVar = zzicVar.zzd().zzh;
                    if (valueOf.longValue() == 1) {
                        str4 = "true";
                    }
                    zzhgVar.zzb(str4);
                    obj = valueOf;
                    str2 = "_npa";
                    this.zzu.zzaV().zzk().zzc("Setting user property(FE)", "non_personalized_ads(_npa)", obj);
                    obj2 = obj;
                }
            }
            if (obj == null) {
                this.zzu.zzd().zzh.zzb("unset");
                obj = obj;
                str2 = "_npa";
            }
            this.zzu.zzaV().zzk().zzc("Setting user property(FE)", "non_personalized_ads(_npa)", obj);
            obj2 = obj;
        }
        String str5 = str2;
        Object obj3 = obj2;
        zzic zzicVar2 = this.zzu;
        if (!zzicVar2.zzB()) {
            this.zzu.zzaV().zzk().zza("User property not set since app measurement is disabled");
        } else if (!zzicVar2.zzH()) {
        } else {
            this.zzu.zzt().zzA(new zzpl(str5, j, obj3, str));
        }
    }

    public final List zzO(boolean z) {
        zzb();
        zzic zzicVar = this.zzu;
        zzicVar.zzaV().zzk().zza("Getting user properties (FE)");
        if (!zzicVar.zzaW().zze()) {
            zzicVar.zzaU();
            if (zzae.zza()) {
                zzicVar.zzaV().zzb().zza("Cannot get all user properties from main thread");
                return Collections.EMPTY_LIST;
            }
            AtomicReference atomicReference = new AtomicReference();
            this.zzu.zzaW().zzk(atomicReference, 5000L, "get user properties", new zzkf(this, atomicReference, z));
            List list = (List) atomicReference.get();
            if (list == null) {
                zzicVar.zzaV().zzb().zzb("Timed out waiting for get user properties, includeInternal", Boolean.valueOf(z));
                return Collections.EMPTY_LIST;
            }
            return list;
        }
        zzicVar.zzaV().zzb().zza("Cannot get all user properties from analytics worker thread");
        return Collections.EMPTY_LIST;
    }

    public final Map zzP(String str, String str2, boolean z) {
        zzic zzicVar = this.zzu;
        if (zzicVar.zzaW().zze()) {
            zzicVar.zzaV().zzb().zza("Cannot get user properties from analytics worker thread");
            return Collections.EMPTY_MAP;
        }
        zzicVar.zzaU();
        if (zzae.zza()) {
            zzicVar.zzaV().zzb().zza("Cannot get user properties from main thread");
            return Collections.EMPTY_MAP;
        }
        AtomicReference atomicReference = new AtomicReference();
        this.zzu.zzaW().zzk(atomicReference, 5000L, "get user properties", new zzkl(this, atomicReference, null, str, str2, z));
        List<zzpl> list = (List) atomicReference.get();
        if (list == null) {
            zzicVar.zzaV().zzb().zzb("Timed out waiting for handle get user properties, includeInternal", Boolean.valueOf(z));
            return Collections.EMPTY_MAP;
        }
        ArrayMap arrayMap = new ArrayMap(list.size());
        for (zzpl zzplVar : list) {
            Object zza = zzplVar.zza();
            if (zza != null) {
                arrayMap.put(zzplVar.zzb, zza);
            }
        }
        return arrayMap;
    }

    public final String zzQ() {
        return (String) this.zzg.get();
    }

    public final void zzR(String str) {
        this.zzg.set(str);
    }

    @WorkerThread
    public final void zzS() {
        zzg();
        zzic zzicVar = this.zzu;
        if (!zzicVar.zzd().zzo.zza()) {
            long zza = zzicVar.zzd().zzp.zza();
            zzicVar.zzd().zzp.zzb(1 + zza);
            zzicVar.zzc();
            if (zza >= 5) {
                zzicVar.zzaV().zze().zza("Permanently failed to retrieve Deferred Deep Link. Reached maximum retries.");
                zzicVar.zzd().zzo.zzb(true);
                return;
            }
            if (this.zzr == null) {
                this.zzr = new zzkg(this, this.zzu);
            }
            this.zzr.zzb(0L);
            return;
        }
        zzicVar.zzaV().zzj().zza("Deferred Deep Link already retrieved. Not fetching again.");
    }

    public final void zzT(long j) {
        this.zzg.set(null);
        this.zzu.zzaW().zzj(new zzkh(this, j));
    }

    @WorkerThread
    public final void zzU() {
        zzg();
        zzb();
        if (this.zzu.zzH()) {
            zzic zzicVar = this.zzu;
            zzal zzc = zzicVar.zzc();
            zzc.zzu.zzaU();
            Boolean zzr = zzc.zzr("google_analytics_deferred_deep_link_enabled");
            if (zzr != null && zzr.booleanValue()) {
                zzicVar.zzaV().zzj().zza("Deferred Deep Link feature enabled.");
                zzicVar.zzaW().zzj(new Runnable() { // from class: com.google.android.gms.measurement.internal.zzlh
                    @Override // java.lang.Runnable
                    public final /* synthetic */ void run() {
                        zzlj.this.zzS();
                    }
                });
            }
            this.zzu.zzt().zzE();
            this.zzc = false;
            zzhh zzd = zzicVar.zzd();
            zzd.zzg();
            String string = zzd.zzd().getString("previous_os_version", null);
            zzd.zzu.zzu().zzw();
            String str = Build.VERSION.RELEASE;
            if (!TextUtils.isEmpty(str) && !str.equals(string)) {
                SharedPreferences.Editor edit = zzd.zzd().edit();
                edit.putString("previous_os_version", str);
                edit.apply();
            }
            if (!TextUtils.isEmpty(string)) {
                zzicVar.zzu().zzw();
                if (!string.equals(str)) {
                    Bundle bundle = new Bundle();
                    bundle.putString("_po", string);
                    zzF("auto", "_ou", bundle);
                }
            }
        }
    }

    @WorkerThread
    public final void zzV(zzjp zzjpVar) {
        zzjp zzjpVar2;
        boolean z;
        zzg();
        zzb();
        if (zzjpVar != null && zzjpVar != (zzjpVar2 = this.zzd)) {
            if (zzjpVar2 == null) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.checkState(z, "EventInterceptor already set.");
        }
        this.zzd = zzjpVar;
    }

    public final void zzW(zzjq zzjqVar) {
        zzb();
        Preconditions.checkNotNull(zzjqVar);
        if (!this.zze.add(zzjqVar)) {
            this.zzu.zzaV().zze().zza("OnEventListener already registered");
        }
    }

    public final void zzX(zzjq zzjqVar) {
        zzb();
        Preconditions.checkNotNull(zzjqVar);
        if (!this.zze.remove(zzjqVar)) {
            this.zzu.zzaV().zze().zza("OnEventListener had not been registered");
        }
    }

    public final int zzY(String str) {
        Preconditions.checkNotEmpty(str);
        this.zzu.zzc();
        return 25;
    }

    public final void zzZ(Bundle bundle) {
        zzaa(bundle, this.zzu.zzaZ().currentTimeMillis());
    }

    public final void zzaa(Bundle bundle, long j) {
        Preconditions.checkNotNull(bundle);
        Bundle bundle2 = new Bundle(bundle);
        if (!TextUtils.isEmpty(bundle2.getString("app_id"))) {
            this.zzu.zzaV().zze().zza("Package name should be null when calling setConditionalUserProperty");
        }
        bundle2.remove("app_id");
        Preconditions.checkNotNull(bundle2);
        zzjh.zzb(bundle2, "app_id", String.class, null);
        zzjh.zzb(bundle2, "origin", String.class, null);
        zzjh.zzb(bundle2, "name", String.class, null);
        zzjh.zzb(bundle2, "value", Object.class, null);
        zzjh.zzb(bundle2, AppMeasurementSdk.ConditionalUserProperty.TRIGGER_EVENT_NAME, String.class, null);
        zzjh.zzb(bundle2, AppMeasurementSdk.ConditionalUserProperty.TRIGGER_TIMEOUT, Long.class, 0L);
        zzjh.zzb(bundle2, AppMeasurementSdk.ConditionalUserProperty.TIMED_OUT_EVENT_NAME, String.class, null);
        zzjh.zzb(bundle2, AppMeasurementSdk.ConditionalUserProperty.TIMED_OUT_EVENT_PARAMS, Bundle.class, null);
        zzjh.zzb(bundle2, AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_EVENT_NAME, String.class, null);
        zzjh.zzb(bundle2, AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_EVENT_PARAMS, Bundle.class, null);
        zzjh.zzb(bundle2, AppMeasurementSdk.ConditionalUserProperty.TIME_TO_LIVE, Long.class, 0L);
        zzjh.zzb(bundle2, AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_NAME, String.class, null);
        zzjh.zzb(bundle2, AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_PARAMS, Bundle.class, null);
        Preconditions.checkNotEmpty(bundle2.getString("name"));
        Preconditions.checkNotEmpty(bundle2.getString("origin"));
        Preconditions.checkNotNull(bundle2.get("value"));
        bundle2.putLong(AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP, j);
        String string = bundle2.getString("name");
        Object obj = bundle2.get("value");
        zzic zzicVar = this.zzu;
        if (zzicVar.zzk().zzp(string) == 0) {
            if (zzicVar.zzk().zzK(string, obj) == 0) {
                Object zzL = zzicVar.zzk().zzL(string, obj);
                if (zzL == null) {
                    zzicVar.zzaV().zzb().zzc("Unable to normalize conditional user property value", zzicVar.zzl().zzc(string), obj);
                    return;
                }
                zzjh.zza(bundle2, zzL);
                long j2 = bundle2.getLong(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_TIMEOUT);
                if (!TextUtils.isEmpty(bundle2.getString(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_EVENT_NAME))) {
                    zzicVar.zzc();
                    if (j2 > 15552000000L || j2 < 1) {
                        zzicVar.zzaV().zzb().zzc("Invalid conditional user property timeout", zzicVar.zzl().zzc(string), Long.valueOf(j2));
                        return;
                    }
                }
                long j3 = bundle2.getLong(AppMeasurementSdk.ConditionalUserProperty.TIME_TO_LIVE);
                zzicVar.zzc();
                if (j3 <= 15552000000L && j3 >= 1) {
                    zzicVar.zzaW().zzj(new zzki(this, bundle2));
                    return;
                } else {
                    zzicVar.zzaV().zzb().zzc("Invalid conditional user property time to live", zzicVar.zzl().zzc(string), Long.valueOf(j3));
                    return;
                }
            }
            zzicVar.zzaV().zzb().zzc("Invalid conditional user property value", zzicVar.zzl().zzc(string), obj);
            return;
        }
        zzicVar.zzaV().zzb().zzb("Invalid conditional user property name", zzicVar.zzl().zzc(string));
    }

    public final void zzab(String str, String str2, Bundle bundle) {
        zzic zzicVar = this.zzu;
        long currentTimeMillis = zzicVar.zzaZ().currentTimeMillis();
        Preconditions.checkNotEmpty(str);
        Bundle bundle2 = new Bundle();
        bundle2.putString("name", str);
        bundle2.putLong(AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP, currentTimeMillis);
        if (str2 != null) {
            bundle2.putString(AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_NAME, str2);
            bundle2.putBundle(AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_PARAMS, bundle);
        }
        zzicVar.zzaW().zzj(new zzkj(this, bundle2));
    }

    public final ArrayList zzac(String str, String str2) {
        zzic zzicVar = this.zzu;
        if (zzicVar.zzaW().zze()) {
            zzicVar.zzaV().zzb().zza("Cannot get conditional user properties from analytics worker thread");
            return new ArrayList(0);
        }
        zzicVar.zzaU();
        if (zzae.zza()) {
            zzicVar.zzaV().zzb().zza("Cannot get conditional user properties from main thread");
            return new ArrayList(0);
        }
        AtomicReference atomicReference = new AtomicReference();
        this.zzu.zzaW().zzk(atomicReference, 5000L, "get conditional user properties", new zzkk(this, atomicReference, null, str, str2));
        List list = (List) atomicReference.get();
        if (list == null) {
            zzicVar.zzaV().zzb().zzb("Timed out waiting for get conditional user properties", null);
            return new ArrayList();
        }
        return zzpp.zzas(list);
    }

    public final String zzad() {
        zzlu zzl = this.zzu.zzs().zzl();
        if (zzl != null) {
            return zzl.zza;
        }
        return null;
    }

    public final String zzae() {
        zzlu zzl = this.zzu.zzs().zzl();
        if (zzl != null) {
            return zzl.zzb;
        }
        return null;
    }

    public final String zzaf() {
        try {
            return zzlt.zza(this.zzu.zzaY(), "google_app_id", this.zzu.zzq());
        } catch (IllegalStateException e) {
            this.zzu.zzaV().zzb().zzb("getGoogleAppId failed with exception", e);
            return null;
        }
    }

    public final /* synthetic */ void zzag(SharedPreferences sharedPreferences, String str) {
        zzic zzicVar = this.zzu;
        if (!zzicVar.zzc().zzp(null, zzfy.zzaZ)) {
            if (Objects.equals(str, "IABTCF_TCString")) {
                zzicVar.zzaV().zzk().zza("IABTCF_TCString change picked up in listener.");
                ((zzay) Preconditions.checkNotNull(this.zzt)).zzb(500L);
            }
        } else if (!Objects.equals(str, "IABTCF_TCString") && !Objects.equals(str, Cookie.IABTCF_GDPR_APPLIES) && !Objects.equals(str, "IABTCF_EnableAdvertiserConsentMode")) {
        } else {
            zzicVar.zzaV().zzk().zza("IABTCF_TCString change picked up in listener.");
            ((zzay) Preconditions.checkNotNull(this.zzt)).zzb(500L);
        }
    }

    public final /* synthetic */ void zzah(Bundle bundle) {
        Bundle bundle2;
        int i;
        if (bundle.isEmpty()) {
            bundle2 = bundle;
        } else {
            zzic zzicVar = this.zzu;
            bundle2 = new Bundle(zzicVar.zzd().zzt.zza());
            Iterator<String> it = bundle.keySet().iterator();
            while (true) {
                i = 0;
                if (!it.hasNext()) {
                    break;
                }
                String next = it.next();
                Object obj = bundle.get(next);
                if (obj != null && !(obj instanceof String) && !(obj instanceof Long) && !(obj instanceof Double)) {
                    if (zzicVar.zzk().zzt(obj)) {
                        zzicVar.zzk().zzN(this.zzv, null, 27, null, null, 0);
                    }
                    zzicVar.zzaV().zzh().zzc("Invalid default event parameter type. Name, value", next, obj);
                } else if (zzpp.zzZ(next)) {
                    zzicVar.zzaV().zzh().zzb("Invalid default event parameter name. Name", next);
                } else if (obj == null) {
                    bundle2.remove(next);
                } else if (zzicVar.zzk().zzu("param", next, zzicVar.zzc().zze(null, false), obj)) {
                    zzicVar.zzk().zzM(bundle2, next, obj);
                }
            }
            zzicVar.zzk();
            int zzc = zzicVar.zzc().zzc();
            if (bundle2.size() > zzc) {
                for (String str : new TreeSet(bundle2.keySet())) {
                    i++;
                    if (i > zzc) {
                        bundle2.remove(str);
                    }
                }
                zzicVar.zzk().zzN(this.zzv, null, 26, null, null, 0);
                zzicVar.zzaV().zzh().zza("Too many default event parameters set. Discarding beyond event parameter limit");
            }
        }
        zzic zzicVar2 = this.zzu;
        zzicVar2.zzd().zzt.zzb(bundle2);
        if (bundle.isEmpty() && !zzicVar2.zzc().zzp(null, zzfy.zzaW)) {
            return;
        }
        this.zzu.zzt().zzH(bundle2);
    }

    public final /* synthetic */ void zzai(int i) {
        if (this.zzk == null) {
            this.zzk = new zzjx(this, this.zzu);
        }
        this.zzk.zzb(i * 1000);
    }

    public final /* synthetic */ void zzaj(Boolean bool, boolean z) {
        zzas(bool, true);
    }

    public final /* synthetic */ void zzak(zzjl zzjlVar, long j, boolean z, boolean z2) {
        zzg();
        zzb();
        zzic zzicVar = this.zzu;
        zzjl zzl = zzicVar.zzd().zzl();
        if (j <= this.zzq && zzjl.zzu(zzl.zzb(), zzjlVar.zzb())) {
            zzicVar.zzaV().zzi().zzb("Dropped out-of-date consent setting, proposed settings", zzjlVar);
            return;
        }
        zzhh zzd = zzicVar.zzd();
        zzic zzicVar2 = zzd.zzu;
        zzd.zzg();
        int zzb = zzjlVar.zzb();
        if (zzd.zzk(zzb)) {
            zzic zzicVar3 = this.zzu;
            SharedPreferences.Editor edit = zzd.zzd().edit();
            edit.putString("consent_settings", zzjlVar.zzl());
            edit.putInt("consent_source", zzb);
            edit.apply();
            zzicVar.zzaV().zzk().zzb("Setting storage consent(FE)", zzjlVar);
            this.zzq = j;
            if (zzicVar3.zzt().zzP()) {
                zzicVar3.zzt().zzk(z);
            } else {
                zzicVar3.zzt().zzj(z);
            }
            if (z2) {
                zzicVar3.zzt().zzC(new AtomicReference());
                return;
            }
            return;
        }
        zzicVar.zzaV().zzi().zzb("Lower precedence consent source ignored, proposed source", Integer.valueOf(zzjlVar.zzb()));
    }

    public final /* synthetic */ void zzam(boolean z) {
        this.zzi = false;
    }

    public final /* synthetic */ int zzan() {
        return this.zzj;
    }

    public final /* synthetic */ void zzao(int i) {
        this.zzj = i;
    }

    public final /* synthetic */ zzay zzap() {
        return this.zzr;
    }

    public final /* synthetic */ int zzaq(Throwable th) {
        String message = th.getMessage();
        this.zzn = false;
        if (message == null) {
            return 2;
        }
        if (!(th instanceof IllegalStateException) && !message.contains("garbage collected") && !th.getClass().getSimpleName().equals("ServiceUnavailableException")) {
            if (!(th instanceof SecurityException) || message.endsWith("READ_DEVICE_CONFIG")) {
                return 2;
            }
            return 3;
        } else if (!message.contains("Background")) {
            return 1;
        } else {
            this.zzn = true;
            return 1;
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzg
    public final boolean zze() {
        return false;
    }

    public final void zzh() {
        zzic zzicVar = this.zzu;
        if ((zzicVar.zzaY().getApplicationContext() instanceof Application) && this.zza != null) {
            ((Application) zzicVar.zzaY().getApplicationContext()).unregisterActivityLifecycleCallbacks(this.zza);
        }
    }

    public final Boolean zzi() {
        AtomicReference atomicReference = new AtomicReference();
        return (Boolean) this.zzu.zzaW().zzk(atomicReference, 15000L, "boolean test flag value", new zzke(this, atomicReference));
    }

    public final String zzj() {
        AtomicReference atomicReference = new AtomicReference();
        return (String) this.zzu.zzaW().zzk(atomicReference, 15000L, "String test flag value", new zzko(this, atomicReference));
    }

    public final Long zzk() {
        AtomicReference atomicReference = new AtomicReference();
        return (Long) this.zzu.zzaW().zzk(atomicReference, 15000L, "long test flag value", new zzkp(this, atomicReference));
    }

    public final Integer zzl() {
        AtomicReference atomicReference = new AtomicReference();
        return (Integer) this.zzu.zzaW().zzk(atomicReference, 15000L, "int test flag value", new zzkq(this, atomicReference));
    }

    public final Double zzm() {
        AtomicReference atomicReference = new AtomicReference();
        return (Double) this.zzu.zzaW().zzk(atomicReference, 15000L, "double test flag value", new zzkr(this, atomicReference));
    }

    public final void zzn(Boolean bool) {
        zzb();
        this.zzu.zzaW().zzj(new zzks(this, bool));
    }

    @VisibleForTesting
    public final void zzp(Bundle bundle, int i, long j) {
        Object obj;
        String str;
        String string;
        zzb();
        zzjl zzjlVar = zzjl.zza;
        zzjk[] zzb = zzjj.STORAGE.zzb();
        int length = zzb.length;
        int i2 = 0;
        while (true) {
            obj = null;
            if (i2 >= length) {
                break;
            }
            String str2 = zzb[i2].zze;
            if (bundle.containsKey(str2) && (string = bundle.getString(str2)) != null) {
                if (string.equals("granted")) {
                    obj = Boolean.TRUE;
                } else if (string.equals("denied")) {
                    obj = Boolean.FALSE;
                }
                if (obj == null) {
                    obj = string;
                    break;
                }
            }
            i2++;
        }
        if (obj != null) {
            zzic zzicVar = this.zzu;
            zzicVar.zzaV().zzh().zzb("Ignoring invalid consent setting", obj);
            zzicVar.zzaV().zzh().zza("Valid consent values are 'granted', 'denied'");
        }
        boolean zze = this.zzu.zzaW().zze();
        zzjl zze2 = zzjl.zze(bundle, i);
        if (zze2.zzc()) {
            zzs(zze2, zze);
        }
        zzaz zzh = zzaz.zzh(bundle, i);
        if (zzh.zzd()) {
            zzq(zzh, zze);
        }
        Boolean zzi = zzaz.zzi(bundle);
        if (zzi != null) {
            if (i == -30) {
                str = "tcf";
            } else {
                str = MBridgeConstans.DYNAMIC_VIEW_WX_APP;
            }
            String str3 = str;
            if (zze) {
                zzN(str3, FirebaseAnalytics.UserProperty.ALLOW_AD_PERSONALIZATION_SIGNALS, zzi.toString(), j);
            } else {
                zzL(str3, FirebaseAnalytics.UserProperty.ALLOW_AD_PERSONALIZATION_SIGNALS, zzi.toString(), false, j);
            }
        }
    }

    public final void zzq(zzaz zzazVar, boolean z) {
        zzkt zzktVar = new zzkt(this, zzazVar);
        if (z) {
            zzg();
            zzktVar.run();
            return;
        }
        this.zzu.zzaW().zzj(zzktVar);
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:56:0x00d0 -> B:53:0x00cd). Please submit an issue!!! */
    public final void zzs(zzjl zzjlVar, boolean z) {
        Throwable th;
        boolean zzr;
        boolean z2;
        zzb();
        int zzb = zzjlVar.zzb();
        if (zzb != -10) {
            zzji zzp = zzjlVar.zzp();
            zzji zzjiVar = zzji.UNINITIALIZED;
            if (zzp == zzjiVar && zzjlVar.zzq() == zzjiVar) {
                this.zzu.zzaV().zzh().zza("Ignoring empty consent settings");
                return;
            }
        }
        synchronized (this.zzh) {
            try {
                boolean z3 = false;
                if (zzjl.zzu(zzb, this.zzo.zzb())) {
                    try {
                        zzr = zzjlVar.zzr(this.zzo);
                        zzjk zzjkVar = zzjk.ANALYTICS_STORAGE;
                        if (zzjlVar.zzo(zzjkVar) && !this.zzo.zzo(zzjkVar)) {
                            z3 = true;
                        }
                        zzjlVar = zzjlVar.zzt(this.zzo);
                        this.zzo = zzjlVar;
                        z2 = z3;
                        z3 = true;
                    } catch (Throwable th2) {
                        th = th2;
                        try {
                        } catch (Throwable th3) {
                            th = th3;
                            th = th;
                            throw th;
                        }
                        throw th;
                    }
                } else {
                    zzr = false;
                    z2 = false;
                }
                zzjl zzjlVar2 = zzjlVar;
                if (!z3) {
                    this.zzu.zzaV().zzi().zzb("Ignoring lower-priority consent settings, proposed settings", zzjlVar2);
                    return;
                }
                long andIncrement = this.zzp.getAndIncrement();
                if (zzr) {
                    this.zzg.set(null);
                    zzku zzkuVar = new zzku(this, zzjlVar2, andIncrement, z2);
                    if (z) {
                        zzg();
                        zzkuVar.run();
                        return;
                    }
                    this.zzu.zzaW().zzl(zzkuVar);
                    return;
                }
                zzkv zzkvVar = new zzkv(this, zzjlVar2, andIncrement, z2);
                if (z) {
                    zzg();
                    zzkvVar.run();
                } else if (zzb != 30 && zzb != -10) {
                    this.zzu.zzaW().zzj(zzkvVar);
                } else {
                    this.zzu.zzaW().zzl(zzkvVar);
                }
            } catch (Throwable th4) {
                th = th4;
                th = th;
                throw th;
            }
        }
    }

    public final void zzt(Runnable runnable) {
        zzb();
        zzic zzicVar = this.zzu;
        if (!zzicVar.zzaW().zze()) {
            if (!zzicVar.zzaW().zzf()) {
                zzicVar.zzaU();
                if (!zzae.zza()) {
                    zzicVar.zzaV().zzk().zza("[sgtm] Started client-side batch upload work.");
                    boolean z = false;
                    int i = 0;
                    int i2 = 0;
                    while (!z) {
                        zzicVar.zzaV().zzk().zza("[sgtm] Getting upload batches from service (FE)");
                        final AtomicReference atomicReference = new AtomicReference();
                        zzicVar.zzaW().zzk(atomicReference, 10000L, "[sgtm] Getting upload batches", new Runnable() { // from class: com.google.android.gms.measurement.internal.zzli
                            @Override // java.lang.Runnable
                            public final /* synthetic */ void run() {
                                zzlj.this.zzu.zzt().zzx(atomicReference, zzoo.zza(zzls.SGTM_CLIENT));
                            }
                        });
                        zzoq zzoqVar = (zzoq) atomicReference.get();
                        if (zzoqVar == null) {
                            break;
                        }
                        List list = zzoqVar.zza;
                        if (!list.isEmpty()) {
                            zzicVar.zzaV().zzk().zzb("[sgtm] Retrieved upload batches. count", Integer.valueOf(list.size()));
                            i += list.size();
                            Iterator it = list.iterator();
                            while (true) {
                                if (it.hasNext()) {
                                    zzlr zzar = zzar((zzom) it.next());
                                    if (zzar == zzlr.SUCCESS) {
                                        i2++;
                                    } else if (zzar == zzlr.BACKOFF) {
                                        z = true;
                                        break;
                                    }
                                } else {
                                    z = false;
                                    break;
                                }
                            }
                        } else {
                            break;
                        }
                    }
                    zzicVar.zzaV().zzk().zzc("[sgtm] Completed client-side batch upload work. total, success", Integer.valueOf(i), Integer.valueOf(i2));
                    runnable.run();
                    return;
                }
                zzicVar.zzaV().zzb().zza("Cannot retrieve and upload batches from main thread");
                return;
            }
            zzicVar.zzaV().zzb().zza("Cannot retrieve and upload batches from analytics network thread");
            return;
        }
        zzicVar.zzaV().zzb().zza("Cannot retrieve and upload batches from analytics worker thread");
    }

    @WorkerThread
    public final void zzu(long j) {
        zzg();
        if (this.zzl == null) {
            this.zzl = new zzju(this, this.zzu);
        }
        this.zzl.zzb(j);
    }

    @WorkerThread
    public final void zzv() {
        zzg();
        zzay zzayVar = this.zzl;
        if (zzayVar != null) {
            zzayVar.zzd();
        }
    }

    public final void zzw() {
        zzqp.zza();
        zzic zzicVar = this.zzu;
        if (zzicVar.zzc().zzp(null, zzfy.zzaQ)) {
            if (!zzicVar.zzaW().zze()) {
                zzicVar.zzaU();
                if (!zzae.zza()) {
                    zzb();
                    zzicVar.zzaV().zzk().zza("Getting trigger URIs (FE)");
                    final AtomicReference atomicReference = new AtomicReference();
                    zzicVar.zzaW().zzk(atomicReference, 10000L, "get trigger URIs", new Runnable() { // from class: com.google.android.gms.measurement.internal.zzla
                        @Override // java.lang.Runnable
                        public final /* synthetic */ void run() {
                            zzlj zzljVar = zzlj.this;
                            zzljVar.zzu.zzt().zzw(atomicReference, zzljVar.zzu.zzd().zzi.zza());
                        }
                    });
                    final List list = (List) atomicReference.get();
                    if (list == null) {
                        zzicVar.zzaV().zzd().zza("Timed out waiting for get trigger URIs");
                        return;
                    } else {
                        zzicVar.zzaW().zzj(new Runnable() { // from class: com.google.android.gms.measurement.internal.zzlb
                            @Override // java.lang.Runnable
                            public final /* synthetic */ void run() {
                                boolean contains;
                                zzlj zzljVar = zzlj.this;
                                zzljVar.zzg();
                                if (Build.VERSION.SDK_INT < 30) {
                                    return;
                                }
                                List<zzoh> list2 = list;
                                SparseArray zzf = zzljVar.zzu.zzd().zzf();
                                for (zzoh zzohVar : list2) {
                                    int i = zzohVar.zzc;
                                    contains = zzf.contains(i);
                                    if (!contains || ((Long) zzf.get(i)).longValue() < zzohVar.zzb) {
                                        zzljVar.zzy().add(zzohVar);
                                    }
                                }
                                zzljVar.zzz();
                            }
                        });
                        return;
                    }
                }
                zzicVar.zzaV().zzb().zza("Cannot get trigger URIs from main thread");
                return;
            }
            zzicVar.zzaV().zzb().zza("Cannot get trigger URIs from analytics worker thread");
        }
    }

    public final boolean zzx() {
        return this.zzn;
    }

    @TargetApi(30)
    public final PriorityQueue zzy() {
        if (this.zzm == null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            this.zzm = Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Comparator.CC.comparing(zzlc.zza, zzld.zza));
        }
        return this.zzm;
    }

    @TargetApi(30)
    @WorkerThread
    public final void zzz() {
        zzoh zzohVar;
        zzg();
        this.zzn = false;
        if (!zzy().isEmpty() && !this.zzi && (zzohVar = (zzoh) zzy().poll()) != null) {
            zzic zzicVar = this.zzu;
            MeasurementManagerFutures zzT = zzicVar.zzk().zzT();
            if (zzT != null) {
                this.zzi = true;
                zzgs zzk = zzicVar.zzaV().zzk();
                String str = zzohVar.zza;
                zzk.zzb("Registering trigger URI", str);
                ListenableFuture<Unit> registerTriggerAsync = zzT.registerTriggerAsync(Uri.parse(str));
                if (registerTriggerAsync == null) {
                    this.zzi = false;
                    zzy().add(zzohVar);
                    return;
                }
                Futures.addCallback(registerTriggerAsync, new zzjw(this, zzohVar), new zzjv(this));
            }
        }
    }
}
