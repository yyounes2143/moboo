package com.google.android.gms.internal.ads;

import android.graphics.Rect;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.EditText;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.util.PlatformVersion;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
@ParametersAreNonnullByDefault
/* loaded from: classes4.dex */
public final class zzazt extends Thread {
    private boolean zza;
    private boolean zzb;
    private final Object zzc;
    private final zzazk zzd;
    private final int zze;
    private final int zzf;
    private final int zzg;
    private final int zzh;
    private final int zzi;
    private final int zzj;
    private final int zzk;
    private final int zzl;
    private final String zzm;
    private final boolean zzn;
    private final boolean zzo;

    public zzazt() {
        zzazk zzazkVar = new zzazk();
        this.zza = false;
        this.zzb = false;
        this.zzd = zzazkVar;
        this.zzc = new Object();
        this.zzf = ((Long) zzbem.zzd.zze()).intValue();
        this.zzg = ((Long) zzbem.zza.zze()).intValue();
        this.zzh = ((Long) zzbem.zze.zze()).intValue();
        this.zzi = ((Long) zzbem.zzc.zze()).intValue();
        this.zzj = ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzai)).intValue();
        this.zzk = ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzaj)).intValue();
        this.zzl = ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzak)).intValue();
        this.zze = ((Long) zzbem.zzf.zze()).intValue();
        this.zzm = (String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzam);
        this.zzn = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzan)).booleanValue();
        this.zzo = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzao)).booleanValue();
        ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzap)).getClass();
        setName("ContentFetchTask");
    }

    /* JADX WARN: Can't wrap try/catch for region: R(7:1|(1:3)(2:31|(2:36|(3:39|(3:41|42|(6:50|(1:52)(5:53|54|55|(1:59)|(1:61))|6|7|e7|20))|37)))|4|5|6|7|e7) */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x006f, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0071, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00cd, code lost:
        r1 = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzh("Error in ContentFetchTask", r0);
        com.google.android.gms.ads.internal.zzv.zzp().zzw(r0, "ContentFetchTask.run");
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00de, code lost:
        r1 = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzh("Error in ContentFetchTask", r0);
     */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00e8 A[EXC_TOP_SPLITTER, LOOP:1: B:62:0x00e8->B:71:0x00e8, LOOP_START, SYNTHETIC] */
    @Override // java.lang.Thread, java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            Method dump skipped, instructions count: 254
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzazt.run():void");
    }

    @VisibleForTesting
    public final zzazs zza(@Nullable View view, zzazj zzazjVar) {
        if (view != null) {
            boolean globalVisibleRect = view.getGlobalVisibleRect(new Rect());
            if ((view instanceof TextView) && !(view instanceof EditText)) {
                CharSequence text = ((TextView) view).getText();
                if (!TextUtils.isEmpty(text)) {
                    zzazjVar.zzh(text.toString(), globalVisibleRect, view.getX(), view.getY(), view.getWidth(), view.getHeight());
                    return new zzazs(this, 1, 0);
                }
            } else if ((view instanceof WebView) && !(view instanceof zzcfb)) {
                WebView webView = (WebView) view;
                if (PlatformVersion.isAtLeastKitKat()) {
                    zzazjVar.zzf();
                    webView.post(new zzazr(this, zzazjVar, webView, globalVisibleRect));
                    return new zzazs(this, 0, 1);
                }
            } else if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                int i = 0;
                int i2 = 0;
                for (int i3 = 0; i3 < viewGroup.getChildCount(); i3++) {
                    zzazs zza = zza(viewGroup.getChildAt(i3), zzazjVar);
                    i += zza.zza;
                    i2 += zza.zzb;
                }
                return new zzazs(this, i, i2);
            }
        }
        return new zzazs(this, 0, 0);
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x006d, code lost:
        if (r10 == 0) goto L23;
     */
    @androidx.annotation.VisibleForTesting
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzb(android.view.View r10) {
        /*
            r9 = this;
            com.google.android.gms.internal.ads.zzazj r0 = new com.google.android.gms.internal.ads.zzazj     // Catch: java.lang.Exception -> L50
            int r1 = r9.zzf     // Catch: java.lang.Exception -> L50
            int r2 = r9.zzg     // Catch: java.lang.Exception -> L50
            int r3 = r9.zzh     // Catch: java.lang.Exception -> L50
            int r4 = r9.zzi     // Catch: java.lang.Exception -> L50
            int r5 = r9.zzj     // Catch: java.lang.Exception -> L50
            int r6 = r9.zzk     // Catch: java.lang.Exception -> L50
            int r7 = r9.zzl     // Catch: java.lang.Exception -> L50
            boolean r8 = r9.zzo     // Catch: java.lang.Exception -> L50
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8)     // Catch: java.lang.Exception -> L50
            com.google.android.gms.internal.ads.zzazo r1 = com.google.android.gms.ads.internal.zzv.zzb()     // Catch: java.lang.Exception -> L50
            android.content.Context r1 = r1.zzb()     // Catch: java.lang.Exception -> L50
            if (r1 == 0) goto L53
            java.lang.String r2 = r9.zzm     // Catch: java.lang.Exception -> L50
            boolean r3 = android.text.TextUtils.isEmpty(r2)     // Catch: java.lang.Exception -> L50
            if (r3 != 0) goto L53
            android.content.res.Resources r3 = r1.getResources()     // Catch: java.lang.Exception -> L50
            com.google.android.gms.internal.ads.zzbcm r4 = com.google.android.gms.internal.ads.zzbcv.zzal     // Catch: java.lang.Exception -> L50
            com.google.android.gms.internal.ads.zzbct r5 = com.google.android.gms.ads.internal.client.zzbd.zzc()     // Catch: java.lang.Exception -> L50
            java.lang.Object r4 = r5.zzb(r4)     // Catch: java.lang.Exception -> L50
            java.lang.String r4 = (java.lang.String) r4     // Catch: java.lang.Exception -> L50
            java.lang.String r5 = "id"
            java.lang.String r1 = r1.getPackageName()     // Catch: java.lang.Exception -> L50
            int r1 = r3.getIdentifier(r4, r5, r1)     // Catch: java.lang.Exception -> L50
            java.lang.Object r1 = r10.getTag(r1)     // Catch: java.lang.Exception -> L50
            java.lang.String r1 = (java.lang.String) r1     // Catch: java.lang.Exception -> L50
            if (r1 == 0) goto L53
            boolean r1 = r1.equals(r2)     // Catch: java.lang.Exception -> L50
            if (r1 != 0) goto L78
            goto L53
        L50:
            r0 = move-exception
            r10 = r0
            goto L7f
        L53:
            com.google.android.gms.internal.ads.zzazs r10 = r9.zza(r10, r0)     // Catch: java.lang.Exception -> L50
            r0.zzj()     // Catch: java.lang.Exception -> L50
            int r1 = r10.zza     // Catch: java.lang.Exception -> L50
            if (r1 != 0) goto L62
            int r1 = r10.zzb     // Catch: java.lang.Exception -> L50
            if (r1 == 0) goto L78
        L62:
            int r10 = r10.zzb     // Catch: java.lang.Exception -> L50
            if (r10 != 0) goto L6d
            int r10 = r0.zzb()     // Catch: java.lang.Exception -> L50
            if (r10 == 0) goto L78
            goto L6f
        L6d:
            if (r10 != 0) goto L79
        L6f:
            com.google.android.gms.internal.ads.zzazk r10 = r9.zzd     // Catch: java.lang.Exception -> L50
            boolean r10 = r10.zzc(r0)     // Catch: java.lang.Exception -> L50
            if (r10 != 0) goto L78
            goto L79
        L78:
            return
        L79:
            com.google.android.gms.internal.ads.zzazk r10 = r9.zzd     // Catch: java.lang.Exception -> L50
            r10.zza(r0)     // Catch: java.lang.Exception -> L50
            return
        L7f:
            int r0 = com.google.android.gms.ads.internal.util.zze.zza
            java.lang.String r0 = "Exception in fetchContentOnUIThread"
            com.google.android.gms.ads.internal.util.client.zzo.zzh(r0, r10)
            java.lang.String r0 = "ContentFetchTask.fetchContent"
            com.google.android.gms.internal.ads.zzbzn r1 = com.google.android.gms.ads.internal.zzv.zzp()
            r1.zzw(r10, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzazt.zzb(android.view.View):void");
    }

    @VisibleForTesting
    public final void zzc(zzazj zzazjVar, WebView webView, String str, boolean z) {
        zzazj zzazjVar2;
        zzazjVar.zze();
        try {
            if (!TextUtils.isEmpty(str)) {
                String optString = new JSONObject(str).optString("text");
                if (!this.zzn && !TextUtils.isEmpty(webView.getTitle())) {
                    String title = webView.getTitle();
                    zzazjVar.zzi(title + "\n" + optString, z, webView.getX(), webView.getY(), webView.getWidth(), webView.getHeight());
                    zzazjVar2 = zzazjVar;
                } else {
                    zzazjVar2 = zzazjVar;
                    zzazjVar2.zzi(optString, z, webView.getX(), webView.getY(), webView.getWidth(), webView.getHeight());
                }
            } else {
                zzazjVar2 = zzazjVar;
            }
            if (zzazjVar2.zzl()) {
                this.zzd.zzb(zzazjVar2);
            }
        } catch (JSONException unused) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zze("Json string may be malformed.");
        } catch (Throwable th) {
            int i2 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzf("Failed to get webview content.", th);
            com.google.android.gms.ads.internal.zzv.zzp().zzw(th, "ContentFetchTask.processWebViewContent");
        }
    }

    public final void zzd() {
        synchronized (this.zzc) {
            try {
                if (this.zza) {
                    int i = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zze("Content hash thread already started, quitting...");
                    return;
                }
                this.zza = true;
                start();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zze() {
        synchronized (this.zzc) {
            this.zzb = true;
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zze("ContentFetchThread: paused, pause = true");
        }
    }
}
