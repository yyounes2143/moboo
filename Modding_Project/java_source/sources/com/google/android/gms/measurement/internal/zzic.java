package com.google.android.gms.measurement.internal;

import android.app.Application;
import android.app.BroadcastOptions;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.firebase.messaging.Constants;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import org.checkerframework.dataflow.qual.Pure;
import org.checkerframework.dataflow.qual.SideEffectFree;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzic implements zzjg {
    private static volatile zzic zzb;
    private volatile Boolean zzA;
    private volatile boolean zzB;
    private int zzC;
    private int zzD;
    @VisibleForTesting
    final long zza;
    private final Context zzc;
    private final boolean zzd;
    private final zzae zze;
    private final zzal zzf;
    private final zzhh zzg;
    private final zzgu zzh;
    private final zzhz zzi;
    private final zzoc zzj;
    private final zzpp zzk;
    private final zzgn zzl;
    private final Clock zzm;
    private final zzmb zzn;
    private final zzlj zzo;
    private final zzd zzp;
    private final zzlo zzq;
    private final String zzr;
    private zzgl zzs;
    private zznl zzt;
    private zzba zzu;
    private zzgi zzv;
    private zzlq zzw;
    private Boolean zzy;
    private long zzz;
    private boolean zzx = false;
    private final AtomicInteger zzE = new AtomicInteger(0);

    public zzic(zzjs zzjsVar) {
        long currentTimeMillis;
        boolean z = false;
        Preconditions.checkNotNull(zzjsVar);
        Context context = zzjsVar.zza;
        zzae zzaeVar = new zzae(context);
        this.zze = zzaeVar;
        zzfr.zza = zzaeVar;
        this.zzc = context;
        this.zzd = zzjsVar.zze;
        this.zzA = zzjsVar.zzb;
        this.zzr = zzjsVar.zzg;
        this.zzB = true;
        com.google.android.gms.internal.measurement.zzkm.zzb(context);
        Clock defaultClock = DefaultClock.getInstance();
        this.zzm = defaultClock;
        Long l = zzjsVar.zzf;
        if (l != null) {
            currentTimeMillis = l.longValue();
        } else {
            currentTimeMillis = defaultClock.currentTimeMillis();
        }
        this.zza = currentTimeMillis;
        this.zzf = new zzal(this);
        zzhh zzhhVar = new zzhh(this);
        zzhhVar.zzx();
        this.zzg = zzhhVar;
        zzgu zzguVar = new zzgu(this);
        zzguVar.zzx();
        this.zzh = zzguVar;
        zzpp zzppVar = new zzpp(this);
        zzppVar.zzx();
        this.zzk = zzppVar;
        this.zzl = new zzgn(new zzjr(zzjsVar, this));
        this.zzp = new zzd(this);
        zzmb zzmbVar = new zzmb(this);
        zzmbVar.zzc();
        this.zzn = zzmbVar;
        zzlj zzljVar = new zzlj(this);
        zzljVar.zzc();
        this.zzo = zzljVar;
        zzoc zzocVar = new zzoc(this);
        zzocVar.zzc();
        this.zzj = zzocVar;
        zzlo zzloVar = new zzlo(this);
        zzloVar.zzx();
        this.zzq = zzloVar;
        zzhz zzhzVar = new zzhz(this);
        zzhzVar.zzx();
        this.zzi = zzhzVar;
        com.google.android.gms.internal.measurement.zzdd zzddVar = zzjsVar.zzd;
        z = (zzddVar == null || zzddVar.zzb == 0) ? true : z;
        if (context.getApplicationContext() instanceof Application) {
            zzO(zzljVar);
            if (zzljVar.zzu.zzc.getApplicationContext() instanceof Application) {
                Application application = (Application) zzljVar.zzu.zzc.getApplicationContext();
                if (zzljVar.zza == null) {
                    zzljVar.zza = new zzky(zzljVar);
                }
                if (z) {
                    application.unregisterActivityLifecycleCallbacks(zzljVar.zza);
                    application.registerActivityLifecycleCallbacks(zzljVar.zza);
                    zzgu zzguVar2 = zzljVar.zzu.zzh;
                    zzP(zzguVar2);
                    zzguVar2.zzk().zza("Registered activity lifecycle callback");
                }
            }
        } else {
            zzP(zzguVar);
            zzguVar.zze().zza("Application context is not an Application");
        }
        zzhzVar.zzj(new zzia(this, zzjsVar));
    }

    public static final void zzL() {
        throw new IllegalStateException("Unexpected call on client side");
    }

    private static final void zzM(zzf zzfVar) {
        if (zzfVar != null) {
            return;
        }
        throw new IllegalStateException("Component not created");
    }

    private static final void zzN(zzje zzjeVar) {
        if (zzjeVar != null) {
            return;
        }
        throw new IllegalStateException("Component not created");
    }

    private static final void zzO(zzg zzgVar) {
        if (zzgVar != null) {
            if (zzgVar.zza()) {
                return;
            }
            throw new IllegalStateException("Component not initialized: ".concat(String.valueOf(zzgVar.getClass())));
        }
        throw new IllegalStateException("Component not created");
    }

    private static final void zzP(zzjf zzjfVar) {
        if (zzjfVar != null) {
            if (zzjfVar.zzv()) {
                return;
            }
            throw new IllegalStateException("Component not initialized: ".concat(String.valueOf(zzjfVar.getClass())));
        }
        throw new IllegalStateException("Component not created");
    }

    public static zzic zzy(Context context, com.google.android.gms.internal.measurement.zzdd zzddVar, Long l) {
        Bundle bundle;
        if (zzddVar != null) {
            Bundle bundle2 = zzddVar.zzd;
            zzddVar = new com.google.android.gms.internal.measurement.zzdd(zzddVar.zza, zzddVar.zzb, zzddVar.zzc, bundle2, null);
        }
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(context.getApplicationContext());
        if (zzb == null) {
            synchronized (zzic.class) {
                try {
                    if (zzb == null) {
                        zzb = new zzic(new zzjs(context, zzddVar, l));
                    }
                } finally {
                }
            }
        } else if (zzddVar != null && (bundle = zzddVar.zzd) != null && bundle.containsKey("dataCollectionDefaultEnabled")) {
            Preconditions.checkNotNull(zzb);
            zzb.zzA = Boolean.valueOf(bundle.getBoolean("dataCollectionDefaultEnabled"));
        }
        Preconditions.checkNotNull(zzb);
        return zzb;
    }

    @WorkerThread
    public final boolean zzA() {
        if (this.zzA != null && this.zzA.booleanValue()) {
            return true;
        }
        return false;
    }

    @WorkerThread
    public final boolean zzB() {
        if (zzC() == 0) {
            return true;
        }
        return false;
    }

    @WorkerThread
    public final int zzC() {
        zzhz zzhzVar = this.zzi;
        zzP(zzhzVar);
        zzhzVar.zzg();
        zzal zzalVar = this.zzf;
        if (!zzalVar.zzt()) {
            zzP(zzhzVar);
            zzhzVar.zzg();
            if (this.zzB) {
                zzhh zzhhVar = this.zzg;
                zzN(zzhhVar);
                Boolean zzi = zzhhVar.zzi();
                if (zzi != null) {
                    if (zzi.booleanValue()) {
                        return 0;
                    }
                    return 3;
                }
                zzae zzaeVar = zzalVar.zzu.zze;
                Boolean zzr = zzalVar.zzr("firebase_analytics_collection_enabled");
                if (zzr != null) {
                    if (zzr.booleanValue()) {
                        return 0;
                    }
                    return 4;
                } else if (this.zzA == null || this.zzA.booleanValue()) {
                    return 0;
                } else {
                    return 7;
                }
            }
            return 8;
        }
        return 1;
    }

    @WorkerThread
    public final void zzD(boolean z) {
        zzhz zzhzVar = this.zzi;
        zzP(zzhzVar);
        zzhzVar.zzg();
        this.zzB = z;
    }

    @WorkerThread
    public final boolean zzE() {
        zzhz zzhzVar = this.zzi;
        zzP(zzhzVar);
        zzhzVar.zzg();
        return this.zzB;
    }

    public final void zzF() {
        this.zzC++;
    }

    public final void zzG() {
        this.zzE.incrementAndGet();
    }

    @WorkerThread
    public final boolean zzH() {
        if (this.zzx) {
            zzhz zzhzVar = this.zzi;
            zzP(zzhzVar);
            zzhzVar.zzg();
            Boolean bool = this.zzy;
            if (bool == null || this.zzz == 0 || (!bool.booleanValue() && Math.abs(this.zzm.elapsedRealtime() - this.zzz) > 1000)) {
                this.zzz = this.zzm.elapsedRealtime();
                zzpp zzppVar = this.zzk;
                zzN(zzppVar);
                boolean z = false;
                if (zzppVar.zzY("android.permission.INTERNET")) {
                    zzN(zzppVar);
                    if (zzppVar.zzY("android.permission.ACCESS_NETWORK_STATE")) {
                        Context context = this.zzc;
                        if (Wrappers.packageManager(context).isCallerInstantApp() || this.zzf.zzE() || (zzpp.zzau(context) && zzpp.zzQ(context, false))) {
                            z = true;
                        }
                    }
                }
                Boolean valueOf = Boolean.valueOf(z);
                this.zzy = valueOf;
                if (valueOf.booleanValue()) {
                    zzN(zzppVar);
                    this.zzy = Boolean.valueOf(zzppVar.zzA(zzv().zzk()));
                }
            }
            return this.zzy.booleanValue();
        }
        throw new IllegalStateException("AppMeasurement is not initialized");
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0087, code lost:
        if (r3.zzah() >= 234200) goto L22;
     */
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zzI() {
        /*
            Method dump skipped, instructions count: 456
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzic.zzI():boolean");
    }

    public final /* synthetic */ void zzJ(String str, int i, Throwable th, byte[] bArr, Map map) {
        int i2;
        BroadcastOptions makeBasic;
        BroadcastOptions shareIdentityEnabled;
        Bundle bundle;
        if (i != 200 && i != 204) {
            i2 = 304;
            if (i != 304) {
                i2 = i;
                zzgu zzguVar = this.zzh;
                zzP(zzguVar);
                zzguVar.zze().zzc("Network Request for Deferred Deep Link failed. response, exception", Integer.valueOf(i2), th);
            }
        } else {
            i2 = i;
        }
        if (th == null) {
            zzhh zzhhVar = this.zzg;
            zzN(zzhhVar);
            zzhhVar.zzo.zzb(true);
            if (bArr != null && bArr.length != 0) {
                try {
                    JSONObject jSONObject = new JSONObject(new String(bArr));
                    String optString = jSONObject.optString("deeplink", "");
                    if (TextUtils.isEmpty(optString)) {
                        zzgu zzguVar2 = this.zzh;
                        zzP(zzguVar2);
                        zzguVar2.zzj().zza("Deferred Deep Link is empty.");
                        return;
                    }
                    String optString2 = jSONObject.optString("gclid", "");
                    String optString3 = jSONObject.optString("gbraid", "");
                    String optString4 = jSONObject.optString("gad_source", "");
                    double optDouble = jSONObject.optDouble(CampaignEx.JSON_KEY_TIMESTAMP, FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE);
                    Bundle bundle2 = new Bundle();
                    zzpp zzppVar = this.zzk;
                    zzN(zzppVar);
                    zzic zzicVar = zzppVar.zzu;
                    if (!TextUtils.isEmpty(optString)) {
                        Context context = zzicVar.zzc;
                        List<ResolveInfo> queryIntentActivities = context.getPackageManager().queryIntentActivities(new Intent("android.intent.action.VIEW", Uri.parse(optString)), 0);
                        if (queryIntentActivities != null && !queryIntentActivities.isEmpty()) {
                            if (!TextUtils.isEmpty(optString3)) {
                                bundle2.putString("gbraid", optString3);
                            }
                            if (!TextUtils.isEmpty(optString4)) {
                                bundle2.putString("gad_source", optString4);
                            }
                            bundle2.putString("gclid", optString2);
                            bundle2.putString("_cis", "ddp");
                            this.zzo.zzF("auto", Constants.ScionAnalytics.EVENT_FIREBASE_CAMPAIGN, bundle2);
                            zzN(zzppVar);
                            if (!TextUtils.isEmpty(optString)) {
                                try {
                                    SharedPreferences.Editor edit = context.getSharedPreferences("google.analytics.deferred.deeplink.prefs", 0).edit();
                                    edit.putString("deeplink", optString);
                                    edit.putLong(CampaignEx.JSON_KEY_TIMESTAMP, Double.doubleToRawLongBits(optDouble));
                                    if (edit.commit()) {
                                        Intent intent = new Intent("android.google.analytics.action.DEEPLINK_ACTION");
                                        Context context2 = zzppVar.zzu.zzc;
                                        if (Build.VERSION.SDK_INT >= 34) {
                                            makeBasic = BroadcastOptions.makeBasic();
                                            shareIdentityEnabled = makeBasic.setShareIdentityEnabled(true);
                                            bundle = shareIdentityEnabled.toBundle();
                                            context2.sendBroadcast(intent, null, bundle);
                                            return;
                                        }
                                        context2.sendBroadcast(intent);
                                        return;
                                    }
                                    return;
                                } catch (RuntimeException e) {
                                    zzgu zzguVar3 = zzppVar.zzu.zzh;
                                    zzP(zzguVar3);
                                    zzguVar3.zzb().zzb("Failed to persist Deferred Deep Link. exception", e);
                                    return;
                                }
                            }
                            return;
                        }
                    }
                    zzgu zzguVar4 = this.zzh;
                    zzP(zzguVar4);
                    zzguVar4.zze().zzd("Deferred Deep Link validation failed. gclid, gbraid, deep link", optString2, optString3, optString);
                    return;
                } catch (JSONException e2) {
                    zzgu zzguVar5 = this.zzh;
                    zzP(zzguVar5);
                    zzguVar5.zzb().zzb("Failed to parse the Deferred Deep Link response. exception", e2);
                    return;
                }
            }
            zzgu zzguVar6 = this.zzh;
            zzP(zzguVar6);
            zzguVar6.zzj().zza("Deferred Deep Link response empty.");
            return;
        }
        zzgu zzguVar7 = this.zzh;
        zzP(zzguVar7);
        zzguVar7.zze().zzc("Network Request for Deferred Deep Link failed. response, exception", Integer.valueOf(i2), th);
    }

    public final /* synthetic */ void zzK(zzjs zzjsVar) {
        long j;
        zzhz zzhzVar = this.zzi;
        zzP(zzhzVar);
        zzhzVar.zzg();
        zzal zzalVar = this.zzf;
        zzalVar.zzb();
        zzba zzbaVar = new zzba(this);
        zzbaVar.zzx();
        this.zzu = zzbaVar;
        com.google.android.gms.internal.measurement.zzdd zzddVar = zzjsVar.zzd;
        if (zzddVar == null) {
            j = 0;
        } else {
            j = zzddVar.zza;
        }
        zzgi zzgiVar = new zzgi(this, zzjsVar.zzc, j);
        zzgiVar.zzc();
        this.zzv = zzgiVar;
        zzgl zzglVar = new zzgl(this);
        zzglVar.zzc();
        this.zzs = zzglVar;
        zznl zznlVar = new zznl(this);
        zznlVar.zzc();
        this.zzt = zznlVar;
        zzpp zzppVar = this.zzk;
        zzppVar.zzy();
        this.zzg.zzy();
        this.zzv.zzd();
        zzlq zzlqVar = new zzlq(this);
        zzlqVar.zzc();
        this.zzw = zzlqVar;
        zzlqVar.zzd();
        zzgu zzguVar = this.zzh;
        zzP(zzguVar);
        zzgs zzi = zzguVar.zzi();
        zzalVar.zzi();
        zzi.zzb("App measurement initialized, version", 133005L);
        zzP(zzguVar);
        zzguVar.zzi().zza("To enable debug logging run: adb shell setprop log.tag.FA VERBOSE");
        String zzj = zzgiVar.zzj();
        zzN(zzppVar);
        if (zzppVar.zzaa(zzj, zzalVar.zzz())) {
            zzP(zzguVar);
            zzguVar.zzi().zza("Faster debug mode event logging enabled. To disable, run:\n  adb shell setprop debug.firebase.analytics.app .none.");
        } else {
            zzP(zzguVar);
            zzguVar.zzi().zza("To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app ".concat(String.valueOf(zzj)));
        }
        zzP(zzguVar);
        zzguVar.zzj().zza("Debug-level message logging enabled");
        int i = this.zzC;
        AtomicInteger atomicInteger = this.zzE;
        if (i != atomicInteger.get()) {
            zzP(zzguVar);
            zzguVar.zzb().zzc("Not all components initialized", Integer.valueOf(this.zzC), Integer.valueOf(atomicInteger.get()));
        }
        this.zzx = true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0030, code lost:
        if (r1.zzS() == false) goto L120;
     */
    /* JADX WARN: Removed duplicated region for block: B:115:0x03b5  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00dc  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0169  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x01a6  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x01ce  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0254  */
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(com.google.android.gms.internal.measurement.zzdd r14) {
        /*
            Method dump skipped, instructions count: 1043
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzic.zza(com.google.android.gms.internal.measurement.zzdd):void");
    }

    @Override // com.google.android.gms.measurement.internal.zzjg
    @Pure
    public final zzae zzaU() {
        return this.zze;
    }

    @Override // com.google.android.gms.measurement.internal.zzjg
    @Pure
    public final zzgu zzaV() {
        zzgu zzguVar = this.zzh;
        zzP(zzguVar);
        return zzguVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzjg
    @Pure
    public final zzhz zzaW() {
        zzhz zzhzVar = this.zzi;
        zzP(zzhzVar);
        return zzhzVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzjg
    @Pure
    public final Context zzaY() {
        return this.zzc;
    }

    @Override // com.google.android.gms.measurement.internal.zzjg
    @Pure
    public final Clock zzaZ() {
        return this.zzm;
    }

    @Pure
    public final zzal zzc() {
        return this.zzf;
    }

    @Pure
    public final zzhh zzd() {
        zzhh zzhhVar = this.zzg;
        zzN(zzhhVar);
        return zzhhVar;
    }

    public final zzgu zzf() {
        zzgu zzguVar = this.zzh;
        if (zzguVar != null && zzguVar.zzv()) {
            return zzguVar;
        }
        return null;
    }

    @Pure
    public final zzoc zzh() {
        zzoc zzocVar = this.zzj;
        zzO(zzocVar);
        return zzocVar;
    }

    @SideEffectFree
    public final zzhz zzi() {
        return this.zzi;
    }

    @Pure
    public final zzlj zzj() {
        zzlj zzljVar = this.zzo;
        zzO(zzljVar);
        return zzljVar;
    }

    @Pure
    public final zzpp zzk() {
        zzpp zzppVar = this.zzk;
        zzN(zzppVar);
        return zzppVar;
    }

    @Pure
    public final zzgn zzl() {
        return this.zzl;
    }

    @Pure
    public final zzgl zzm() {
        zzO(this.zzs);
        return this.zzs;
    }

    @Pure
    public final zzlo zzn() {
        zzlo zzloVar = this.zzq;
        zzP(zzloVar);
        return zzloVar;
    }

    @Pure
    public final boolean zzp() {
        return this.zzd;
    }

    @Pure
    public final String zzq() {
        return this.zzr;
    }

    @Pure
    public final zzmb zzs() {
        zzmb zzmbVar = this.zzn;
        zzO(zzmbVar);
        return zzmbVar;
    }

    @Pure
    public final zznl zzt() {
        zzO(this.zzt);
        return this.zzt;
    }

    @Pure
    public final zzba zzu() {
        zzP(this.zzu);
        return this.zzu;
    }

    @Pure
    public final zzgi zzv() {
        zzO(this.zzv);
        return this.zzv;
    }

    @Pure
    public final zzd zzw() {
        zzd zzdVar = this.zzp;
        zzM(zzdVar);
        return zzdVar;
    }

    @Pure
    public final zzlq zzx() {
        zzM(this.zzw);
        return this.zzw;
    }

    @WorkerThread
    public final void zzz(boolean z) {
        this.zzA = Boolean.valueOf(z);
    }
}
