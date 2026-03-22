package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.net.Uri;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.core.view.ViewCompat;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.util.Predicate;
import java.io.ByteArrayInputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import javax.annotation.ParametersAreNonnullByDefault;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
/* compiled from: Proguard */
@ParametersAreNonnullByDefault
@VisibleForTesting(otherwise = 3)
/* loaded from: classes4.dex */
public class zzcfj extends WebViewClient implements zzcgt {
    public static final /* synthetic */ int zzb = 0;
    @Nullable
    private zzdsd zzA;
    private boolean zzB;
    private boolean zzC;
    private int zzD;
    private boolean zzE;
    @Nullable
    private final zzece zzG;
    private View.OnAttachStateChangeListener zzH;
    @Nullable
    protected zzbxv zza;
    private final zzcfb zzc;
    @Nullable
    private final zzbbt zzd;
    private com.google.android.gms.ads.internal.client.zza zzg;
    private com.google.android.gms.ads.internal.overlay.zzr zzh;
    private zzcgr zzi;
    private zzcgs zzj;
    private zzbim zzk;
    private zzbio zzl;
    private zzddy zzm;
    private boolean zzn;
    private boolean zzo;
    private boolean zzs;
    private boolean zzt;
    private boolean zzu;
    private boolean zzv;
    private com.google.android.gms.ads.internal.overlay.zzad zzw;
    @Nullable
    private zzbso zzx;
    private com.google.android.gms.ads.internal.zzb zzy;
    private final HashMap zze = new HashMap();
    private final Object zzf = new Object();
    private int zzp = 0;
    private String zzq = "";
    private String zzr = "";
    private zzbsj zzz = null;
    private final HashSet zzF = new HashSet(Arrays.asList(((String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzfT)).split(",")));

    @VisibleForTesting
    public zzcfj(zzcfb zzcfbVar, @Nullable zzbbt zzbbtVar, boolean z, zzbso zzbsoVar, @Nullable zzbsj zzbsjVar, @Nullable zzece zzeceVar) {
        this.zzd = zzbbtVar;
        this.zzc = zzcfbVar;
        this.zzs = z;
        this.zzx = zzbsoVar;
        this.zzG = zzeceVar;
    }

