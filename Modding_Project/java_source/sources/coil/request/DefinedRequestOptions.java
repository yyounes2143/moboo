package coil.request;

import android.graphics.Bitmap;
import androidx.lifecycle.Lifecycle;
import coil.size.Precision;
import coil.size.Scale;
import coil.size.SizeResolver;
import coil.transition.Transition;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineDispatcher;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b$\u0018\u00002\u00020\u0001B\u009d\u0001\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\u0010\n\u001a\u0004\u0018\u00010\b\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\b\u0012\b\u0010\f\u001a\u0004\u0018\u00010\b\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\r\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\u0013\u0012\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016\u0012\b\u0010\u0018\u001a\u0004\u0018\u00010\u0016\u0012\b\u0010\u0019\u001a\u0004\u0018\u00010\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u001a\u0010\u001d\u001a\u00020\u00132\b\u0010\u001c\u001a\u0004\u0018\u00010\u0001H\u0096\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u000f\u0010 \u001a\u00020\u001fH\u0016¢\u0006\u0004\b \u0010!R\u0019\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\"\u0010#\u001a\u0004\b$\u0010%R\u0019\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006¢\u0006\f\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)R\u0019\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0006¢\u0006\f\n\u0004\b*\u0010+\u001a\u0004\b,\u0010-R\u0019\u0010\t\u001a\u0004\u0018\u00010\b8\u0006¢\u0006\f\n\u0004\b.\u0010/\u001a\u0004\b0\u00101R\u0019\u0010\n\u001a\u0004\u0018\u00010\b8\u0006¢\u0006\f\n\u0004\b2\u0010/\u001a\u0004\b3\u00101R\u0019\u0010\u000b\u001a\u0004\u0018\u00010\b8\u0006¢\u0006\f\n\u0004\b3\u0010/\u001a\u0004\b.\u00101R\u0019\u0010\f\u001a\u0004\u0018\u00010\b8\u0006¢\u0006\f\n\u0004\b0\u0010/\u001a\u0004\b4\u00101R\u0019\u0010\u000e\u001a\u0004\u0018\u00010\r8\u0006¢\u0006\f\n\u0004\b$\u00105\u001a\u0004\b6\u00107R\u0019\u0010\u0010\u001a\u0004\u0018\u00010\u000f8\u0006¢\u0006\f\n\u0004\b8\u00109\u001a\u0004\b:\u0010;R\u0019\u0010\u0012\u001a\u0004\u0018\u00010\u00118\u0006¢\u0006\f\n\u0004\b<\u0010=\u001a\u0004\b*\u0010>R\u0019\u0010\u0014\u001a\u0004\u0018\u00010\u00138\u0006¢\u0006\f\n\u0004\b:\u0010?\u001a\u0004\b\"\u0010@R\u0019\u0010\u0015\u001a\u0004\u0018\u00010\u00138\u0006¢\u0006\f\n\u0004\b,\u0010?\u001a\u0004\b&\u0010@R\u0019\u0010\u0017\u001a\u0004\u0018\u00010\u00168\u0006¢\u0006\f\n\u0004\b(\u0010A\u001a\u0004\b8\u0010BR\u0019\u0010\u0018\u001a\u0004\u0018\u00010\u00168\u0006¢\u0006\f\n\u0004\b4\u0010A\u001a\u0004\b2\u0010BR\u0019\u0010\u0019\u001a\u0004\u0018\u00010\u00168\u0006¢\u0006\f\n\u0004\b6\u0010A\u001a\u0004\b<\u0010B¨\u0006C"}, d2 = {"Lcoil/request/DefinedRequestOptions;", "", "Landroidx/lifecycle/Lifecycle;", "lifecycle", "Lcoil/size/SizeResolver;", "sizeResolver", "Lcoil/size/Scale;", "scale", "Lkotlinx/coroutines/CoroutineDispatcher;", "interceptorDispatcher", "fetcherDispatcher", "decoderDispatcher", "transformationDispatcher", "Lcoil/transition/Transition$Factory;", "transitionFactory", "Lcoil/size/Precision;", "precision", "Landroid/graphics/Bitmap$Config;", "bitmapConfig", "", "allowHardware", "allowRgb565", "Lcoil/request/CachePolicy;", "memoryCachePolicy", "diskCachePolicy", "networkCachePolicy", "<init>", "(Landroidx/lifecycle/Lifecycle;Lcoil/size/SizeResolver;Lcoil/size/Scale;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;Lcoil/transition/Transition$Factory;Lcoil/size/Precision;Landroid/graphics/Bitmap$Config;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcoil/request/CachePolicy;Lcoil/request/CachePolicy;Lcoil/request/CachePolicy;)V", "other", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Landroidx/lifecycle/Lifecycle;", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "()Landroidx/lifecycle/Lifecycle;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcoil/size/SizeResolver;", "Wwwwwwwwwwwwwwwwwwwwww", "()Lcoil/size/SizeResolver;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcoil/size/Scale;", "Wwwwwwwwwwwwwwwwwwwwwww", "()Lcoil/size/Scale;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lkotlinx/coroutines/CoroutineDispatcher;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lkotlinx/coroutines/CoroutineDispatcher;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwww", "Lcoil/transition/Transition$Factory;", "Wwwwwwwwwwwwwwwwwwww", "()Lcoil/transition/Transition$Factory;", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "Lcoil/size/Precision;", "Wwwwwwwwwwwwwwwwwwwwwwww", "()Lcoil/size/Precision;", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Landroid/graphics/Bitmap$Config;", "()Landroid/graphics/Bitmap$Config;", "Ljava/lang/Boolean;", "()Ljava/lang/Boolean;", "Lcoil/request/CachePolicy;", "()Lcoil/request/CachePolicy;", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class DefinedRequestOptions {
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final CachePolicy f2019Wwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final CachePolicy f2020Wwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final CachePolicy f2021Wwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Boolean f2022Wwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Boolean f2023Wwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Bitmap.Config f2024Wwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Precision f2025Wwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Transition.Factory f2026Wwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final CoroutineDispatcher f2027Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final CoroutineDispatcher f2028Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final CoroutineDispatcher f2029Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final CoroutineDispatcher f2030Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Scale f2031Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final SizeResolver f2032Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Lifecycle f2033Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public DefinedRequestOptions(@Nullable Lifecycle lifecycle, @Nullable SizeResolver sizeResolver, @Nullable Scale scale, @Nullable CoroutineDispatcher coroutineDispatcher, @Nullable CoroutineDispatcher coroutineDispatcher2, @Nullable CoroutineDispatcher coroutineDispatcher3, @Nullable CoroutineDispatcher coroutineDispatcher4, @Nullable Transition.Factory factory, @Nullable Precision precision, @Nullable Bitmap.Config config, @Nullable Boolean bool, @Nullable Boolean bool2, @Nullable CachePolicy cachePolicy, @Nullable CachePolicy cachePolicy2, @Nullable CachePolicy cachePolicy3) {
        this.f2033Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = lifecycle;
        this.f2032Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = sizeResolver;
        this.f2031Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = scale;
        this.f2030Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = coroutineDispatcher;
        this.f2029Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = coroutineDispatcher2;
        this.f2028Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = coroutineDispatcher3;
        this.f2027Wwwwwwwwwwwwwwwwwwwwwwwwwwww = coroutineDispatcher4;
        this.f2026Wwwwwwwwwwwwwwwwwwwwwwwwwww = factory;
        this.f2025Wwwwwwwwwwwwwwwwwwwwwwwwww = precision;
        this.f2024Wwwwwwwwwwwwwwwwwwwwwwwww = config;
        this.f2023Wwwwwwwwwwwwwwwwwwwwwwww = bool;
        this.f2022Wwwwwwwwwwwwwwwwwwwwwww = bool2;
        this.f2021Wwwwwwwwwwwwwwwwwwwwww = cachePolicy;
        this.f2020Wwwwwwwwwwwwwwwwwwwww = cachePolicy2;
        this.f2019Wwwwwwwwwwwwwwwwwwww = cachePolicy3;
    }

    @Nullable
    public final Transition.Factory Wwwwwwwwwwwwwwwwwwww() {
        return this.f2026Wwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public final CoroutineDispatcher Wwwwwwwwwwwwwwwwwwwww() {
        return this.f2027Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public final SizeResolver Wwwwwwwwwwwwwwwwwwwwww() {
        return this.f2032Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public final Scale Wwwwwwwwwwwwwwwwwwwwwww() {
        return this.f2031Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public final Precision Wwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f2025Wwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public final CachePolicy Wwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f2019Wwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public final CachePolicy Wwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f2021Wwwwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public final Lifecycle Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f2033Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public final CoroutineDispatcher Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f2030Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public final CoroutineDispatcher Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f2029Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public final CachePolicy Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f2020Wwwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public final CoroutineDispatcher Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f2028Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public final Bitmap.Config Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f2024Wwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public final Boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f2022Wwwwwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public final Boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f2023Wwwwwwwwwwwwwwwwwwwwwwww;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof DefinedRequestOptions) {
            DefinedRequestOptions definedRequestOptions = (DefinedRequestOptions) obj;
            if (Intrinsics.areEqual(this.f2033Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, definedRequestOptions.f2033Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) && Intrinsics.areEqual(this.f2032Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, definedRequestOptions.f2032Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) && this.f2031Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == definedRequestOptions.f2031Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww && Intrinsics.areEqual(this.f2030Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, definedRequestOptions.f2030Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) && Intrinsics.areEqual(this.f2029Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww, definedRequestOptions.f2029Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww) && Intrinsics.areEqual(this.f2028Wwwwwwwwwwwwwwwwwwwwwwwwwwwww, definedRequestOptions.f2028Wwwwwwwwwwwwwwwwwwwwwwwwwwwww) && Intrinsics.areEqual(this.f2027Wwwwwwwwwwwwwwwwwwwwwwwwwwww, definedRequestOptions.f2027Wwwwwwwwwwwwwwwwwwwwwwwwwwww) && Intrinsics.areEqual(this.f2026Wwwwwwwwwwwwwwwwwwwwwwwwwww, definedRequestOptions.f2026Wwwwwwwwwwwwwwwwwwwwwwwwwww) && this.f2025Wwwwwwwwwwwwwwwwwwwwwwwwww == definedRequestOptions.f2025Wwwwwwwwwwwwwwwwwwwwwwwwww && this.f2024Wwwwwwwwwwwwwwwwwwwwwwwww == definedRequestOptions.f2024Wwwwwwwwwwwwwwwwwwwwwwwww && Intrinsics.areEqual(this.f2023Wwwwwwwwwwwwwwwwwwwwwwww, definedRequestOptions.f2023Wwwwwwwwwwwwwwwwwwwwwwww) && Intrinsics.areEqual(this.f2022Wwwwwwwwwwwwwwwwwwwwwww, definedRequestOptions.f2022Wwwwwwwwwwwwwwwwwwwwwww) && this.f2021Wwwwwwwwwwwwwwwwwwwwww == definedRequestOptions.f2021Wwwwwwwwwwwwwwwwwwwwww && this.f2020Wwwwwwwwwwwwwwwwwwwww == definedRequestOptions.f2020Wwwwwwwwwwwwwwwwwwwww && this.f2019Wwwwwwwwwwwwwwwwwwww == definedRequestOptions.f2019Wwwwwwwwwwwwwwwwwwww) {
                return true;
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        Lifecycle lifecycle = this.f2033Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        int i15 = 0;
        if (lifecycle != null) {
            i = lifecycle.hashCode();
        } else {
            i = 0;
        }
        int i16 = i * 31;
        SizeResolver sizeResolver = this.f2032Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (sizeResolver != null) {
            i2 = sizeResolver.hashCode();
        } else {
            i2 = 0;
        }
        int i17 = (i16 + i2) * 31;
        Scale scale = this.f2031Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (scale != null) {
            i3 = scale.hashCode();
        } else {
            i3 = 0;
        }
        int i18 = (i17 + i3) * 31;
        CoroutineDispatcher coroutineDispatcher = this.f2030Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (coroutineDispatcher != null) {
            i4 = coroutineDispatcher.hashCode();
        } else {
            i4 = 0;
        }
        int i19 = (i18 + i4) * 31;
        CoroutineDispatcher coroutineDispatcher2 = this.f2029Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (coroutineDispatcher2 != null) {
            i5 = coroutineDispatcher2.hashCode();
        } else {
            i5 = 0;
        }
        int i20 = (i19 + i5) * 31;
        CoroutineDispatcher coroutineDispatcher3 = this.f2028Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (coroutineDispatcher3 != null) {
            i6 = coroutineDispatcher3.hashCode();
        } else {
            i6 = 0;
        }
        int i21 = (i20 + i6) * 31;
        CoroutineDispatcher coroutineDispatcher4 = this.f2027Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (coroutineDispatcher4 != null) {
            i7 = coroutineDispatcher4.hashCode();
        } else {
            i7 = 0;
        }
        int i22 = (i21 + i7) * 31;
        Transition.Factory factory = this.f2026Wwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (factory != null) {
            i8 = factory.hashCode();
        } else {
            i8 = 0;
        }
        int i23 = (i22 + i8) * 31;
        Precision precision = this.f2025Wwwwwwwwwwwwwwwwwwwwwwwwww;
        if (precision != null) {
            i9 = precision.hashCode();
        } else {
            i9 = 0;
        }
        int i24 = (i23 + i9) * 31;
        Bitmap.Config config = this.f2024Wwwwwwwwwwwwwwwwwwwwwwwww;
        if (config != null) {
            i10 = config.hashCode();
        } else {
            i10 = 0;
        }
        int i25 = (i24 + i10) * 31;
        Boolean bool = this.f2023Wwwwwwwwwwwwwwwwwwwwwwww;
        if (bool != null) {
            i11 = bool.hashCode();
        } else {
            i11 = 0;
        }
        int i26 = (i25 + i11) * 31;
        Boolean bool2 = this.f2022Wwwwwwwwwwwwwwwwwwwwwww;
        if (bool2 != null) {
            i12 = bool2.hashCode();
        } else {
            i12 = 0;
        }
        int i27 = (i26 + i12) * 31;
        CachePolicy cachePolicy = this.f2021Wwwwwwwwwwwwwwwwwwwwww;
        if (cachePolicy != null) {
            i13 = cachePolicy.hashCode();
        } else {
            i13 = 0;
        }
        int i28 = (i27 + i13) * 31;
        CachePolicy cachePolicy2 = this.f2020Wwwwwwwwwwwwwwwwwwwww;
        if (cachePolicy2 != null) {
            i14 = cachePolicy2.hashCode();
        } else {
            i14 = 0;
        }
        int i29 = (i28 + i14) * 31;
        CachePolicy cachePolicy3 = this.f2019Wwwwwwwwwwwwwwwwwwww;
        if (cachePolicy3 != null) {
            i15 = cachePolicy3.hashCode();
        }
        return i29 + i15;
    }
}
