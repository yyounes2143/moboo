package coil.fetch;

import android.content.ContentResolver;
import android.content.res.AssetFileDescriptor;
import android.graphics.Point;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import androidx.annotation.VisibleForTesting;
import coil.ImageLoader;
import coil.decode.ContentMetadata;
import coil.decode.DataSource;
import coil.decode.ImageSources;
import coil.fetch.Fetcher;
import coil.request.Options;
import coil.size.Dimension;
import java.io.InputStream;
import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import okio.Okio;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0000\u0018\u00002\u00020\u0001:\u0001\u0014B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0013\u0010\t\u001a\u00020\bH\u0096@ø\u0001\u0000¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u0002H\u0001¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u0002H\u0001¢\u0006\u0004\b\u000e\u0010\rJ\u0011\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0002¢\u0006\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\u0012R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\u0013\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0015"}, d2 = {"Lcoil/fetch/ContentUriFetcher;", "Lcoil/fetch/Fetcher;", "Landroid/net/Uri;", "data", "Lcoil/request/Options;", "options", "<init>", "(Landroid/net/Uri;Lcoil/request/Options;)V", "Lcoil/fetch/FetchResult;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/net/Uri;)Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Landroid/os/Bundle;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Landroid/os/Bundle;", "Landroid/net/Uri;", "Lcoil/request/Options;", "Factory", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class ContentUriFetcher implements Fetcher {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Options f1912Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Uri f1913Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J)\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0005\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Lcoil/fetch/ContentUriFetcher$Factory;", "Lcoil/fetch/Fetcher$Factory;", "Landroid/net/Uri;", "<init>", "()V", "data", "Lcoil/request/Options;", "options", "Lcoil/ImageLoader;", "imageLoader", "Lcoil/fetch/Fetcher;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/net/Uri;Lcoil/request/Options;Lcoil/ImageLoader;)Lcoil/fetch/Fetcher;", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/net/Uri;)Z", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Factory implements Fetcher.Factory<Uri> {
        public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Uri uri) {
            return Intrinsics.areEqual(uri.getScheme(), "content");
        }

        @Override // coil.fetch.Fetcher.Factory
        @Nullable
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public Fetcher Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Uri uri, @NotNull Options options, @NotNull ImageLoader imageLoader) {
            if (!Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(uri)) {
                return null;
            }
            return new ContentUriFetcher(uri, options);
        }
    }

    public ContentUriFetcher(@NotNull Uri uri, @NotNull Options options) {
        this.f1913Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = uri;
        this.f1912Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = options;
    }

    public final Bundle Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        Dimension.Pixels pixels;
        Dimension.Pixels pixels2;
        Dimension Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f1912Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 instanceof Dimension.Pixels) {
            pixels = (Dimension.Pixels) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        } else {
            pixels = null;
        }
        if (pixels == null) {
            return null;
        }
        int i = pixels.f2170Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        Dimension Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f1912Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 instanceof Dimension.Pixels) {
            pixels2 = (Dimension.Pixels) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        } else {
            pixels2 = null;
        }
        if (pixels2 == null) {
            return null;
        }
        int i2 = pixels2.f2170Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        Bundle bundle = new Bundle(1);
        bundle.putParcelable("android.content.extra.SIZE", new Point(i, i2));
        return bundle;
    }

    @VisibleForTesting
    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Uri uri) {
        List<String> pathSegments;
        int size;
        if (!Intrinsics.areEqual(uri.getAuthority(), "media") || (size = (pathSegments = uri.getPathSegments()).size()) < 3 || !Intrinsics.areEqual(pathSegments.get(size - 3), "audio") || !Intrinsics.areEqual(pathSegments.get(size - 2), "albums")) {
            return false;
        }
        return true;
    }

    @VisibleForTesting
    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Uri uri) {
        if (Intrinsics.areEqual(uri.getAuthority(), "com.android.contacts") && Intrinsics.areEqual(uri.getLastPathSegment(), "display_photo")) {
            return true;
        }
        return false;
    }

    @Override // coil.fetch.Fetcher
    @Nullable
    public Object Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Continuation<? super FetchResult> continuation) {
        AssetFileDescriptor openTypedAssetFile;
        ContentResolver contentResolver = this.f1912Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwww().getContentResolver();
        InputStream inputStream = null;
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f1913Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
            AssetFileDescriptor openAssetFileDescriptor = contentResolver.openAssetFileDescriptor(this.f1913Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, "r");
            if (openAssetFileDescriptor != null) {
                inputStream = openAssetFileDescriptor.createInputStream();
            }
            if (inputStream == null) {
                throw new IllegalStateException(("Unable to find a contact photo associated with '" + this.f1913Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + "'.").toString());
            }
        } else if (Build.VERSION.SDK_INT >= 29 && Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f1913Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
            openTypedAssetFile = contentResolver.openTypedAssetFile(this.f1913Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, "image/*", Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), null);
            if (openTypedAssetFile != null) {
                inputStream = openTypedAssetFile.createInputStream();
            }
            if (inputStream == null) {
                throw new IllegalStateException(("Unable to find a music thumbnail associated with '" + this.f1913Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + "'.").toString());
            }
        } else {
            inputStream = contentResolver.openInputStream(this.f1913Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            if (inputStream == null) {
                throw new IllegalStateException(("Unable to open '" + this.f1913Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + "'.").toString());
            }
        }
        return new SourceResult(ImageSources.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Okio.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Okio.Wwwwwwwwwwwwwwwwwwwwwwww(inputStream)), this.f1912Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(), new ContentMetadata(this.f1913Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)), contentResolver.getType(this.f1913Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww), DataSource.DISK);
    }
}