    @Nullable
    private static WebResourceResponse zzY() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzaY)).booleanValue()) {
            return new WebResourceResponse("", "", new ByteArrayInputStream(new byte[0]));
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x0101, code lost:
        com.google.android.gms.ads.internal.zzv.zzr();
        com.google.android.gms.ads.internal.zzv.zzr();
        r1 = r10.getContentType();
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x010f, code lost:
        r6 = "";
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0113, code lost:
        if (android.text.TextUtils.isEmpty(r1) == false) goto L89;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0115, code lost:
        r12 = "";
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0117, code lost:
        r12 = r1.split(";")[0].trim();
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0122, code lost:
        com.google.android.gms.ads.internal.zzv.zzr();
        r1 = r10.getContentType();
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x012d, code lost:
        if (android.text.TextUtils.isEmpty(r1) == false) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x012f, code lost:
        r13 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0131, code lost:
        r1 = r1.split(";");
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0136, code lost:
        if (r1.length != 1) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0139, code lost:
        r3 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x013b, code lost:
        if (r3 >= r1.length) goto L88;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0149, code lost:
        if (r1[r3].trim().startsWith("charset") == false) goto L87;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x014b, code lost:
        r5 = r1[r3].trim().split("=");
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0158, code lost:
        if (r5.length <= 1) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x015a, code lost:
        r6 = r5[1].trim();
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0161, code lost:
        r3 = r3 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0163, code lost:
        r0 = r10.getHeaderFields();
        r1 = new java.util.HashMap(r0.size());
        r0 = r0.entrySet().iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x017c, code lost:
        if (r0.hasNext() == false) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x017e, code lost:
        r3 = r0.next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0188, code lost:
        if (r3.getKey() == null) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x018e, code lost:
        if (r3.getValue() == null) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x019a, code lost:
        if (r3.getValue().isEmpty() != false) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x019c, code lost:
        r1.put(r3.getKey(), r3.getValue().get(0));
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x01b2, code lost:
        r6 = com.google.android.gms.ads.internal.zzv.zzs().zzb(r12, r13, r10.getResponseCode(), r10.getResponseMessage(), r1, r10.getInputStream());
     */
    @androidx.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final android.webkit.WebResourceResponse zzZ(java.lang.String r19, java.util.Map r20) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 487
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcfj.zzZ(java.lang.String, java.util.Map):android.webkit.WebResourceResponse");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzaa(Map map, List list, String str) {
        if (com.google.android.gms.ads.internal.util.zze.zzc()) {
            com.google.android.gms.ads.internal.util.zze.zza("Received GMSG: ".concat(str));
            for (String str2 : map.keySet()) {
                com.google.android.gms.ads.internal.util.zze.zza("  " + str2 + ": " + ((String) map.get(str2)));
            }
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((zzbjw) it.next()).zza(this.zzc, map);
        }
    }

    private final void zzab() {
        View.OnAttachStateChangeListener onAttachStateChangeListener = this.zzH;
        if (onAttachStateChangeListener == null) {
            return;
        }
        ((View) this.zzc).removeOnAttachStateChangeListener(onAttachStateChangeListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzac(final View view, final zzbxv zzbxvVar, final int i) {
        if (zzbxvVar.zzi() && i > 0) {
            zzbxvVar.zzg(view);
            if (zzbxvVar.zzi()) {
                com.google.android.gms.ads.internal.util.zzs.zza.postDelayed(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcfc
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzcfj.this.zzac(view, zzbxvVar, i - 1);
                    }
                }, 100L);
            }
        }
    }

    private static final boolean zzad(zzcfb zzcfbVar) {
        if (zzcfbVar.zzD() != null && zzcfbVar.zzD().zzb()) {
            return true;
        }
        return false;
    }

    private static final boolean zzae(boolean z, zzcfb zzcfbVar) {
        if (z && !zzcfbVar.zzO().zzi() && !zzcfbVar.zzU().equals("interstitial_mb")) {
            return true;
        }
        return false;
    }

    public static /* synthetic */ void zzh(zzcfj zzcfjVar) {
        zzcfb zzcfbVar = zzcfjVar.zzc;
        zzcfbVar.zzad();
        com.google.android.gms.ads.internal.overlay.zzm zzL = zzcfbVar.zzL();
        if (zzL != null) {
            zzL.zzz();
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zza
    public final void onAdClicked() {
        com.google.android.gms.ads.internal.client.zza zzaVar = this.zzg;
        if (zzaVar != null) {
            zzaVar.onAdClicked();
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onLoadResource(WebView webView, String str) {
        com.google.android.gms.ads.internal.util.zze.zza("Loading resource: ".concat(String.valueOf(str)));
        Uri parse = Uri.parse(str);
        if ("gmsg".equalsIgnoreCase(parse.getScheme()) && "mobileads.google.com".equalsIgnoreCase(parse.getHost())) {
            zzn(parse);
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        synchronized (this.zzf) {
            try {
                zzcfb zzcfbVar = this.zzc;
                if (zzcfbVar.zzaE()) {
                    com.google.android.gms.ads.internal.util.zze.zza("Blank page loaded, 1...");
                    zzcfbVar.zzX();
                    return;
                }
                this.zzB = true;
                zzcgs zzcgsVar = this.zzj;
                if (zzcgsVar != null) {
                    zzcgsVar.zza();
                    this.zzj = null;
                }
                zzk();
                zzcfb zzcfbVar2 = this.zzc;
                if (zzcfbVar2.zzL() != null) {
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzmi)).booleanValue()) {
                        zzcfbVar2.zzL().zzG(str);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, int i, String str, String str2) {
        this.zzo = true;
        this.zzp = i;
        this.zzq = str;
        this.zzr = str2;
    }

    @Override // android.webkit.WebViewClient
    @TargetApi(26)
    public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        boolean didCrash;
        int rendererPriorityAtExit;
        zzcfb zzcfbVar = this.zzc;
        didCrash = renderProcessGoneDetail.didCrash();
        rendererPriorityAtExit = renderProcessGoneDetail.rendererPriorityAtExit();
        return zzcfbVar.zzaD(didCrash, rendererPriorityAtExit);
    }

    @Override // android.webkit.WebViewClient
    @Nullable
    public final WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        return zzc(str, Collections.EMPTY_MAP);
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideKeyEvent(WebView webView, KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        if (keyCode == 79 || keyCode == 222) {
            return true;
        }
        switch (keyCode) {
            case 85:
            case 86:
            case 87:
            case 88:
            case 89:
            case 90:
            case 91:
                return true;
            default:
                switch (keyCode) {
                    case 126:
                    case 127:
                    case 128:
                    case 129:
                    case 130:
                        return true;
                    default:
                        return false;
                }
        }
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        String str2;
        com.google.android.gms.ads.internal.util.zze.zza("AdWebView shouldOverrideUrlLoading: ".concat(String.valueOf(str)));
        Uri parse = Uri.parse(str);
        if ("gmsg".equalsIgnoreCase(parse.getScheme()) && "mobileads.google.com".equalsIgnoreCase(parse.getHost())) {
            zzn(parse);
        } else {
            if (this.zzn && webView == this.zzc.zzG()) {
                String scheme = parse.getScheme();
                if ("http".equalsIgnoreCase(scheme) || "https".equalsIgnoreCase(scheme)) {
                    com.google.android.gms.ads.internal.client.zza zzaVar = this.zzg;
                    if (zzaVar != null) {
                        zzaVar.onAdClicked();
                        zzbxv zzbxvVar = this.zza;
                        if (zzbxvVar != null) {
                            zzbxvVar.zzh(str);
                        }
                        this.zzg = null;
                    }
                    zzddy zzddyVar = this.zzm;
                    if (zzddyVar != null) {
                        zzddyVar.zzdf();
                        this.zzm = null;
                    }
                    return super.shouldOverrideUrlLoading(webView, str);
                }
            }
            zzcfb zzcfbVar = this.zzc;
            if (!zzcfbVar.zzG().willNotDraw()) {
                try {
                    zzavl zzI = zzcfbVar.zzI();
                    zzfct zzS = zzcfbVar.zzS();
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzmm)).booleanValue() && zzS != null) {
                        if (zzI != null && zzI.zzf(parse)) {
                            parse = zzS.zza(parse, zzcfbVar.getContext(), (View) zzcfbVar, zzcfbVar.zzi());
                        }
                    } else if (zzI != null && zzI.zzf(parse)) {
                        parse = zzI.zza(parse, zzcfbVar.getContext(), (View) zzcfbVar, zzcfbVar.zzi());
                    }
                } catch (zzavm unused) {
                    com.google.android.gms.ads.internal.util.client.zzo.zzj("Unable to append parameter to URL: ".concat(String.valueOf(str)));
                }
                com.google.android.gms.ads.internal.zzb zzbVar = this.zzy;
                if (zzbVar != null && !zzbVar.zzc()) {
                    zzbVar.zzb(str);
                } else {
                    com.google.android.gms.ads.internal.overlay.zzc zzcVar = new com.google.android.gms.ads.internal.overlay.zzc("android.intent.action.VIEW", parse.toString(), null, null, null, null, null, null);
                    zzcfb zzcfbVar2 = this.zzc;
                    if (zzcfbVar2 != null) {
                        str2 = zzcfbVar2.zzr();
                    } else {
                        str2 = "";
                    }
                    zzv(zzcVar, true, false, str2);
                }
            } else {
                com.google.android.gms.ads.internal.util.client.zzo.zzj("AdWebView unable to handle URL: ".concat(String.valueOf(str)));
            }
        }
        return true;
    }

    public final void zzA(boolean z, int i, String str, boolean z2, boolean z3) {
        com.google.android.gms.ads.internal.client.zza zzaVar;
        zzcfi zzcfiVar;
        zzddy zzddyVar;
        zzcfb zzcfbVar = this.zzc;
        boolean zzaF = zzcfbVar.zzaF();
        boolean zzae = zzae(zzaF, zzcfbVar);
        boolean z4 = true;
        if (!zzae && z2) {
            z4 = false;
        }
        if (zzae) {
            zzaVar = null;
        } else {
            zzaVar = this.zzg;
        }
        if (zzaF) {
            zzcfiVar = null;
        } else {
            zzcfiVar = new zzcfi(zzcfbVar, this.zzh);
        }
        zzbim zzbimVar = this.zzk;
        zzece zzeceVar = null;
        zzbio zzbioVar = this.zzl;
        boolean z5 = z4;
        zzcfi zzcfiVar2 = zzcfiVar;
        com.google.android.gms.ads.internal.overlay.zzad zzadVar = this.zzw;
        VersionInfoParcel zzm = zzcfbVar.zzm();
        if (z5) {
            zzddyVar = null;
        } else {
            zzddyVar = this.zzm;
        }
        if (zzad(zzcfbVar)) {
            zzeceVar = this.zzG;
        }
        zzy(new AdOverlayInfoParcel(zzaVar, zzcfiVar2, zzbimVar, zzbioVar, zzadVar, zzcfbVar, z, i, str, zzm, zzddyVar, zzeceVar, z3));
    }

    public final void zzB(String str, zzbjw zzbjwVar) {
        synchronized (this.zzf) {
            try {
                HashMap hashMap = this.zze;
                List list = (List) hashMap.get(str);
                if (list == null) {
                    list = new CopyOnWriteArrayList();
                    hashMap.put(str, list);
                }
                list.add(zzbjwVar);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcgt
    public final void zzC(zzcgr zzcgrVar) {
        this.zzi = zzcgrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcgt
    public final void zzD(@Nullable com.google.android.gms.ads.internal.zzb zzbVar) {
        this.zzy = zzbVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcgt
    public final void zzE(int i, int i2) {
        zzbsj zzbsjVar = this.zzz;
        if (zzbsjVar != null) {
            zzbsjVar.zze(i, i2);
        }
    }

    public final void zzF(boolean z) {
        this.zzn = false;
    }

    @Override // com.google.android.gms.internal.ads.zzcgt
    public final void zzG(boolean z) {
        synchronized (this.zzf) {
            this.zzu = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcgt
    public final void zzH(boolean z) {
        synchronized (this.zzf) {
            this.zzv = z;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcgt
    public final void zzI() {
        synchronized (this.zzf) {
            this.zzn = false;
            this.zzs = true;
            zzcaa.zzf.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcfd
                @Override // java.lang.Runnable
                public final void run() {
                    zzcfj.zzh(zzcfj.this);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcgt
    public final void zzJ(boolean z) {
        synchronized (this.zzf) {
            this.zzt = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcgt
    public final void zzK(zzcgs zzcgsVar) {
        this.zzj = zzcgsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcgt
    public final void zzL(zzbxv zzbxvVar) {
        this.zza = zzbxvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcgt
    public final void zzM(zzcmn zzcmnVar, @Nullable zzebt zzebtVar, @Nullable zzfjr zzfjrVar) {
        zzQ("/click");
        if (zzebtVar != null && zzfjrVar != null) {
            zzB("/click", new zzfcx(this.zzm, zzcmnVar, zzfjrVar, zzebtVar));
            return;
        }
        zzddy zzddyVar = this.zzm;
        zzbjw zzbjwVar = zzbjv.zza;
        zzB("/click", new zzbiu(zzddyVar, zzcmnVar));
    }

    @Override // com.google.android.gms.internal.ads.zzcgt
    public final void zzN(zzcmn zzcmnVar) {
        zzQ("/click");
        zzddy zzddyVar = this.zzm;
        zzbjw zzbjwVar = zzbjv.zza;
        zzB("/click", new zzbiu(zzddyVar, zzcmnVar));
    }

    @Override // com.google.android.gms.internal.ads.zzcgt
    public final void zzO(zzcmn zzcmnVar, @Nullable zzebt zzebtVar, @Nullable zzdsd zzdsdVar) {
        zzQ("/open");
        zzB("/open", new zzbki(this.zzy, this.zzz, zzebtVar, zzdsdVar, zzcmnVar));
    }

    @Override // com.google.android.gms.internal.ads.zzcgt
    public final void zzP(zzfbu zzfbuVar) {
        zzcfb zzcfbVar = this.zzc;
        if (com.google.android.gms.ads.internal.zzv.zzo().zzp(zzcfbVar.getContext())) {
            zzQ("/logScionEvent");
            new HashMap();
            zzB("/logScionEvent", new zzbkc(zzcfbVar.getContext(), zzfbuVar.zzaw));
        }
    }

    public final void zzQ(String str) {
        synchronized (this.zzf) {
            try {
                List list = (List) this.zze.get(str);
                if (list == null) {
                    return;
                }
                list.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zzR(String str, zzbjw zzbjwVar) {
        synchronized (this.zzf) {
            try {
                List list = (List) this.zze.get(str);
                if (list == null) {
                    return;
                }
                list.remove(zzbjwVar);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zzS(String str, Predicate predicate) {
        synchronized (this.zzf) {
            try {
                List<zzbjw> list = (List) this.zze.get(str);
                if (list == null) {
                    return;
                }
                ArrayList arrayList = new ArrayList();
                for (zzbjw zzbjwVar : list) {
                    if (predicate.apply(zzbjwVar)) {
                        arrayList.add(zzbjwVar);
                    }
                }
                list.removeAll(arrayList);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean zzT() {
        boolean z;
        synchronized (this.zzf) {
            z = this.zzu;
        }
        return z;
    }

    public final boolean zzU() {
        boolean z;
        synchronized (this.zzf) {
            z = this.zzv;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzcgt
    public final boolean zzV() {
        boolean z;
        synchronized (this.zzf) {
            z = this.zzs;
        }
        return z;
    }

    public final boolean zzW() {
        boolean z;
        synchronized (this.zzf) {
            z = this.zzt;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzcgt
    public final void zzX(@Nullable com.google.android.gms.ads.internal.client.zza zzaVar, @Nullable zzbim zzbimVar, @Nullable com.google.android.gms.ads.internal.overlay.zzr zzrVar, @Nullable zzbio zzbioVar, @Nullable com.google.android.gms.ads.internal.overlay.zzad zzadVar, boolean z, @Nullable zzbjz zzbjzVar, @Nullable com.google.android.gms.ads.internal.zzb zzbVar, @Nullable zzbsq zzbsqVar, @Nullable zzbxv zzbxvVar, @Nullable final zzebt zzebtVar, @Nullable final zzfjr zzfjrVar, @Nullable zzdsd zzdsdVar, @Nullable zzbkq zzbkqVar, @Nullable zzddy zzddyVar, @Nullable zzbkp zzbkpVar, @Nullable zzbkj zzbkjVar, @Nullable zzbjx zzbjxVar, @Nullable zzcmn zzcmnVar) {
        com.google.android.gms.ads.internal.zzb zzbVar2 = zzbVar == null ? new com.google.android.gms.ads.internal.zzb(this.zzc.getContext(), zzbxvVar, null) : zzbVar;
        zzcfb zzcfbVar = this.zzc;
        this.zzz = new zzbsj(zzcfbVar, zzbsqVar);
        this.zza = zzbxvVar;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzbf)).booleanValue()) {
            zzB("/adMetadata", new zzbil(zzbimVar));
        }
        if (zzbioVar != null) {
            zzB("/appEvent", new zzbin(zzbioVar));
        }
        zzB("/backButton", zzbjv.zzj);
        zzB("/refresh", zzbjv.zzk);
        zzB("/canOpenApp", zzbjv.zzb);
        zzB("/canOpenURLs", zzbjv.zza);
        zzB("/canOpenIntents", zzbjv.zzc);
        zzB("/close", zzbjv.zzd);
        zzB("/customClose", zzbjv.zze);
        zzB("/instrument", zzbjv.zzn);
        zzB("/delayPageLoaded", zzbjv.zzp);
        zzB("/delayPageClosed", zzbjv.zzq);
        zzB("/getLocationInfo", zzbjv.zzr);
        zzB("/log", zzbjv.zzg);
        zzB("/mraid", new zzbkd(zzbVar2, this.zzz, zzbsqVar));
        zzbso zzbsoVar = this.zzx;
        if (zzbsoVar != null) {
            zzB("/mraidLoaded", zzbsoVar);
        }
        com.google.android.gms.ads.internal.zzb zzbVar3 = zzbVar2;
        zzB("/open", new zzbki(zzbVar3, this.zzz, zzebtVar, zzdsdVar, zzcmnVar));
        zzB("/precache", new zzcdj());
        zzB("/touch", zzbjv.zzi);
        zzB("/video", zzbjv.zzl);
        zzB("/videoMeta", zzbjv.zzm);
        if (zzebtVar != null && zzfjrVar != null) {
            zzB("/click", new zzfcx(zzddyVar, zzcmnVar, zzfjrVar, zzebtVar));
            zzB("/httpTrack", new zzbjw() { // from class: com.google.android.gms.internal.ads.zzfcy
                @Override // com.google.android.gms.internal.ads.zzbjw
                public final void zza(Object obj, Map map) {
                    zzces zzcesVar = (zzces) obj;
                    String str = (String) map.get("u");
                    if (str == null) {
                        int i = com.google.android.gms.ads.internal.util.zze.zza;
                        com.google.android.gms.ads.internal.util.client.zzo.zzj("URL missing from httpTrack GMSG.");
                        return;
                    }
                    zzfbu zzD = zzcesVar.zzD();
                    if (zzD != null && !zzD.zzai) {
                        zzfjr.this.zzd(str, zzD.zzax, null, null);
                        return;
                    }
                    zzfbx zzR = ((zzcge) zzcesVar).zzR();
                    if (zzR == null) {
                        com.google.android.gms.ads.internal.zzv.zzp().zzw(new IllegalArgumentException("Common configuration cannot be null"), "BufferingGmsgHandlers.getBufferingHttpTrackGmsgHandler");
                        return;
                    }
                    zzebtVar.zzd(new zzebv(com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis(), zzR.zzb, str, 2));
                }
            });
        } else {
            zzB("/click", new zzbiu(zzddyVar, zzcmnVar));
            zzB("/httpTrack", zzbjv.zzf);
        }
        if (com.google.android.gms.ads.internal.zzv.zzo().zzp(zzcfbVar.getContext())) {
            Map hashMap = new HashMap();
            if (zzcfbVar.zzD() != null) {
                hashMap = zzcfbVar.zzD().zzaw;
            }
            zzB("/logScionEvent", new zzbkc(zzcfbVar.getContext(), hashMap));
        }
        if (zzbjzVar != null) {
            zzB("/setInterstitialProperties", new zzbjy(zzbjzVar));
        }
        if (zzbkqVar != null) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzji)).booleanValue()) {
                zzB("/inspectorNetworkExtras", zzbkqVar);
            }
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzjB)).booleanValue() && zzbkpVar != null) {
            zzB("/shareSheet", zzbkpVar);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzjG)).booleanValue() && zzbkjVar != null) {
            zzB("/inspectorOutOfContextTest", zzbkjVar);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzjK)).booleanValue() && zzbjxVar != null) {
            zzB("/inspectorStorage", zzbjxVar);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzlN)).booleanValue()) {
            zzB("/bindPlayStoreOverlay", zzbjv.zzu);
            zzB("/presentPlayStoreOverlay", zzbjv.zzv);
            zzB("/expandPlayStoreOverlay", zzbjv.zzw);
            zzB("/collapsePlayStoreOverlay", zzbjv.zzx);
            zzB("/closePlayStoreOverlay", zzbjv.zzy);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzdB)).booleanValue()) {
            zzB("/setPAIDPersonalizationEnabled", zzbjv.zzA);
            zzB("/resetPAID", zzbjv.zzz);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzmh)).booleanValue() && zzcfbVar.zzD() != null && zzcfbVar.zzD().zzar) {
            zzB("/writeToLocalStorage", zzbjv.zzB);
            zzB("/clearLocalStorageKeys", zzbjv.zzC);
        }
        this.zzg = zzaVar;
        this.zzh = zzrVar;
        this.zzk = zzbimVar;
        this.zzl = zzbioVar;
        this.zzw = zzadVar;
        this.zzy = zzbVar3;
        this.zzm = zzddyVar;
        this.zzA = zzdsdVar;
        this.zzn = z;
    }

    public final ViewTreeObserver.OnGlobalLayoutListener zza() {
        synchronized (this.zzf) {
        }
        return null;
    }

    public final ViewTreeObserver.OnScrollChangedListener zzb() {
        synchronized (this.zzf) {
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:102:0x02bb A[Catch: NoClassDefFoundError -> 0x0020, Exception -> 0x0023, TryCatch #13 {Exception -> 0x0023, NoClassDefFoundError -> 0x0020, blocks: (B:3:0x000c, B:5:0x0019, B:10:0x0026, B:12:0x0036, B:14:0x003d, B:16:0x004b, B:18:0x0067, B:20:0x0080, B:22:0x0097, B:23:0x009a, B:25:0x009d, B:28:0x00b9, B:30:0x00cd, B:33:0x00e8, B:78:0x01be, B:50:0x0172, B:97:0x02a5, B:100:0x02b5, B:102:0x02bb, B:104:0x02c9, B:86:0x022d, B:87:0x0256, B:85:0x0205, B:49:0x014b, B:32:0x00db, B:88:0x0257, B:90:0x0261, B:92:0x0267, B:94:0x029a), top: B:112:0x000c }] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00b9 A[Catch: NoClassDefFoundError -> 0x0020, Exception -> 0x0023, TRY_ENTER, TryCatch #13 {Exception -> 0x0023, NoClassDefFoundError -> 0x0020, blocks: (B:3:0x000c, B:5:0x0019, B:10:0x0026, B:12:0x0036, B:14:0x003d, B:16:0x004b, B:18:0x0067, B:20:0x0080, B:22:0x0097, B:23:0x009a, B:25:0x009d, B:28:0x00b9, B:30:0x00cd, B:33:0x00e8, B:78:0x01be, B:50:0x0172, B:97:0x02a5, B:100:0x02b5, B:102:0x02bb, B:104:0x02c9, B:86:0x022d, B:87:0x0256, B:85:0x0205, B:49:0x014b, B:32:0x00db, B:88:0x0257, B:90:0x0261, B:92:0x0267, B:94:0x029a), top: B:112:0x000c }] */
    /* JADX WARN: Removed duplicated region for block: B:83:0x01fa A[Catch: all -> 0x01b1, TryCatch #8 {all -> 0x01b1, blocks: (B:71:0x0196, B:73:0x01a8, B:77:0x01b4, B:81:0x01e8, B:83:0x01fa, B:84:0x0201), top: B:111:0x00e8 }] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0257 A[Catch: NoClassDefFoundError -> 0x0020, Exception -> 0x0023, TryCatch #13 {Exception -> 0x0023, NoClassDefFoundError -> 0x0020, blocks: (B:3:0x000c, B:5:0x0019, B:10:0x0026, B:12:0x0036, B:14:0x003d, B:16:0x004b, B:18:0x0067, B:20:0x0080, B:22:0x0097, B:23:0x009a, B:25:0x009d, B:28:0x00b9, B:30:0x00cd, B:33:0x00e8, B:78:0x01be, B:50:0x0172, B:97:0x02a5, B:100:0x02b5, B:102:0x02bb, B:104:0x02c9, B:86:0x022d, B:87:0x0256, B:85:0x0205, B:49:0x014b, B:32:0x00db, B:88:0x0257, B:90:0x0261, B:92:0x0267, B:94:0x029a), top: B:112:0x000c }] */
    /* JADX WARN: Removed duplicated region for block: B:97:0x02a5 A[Catch: NoClassDefFoundError -> 0x0020, Exception -> 0x0023, TryCatch #13 {Exception -> 0x0023, NoClassDefFoundError -> 0x0020, blocks: (B:3:0x000c, B:5:0x0019, B:10:0x0026, B:12:0x0036, B:14:0x003d, B:16:0x004b, B:18:0x0067, B:20:0x0080, B:22:0x0097, B:23:0x009a, B:25:0x009d, B:28:0x00b9, B:30:0x00cd, B:33:0x00e8, B:78:0x01be, B:50:0x0172, B:97:0x02a5, B:100:0x02b5, B:102:0x02bb, B:104:0x02c9, B:86:0x022d, B:87:0x0256, B:85:0x0205, B:49:0x014b, B:32:0x00db, B:88:0x0257, B:90:0x0261, B:92:0x0267, B:94:0x029a), top: B:112:0x000c }] */
    @androidx.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.webkit.WebResourceResponse zzc(java.lang.String r21, java.util.Map r22) {
        /*
            Method dump skipped, instructions count: 733
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcfj.zzc(java.lang.String, java.util.Map):android.webkit.WebResourceResponse");
    }

    @Override // com.google.android.gms.internal.ads.zzcgt
    public final com.google.android.gms.ads.internal.zzb zzd() {
        return this.zzy;
    }

    @Override // com.google.android.gms.internal.ads.zzddy
    public final void zzdf() {
        zzddy zzddyVar = this.zzm;
        if (zzddyVar != null) {
            zzddyVar.zzdf();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcgt
    public final zzdsd zze() {
        return this.zzA;
    }

    public final void zzk() {
        if (this.zzi != null && ((this.zzB && this.zzD <= 0) || this.zzC || this.zzo)) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzcc)).booleanValue()) {
                zzcfb zzcfbVar = this.zzc;
                if (zzcfbVar.zzl() != null) {
                    zzbdc.zza(zzcfbVar.zzl().zza(), zzcfbVar.zzk(), "awfllc");
                }
            }
            zzcgr zzcgrVar = this.zzi;
            boolean z = false;
            if (!this.zzC && !this.zzo) {
                z = true;
            }
            zzcgrVar.zza(z, this.zzp, this.zzq, this.zzr);
            this.zzi = null;
        }
        this.zzc.zzaf();
    }

    public final void zzl() {
        zzbxv zzbxvVar = this.zza;
        if (zzbxvVar != null) {
            zzbxvVar.zzf();
            this.zza = null;
        }
        zzab();
        synchronized (this.zzf) {
            try {
                this.zze.clear();
                this.zzg = null;
                this.zzh = null;
                this.zzi = null;
                this.zzj = null;
                this.zzk = null;
                this.zzl = null;
                this.zzn = false;
                this.zzs = false;
                this.zzt = false;
                this.zzu = false;
                this.zzw = null;
                this.zzy = null;
                this.zzx = null;
                zzbsj zzbsjVar = this.zzz;
                if (zzbsjVar != null) {
                    zzbsjVar.zzb(true);
                    this.zzz = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zzm(boolean z) {
        this.zzE = z;
    }

    @Override // com.google.android.gms.internal.ads.zzcgt
    public final void zzn(Uri uri) {
        final String str;
        com.google.android.gms.ads.internal.util.zze.zza("Received GMSG: ".concat(String.valueOf(uri)));
        HashMap hashMap = this.zze;
        String path = uri.getPath();
        List list = (List) hashMap.get(path);
        if (path != null && list != null) {
            String encodedQuery = uri.getEncodedQuery();
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzfS)).booleanValue() && this.zzF.contains(path) && encodedQuery != null) {
                if (encodedQuery.length() >= ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzfU)).intValue()) {
                    com.google.android.gms.ads.internal.util.zze.zza("Parsing gmsg query params on BG thread: ".concat(path));
                    zzgcy.zzr(com.google.android.gms.ads.internal.zzv.zzr().zzb(uri), new zzcfh(this, list, path, uri), zzcaa.zzf);
                    return;
                }
            }
            com.google.android.gms.ads.internal.zzv.zzr();
            zzaa(com.google.android.gms.ads.internal.util.zzs.zzQ(uri), list, path);
            return;
        }
        com.google.android.gms.ads.internal.util.zze.zza("No GMSG handler found for GMSG: ".concat(String.valueOf(uri)));
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzgS)).booleanValue() && com.google.android.gms.ads.internal.zzv.zzp().zzg() != null) {
            if (path != null && path.length() >= 2) {
                str = path.substring(1);
            } else {
                str = AbstractJsonLexerKt.NULL;
            }
            zzcaa.zza.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcfe
                @Override // java.lang.Runnable
                public final void run() {
                    int i = zzcfj.zzb;
                    com.google.android.gms.ads.internal.zzv.zzp().zzg().zze(str);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcgt
    public final void zzo() {
        zzbbt zzbbtVar = this.zzd;
        if (zzbbtVar != null) {
            zzbbtVar.zzc(10005);
        }
        this.zzC = true;
        this.zzp = 10004;
        this.zzq = "Page loaded delay cancel.";
        zzk();
        this.zzc.destroy();
    }

    @Override // com.google.android.gms.internal.ads.zzcgt
    public final void zzp() {
        synchronized (this.zzf) {
        }
        this.zzD++;
        zzk();
    }

    @Override // com.google.android.gms.internal.ads.zzcgt
    public final void zzq() {
        this.zzD--;
        zzk();
    }

    @Override // com.google.android.gms.internal.ads.zzcgt
    public final void zzr(int i, int i2, boolean z) {
        zzbso zzbsoVar = this.zzx;
        if (zzbsoVar != null) {
            zzbsoVar.zzb(i, i2);
        }
        zzbsj zzbsjVar = this.zzz;
        if (zzbsjVar != null) {
            zzbsjVar.zzd(i, i2, false);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcgt
    public final void zzs() {
        zzbxv zzbxvVar = this.zza;
        if (zzbxvVar != null) {
            zzcfb zzcfbVar = this.zzc;
            WebView zzG = zzcfbVar.zzG();
            if (ViewCompat.isAttachedToWindow(zzG)) {
                zzac(zzG, zzbxvVar, 10);
                return;
            }
            zzab();
            zzcfg zzcfgVar = new zzcfg(this, zzbxvVar);
            this.zzH = zzcfgVar;
            ((View) zzcfbVar).addOnAttachStateChangeListener(zzcfgVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzddy
    public final void zzu() {
        zzddy zzddyVar = this.zzm;
        if (zzddyVar != null) {
            zzddyVar.zzu();
        }
    }

    public final void zzv(com.google.android.gms.ads.internal.overlay.zzc zzcVar, boolean z, boolean z2, String str) {
        boolean z3;
        boolean z4;
        com.google.android.gms.ads.internal.client.zza zzaVar;
        com.google.android.gms.ads.internal.overlay.zzr zzrVar;
        zzcfb zzcfbVar = this.zzc;
        boolean zzaF = zzcfbVar.zzaF();
        boolean z5 = false;
        if (zzae(zzaF, zzcfbVar) || z2) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (z3 || !z) {
            z4 = zzaF;
            z5 = true;
        } else {
            z4 = zzaF;
        }
        zzddy zzddyVar = null;
        if (z3) {
            zzaVar = null;
        } else {
            zzaVar = this.zzg;
        }
        if (z4) {
            zzrVar = null;
        } else {
            zzrVar = this.zzh;
        }
        com.google.android.gms.ads.internal.overlay.zzad zzadVar = this.zzw;
        VersionInfoParcel zzm = zzcfbVar.zzm();
        if (!z5) {
            zzddyVar = this.zzm;
        }
        zzy(new AdOverlayInfoParcel(zzcVar, zzaVar, zzrVar, zzadVar, zzm, zzcfbVar, zzddyVar, str));
    }

    public final void zzw(String str, String str2, int i) {
        zzece zzeceVar = this.zzG;
        zzcfb zzcfbVar = this.zzc;
        zzy(new AdOverlayInfoParcel(zzcfbVar, zzcfbVar.zzm(), str, str2, 14, zzeceVar));
    }

    public final void zzx(boolean z, int i, boolean z2) {
        com.google.android.gms.ads.internal.client.zza zzaVar;
        zzddy zzddyVar;
        zzddy zzddyVar2;
        zzece zzeceVar;
        int i2;
        com.google.android.gms.ads.internal.client.zza zzaVar2;
        boolean z3;
        zzcfb zzcfbVar = this.zzc;
        boolean zzae = zzae(zzcfbVar.zzaF(), zzcfbVar);
        boolean z4 = true;
        if (!zzae && z2) {
            z4 = false;
        }
        if (zzae) {
            zzaVar = null;
            zzddyVar = null;
        } else {
            zzaVar = this.zzg;
            zzddyVar = null;
        }
        com.google.android.gms.ads.internal.overlay.zzr zzrVar = this.zzh;
        zzece zzeceVar2 = zzddyVar;
        com.google.android.gms.ads.internal.overlay.zzad zzadVar = this.zzw;
        VersionInfoParcel zzm = zzcfbVar.zzm();
        if (z4) {
            zzddyVar2 = zzeceVar2;
        } else {
            zzddyVar2 = this.zzm;
        }
        if (zzad(zzcfbVar)) {
            zzeceVar = this.zzG;
            z3 = z;
            i2 = i;
            zzaVar2 = zzaVar;
        } else {
            zzeceVar = zzeceVar2;
            i2 = i;
            zzaVar2 = zzaVar;
            z3 = z;
        }
        zzy(new AdOverlayInfoParcel(zzaVar2, zzrVar, zzadVar, zzcfbVar, z3, i2, zzm, zzddyVar2, zzeceVar));
    }

    public final void zzy(AdOverlayInfoParcel adOverlayInfoParcel) {
        boolean z;
        com.google.android.gms.ads.internal.overlay.zzc zzcVar;
        zzbsj zzbsjVar = this.zzz;
        if (zzbsjVar != null) {
            z = zzbsjVar.zzf();
        } else {
            z = false;
        }
        com.google.android.gms.ads.internal.zzv.zzj();
        com.google.android.gms.ads.internal.overlay.zzn.zza(this.zzc.getContext(), adOverlayInfoParcel, !z, this.zzA);
        zzbxv zzbxvVar = this.zza;
        if (zzbxvVar != null) {
            String str = adOverlayInfoParcel.zzl;
            if (str == null && (zzcVar = adOverlayInfoParcel.zza) != null) {
                str = zzcVar.zzb;
            }
            zzbxvVar.zzh(str);
        }
    }

    public final void zzz(boolean z, int i, String str, String str2, boolean z2) {
        com.google.android.gms.ads.internal.client.zza zzaVar;
        zzcfi zzcfiVar;
        zzddy zzddyVar;
        zzcfb zzcfbVar = this.zzc;
        boolean zzaF = zzcfbVar.zzaF();
        boolean zzae = zzae(zzaF, zzcfbVar);
        boolean z3 = true;
        if (!zzae && z2) {
            z3 = false;
        }
        if (zzae) {
            zzaVar = null;
        } else {
            zzaVar = this.zzg;
        }
        if (zzaF) {
            zzcfiVar = null;
        } else {
            zzcfiVar = new zzcfi(zzcfbVar, this.zzh);
        }
        zzbim zzbimVar = this.zzk;
        zzece zzeceVar = null;
        zzbio zzbioVar = this.zzl;
        boolean z4 = z3;
        zzcfi zzcfiVar2 = zzcfiVar;
        com.google.android.gms.ads.internal.overlay.zzad zzadVar = this.zzw;
        VersionInfoParcel zzm = zzcfbVar.zzm();
        if (z4) {
            zzddyVar = null;
        } else {
            zzddyVar = this.zzm;
        }
        if (zzad(zzcfbVar)) {
            zzeceVar = this.zzG;
        }
        zzy(new AdOverlayInfoParcel(zzaVar, zzcfiVar2, zzbimVar, zzbioVar, zzadVar, zzcfbVar, z, i, str, str2, zzm, zzddyVar, zzeceVar));
    }
}
