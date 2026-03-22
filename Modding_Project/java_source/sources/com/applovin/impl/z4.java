package com.applovin.impl;

import android.net.Uri;
import android.text.TextUtils;
import com.applovin.impl.k3;
import com.applovin.impl.sdk.ad.AppLovinAdImpl;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinErrorCodes;
import com.applovin.sdk.AppLovinSdkUtils;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.internal.model.AdPayload;
import java.io.File;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public abstract class z4 extends w4 implements k3.a {
    protected final com.applovin.impl.sdk.ad.b g;
    private AppLovinAdLoadListener h;
    private final com.applovin.impl.sdk.m i;
    private final Collection j;
    private boolean k;

    public z4(String str, com.applovin.impl.sdk.ad.b bVar, com.applovin.impl.sdk.k kVar, AppLovinAdLoadListener appLovinAdLoadListener) {
        super(str, kVar);
        if (bVar != null) {
            this.g = bVar;
            this.h = appLovinAdLoadListener;
            this.i = kVar.H();
            this.j = g();
            return;
        }
        throw new IllegalArgumentException("No ad specified.");
    }

    private Collection g() {
        HashSet hashSet = new HashSet();
        for (char c : ((String) this.f3803a.a(l4.E0)).toCharArray()) {
            hashSet.add(Character.valueOf(c));
        }
        hashSet.add('\"');
        return hashSet;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void h() {
        AppLovinAdLoadListener appLovinAdLoadListener = this.h;
        if (appLovinAdLoadListener != null) {
            appLovinAdLoadListener.adReceived(this.g);
            this.h = null;
        }
    }

    @Override // com.applovin.impl.k3.a
    public void a(q2 q2Var) {
        if (q2Var.O().equalsIgnoreCase(this.g.M())) {
            if (com.applovin.impl.sdk.o.a()) {
                this.c.b(this.b, "Updating flag for timeout...");
            }
            f();
        }
        this.f3803a.Z().b(this);
    }

    public Uri b(String str, List list, boolean z) {
        if (StringUtils.isValidString(str)) {
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = this.c;
                String str2 = this.b;
                oVar.a(str2, "Caching video " + str + "...");
            }
            String a2 = this.i.a(a(), str, this.g.getCachePrefix(), list, z, this.f3803a.H().a(str, this.g), this.g.i0(), a2.a((AppLovinAdImpl) this.g));
            if (StringUtils.isValidString(a2)) {
                File a3 = this.i.a(a2, a());
                if (a3 != null) {
                    Uri fromFile = Uri.fromFile(a3);
                    if (fromFile != null) {
                        if (com.applovin.impl.sdk.o.a()) {
                            com.applovin.impl.sdk.o oVar2 = this.c;
                            String str3 = this.b;
                            oVar2.a(str3, "Finish caching video for ad #" + this.g.getAdIdNumber() + ". Updating ad with cachedVideoFilename = " + a2);
                        }
                        return fromFile;
                    }
                    if (com.applovin.impl.sdk.o.a()) {
                        com.applovin.impl.sdk.o oVar3 = this.c;
                        String str4 = this.b;
                        oVar3.b(str4, "Unable to create URI from cached video file = " + a3);
                    }
                    this.f3803a.E().a(y1.p0, "extractUriFromVideoFile", CollectionUtils.hashMap("url", a2));
                    return null;
                }
                if (com.applovin.impl.sdk.o.a()) {
                    com.applovin.impl.sdk.o oVar4 = this.c;
                    String str5 = this.b;
                    oVar4.b(str5, "Unable to retrieve File from cached video filename = " + a2);
                }
                this.f3803a.E().a(y1.p0, "retrieveVideoFile", CollectionUtils.hashMap("url", a2));
                return null;
            }
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar5 = this.c;
                String str6 = this.b;
                oVar5.b(str6, "Failed to cache video: " + str);
            }
            this.f3803a.E().a(y1.p0, "cacheVideo", CollectionUtils.hashMap("url", str));
            a(AppLovinErrorCodes.UNABLE_TO_PRECACHE_VIDEO_RESOURCES);
            return null;
        }
        return null;
    }

    public Uri c(String str) {
        return b(str, this.g.c0(), true);
    }

    public void e() {
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.c;
            String str = this.b;
            oVar.a(str, "Rendered new ad:" + this.g);
        }
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.Mmm
            @Override // java.lang.Runnable
            public final void run() {
                z4.this.h();
            }
        });
    }

    public void f() {
        this.k = true;
    }

    public void i() {
        if (!k0.d()) {
            if (com.applovin.impl.sdk.o.a()) {
                this.c.a(this.b, "Caching mute images...");
            }
            Uri a2 = a(this.g.Q(), CampaignEx.JSON_NATIVE_VIDEO_MUTE);
            if (a2 != null) {
                this.g.b(a2);
            }
            Uri a3 = a(this.g.j0(), CampaignEx.JSON_NATIVE_VIDEO_UNMUTE);
            if (a3 != null) {
                this.g.c(a3);
            }
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = this.c;
                String str = this.b;
                oVar.a(str, "Ad updated with muteImageFilename = " + this.g.Q() + ", unmuteImageFilename = " + this.g.j0());
            }
        }
    }

    public void j() {
        this.f3803a.Z().b(this);
        MaxAdFormat d = this.g.getAdZone().d();
        if (((Boolean) this.f3803a.a(l4.T0)).booleanValue() && d != null && d.isFullscreenAd()) {
            this.f3803a.h().b(this.g);
        }
    }

    public boolean k() {
        return this.k;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.g.k1()) {
            if (com.applovin.impl.sdk.o.a()) {
                this.c.a(this.b, "Subscribing to timeout events...");
            }
            this.f3803a.Z().a(this);
        }
    }

    public String c(String str, List list, boolean z) {
        try {
            InputStream a2 = this.i.a(str, list, z, a2.a((AppLovinAdImpl) this.g));
            if (a2 != null) {
                String a3 = this.i.a(a2);
                a2.close();
                return a3;
            } else if (a2 != null) {
                a2.close();
                return null;
            } else {
                return null;
            }
        } catch (Throwable th) {
            if (com.applovin.impl.sdk.o.a()) {
                this.c.a(this.b, "Unknown failure to read input stream.", th);
            }
            this.c.a(this.b, th);
            this.f3803a.E().a(this.b, "readInputStreamAsString", th);
            return null;
        }
    }

    public Uri a(Uri uri, String str) {
        if (uri == null) {
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = this.c;
                String str2 = this.b;
                oVar.a(str2, "No " + str + " image to cache");
            }
            return null;
        }
        String uri2 = uri.toString();
        if (TextUtils.isEmpty(uri2)) {
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar2 = this.c;
                String str3 = this.b;
                oVar2.a(str3, "Failed to cache " + str + " image");
            }
            return null;
        }
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar3 = this.c;
            String str4 = this.b;
            oVar3.a(str4, "Caching " + str + " image...");
        }
        return b(uri2);
    }

    public Uri a(String str, List list, boolean z) {
        try {
            String a2 = this.i.a(a(), str, this.g.getCachePrefix(), list, z, this.f3803a.H().a(str, this.g), this.g.i0(), a2.a((AppLovinAdImpl) this.g));
            if (StringUtils.isValidString(a2)) {
                File a3 = this.i.a(a2, a());
                if (a3 != null) {
                    Uri fromFile = Uri.fromFile(a3);
                    if (fromFile != null) {
                        return fromFile;
                    }
                    if (com.applovin.impl.sdk.o.a()) {
                        this.c.b(this.b, "Unable to extract Uri from image file");
                    }
                    this.f3803a.E().a(y1.p0, "extractUriFromImageFile", CollectionUtils.hashMap("url", a2));
                    return null;
                }
                if (com.applovin.impl.sdk.o.a()) {
                    com.applovin.impl.sdk.o oVar = this.c;
                    String str2 = this.b;
                    oVar.b(str2, "Unable to retrieve File from cached image filename = " + a2);
                }
                this.f3803a.E().a(y1.p0, "retrieveImageFile", CollectionUtils.hashMap("url", a2));
                return null;
            }
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar2 = this.c;
                String str3 = this.b;
                oVar2.b(str3, "Failed to cache image: " + str);
            }
            this.f3803a.E().a(y1.p0, "cacheImageResource", CollectionUtils.hashMap("url", str));
            return null;
        } catch (Throwable th) {
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar3 = this.c;
                String str4 = this.b;
                oVar3.a(str4, "Failed to cache image at url = " + str, th);
            }
            this.f3803a.E().a(this.b, "cacheImageResource", th, CollectionUtils.hashMap("url", str));
            return null;
        }
    }

    public Uri b(String str) {
        return a(str, this.g.c0(), true);
    }

    public void a(com.applovin.impl.sdk.ad.b bVar) {
        String l0 = bVar.l0();
        if (bVar.V0() && StringUtils.isValidString(l0)) {
            String a2 = a(l0, bVar.c0(), bVar);
            bVar.c(a2);
            com.applovin.impl.sdk.o oVar = this.c;
            String str = this.b;
            oVar.f(str, "Ad updated with video button HTML assets cached = " + a2);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:60:0x0039, code lost:
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String a(java.lang.String r12, java.util.List r13, com.applovin.impl.sdk.ad.b r14) {
        /*
            Method dump skipped, instructions count: 294
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.z4.a(java.lang.String, java.util.List, com.applovin.impl.sdk.ad.b):java.lang.String");
    }

    private Uri a(String str, String str2) {
        File a2 = this.i.a(z6.a(Uri.parse(str2), this.g.getCachePrefix(), this.f3803a), com.applovin.impl.sdk.k.o());
        if (a2 == null) {
            return null;
        }
        if (!((Boolean) this.f3803a.a(l4.l6)).booleanValue() && this.i.a(a2)) {
            return Uri.parse(AdPayload.FILE_SCHEME + a2.getAbsolutePath());
        }
        String str3 = str + str2;
        if (this.i.a(a2, str3, Arrays.asList(str), this.f3803a.H().a(str3, this.g), this.g.i0(), a2.a((AppLovinAdImpl) this.g))) {
            return Uri.parse(AdPayload.FILE_SCHEME + a2.getAbsolutePath());
        }
        return null;
    }

    public void a(int i) {
        if (this.h != null) {
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = this.c;
                String str = this.b;
                oVar.a(str, "Calling back ad load failed with error code: " + i);
            }
            this.h.failedToReceiveAd(i);
            this.h = null;
        }
        f();
    }
}
