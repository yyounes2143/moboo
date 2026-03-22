package coil.fetch;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.TypedValue;
import android.webkit.MimeTypeMap;
import coil.ImageLoader;
import coil.decode.DataSource;
import coil.decode.ImageSources;
import coil.decode.ResourceMetadata;
import coil.fetch.Fetcher;
import coil.request.Options;
import coil.util.Contexts;
import coil.util.DrawableUtils;
import coil.util.Utils;
import java.util.List;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okio.Okio;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0001\n\u0002\b\u0007\b\u0000\u0018\u0000 \u00102\u00020\u0001:\u0002\u0010\u0011B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0013\u0010\t\u001a\u00020\bH\u0096@ø\u0001\u0000¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\f\u0010\rR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\u000eR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\u000f\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0012"}, d2 = {"Lcoil/fetch/ResourceUriFetcher;", "Lcoil/fetch/Fetcher;", "Landroid/net/Uri;", "data", "Lcoil/request/Options;", "options", "<init>", "(Landroid/net/Uri;Lcoil/request/Options;)V", "Lcoil/fetch/FetchResult;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/net/Uri;)Ljava/lang/Void;", "Landroid/net/Uri;", "Lcoil/request/Options;", "Companion", "Factory", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class ResourceUriFetcher implements Fetcher {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Options f1930Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Uri f1931Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lcoil/fetch/ResourceUriFetcher$Companion;", "", "()V", "MIME_TYPE_XML", "", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0007\u0010\bJ)\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0005\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Lcoil/fetch/ResourceUriFetcher$Factory;", "Lcoil/fetch/Fetcher$Factory;", "Landroid/net/Uri;", "<init>", "()V", "data", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/net/Uri;)Z", "Lcoil/request/Options;", "options", "Lcoil/ImageLoader;", "imageLoader", "Lcoil/fetch/Fetcher;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/net/Uri;Lcoil/request/Options;Lcoil/ImageLoader;)Lcoil/fetch/Fetcher;", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Factory implements Fetcher.Factory<Uri> {
        private final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Uri uri) {
            return Intrinsics.areEqual(uri.getScheme(), "android.resource");
        }

        @Override // coil.fetch.Fetcher.Factory
        @Nullable
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public Fetcher Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Uri uri, @NotNull Options options, @NotNull ImageLoader imageLoader) {
            if (!Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(uri)) {
                return null;
            }
            return new ResourceUriFetcher(uri, options);
        }
    }

    public ResourceUriFetcher(@NotNull Uri uri, @NotNull Options options) {
        this.f1931Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = uri;
        this.f1930Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = options;
    }

    public final Void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Uri uri) {
        throw new IllegalStateException("Invalid android.resource URI: " + uri);
    }

    @Override // coil.fetch.Fetcher
    @Nullable
    public Object Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Continuation<? super FetchResult> continuation) {
        Integer intOrNull;
        Resources resourcesForApplication;
        Drawable Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        String authority = this.f1931Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getAuthority();
        if (authority != null) {
            if (StringsKt.isBlank(authority)) {
                authority = null;
            }
            if (authority != null) {
                String str = (String) CollectionsKt.lastOrNull((List<? extends Object>) this.f1931Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getPathSegments());
                if (str != null && (intOrNull = StringsKt.toIntOrNull(str)) != null) {
                    int intValue = intOrNull.intValue();
                    Context Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f1930Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    if (Intrinsics.areEqual(authority, Wwwwwwwwwwwwwwwwwwwwwwwwwwww2.getPackageName())) {
                        resourcesForApplication = Wwwwwwwwwwwwwwwwwwwwwwwwwwww2.getResources();
                    } else {
                        resourcesForApplication = Wwwwwwwwwwwwwwwwwwwwwwwwwwww2.getPackageManager().getResourcesForApplication(authority);
                    }
                    TypedValue typedValue = new TypedValue();
                    resourcesForApplication.getValue(intValue, typedValue, true);
                    CharSequence charSequence = typedValue.string;
                    String Wwwwwwwwwwwwwwwwwwwwwwww2 = Utils.Wwwwwwwwwwwwwwwwwwwwwwww(MimeTypeMap.getSingleton(), charSequence.subSequence(StringsKt.lastIndexOf$default(charSequence, '/', 0, false, 6, (Object) null), charSequence.length()).toString());
                    if (Intrinsics.areEqual(Wwwwwwwwwwwwwwwwwwwwwwww2, "text/xml")) {
                        if (Intrinsics.areEqual(authority, Wwwwwwwwwwwwwwwwwwwwwwwwwwww2.getPackageName())) {
                            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Contexts.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwww2, intValue);
                        } else {
                            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Contexts.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwww2, resourcesForApplication, intValue);
                        }
                        Drawable drawable = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                        boolean Wwwwwwwwwwwww2 = Utils.Wwwwwwwwwwwww(drawable);
                        if (Wwwwwwwwwwwww2) {
                            drawable = new BitmapDrawable(Wwwwwwwwwwwwwwwwwwwwwwwwwwww2.getResources(), DrawableUtils.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(drawable, this.f1930Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(), this.f1930Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwww(), this.f1930Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwww(), this.f1930Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()));
                        }
                        return new DrawableResult(drawable, Wwwwwwwwwwwww2, DataSource.DISK);
                    }
                    TypedValue typedValue2 = new TypedValue();
                    return new SourceResult(ImageSources.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Okio.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Okio.Wwwwwwwwwwwwwwwwwwwwwwww(resourcesForApplication.openRawResource(intValue, typedValue2))), Wwwwwwwwwwwwwwwwwwwwwwwwwwww2, new ResourceMetadata(authority, intValue, typedValue2.density)), Wwwwwwwwwwwwwwwwwwwwwwww2, DataSource.DISK);
                }
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f1931Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                throw new KotlinNothingValueException();
            }
        }
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f1931Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        throw new KotlinNothingValueException();
    }
}
