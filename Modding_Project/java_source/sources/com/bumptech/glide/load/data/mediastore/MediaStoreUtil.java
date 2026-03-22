package com.bumptech.glide.load.data.mediastore;

import android.net.Uri;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class MediaStoreUtil {
    public static boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Uri uri) {
        return uri.getPathSegments().contains("video");
    }

    public static boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, int i2) {
        if (i != Integer.MIN_VALUE && i2 != Integer.MIN_VALUE && i <= 512 && i2 <= 384) {
            return true;
        }
        return false;
    }

    public static boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Uri uri) {
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(uri) && Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(uri)) {
            return true;
        }
        return false;
    }

    public static boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Uri uri) {
        if (uri != null && "content".equals(uri.getScheme()) && "media".equals(uri.getAuthority())) {
            return true;
        }
        return false;
    }

    public static boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Uri uri) {
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(uri) && !Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(uri)) {
            return true;
        }
        return false;
    }
}
