package com.applovin.impl.sdk.nativeAd;

import android.graphics.BitmapFactory;
import android.net.Uri;
import android.text.TextUtils;
import com.applovin.impl.a2;
import com.applovin.impl.l4;
import com.applovin.impl.sdk.k;
import com.applovin.impl.sdk.o;
import com.applovin.impl.w4;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Collections;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class a extends w4 {
    private final AppLovinNativeAdImpl g;
    private final InterfaceC0023a h;

    /* compiled from: Proguard */
    /* renamed from: com.applovin.impl.sdk.nativeAd.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public interface InterfaceC0023a {
        void a(AppLovinNativeAdImpl appLovinNativeAdImpl);
    }

    public a(AppLovinNativeAdImpl appLovinNativeAdImpl, k kVar, InterfaceC0023a interfaceC0023a) {
        super("TaskCacheNativeAd", kVar);
        this.g = appLovinNativeAdImpl;
        this.h = interfaceC0023a;
    }

    private float a(Uri uri) {
        FileInputStream fileInputStream;
        int i;
        int i2;
        File file = new File(uri.getPath());
        if (!file.exists()) {
            return -1.0f;
        }
        try {
            fileInputStream = new FileInputStream(file);
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeStream(fileInputStream, null, options);
            i = options.outWidth;
            i2 = options.outHeight;
        } catch (IOException e) {
            if (o.a()) {
                this.c.a(this.b, "Failed to calculate aspect ratio", e);
            }
        }
        if (i > 0 && i2 > 0) {
            float f = i / i2;
            fileInputStream.close();
            return f;
        }
        fileInputStream.close();
        return -1.0f;
    }

    private Uri b(Uri uri) {
        if (uri == null) {
            return null;
        }
        if (o.a()) {
            o oVar = this.c;
            String str = this.b;
            oVar.a(str, "Attempting to cache resource: " + uri);
        }
        String a2 = this.f3803a.H().a(a(), uri.toString(), this.g.getCachePrefix(), Collections.EMPTY_LIST, false, false, 1, (String) this.f3803a.a(l4.k4), a2.a(this.g));
        if (TextUtils.isEmpty(a2)) {
            if (o.a()) {
                o oVar2 = this.c;
                String str2 = this.b;
                oVar2.b(str2, "Unable to cache resource for uri: " + uri);
            }
            return null;
        }
        File a3 = this.f3803a.H().a(a2, a());
        if (a3 == null) {
            if (o.a()) {
                o oVar3 = this.c;
                String str3 = this.b;
                oVar3.b(str3, "Unable to retrieve File from cached image filename = " + a2);
            }
            return null;
        }
        Uri fromFile = Uri.fromFile(a3);
        if (fromFile == null) {
            if (o.a()) {
                this.c.b(this.b, "Unable to extract Uri from image file");
            }
            return null;
        }
        return fromFile;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (o.a()) {
            o oVar = this.c;
            String str = this.b;
            oVar.a(str, "Begin caching ad #" + this.g.getAdIdNumber() + "...");
        }
        Uri b = b(this.g.getIconUri());
        if (b != null) {
            this.g.setIconUri(b);
        }
        Uri b2 = b(this.g.getMainImageUri());
        if (b2 != null) {
            this.g.setMainImageUri(b2);
            float a2 = a(b2);
            if (a2 > 0.0f) {
                this.g.setMainImageAspectRatio(a2);
            }
        }
        Uri b3 = b(this.g.getPrivacyIconUri());
        if (b3 != null) {
            this.g.setPrivacyIconUri(b3);
        }
        if (o.a()) {
            o oVar2 = this.c;
            String str2 = this.b;
            oVar2.a(str2, "Finished caching ad #" + this.g.getAdIdNumber());
        }
        this.h.a(this.g);
    }
}
