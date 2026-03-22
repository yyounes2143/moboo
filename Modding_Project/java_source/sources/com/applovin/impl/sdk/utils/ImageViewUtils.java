package com.applovin.impl.sdk.utils;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Point;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.os.StrictMode;
import android.webkit.URLUtil;
import android.widget.ImageView;
import com.applovin.impl.k0;
import com.applovin.impl.sdk.k;
import com.applovin.impl.sdk.o;
import com.applovin.sdk.AppLovinSdkUtils;
import java.io.InputStream;
import java.net.URL;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class ImageViewUtils {
    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(String str, final k kVar, final ImageView imageView, Uri uri) {
        try {
            InputStream openStream = new URL(str).openStream();
            final Bitmap decodeStream = BitmapFactory.decodeStream(openStream);
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.utils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // java.lang.Runnable
                public final void run() {
                    ImageViewUtils.a(k.this, decodeStream, imageView);
                }
            });
            if (openStream != null) {
                openStream.close();
            }
        } catch (Throwable th) {
            kVar.O();
            if (o.a()) {
                o O = kVar.O();
                O.a("ImageViewUtils", "Failed to fetch image: " + uri, th);
            }
            kVar.O().a("ImageViewUtils", th);
            kVar.E().a("ImageViewUtils", "setImageUri", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b(ImageView imageView, Uri uri) {
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        imageView.setImageURI(uri);
        StrictMode.setThreadPolicy(allowThreadDiskReads);
    }

    public static void setAndDownscaleBitmap(final ImageView imageView, final Uri uri) {
        if (uri != null && imageView != null) {
            k kVar = k.C0;
            if (kVar == null) {
                o.h("ImageViewUtils", "SDK has not been initialized");
            } else {
                kVar.q0().b().execute(new Runnable() { // from class: com.applovin.impl.sdk.utils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                    @Override // java.lang.Runnable
                    public final void run() {
                        ImageViewUtils.a(uri, imageView);
                    }
                });
            }
        }
    }

    public static void setAndDownscaleImageUri(final ImageView imageView, final Uri uri) {
        if (uri != null && imageView != null) {
            if (imageView.getHeight() > 0 && imageView.getWidth() > 0) {
                setAndDownscaleBitmap(imageView, uri);
            } else {
                imageView.post(new Runnable() { // from class: com.applovin.impl.sdk.utils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww
                    @Override // java.lang.Runnable
                    public final void run() {
                        ImageViewUtils.setAndDownscaleBitmap(imageView, uri);
                    }
                });
            }
        }
    }

    public static void setImageUri(final ImageView imageView, final Uri uri, final k kVar) {
        if (imageView != null && uri != null) {
            final String uri2 = uri.toString();
            if (!URLUtil.isFileUrl(uri2) && !URLUtil.isContentUrl(uri2)) {
                if (kVar != null) {
                    kVar.O();
                    if (o.a()) {
                        o O = kVar.O();
                        O.a("ImageViewUtils", "Fetching image: " + uri);
                    }
                    kVar.q0().b().execute(new Runnable() { // from class: com.applovin.impl.sdk.utils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                        @Override // java.lang.Runnable
                        public final void run() {
                            ImageViewUtils.a(uri2, kVar, imageView, uri);
                        }
                    });
                    return;
                }
                return;
            }
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.utils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // java.lang.Runnable
                public final void run() {
                    ImageViewUtils.b(imageView, uri);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(k kVar, Bitmap bitmap, ImageView imageView) {
        kVar.O();
        if (o.a()) {
            kVar.O().a("ImageViewUtils", "Image fetched");
        }
        imageView.setImageDrawable(new BitmapDrawable(k.o().getResources(), bitmap));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(Uri uri, final ImageView imageView) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        int i = 1;
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(uri.getPath(), options);
        int height = imageView.getHeight();
        int width = imageView.getWidth();
        if (height <= 0 || width <= 0) {
            Point b = k0.b(imageView.getContext());
            height = Math.min(b.x, b.y);
            width = height;
        }
        int i2 = options.outHeight;
        int i3 = options.outWidth;
        if (i2 > height || i3 > width) {
            while (true) {
                int i4 = i * 2;
                if (i2 / i4 < height && i3 / i4 < width) {
                    break;
                }
                i = i4;
            }
        }
        options.inSampleSize = i;
        options.inJustDecodeBounds = false;
        k.C0.O();
        if (o.a()) {
            o O = k.C0.O();
            O.a("ImageViewUtils", "Loading image: " + uri.getLastPathSegment() + "...");
        }
        final Bitmap decodeFile = BitmapFactory.decodeFile(uri.getPath(), options);
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.utils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                imageView.setImageBitmap(decodeFile);
            }
        });
    }
}
