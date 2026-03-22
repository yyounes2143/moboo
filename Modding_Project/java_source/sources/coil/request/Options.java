package coil.request;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.ColorSpace;
import android.os.Build;
import coil.size.Scale;
import coil.size.Size;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Headers;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b)\u0018\u00002\u00020\u0001B\u009f\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\b\u0012\b\b\u0002\u0010\u000b\u001a\u00020\n\u0012\b\b\u0002\u0010\r\u001a\u00020\f\u0012\b\b\u0002\u0010\u000e\u001a\u00020\f\u0012\b\b\u0002\u0010\u000f\u001a\u00020\f\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0010\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0012\u0012\b\b\u0002\u0010\u0015\u001a\u00020\u0014\u0012\b\b\u0002\u0010\u0017\u001a\u00020\u0016\u0012\b\b\u0002\u0010\u0019\u001a\u00020\u0018\u0012\b\b\u0002\u0010\u001a\u001a\u00020\u0018\u0012\b\b\u0002\u0010\u001b\u001a\u00020\u0018¢\u0006\u0004\b\u001c\u0010\u001dJ§\u0001\u0010\u001e\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u00042\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\t\u001a\u00020\b2\b\b\u0002\u0010\u000b\u001a\u00020\n2\b\b\u0002\u0010\r\u001a\u00020\f2\b\b\u0002\u0010\u000e\u001a\u00020\f2\b\b\u0002\u0010\u000f\u001a\u00020\f2\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00102\b\b\u0002\u0010\u0013\u001a\u00020\u00122\b\b\u0002\u0010\u0015\u001a\u00020\u00142\b\b\u0002\u0010\u0017\u001a\u00020\u00162\b\b\u0002\u0010\u0019\u001a\u00020\u00182\b\b\u0002\u0010\u001a\u001a\u00020\u00182\b\b\u0002\u0010\u001b\u001a\u00020\u0018¢\u0006\u0004\b\u001e\u0010\u001fJ\u001a\u0010!\u001a\u00020\f2\b\u0010 \u001a\u0004\u0018\u00010\u0001H\u0096\u0002¢\u0006\u0004\b!\u0010\"J\u000f\u0010$\u001a\u00020#H\u0016¢\u0006\u0004\b$\u0010%R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u001e\u0010&\u001a\u0004\b'\u0010(R\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b)\u0010*\u001a\u0004\b+\u0010,R\u0019\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0006¢\u0006\f\n\u0004\b-\u0010.\u001a\u0004\b/\u00100R\u0017\u0010\t\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b1\u00102\u001a\u0004\b3\u00104R\u0017\u0010\u000b\u001a\u00020\n8\u0006¢\u0006\f\n\u0004\b/\u00105\u001a\u0004\b6\u00107R\u0017\u0010\r\u001a\u00020\f8\u0006¢\u0006\f\n\u0004\b+\u00108\u001a\u0004\b-\u00109R\u0017\u0010\u000e\u001a\u00020\f8\u0006¢\u0006\f\n\u0004\b'\u00108\u001a\u0004\b1\u00109R\u0017\u0010\u000f\u001a\u00020\f8\u0006¢\u0006\f\n\u0004\b:\u00108\u001a\u0004\b;\u00109R\u0019\u0010\u0011\u001a\u0004\u0018\u00010\u00108\u0006¢\u0006\f\n\u0004\b<\u0010=\u001a\u0004\b:\u0010>R\u0017\u0010\u0013\u001a\u00020\u00128\u0006¢\u0006\f\n\u0004\b?\u0010@\u001a\u0004\b?\u0010AR\u0017\u0010\u0015\u001a\u00020\u00148\u0006¢\u0006\f\n\u0004\bB\u0010C\u001a\u0004\bD\u0010ER\u0017\u0010\u0017\u001a\u00020\u00168\u0006¢\u0006\f\n\u0004\b;\u0010F\u001a\u0004\bG\u0010HR\u0017\u0010\u0019\u001a\u00020\u00188\u0006¢\u0006\f\n\u0004\b6\u0010I\u001a\u0004\bJ\u0010KR\u0017\u0010\u001a\u001a\u00020\u00188\u0006¢\u0006\f\n\u0004\b3\u0010I\u001a\u0004\b<\u0010KR\u0017\u0010\u001b\u001a\u00020\u00188\u0006¢\u0006\f\n\u0004\bD\u0010I\u001a\u0004\bB\u0010K¨\u0006L"}, d2 = {"Lcoil/request/Options;", "", "Landroid/content/Context;", "context", "Landroid/graphics/Bitmap$Config;", "config", "Landroid/graphics/ColorSpace;", "colorSpace", "Lcoil/size/Size;", "size", "Lcoil/size/Scale;", "scale", "", "allowInexactSize", "allowRgb565", "premultipliedAlpha", "", "diskCacheKey", "Lokhttp3/Headers;", "headers", "Lcoil/request/Tags;", "tags", "Lcoil/request/Parameters;", "parameters", "Lcoil/request/CachePolicy;", "memoryCachePolicy", "diskCachePolicy", "networkCachePolicy", "<init>", "(Landroid/content/Context;Landroid/graphics/Bitmap$Config;Landroid/graphics/ColorSpace;Lcoil/size/Size;Lcoil/size/Scale;ZZZLjava/lang/String;Lokhttp3/Headers;Lcoil/request/Tags;Lcoil/request/Parameters;Lcoil/request/CachePolicy;Lcoil/request/CachePolicy;Lcoil/request/CachePolicy;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;Landroid/graphics/Bitmap$Config;Landroid/graphics/ColorSpace;Lcoil/size/Size;Lcoil/size/Scale;ZZZLjava/lang/String;Lokhttp3/Headers;Lcoil/request/Tags;Lcoil/request/Parameters;Lcoil/request/CachePolicy;Lcoil/request/CachePolicy;Lcoil/request/CachePolicy;)Lcoil/request/Options;", "other", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "Landroid/content/Context;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Landroid/content/Context;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Landroid/graphics/Bitmap$Config;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Landroid/graphics/Bitmap$Config;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Landroid/graphics/ColorSpace;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Landroid/graphics/ColorSpace;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcoil/size/Size;", "Wwwwwwwwwwwwwwwwwwwww", "()Lcoil/size/Size;", "Lcoil/size/Scale;", "Wwwwwwwwwwwwwwwwwwwwww", "()Lcoil/size/Scale;", "Z", "()Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "()Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Lokhttp3/Headers;", "()Lokhttp3/Headers;", "Wwwwwwwwwwwwwwwwwwwwwwww", "Lcoil/request/Tags;", "Wwwwwwwwwwwwwwwwwwww", "()Lcoil/request/Tags;", "Lcoil/request/Parameters;", "getParameters", "()Lcoil/request/Parameters;", "Lcoil/request/CachePolicy;", "getMemoryCachePolicy", "()Lcoil/request/CachePolicy;", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class Options {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final CachePolicy f2126Wwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final CachePolicy f2127Wwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final CachePolicy f2128Wwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Parameters f2129Wwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Tags f2130Wwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Headers f2131Wwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f2132Wwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f2133Wwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f2134Wwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f2135Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Scale f2136Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Size f2137Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ColorSpace f2138Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Bitmap.Config f2139Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Context f2140Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public Options(@NotNull Context context, @NotNull Bitmap.Config config, @Nullable ColorSpace colorSpace, @NotNull Size size, @NotNull Scale scale, boolean z, boolean z2, boolean z3, @Nullable String str, @NotNull Headers headers, @NotNull Tags tags, @NotNull Parameters parameters, @NotNull CachePolicy cachePolicy, @NotNull CachePolicy cachePolicy2, @NotNull CachePolicy cachePolicy3) {
        this.f2140Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = context;
        this.f2139Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = config;
        this.f2138Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = colorSpace;
        this.f2137Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = size;
        this.f2136Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = scale;
        this.f2135Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = z;
        this.f2134Wwwwwwwwwwwwwwwwwwwwwwwwwwww = z2;
        this.f2133Wwwwwwwwwwwwwwwwwwwwwwwwwww = z3;
        this.f2132Wwwwwwwwwwwwwwwwwwwwwwwwww = str;
        this.f2131Wwwwwwwwwwwwwwwwwwwwwwwww = headers;
        this.f2130Wwwwwwwwwwwwwwwwwwwwwwww = tags;
        this.f2129Wwwwwwwwwwwwwwwwwwwwwww = parameters;
        this.f2128Wwwwwwwwwwwwwwwwwwwwww = cachePolicy;
        this.f2127Wwwwwwwwwwwwwwwwwwwww = cachePolicy2;
        this.f2126Wwwwwwwwwwwwwwwwwwww = cachePolicy3;
    }

    @NotNull
    public final Tags Wwwwwwwwwwwwwwwwwwww() {
        return this.f2130Wwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final Size Wwwwwwwwwwwwwwwwwwwww() {
        return this.f2137Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final Scale Wwwwwwwwwwwwwwwwwwwwww() {
        return this.f2136Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwww() {
        return this.f2133Wwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final CachePolicy Wwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f2126Wwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final Headers Wwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f2131Wwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final CachePolicy Wwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f2127Wwwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f2132Wwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final Context Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f2140Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final Bitmap.Config Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f2139Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public final ColorSpace Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f2138Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f2134Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f2135Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final Options Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context, @NotNull Bitmap.Config config, @Nullable ColorSpace colorSpace, @NotNull Size size, @NotNull Scale scale, boolean z, boolean z2, boolean z3, @Nullable String str, @NotNull Headers headers, @NotNull Tags tags, @NotNull Parameters parameters, @NotNull CachePolicy cachePolicy, @NotNull CachePolicy cachePolicy2, @NotNull CachePolicy cachePolicy3) {
        return new Options(context, config, colorSpace, size, scale, z, z2, z3, str, headers, tags, parameters, cachePolicy, cachePolicy2, cachePolicy3);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Options) {
            Options options = (Options) obj;
            if (Intrinsics.areEqual(this.f2140Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, options.f2140Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) && this.f2139Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == options.f2139Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                if ((Build.VERSION.SDK_INT < 26 || Intrinsics.areEqual(this.f2138Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, options.f2138Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) && Intrinsics.areEqual(this.f2137Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, options.f2137Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) && this.f2136Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww == options.f2136Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww && this.f2135Wwwwwwwwwwwwwwwwwwwwwwwwwwwww == options.f2135Wwwwwwwwwwwwwwwwwwwwwwwwwwwww && this.f2134Wwwwwwwwwwwwwwwwwwwwwwwwwwww == options.f2134Wwwwwwwwwwwwwwwwwwwwwwwwwwww && this.f2133Wwwwwwwwwwwwwwwwwwwwwwwwwww == options.f2133Wwwwwwwwwwwwwwwwwwwwwwwwwww && Intrinsics.areEqual(this.f2132Wwwwwwwwwwwwwwwwwwwwwwwwww, options.f2132Wwwwwwwwwwwwwwwwwwwwwwwwww) && Intrinsics.areEqual(this.f2131Wwwwwwwwwwwwwwwwwwwwwwwww, options.f2131Wwwwwwwwwwwwwwwwwwwwwwwww) && Intrinsics.areEqual(this.f2130Wwwwwwwwwwwwwwwwwwwwwwww, options.f2130Wwwwwwwwwwwwwwwwwwwwwwww) && Intrinsics.areEqual(this.f2129Wwwwwwwwwwwwwwwwwwwwwww, options.f2129Wwwwwwwwwwwwwwwwwwwwwww) && this.f2128Wwwwwwwwwwwwwwwwwwwwww == options.f2128Wwwwwwwwwwwwwwwwwwwwww && this.f2127Wwwwwwwwwwwwwwwwwwwww == options.f2127Wwwwwwwwwwwwwwwwwwwww && this.f2126Wwwwwwwwwwwwwwwwwwww == options.f2126Wwwwwwwwwwwwwwwwwwww) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        int i;
        int hashCode = ((this.f2140Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode() * 31) + this.f2139Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode()) * 31;
        ColorSpace colorSpace = this.f2138Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        int i2 = 0;
        if (colorSpace != null) {
            i = colorSpace.hashCode();
        } else {
            i = 0;
        }
        int hashCode2 = (((((((((((hashCode + i) * 31) + this.f2137Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode()) * 31) + this.f2136Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode()) * 31) + androidx.privacysandbox.ads.adservices.adid.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f2135Wwwwwwwwwwwwwwwwwwwwwwwwwwwww)) * 31) + androidx.privacysandbox.ads.adservices.adid.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f2134Wwwwwwwwwwwwwwwwwwwwwwwwwwww)) * 31) + androidx.privacysandbox.ads.adservices.adid.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f2133Wwwwwwwwwwwwwwwwwwwwwwwwwww)) * 31;
        String str = this.f2132Wwwwwwwwwwwwwwwwwwwwwwwwww;
        if (str != null) {
            i2 = str.hashCode();
        }
        return ((((((((((((hashCode2 + i2) * 31) + this.f2131Wwwwwwwwwwwwwwwwwwwwwwwww.hashCode()) * 31) + this.f2130Wwwwwwwwwwwwwwwwwwwwwwww.hashCode()) * 31) + this.f2129Wwwwwwwwwwwwwwwwwwwwwww.hashCode()) * 31) + this.f2128Wwwwwwwwwwwwwwwwwwwwww.hashCode()) * 31) + this.f2127Wwwwwwwwwwwwwwwwwwwww.hashCode()) * 31) + this.f2126Wwwwwwwwwwwwwwwwwwww.hashCode();
    }
}
