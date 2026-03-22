package com.google.android.gms.ads.internal.overlay;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Color;
import android.os.Build;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebChromeClient;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.Toolbar;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.core.view.ViewCompat;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzbcm;
import com.google.android.gms.internal.ads.zzbcv;
import com.google.android.gms.internal.ads.zzbsp;
import com.google.android.gms.internal.ads.zzbte;
import com.google.android.gms.internal.ads.zzbtk;
import com.google.android.gms.internal.ads.zzcfb;
import com.google.android.gms.internal.ads.zzdsc;
import com.google.android.gms.internal.ads.zzdsd;
import com.google.android.gms.internal.ads.zzecf;
import com.google.android.gms.internal.ads.zzecg;
import com.google.android.gms.internal.ads.zzecy;
import com.google.android.gms.internal.ads.zzeda;
import com.google.android.gms.internal.ads.zzfrl;
import com.google.android.gms.internal.ads.zzfvt;
import java.util.Collections;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public class zzm extends zzbtk implements zzah {
    @VisibleForTesting
    static final int zza = Color.argb(0, 0, 0, 0);
    protected final Activity zzb;
    @Nullable
    @VisibleForTesting
    AdOverlayInfoParcel zzc;
    @VisibleForTesting
    zzcfb zzd;
    @VisibleForTesting
    zzi zze;
    @VisibleForTesting
    zzu zzf;
    @VisibleForTesting
    FrameLayout zzh;
    @VisibleForTesting
    WebChromeClient.CustomViewCallback zzi;
    @VisibleForTesting
    zzh zzl;
    private Runnable zzq;
    private boolean zzr;
    private boolean zzs;
    private Toolbar zzw;
    @VisibleForTesting
    boolean zzg = false;
    @VisibleForTesting
    boolean zzj = false;
    @VisibleForTesting
    boolean zzk = false;
    @VisibleForTesting
    boolean zzm = false;
    @VisibleForTesting
    int zzn = 1;
    private final Object zzo = new Object();
    private final View.OnClickListener zzp = new zzf(this);
    private boolean zzt = false;
    private boolean zzu = false;
    private boolean zzv = true;

    public zzm(Activity activity) {
        this.zzb = activity;
    }

    private final void zzJ(View view) {
        zzeda zzQ;
        zzecy zzP;
        zzcfb zzcfbVar = this.zzd;
        if (zzcfbVar != null) {
            if (((Boolean) zzbd.zzc().zzb(zzbcv.zzfz)).booleanValue() && (zzP = zzcfbVar.zzP()) != null) {
                zzP.zza(view);
            } else if (((Boolean) zzbd.zzc().zzb(zzbcv.zzfy)).booleanValue() && (zzQ = zzcfbVar.zzQ()) != null && zzQ.zzb()) {
                com.google.android.gms.ads.internal.zzv.zzC().zzg(zzQ.zza(), view);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0031, code lost:
        if (((java.lang.Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(com.google.android.gms.internal.ads.zzbcv.zzaU)).booleanValue() != false) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0034, code lost:
        r1 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0048, code lost:
        if (((java.lang.Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(com.google.android.gms.internal.ads.zzbcv.zzaT)).booleanValue() != false) goto L37;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzK(android.content.res.Configuration r6) {
        /*
            r5 = this;
            com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel r0 = r5.zzc
            r1 = 1
            r2 = 0
            if (r0 == 0) goto L10
            com.google.android.gms.ads.internal.zzl r0 = r0.zzo
            if (r0 == 0) goto L10
            boolean r0 = r0.zzb
            if (r0 == 0) goto L10
            r0 = r1
            goto L11
        L10:
            r0 = r2
        L11:
            android.app.Activity r3 = r5.zzb
            com.google.android.gms.ads.internal.util.zzaa r4 = com.google.android.gms.ads.internal.zzv.zzs()
            boolean r6 = r4.zzd(r3, r6)
            boolean r4 = r5.zzk
            if (r4 == 0) goto L36
            if (r0 != 0) goto L36
            com.google.android.gms.internal.ads.zzbcm r0 = com.google.android.gms.internal.ads.zzbcv.zzaU
            com.google.android.gms.internal.ads.zzbct r4 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r0 = r4.zzb(r0)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto L34
            goto L36
        L34:
            r1 = r2
            goto L57
        L36:
            if (r6 == 0) goto L4a
            com.google.android.gms.internal.ads.zzbcm r6 = com.google.android.gms.internal.ads.zzbcv.zzaT
            com.google.android.gms.internal.ads.zzbct r0 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r6 = r0.zzb(r6)
            java.lang.Boolean r6 = (java.lang.Boolean) r6
            boolean r6 = r6.booleanValue()
            if (r6 == 0) goto L34
        L4a:
            com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel r6 = r5.zzc
            if (r6 == 0) goto L57
            com.google.android.gms.ads.internal.zzl r6 = r6.zzo
            if (r6 == 0) goto L57
            boolean r6 = r6.zzg
            if (r6 == 0) goto L57
            r2 = r1
        L57:
            android.view.Window r6 = r3.getWindow()
            com.google.android.gms.internal.ads.zzbcm r0 = com.google.android.gms.internal.ads.zzbcv.zzbr
            com.google.android.gms.internal.ads.zzbct r3 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r0 = r3.zzb(r0)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto L81
            android.view.View r6 = r6.getDecorView()
            if (r1 == 0) goto L7b
            if (r2 == 0) goto L78
            r0 = 5894(0x1706, float:8.259E-42)
            goto L7d
        L78:
            r0 = 5380(0x1504, float:7.539E-42)
            goto L7d
        L7b:
            r0 = 256(0x100, float:3.59E-43)
        L7d:
            r6.setSystemUiVisibility(r0)
            return
        L81:
            r0 = 2048(0x800, float:2.87E-42)
            r3 = 1024(0x400, float:1.435E-42)
            if (r1 == 0) goto L99
            r6.addFlags(r3)
            r6.clearFlags(r0)
            if (r2 == 0) goto L98
            android.view.View r6 = r6.getDecorView()
            r0 = 4098(0x1002, float:5.743E-42)
            r6.setSystemUiVisibility(r0)
        L98:
            return
        L99:
            r6.addFlags(r0)
            r6.clearFlags(r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.overlay.zzm.zzK(android.content.res.Configuration):void");
    }

    private static final void zzL(@Nullable zzeda zzedaVar, @Nullable View view) {
        if (zzedaVar != null && view != null) {
            if (!((Boolean) zzbd.zzc().zzb(zzbcv.zzfy)).booleanValue() || !zzedaVar.zzb()) {
                com.google.android.gms.ads.internal.zzv.zzC().zzj(zzedaVar.zza(), view);
            }
        }
    }

    public final void zzA(int i) {
        Activity activity = this.zzb;
        if (activity.getApplicationInfo().targetSdkVersion >= ((Integer) zzbd.zzc().zzb(zzbcv.zzgh)).intValue()) {
            if (activity.getApplicationInfo().targetSdkVersion <= ((Integer) zzbd.zzc().zzb(zzbcv.zzgi)).intValue()) {
                int i2 = Build.VERSION.SDK_INT;
                if (i2 >= ((Integer) zzbd.zzc().zzb(zzbcv.zzgj)).intValue()) {
                    if (i2 <= ((Integer) zzbd.zzc().zzb(zzbcv.zzgk)).intValue()) {
                        return;
                    }
                }
            }
        }
        try {
            activity.setRequestedOrientation(i);
        } catch (Throwable th) {
            com.google.android.gms.ads.internal.zzv.zzp().zzv(th, "AdOverlay.setRequestedOrientation");
        }
    }

    public final void zzB(boolean z) {
        if (z) {
            this.zzl.setBackgroundColor(0);
        } else {
            this.zzl.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        }
    }

    public final void zzC(View view, WebChromeClient.CustomViewCallback customViewCallback) {
        Activity activity = this.zzb;
        FrameLayout frameLayout = new FrameLayout(activity);
        this.zzh = frameLayout;
        frameLayout.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        this.zzh.addView(view, -1, -1);
        activity.setContentView(this.zzh);
        this.zzs = true;
        this.zzi = customViewCallback;
        this.zzg = true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0292  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x02a2  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x00a4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0187  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x019a  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x01b2  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x01c2  */
    /* JADX WARN: Type inference failed for: r2v18 */
    /* JADX WARN: Type inference failed for: r2v19 */
    /* JADX WARN: Type inference failed for: r2v20 */
    /* JADX WARN: Type inference failed for: r2v7, types: [boolean, int] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzD(boolean r42) throws com.google.android.gms.ads.internal.overlay.zzg {
        /*
            Method dump skipped, instructions count: 729
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.overlay.zzm.zzD(boolean):void");
    }

    public final void zzE() {
        synchronized (this.zzo) {
            try {
                this.zzr = true;
                Runnable runnable = this.zzq;
                if (runnable != null) {
                    zzfrl zzfrlVar = com.google.android.gms.ads.internal.util.zzs.zza;
                    zzfrlVar.removeCallbacks(runnable);
                    zzfrlVar.post(this.zzq);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zzF() {
        AdOverlayInfoParcel adOverlayInfoParcel;
        zzr zzrVar;
        if (this.zzb.isFinishing() && !this.zzt) {
            this.zzt = true;
            zzcfb zzcfbVar = this.zzd;
            if (zzcfbVar != null) {
                zzcfbVar.zzZ(this.zzn - 1);
                synchronized (this.zzo) {
                    try {
                        if (!this.zzr && this.zzd.zzaC()) {
                            if (((Boolean) zzbd.zzc().zzb(zzbcv.zzfk)).booleanValue() && !this.zzu && (adOverlayInfoParcel = this.zzc) != null && (zzrVar = adOverlayInfoParcel.zzc) != null) {
                                zzrVar.zzds();
                            }
                            Runnable runnable = new Runnable() { // from class: com.google.android.gms.ads.internal.overlay.zzd
                                @Override // java.lang.Runnable
                                public final void run() {
                                    zzm.this.zzc();
                                }
                            };
                            this.zzq = runnable;
                            com.google.android.gms.ads.internal.util.zzs.zza.postDelayed(runnable, ((Long) zzbd.zzc().zzb(zzbcv.zzbk)).longValue());
                            return;
                        }
                    } finally {
                    }
                }
            }
            zzc();
        }
    }

    public final void zzG(String str) {
        Toolbar toolbar = this.zzw;
        if (toolbar != null) {
            toolbar.setSubtitle(str);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbtl
    public final boolean zzH() {
        this.zzn = 1;
        if (this.zzd == null) {
            return true;
        }
        if (((Boolean) zzbd.zzc().zzb(zzbcv.zzji)).booleanValue() && this.zzd.canGoBack()) {
            this.zzd.goBack();
            return false;
        }
        boolean zzaH = this.zzd.zzaH();
        if (!zzaH) {
            this.zzd.zzd("onbackblocked", Collections.EMPTY_MAP);
        }
        return zzaH;
    }

    public final void zzb() {
        this.zzn = 3;
        Activity activity = this.zzb;
        activity.finish();
        AdOverlayInfoParcel adOverlayInfoParcel = this.zzc;
        if (adOverlayInfoParcel != null && adOverlayInfoParcel.zzk == 5) {
            activity.overridePendingTransition(0, 0);
            zzcfb zzcfbVar = this.zzd;
            if (zzcfbVar != null) {
                zzcfbVar.zzai(null);
            }
        }
    }

    @VisibleForTesting
    public final void zzc() {
        zzcfb zzcfbVar;
        zzr zzrVar;
        if (!this.zzu) {
            this.zzu = true;
            zzcfb zzcfbVar2 = this.zzd;
            if (zzcfbVar2 != null) {
                this.zzl.removeView(zzcfbVar2.zzF());
                zzi zziVar = this.zze;
                if (zziVar != null) {
                    this.zzd.zzan(zziVar.zzd);
                    this.zzd.zzaq(false);
                    if (((Boolean) zzbd.zzc().zzb(zzbcv.zzmU)).booleanValue() && this.zzd.getParent() != null) {
                        ((ViewGroup) this.zzd.getParent()).removeView(this.zzd.zzF());
                    }
                    ViewGroup viewGroup = this.zze.zzc;
                    View zzF = this.zzd.zzF();
                    zzi zziVar2 = this.zze;
                    viewGroup.addView(zzF, zziVar2.zza, zziVar2.zzb);
                    this.zze = null;
                } else {
                    Activity activity = this.zzb;
                    if (activity.getApplicationContext() != null) {
                        this.zzd.zzan(activity.getApplicationContext());
                    }
                }
                this.zzd = null;
            }
            AdOverlayInfoParcel adOverlayInfoParcel = this.zzc;
            if (adOverlayInfoParcel != null && (zzrVar = adOverlayInfoParcel.zzc) != null) {
                zzrVar.zzdw(this.zzn);
            }
            AdOverlayInfoParcel adOverlayInfoParcel2 = this.zzc;
            if (adOverlayInfoParcel2 != null && (zzcfbVar = adOverlayInfoParcel2.zzd) != null) {
                zzL(zzcfbVar.zzQ(), this.zzc.zzd.zzF());
            }
        }
    }

    public final void zzd() {
        this.zzl.zzb = true;
    }

    public final void zze() {
        this.zzd.zzaa();
    }

    public final void zzf(zzecg zzecgVar) throws zzg, RemoteException {
        zzbte zzbteVar;
        AdOverlayInfoParcel adOverlayInfoParcel = this.zzc;
        if (adOverlayInfoParcel != null && (zzbteVar = adOverlayInfoParcel.zzv) != null) {
            zzbteVar.zzg(ObjectWrapper.wrap(zzecgVar));
            return;
        }
        throw new zzg("noioou");
    }

    public final void zzg() {
        AdOverlayInfoParcel adOverlayInfoParcel = this.zzc;
        if (adOverlayInfoParcel != null && this.zzg) {
            zzA(adOverlayInfoParcel.zzj);
        }
        if (this.zzh != null) {
            this.zzb.setContentView(this.zzl);
            this.zzs = true;
            this.zzh.removeAllViews();
            this.zzh = null;
        }
        WebChromeClient.CustomViewCallback customViewCallback = this.zzi;
        if (customViewCallback != null) {
            customViewCallback.onCustomViewHidden();
            this.zzi = null;
        }
        this.zzg = false;
    }

    @Override // com.google.android.gms.internal.ads.zzbtl
    public final void zzh(int i, int i2, Intent intent) {
        zzdsd zze;
        AdOverlayInfoParcel adOverlayInfoParcel;
        if (i == 236) {
            zzbcm zzbcmVar = zzbcv.zznp;
            if (((Boolean) zzbd.zzc().zzb(zzbcmVar)).booleanValue()) {
                com.google.android.gms.ads.internal.util.zze.zza("Callback from intent launch with requestCode: 236 and resultCode: " + i2);
                zzcfb zzcfbVar = this.zzd;
                if (zzcfbVar != null && zzcfbVar.zzN() != null && (zze = zzcfbVar.zzN().zze()) != null && (adOverlayInfoParcel = this.zzc) != null && ((Boolean) zzbd.zzc().zzb(zzbcmVar)).booleanValue()) {
                    zzdsc zza2 = zze.zza();
                    zza2.zzb("action", "hilca");
                    zza2.zzb("gqi", zzfvt.zzc(adOverlayInfoParcel.zzq));
                    StringBuilder sb = new StringBuilder();
                    sb.append(i2);
                    zza2.zzb("hilr", sb.toString());
                    if (i2 == -1 && intent != null) {
                        String stringExtra = intent.getStringExtra("callerPackage");
                        String stringExtra2 = intent.getStringExtra("loadingStage");
                        if (stringExtra != null) {
                            zza2.zzb("hilcp", stringExtra);
                        }
                        if (stringExtra2 != null) {
                            zza2.zzb("hills", stringExtra2);
                        }
                    }
                    zza2.zzi();
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbtl
    public final void zzi() {
        this.zzn = 1;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzah
    public final void zzj() {
        this.zzn = 2;
        this.zzb.finish();
    }

    @Override // com.google.android.gms.internal.ads.zzbtl
    public final void zzk(IObjectWrapper iObjectWrapper) {
        zzK((Configuration) ObjectWrapper.unwrap(iObjectWrapper));
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x008d A[Catch: zzg -> 0x0037, TryCatch #0 {zzg -> 0x0037, blocks: (B:12:0x001b, B:14:0x0029, B:16:0x002d, B:18:0x0033, B:21:0x003a, B:22:0x0043, B:24:0x004e, B:25:0x0050, B:27:0x0056, B:28:0x0062, B:30:0x0069, B:36:0x0076, B:38:0x007a, B:40:0x007f, B:43:0x008d, B:45:0x0091, B:47:0x0097, B:48:0x009a, B:50:0x00a0, B:51:0x00a3, B:53:0x00a9, B:55:0x00ad, B:56:0x00b0, B:58:0x00b6, B:59:0x00b9, B:66:0x00e4, B:68:0x00e8, B:69:0x00ef, B:70:0x00f0, B:72:0x00f4, B:74:0x0101, B:33:0x0070, B:35:0x0074, B:41:0x0089, B:76:0x0105, B:77:0x010c), top: B:80:0x001b }] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00dc  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0101 A[Catch: zzg -> 0x0037, TryCatch #0 {zzg -> 0x0037, blocks: (B:12:0x001b, B:14:0x0029, B:16:0x002d, B:18:0x0033, B:21:0x003a, B:22:0x0043, B:24:0x004e, B:25:0x0050, B:27:0x0056, B:28:0x0062, B:30:0x0069, B:36:0x0076, B:38:0x007a, B:40:0x007f, B:43:0x008d, B:45:0x0091, B:47:0x0097, B:48:0x009a, B:50:0x00a0, B:51:0x00a3, B:53:0x00a9, B:55:0x00ad, B:56:0x00b0, B:58:0x00b6, B:59:0x00b9, B:66:0x00e4, B:68:0x00e8, B:69:0x00ef, B:70:0x00f0, B:72:0x00f4, B:74:0x0101, B:33:0x0070, B:35:0x0074, B:41:0x0089, B:76:0x0105, B:77:0x010c), top: B:80:0x001b }] */
    @Override // com.google.android.gms.internal.ads.zzbtl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void zzl(android.os.Bundle r9) {
        /*
            Method dump skipped, instructions count: 286
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.overlay.zzm.zzl(android.os.Bundle):void");
    }

    @Override // com.google.android.gms.internal.ads.zzbtl
    public final void zzm() {
        zzcfb zzcfbVar = this.zzd;
        if (zzcfbVar != null) {
            try {
                this.zzl.removeView(zzcfbVar.zzF());
            } catch (NullPointerException unused) {
            }
        }
        zzF();
    }

    public final void zzn() {
        if (this.zzm) {
            this.zzm = false;
            zze();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbtl
    public final void zzo() {
        zzr zzrVar;
        zzg();
        AdOverlayInfoParcel adOverlayInfoParcel = this.zzc;
        if (adOverlayInfoParcel != null && (zzrVar = adOverlayInfoParcel.zzc) != null) {
            zzrVar.zzdk();
        }
        if (!((Boolean) zzbd.zzc().zzb(zzbcv.zzfm)).booleanValue() && this.zzd != null && (!this.zzb.isFinishing() || this.zze == null)) {
            this.zzd.onPause();
        }
        zzF();
    }

    @Override // com.google.android.gms.internal.ads.zzbtl
    public final void zzp(int i, String[] strArr, int[] iArr) {
        zzm zzmVar;
        if (i == 12345) {
            Activity activity = this.zzb;
            zzecf zze = zzecg.zze();
            zze.zza(activity);
            if (this.zzc.zzk == 5) {
                zzmVar = this;
            } else {
                zzmVar = null;
            }
            zze.zzb(zzmVar);
            try {
                this.zzc.zzv.zzf(strArr, iArr, ObjectWrapper.wrap(zze.zze()));
            } catch (RemoteException unused) {
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbtl
    public final void zzr() {
        zzr zzrVar;
        AdOverlayInfoParcel adOverlayInfoParcel = this.zzc;
        if (adOverlayInfoParcel != null && (zzrVar = adOverlayInfoParcel.zzc) != null) {
            zzrVar.zzdH();
        }
        zzK(this.zzb.getResources().getConfiguration());
        if (!((Boolean) zzbd.zzc().zzb(zzbcv.zzfm)).booleanValue()) {
            zzcfb zzcfbVar = this.zzd;
            if (zzcfbVar != null && !zzcfbVar.zzaE()) {
                this.zzd.onResume();
                return;
            }
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("The webview does not exist. Ignoring action.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbtl
    public final void zzs(Bundle bundle) {
        bundle.putBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", this.zzj);
    }

    @Override // com.google.android.gms.internal.ads.zzbtl
    public final void zzt() {
        if (((Boolean) zzbd.zzc().zzb(zzbcv.zzfm)).booleanValue()) {
            zzcfb zzcfbVar = this.zzd;
            if (zzcfbVar != null && !zzcfbVar.zzaE()) {
                this.zzd.onResume();
                return;
            }
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("The webview does not exist. Ignoring action.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbtl
    public final void zzu() {
        if (((Boolean) zzbd.zzc().zzb(zzbcv.zzfm)).booleanValue() && this.zzd != null && (!this.zzb.isFinishing() || this.zze == null)) {
            this.zzd.onPause();
        }
        zzF();
    }

    @Override // com.google.android.gms.internal.ads.zzbtl
    public final void zzv() {
        zzr zzrVar;
        AdOverlayInfoParcel adOverlayInfoParcel = this.zzc;
        if (adOverlayInfoParcel != null && (zzrVar = adOverlayInfoParcel.zzc) != null) {
            zzrVar.zzdv();
        }
    }

    public final void zzw(boolean z) {
        boolean z2;
        int i;
        int i2;
        if (this.zzc.zzw) {
            return;
        }
        int intValue = ((Integer) zzbd.zzc().zzb(zzbcv.zzfp)).intValue();
        int i3 = 0;
        if (((Boolean) zzbd.zzc().zzb(zzbcv.zzbn)).booleanValue() || z) {
            z2 = true;
        } else {
            z2 = false;
        }
        zzt zztVar = new zzt();
        zztVar.zzd = 50;
        if (true != z2) {
            i = 0;
        } else {
            i = intValue;
        }
        zztVar.zza = i;
        if (true != z2) {
            i3 = intValue;
        }
        zztVar.zzb = i3;
        zztVar.zzc = intValue;
        this.zzf = new zzu(this.zzb, zztVar, this);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(10);
        if (true != z2) {
            i2 = 9;
        } else {
            i2 = 11;
        }
        layoutParams.addRule(i2);
        zzy(z, this.zzc.zzg);
        this.zzl.addView(this.zzf, layoutParams);
        zzJ(this.zzf);
    }

    @Override // com.google.android.gms.internal.ads.zzbtl
    public final void zzx() {
        this.zzs = true;
    }

    public final void zzy(boolean z, boolean z2) {
        boolean z3;
        boolean z4;
        AdOverlayInfoParcel adOverlayInfoParcel;
        com.google.android.gms.ads.internal.zzl zzlVar;
        AdOverlayInfoParcel adOverlayInfoParcel2;
        com.google.android.gms.ads.internal.zzl zzlVar2;
        boolean z5 = true;
        if (((Boolean) zzbd.zzc().zzb(zzbcv.zzbl)).booleanValue() && (adOverlayInfoParcel2 = this.zzc) != null && (zzlVar2 = adOverlayInfoParcel2.zzo) != null && zzlVar2.zzh) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (((Boolean) zzbd.zzc().zzb(zzbcv.zzbm)).booleanValue() && (adOverlayInfoParcel = this.zzc) != null && (zzlVar = adOverlayInfoParcel.zzo) != null && zzlVar.zzi) {
            z4 = true;
        } else {
            z4 = false;
        }
        if (z && z2 && z3 && !z4) {
            new zzbsp(this.zzd, "useCustomClose").zzh("Custom close has been disabled for interstitial ads in this ad slot.");
        }
        zzu zzuVar = this.zzf;
        if (zzuVar != null) {
            if (!z4 && (!z2 || z3)) {
                z5 = false;
            }
            zzuVar.zzb(z5);
        }
    }

    public final void zzz() {
        this.zzl.removeView(this.zzf);
        zzw(true);
    }

    @Override // com.google.android.gms.internal.ads.zzbtl
    public final void zzq() {
    }
}
