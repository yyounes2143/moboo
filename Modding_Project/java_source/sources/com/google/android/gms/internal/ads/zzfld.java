package com.google.android.gms.internal.ads;

import android.webkit.WebView;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzfld {
    private final zzflo zza;
    private final WebView zzb;
    private final List zzc = new ArrayList();
    private final Map zzd = new HashMap();
    @Nullable
    private final String zze;
    @Nullable
    private final String zzf;
    private final zzfle zzg;

    private zzfld(zzflo zzfloVar, WebView webView, String str, List list, @Nullable String str2, @Nullable String str3, zzfle zzfleVar) {
        this.zza = zzfloVar;
        this.zzb = webView;
        this.zzg = zzfleVar;
        this.zzf = str2;
        this.zze = str3;
    }

    public static zzfld zzb(zzflo zzfloVar, WebView webView, @Nullable String str, @Nullable String str2) {
        if (str2 != null) {
            zzfmx.zzd(str2, 256, "CustomReferenceData is greater than 256 characters");
        }
        return new zzfld(zzfloVar, webView, null, null, str, str2, zzfle.HTML);
    }

    public static zzfld zzc(zzflo zzfloVar, WebView webView, @Nullable String str, @Nullable String str2) {
        zzfmx.zzd("", 256, "CustomReferenceData is greater than 256 characters");
        return new zzfld(zzfloVar, webView, null, null, str, "", zzfle.JAVASCRIPT);
    }

    public final WebView zza() {
        return this.zzb;
    }

    public final zzfle zzd() {
        return this.zzg;
    }

    public final zzflo zze() {
        return this.zza;
    }

    @Nullable
    public final String zzf() {
        return this.zzf;
    }

    @Nullable
    public final String zzg() {
        return this.zze;
    }

    public final List zzh() {
        return Collections.unmodifiableList(this.zzc);
    }

    public final Map zzi() {
        return Collections.unmodifiableMap(this.zzd);
    }
}
