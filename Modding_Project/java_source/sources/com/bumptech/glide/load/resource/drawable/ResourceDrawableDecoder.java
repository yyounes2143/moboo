package com.bumptech.glide.load.resource.drawable;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.Option;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.util.Preconditions;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class ResourceDrawableDecoder implements ResourceDecoder<Uri, Drawable> {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Option<Resources.Theme> f4862Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Option.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww("com.bumptech.glide.load.resource.bitmap.Downsampler.Theme");

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Context f4863Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public ResourceDrawableDecoder(Context context) {
        this.f4863Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = context.getApplicationContext();
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww */
    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Uri uri, @NonNull Options options) {
        String scheme = uri.getScheme();
        if (scheme != null && scheme.equals("android.resource")) {
            return true;
        }
        return false;
    }

    @DrawableRes
    public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context, Uri uri) {
        List<String> pathSegments = uri.getPathSegments();
        if (pathSegments.size() == 2) {
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, uri);
        }
        if (pathSegments.size() == 1) {
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(uri);
        }
        throw new IllegalArgumentException("Unrecognized Uri format: " + uri);
    }

    @DrawableRes
    public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context, Uri uri) {
        List<String> pathSegments = uri.getPathSegments();
        String authority = uri.getAuthority();
        String str = pathSegments.get(0);
        String str2 = pathSegments.get(1);
        int identifier = context.getResources().getIdentifier(str2, str, authority);
        if (identifier == 0) {
            identifier = Resources.getSystem().getIdentifier(str2, str, "android");
        }
        if (identifier != 0) {
            return identifier;
        }
        throw new IllegalArgumentException("Failed to find resource id for: " + uri);
    }

    @DrawableRes
    public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Uri uri) {
        try {
            return Integer.parseInt(uri.getPathSegments().get(0));
        } catch (NumberFormatException e) {
            throw new IllegalArgumentException("Unrecognized Uri format: " + uri, e);
        }
    }

    @NonNull
    public final Context Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Uri uri, @NonNull String str) {
        if (str.equals(this.f4863Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getPackageName())) {
            return this.f4863Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
        try {
            return this.f4863Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.createPackageContext(str, 0);
        } catch (PackageManager.NameNotFoundException e) {
            if (str.contains(this.f4863Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getPackageName())) {
                return this.f4863Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            }
            throw new IllegalArgumentException("Failed to obtain context or unrecognized Uri format for: " + uri, e);
        }
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    @Nullable
    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public Resource<Drawable> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Uri uri, int i, int i2, @NonNull Options options) {
        Resources.Theme theme;
        Drawable Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        String authority = uri.getAuthority();
        if (!TextUtils.isEmpty(authority)) {
            Context Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(uri, authority);
            int Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, uri);
            if (((String) Preconditions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(authority)).equals(this.f4863Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getPackageName())) {
                theme = (Resources.Theme) options.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(f4862Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            } else {
                theme = null;
            }
            if (theme == null) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = DrawableDecoderCompat.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4863Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            } else {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = DrawableDecoderCompat.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4863Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, Wwwwwwwwwwwwwwwwwwwwwwwwwwww2, theme);
            }
            return NonOwnedDrawableResource.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        }
        throw new IllegalStateException("Package name for " + uri + " is null or empty");
    }
}
