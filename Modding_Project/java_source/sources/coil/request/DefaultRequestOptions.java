package coil.request;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import coil.size.Precision;
import coil.transition.Transition;
import coil.util.Utils;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.Dispatchers;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b \u0018\u00002\u00020\u0001B£\u0001\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0002\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007\u0012\b\b\u0002\u0010\n\u001a\u00020\t\u0012\b\b\u0002\u0010\f\u001a\u00020\u000b\u0012\b\b\u0002\u0010\u000e\u001a\u00020\r\u0012\b\b\u0002\u0010\u000f\u001a\u00020\r\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0010\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0010\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0010\u0012\b\b\u0002\u0010\u0015\u001a\u00020\u0014\u0012\b\b\u0002\u0010\u0016\u001a\u00020\u0014\u0012\b\b\u0002\u0010\u0017\u001a\u00020\u0014¢\u0006\u0004\b\u0018\u0010\u0019J\u001a\u0010\u001b\u001a\u00020\r2\b\u0010\u001a\u001a\u0004\u0018\u00010\u0001H\u0096\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ\u000f\u0010\u001e\u001a\u00020\u001dH\u0016¢\u0006\u0004\b\u001e\u0010\u001fR\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#R\u0017\u0010\u0004\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b$\u0010!\u001a\u0004\b%\u0010#R\u0017\u0010\u0005\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b&\u0010!\u001a\u0004\b'\u0010#R\u0017\u0010\u0006\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b'\u0010!\u001a\u0004\b(\u0010#R\u0017\u0010\b\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b)\u0010*\u001a\u0004\b+\u0010,R\u0017\u0010\n\u001a\u00020\t8\u0006¢\u0006\f\n\u0004\b-\u0010.\u001a\u0004\b/\u00100R\u0017\u0010\f\u001a\u00020\u000b8\u0006¢\u0006\f\n\u0004\b1\u00102\u001a\u0004\b&\u00103R\u0017\u0010\u000e\u001a\u00020\r8\u0006¢\u0006\f\n\u0004\b%\u00104\u001a\u0004\b \u00105R\u0017\u0010\u000f\u001a\u00020\r8\u0006¢\u0006\f\n\u0004\b\"\u00104\u001a\u0004\b$\u00105R\u0019\u0010\u0011\u001a\u0004\u0018\u00010\u00108\u0006¢\u0006\f\n\u0004\b6\u00107\u001a\u0004\b8\u00109R\u0019\u0010\u0012\u001a\u0004\u0018\u00010\u00108\u0006¢\u0006\f\n\u0004\b:\u00107\u001a\u0004\b-\u00109R\u0019\u0010\u0013\u001a\u0004\u0018\u00010\u00108\u0006¢\u0006\f\n\u0004\b8\u00107\u001a\u0004\b1\u00109R\u0017\u0010\u0015\u001a\u00020\u00148\u0006¢\u0006\f\n\u0004\b/\u0010;\u001a\u0004\b6\u0010<R\u0017\u0010\u0016\u001a\u00020\u00148\u0006¢\u0006\f\n\u0004\b(\u0010;\u001a\u0004\b)\u0010<R\u0017\u0010\u0017\u001a\u00020\u00148\u0006¢\u0006\f\n\u0004\b+\u0010;\u001a\u0004\b:\u0010<¨\u0006="}, d2 = {"Lcoil/request/DefaultRequestOptions;", "", "Lkotlinx/coroutines/CoroutineDispatcher;", "interceptorDispatcher", "fetcherDispatcher", "decoderDispatcher", "transformationDispatcher", "Lcoil/transition/Transition$Factory;", "transitionFactory", "Lcoil/size/Precision;", "precision", "Landroid/graphics/Bitmap$Config;", "bitmapConfig", "", "allowHardware", "allowRgb565", "Landroid/graphics/drawable/Drawable;", "placeholder", "error", "fallback", "Lcoil/request/CachePolicy;", "memoryCachePolicy", "diskCachePolicy", "networkCachePolicy", "<init>", "(Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;Lcoil/transition/Transition$Factory;Lcoil/size/Precision;Landroid/graphics/Bitmap$Config;ZZLandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcoil/request/CachePolicy;Lcoil/request/CachePolicy;Lcoil/request/CachePolicy;)V", "other", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lkotlinx/coroutines/CoroutineDispatcher;", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "()Lkotlinx/coroutines/CoroutineDispatcher;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcoil/transition/Transition$Factory;", "Wwwwwwwwwwwwwwwwwwww", "()Lcoil/transition/Transition$Factory;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcoil/size/Precision;", "Wwwwwwwwwwwwwwwwwwwwww", "()Lcoil/size/Precision;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "Landroid/graphics/Bitmap$Config;", "()Landroid/graphics/Bitmap$Config;", "Z", "()Z", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Landroid/graphics/drawable/Drawable;", "Wwwwwwwwwwwwwwwwwwwwwww", "()Landroid/graphics/drawable/Drawable;", "Wwwwwwwwwwwwwwwwwwwwwwww", "Lcoil/request/CachePolicy;", "()Lcoil/request/CachePolicy;", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class DefaultRequestOptions {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final CachePolicy f2004Wwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final CachePolicy f2005Wwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final CachePolicy f2006Wwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Drawable f2007Wwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Drawable f2008Wwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Drawable f2009Wwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f2010Wwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f2011Wwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Bitmap.Config f2012Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Precision f2013Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Transition.Factory f2014Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final CoroutineDispatcher f2015Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final CoroutineDispatcher f2016Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final CoroutineDispatcher f2017Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final CoroutineDispatcher f2018Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public DefaultRequestOptions() {
        this(null, null, null, null, null, null, null, false, false, null, null, null, null, null, null, 32767, null);
    }

    @NotNull
    public final Transition.Factory Wwwwwwwwwwwwwwwwwwww() {
        return this.f2014Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final CoroutineDispatcher Wwwwwwwwwwwwwwwwwwwww() {
        return this.f2015Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final Precision Wwwwwwwwwwwwwwwwwwwwww() {
        return this.f2013Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public final Drawable Wwwwwwwwwwwwwwwwwwwwwww() {
        return this.f2009Wwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final CachePolicy Wwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f2004Wwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final CachePolicy Wwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f2006Wwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final CoroutineDispatcher Wwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f2018Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final CoroutineDispatcher Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f2017Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public final Drawable Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f2007Wwwwwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public final Drawable Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f2008Wwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final CachePolicy Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f2005Wwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final CoroutineDispatcher Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f2016Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final Bitmap.Config Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f2012Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f2010Wwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f2011Wwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof DefaultRequestOptions) {
            DefaultRequestOptions defaultRequestOptions = (DefaultRequestOptions) obj;
            if (Intrinsics.areEqual(this.f2018Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, defaultRequestOptions.f2018Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) && Intrinsics.areEqual(this.f2017Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, defaultRequestOptions.f2017Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) && Intrinsics.areEqual(this.f2016Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, defaultRequestOptions.f2016Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) && Intrinsics.areEqual(this.f2015Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, defaultRequestOptions.f2015Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) && Intrinsics.areEqual(this.f2014Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww, defaultRequestOptions.f2014Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww) && this.f2013Wwwwwwwwwwwwwwwwwwwwwwwwwwwww == defaultRequestOptions.f2013Wwwwwwwwwwwwwwwwwwwwwwwwwwwww && this.f2012Wwwwwwwwwwwwwwwwwwwwwwwwwwww == defaultRequestOptions.f2012Wwwwwwwwwwwwwwwwwwwwwwwwwwww && this.f2011Wwwwwwwwwwwwwwwwwwwwwwwwwww == defaultRequestOptions.f2011Wwwwwwwwwwwwwwwwwwwwwwwwwww && this.f2010Wwwwwwwwwwwwwwwwwwwwwwwwww == defaultRequestOptions.f2010Wwwwwwwwwwwwwwwwwwwwwwwwww && Intrinsics.areEqual(this.f2009Wwwwwwwwwwwwwwwwwwwwwwwww, defaultRequestOptions.f2009Wwwwwwwwwwwwwwwwwwwwwwwww) && Intrinsics.areEqual(this.f2008Wwwwwwwwwwwwwwwwwwwwwwww, defaultRequestOptions.f2008Wwwwwwwwwwwwwwwwwwwwwwww) && Intrinsics.areEqual(this.f2007Wwwwwwwwwwwwwwwwwwwwwww, defaultRequestOptions.f2007Wwwwwwwwwwwwwwwwwwwwwww) && this.f2006Wwwwwwwwwwwwwwwwwwwwww == defaultRequestOptions.f2006Wwwwwwwwwwwwwwwwwwwwww && this.f2005Wwwwwwwwwwwwwwwwwwwww == defaultRequestOptions.f2005Wwwwwwwwwwwwwwwwwwwww && this.f2004Wwwwwwwwwwwwwwwwwwww == defaultRequestOptions.f2004Wwwwwwwwwwwwwwwwwwww) {
                return true;
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        int i;
        int i2;
        int hashCode = ((((((((((((((((this.f2018Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode() * 31) + this.f2017Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode()) * 31) + this.f2016Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode()) * 31) + this.f2015Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode()) * 31) + this.f2014Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode()) * 31) + this.f2013Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode()) * 31) + this.f2012Wwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode()) * 31) + androidx.privacysandbox.ads.adservices.adid.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f2011Wwwwwwwwwwwwwwwwwwwwwwwwwww)) * 31) + androidx.privacysandbox.ads.adservices.adid.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f2010Wwwwwwwwwwwwwwwwwwwwwwwwww)) * 31;
        Drawable drawable = this.f2009Wwwwwwwwwwwwwwwwwwwwwwwww;
        int i3 = 0;
        if (drawable != null) {
            i = drawable.hashCode();
        } else {
            i = 0;
        }
        int i4 = (hashCode + i) * 31;
        Drawable drawable2 = this.f2008Wwwwwwwwwwwwwwwwwwwwwwww;
        if (drawable2 != null) {
            i2 = drawable2.hashCode();
        } else {
            i2 = 0;
        }
        int i5 = (i4 + i2) * 31;
        Drawable drawable3 = this.f2007Wwwwwwwwwwwwwwwwwwwwwww;
        if (drawable3 != null) {
            i3 = drawable3.hashCode();
        }
        return ((((((i5 + i3) * 31) + this.f2006Wwwwwwwwwwwwwwwwwwwwww.hashCode()) * 31) + this.f2005Wwwwwwwwwwwwwwwwwwwww.hashCode()) * 31) + this.f2004Wwwwwwwwwwwwwwwwwwww.hashCode();
    }

    public DefaultRequestOptions(@NotNull CoroutineDispatcher coroutineDispatcher, @NotNull CoroutineDispatcher coroutineDispatcher2, @NotNull CoroutineDispatcher coroutineDispatcher3, @NotNull CoroutineDispatcher coroutineDispatcher4, @NotNull Transition.Factory factory, @NotNull Precision precision, @NotNull Bitmap.Config config, boolean z, boolean z2, @Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @NotNull CachePolicy cachePolicy, @NotNull CachePolicy cachePolicy2, @NotNull CachePolicy cachePolicy3) {
        this.f2018Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = coroutineDispatcher;
        this.f2017Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = coroutineDispatcher2;
        this.f2016Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = coroutineDispatcher3;
        this.f2015Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = coroutineDispatcher4;
        this.f2014Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = factory;
        this.f2013Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = precision;
        this.f2012Wwwwwwwwwwwwwwwwwwwwwwwwwwww = config;
        this.f2011Wwwwwwwwwwwwwwwwwwwwwwwwwww = z;
        this.f2010Wwwwwwwwwwwwwwwwwwwwwwwwww = z2;
        this.f2009Wwwwwwwwwwwwwwwwwwwwwwwww = drawable;
        this.f2008Wwwwwwwwwwwwwwwwwwwwwwww = drawable2;
        this.f2007Wwwwwwwwwwwwwwwwwwwwwww = drawable3;
        this.f2006Wwwwwwwwwwwwwwwwwwwwww = cachePolicy;
        this.f2005Wwwwwwwwwwwwwwwwwwwww = cachePolicy2;
        this.f2004Wwwwwwwwwwwwwwwwwwww = cachePolicy3;
    }

    public /* synthetic */ DefaultRequestOptions(CoroutineDispatcher coroutineDispatcher, CoroutineDispatcher coroutineDispatcher2, CoroutineDispatcher coroutineDispatcher3, CoroutineDispatcher coroutineDispatcher4, Transition.Factory factory, Precision precision, Bitmap.Config config, boolean z, boolean z2, Drawable drawable, Drawable drawable2, Drawable drawable3, CachePolicy cachePolicy, CachePolicy cachePolicy2, CachePolicy cachePolicy3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? Dispatchers.getMain().getImmediate() : coroutineDispatcher, (i & 2) != 0 ? Dispatchers.getIO() : coroutineDispatcher2, (i & 4) != 0 ? Dispatchers.getIO() : coroutineDispatcher3, (i & 8) != 0 ? Dispatchers.getIO() : coroutineDispatcher4, (i & 16) != 0 ? Transition.Factory.f2198Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww : factory, (i & 32) != 0 ? Precision.AUTOMATIC : precision, (i & 64) != 0 ? Utils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() : config, (i & 128) != 0 ? true : z, (i & 256) != 0 ? false : z2, (i & 512) != 0 ? null : drawable, (i & 1024) != 0 ? null : drawable2, (i & 2048) == 0 ? drawable3 : null, (i & 4096) != 0 ? CachePolicy.ENABLED : cachePolicy, (i & 8192) != 0 ? CachePolicy.ENABLED : cachePolicy2, (i & 16384) != 0 ? CachePolicy.ENABLED : cachePolicy3);
    }
}
