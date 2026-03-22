package coil.request;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.annotation.WorkerThread;
import androidx.lifecycle.Lifecycle;
import coil.ImageLoader;
import coil.size.Dimension;
import coil.size.Scale;
import coil.size.Size;
import coil.target.Target;
import coil.target.ViewTarget;
import coil.util.Bitmaps;
import coil.util.HardwareBitmapService;
import coil.util.HardwareBitmaps;
import coil.util.Logger;
import coil.util.Requests;
import coil.util.SystemCallbacks;
import coil.util.Utils;
import com.vungle.ads.internal.ui.AdActivity;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.Job;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\tJ\u001d\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u000f\u0010\u0010J\u001d\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0013\u001a\u00020\u0012¢\u0006\u0004\b\u0015\u0010\u0016J\u001d\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0018\u001a\u00020\u0017¢\u0006\u0004\b\u001a\u0010\u001bJ\u001d\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u0011\u001a\u00020\n2\u0006\u0010\u001d\u001a\u00020\u001c¢\u0006\u0004\b\u001f\u0010 J\u0017\u0010\"\u001a\u00020\u001e2\u0006\u0010!\u001a\u00020\u0019H\u0007¢\u0006\u0004\b\"\u0010#J\u001f\u0010$\u001a\u00020\u001e2\u0006\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0018\u001a\u00020\u0017H\u0002¢\u0006\u0004\b$\u0010%J\u0017\u0010&\u001a\u00020\u001e2\u0006\u0010\u0011\u001a\u00020\nH\u0002¢\u0006\u0004\b&\u0010'R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010(R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010)R\u0014\u0010,\u001a\u00020*8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010+¨\u0006-"}, d2 = {"Lcoil/request/RequestService;", "", "Lcoil/ImageLoader;", "imageLoader", "Lcoil/util/SystemCallbacks;", "systemCallbacks", "Lcoil/util/Logger;", "logger", "<init>", "(Lcoil/ImageLoader;Lcoil/util/SystemCallbacks;Lcoil/util/Logger;)V", "Lcoil/request/ImageRequest;", "initialRequest", "Lkotlinx/coroutines/Job;", "job", "Lcoil/request/RequestDelegate;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcoil/request/ImageRequest;Lkotlinx/coroutines/Job;)Lcoil/request/RequestDelegate;", AdActivity.REQUEST_KEY_EXTRA, "", "throwable", "Lcoil/request/ErrorResult;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcoil/request/ImageRequest;Ljava/lang/Throwable;)Lcoil/request/ErrorResult;", "Lcoil/size/Size;", "size", "Lcoil/request/Options;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcoil/request/ImageRequest;Lcoil/size/Size;)Lcoil/request/Options;", "Landroid/graphics/Bitmap$Config;", "requestedConfig", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcoil/request/ImageRequest;Landroid/graphics/Bitmap$Config;)Z", "options", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcoil/request/Options;)Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcoil/request/ImageRequest;Lcoil/size/Size;)Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcoil/request/ImageRequest;)Z", "Lcoil/ImageLoader;", "Lcoil/util/SystemCallbacks;", "Lcoil/util/HardwareBitmapService;", "Lcoil/util/HardwareBitmapService;", "hardwareBitmapService", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class RequestService {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final HardwareBitmapService f2146Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final SystemCallbacks f2147Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ImageLoader f2148Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public RequestService(@NotNull ImageLoader imageLoader, @NotNull SystemCallbacks systemCallbacks, @Nullable Logger logger) {
        this.f2148Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = imageLoader;
        this.f2147Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = systemCallbacks;
        this.f2146Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = HardwareBitmaps.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(logger);
    }

    @NotNull
    public final RequestDelegate Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull ImageRequest imageRequest, @NotNull Job job) {
        Lifecycle Wwwwwwwww2 = imageRequest.Wwwwwwwww();
        Target Kkkkkkkkkkkkkkkkkkkk2 = imageRequest.Kkkkkkkkkkkkkkkkkkkk();
        if (Kkkkkkkkkkkkkkkkkkkk2 instanceof ViewTarget) {
            return new ViewTargetRequestDelegate(this.f2148Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, imageRequest, (ViewTarget) Kkkkkkkkkkkkkkkkkkkk2, Wwwwwwwww2, job);
        }
        return new BaseRequestDelegate(Wwwwwwwww2, job);
    }

    @NotNull
    public final Options Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull ImageRequest imageRequest, @NotNull Size size) {
        Bitmap.Config config;
        CachePolicy cachePolicy;
        boolean z;
        Scale scale;
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(imageRequest) && Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(imageRequest, size)) {
            config = imageRequest.Wwwwwwwwwwwwwwwwwwwwwwwww();
        } else {
            config = Bitmap.Config.ARGB_8888;
        }
        Bitmap.Config config2 = config;
        if (this.f2147Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            cachePolicy = imageRequest.Wwwww();
        } else {
            cachePolicy = CachePolicy.DISABLED;
        }
        CachePolicy cachePolicy2 = cachePolicy;
        if (imageRequest.Wwwwwwwwwwwwwwwwwwwwwwwwww() && imageRequest.Kkkkkkkkkkkkkkkkkk().isEmpty() && config2 != Bitmap.Config.ALPHA_8) {
            z = true;
        } else {
            z = false;
        }
        boolean z2 = z;
        Dimension Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = size.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        Dimension.Undefined undefined = Dimension.Undefined.INSTANCE;
        if (!Intrinsics.areEqual(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, undefined) && !Intrinsics.areEqual(size.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), undefined)) {
            scale = imageRequest.Kkkkkkkkkkkkkkkkkkkkkkk();
        } else {
            scale = Scale.FIT;
        }
        return new Options(imageRequest.Wwwwwwwwwwwwwwwwwwwwwww(), config2, imageRequest.Wwwwwwwwwwwwwwwwwwwwwwww(), size, scale, Requests.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(imageRequest), z2, imageRequest.Kkkkkkkkkkkkkkkkkkkkkkkk(), imageRequest.Wwwwwwwwwwwwwwwww(), imageRequest.Wwwwwwwwwww(), imageRequest.Kkkkkkkkkkkkkkkkkkkkk(), imageRequest.Wwww(), imageRequest.Wwwwww(), imageRequest.Wwwwwwwwwwwwwwww(), cachePolicy2);
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ImageRequest imageRequest) {
        if (!imageRequest.Kkkkkkkkkkkkkkkkkk().isEmpty() && !ArraysKt.contains(Utils.Wwwwwwwwwwwwwwwwwww(), imageRequest.Wwwwwwwwwwwwwwwwwwwwwwwww())) {
            return false;
        }
        return true;
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ImageRequest imageRequest, Size size) {
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(imageRequest, imageRequest.Wwwwwwwwwwwwwwwwwwwwwwwww()) && this.f2146Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(size)) {
            return true;
        }
        return false;
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull ImageRequest imageRequest, @NotNull Bitmap.Config config) {
        if (!Bitmaps.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(config)) {
            return true;
        }
        if (!imageRequest.Wwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            return false;
        }
        Target Kkkkkkkkkkkkkkkkkkkk2 = imageRequest.Kkkkkkkkkkkkkkkkkkkk();
        if (Kkkkkkkkkkkkkkkkkkkk2 instanceof ViewTarget) {
            View view = ((ViewTarget) Kkkkkkkkkkkkkkkkkkkk2).getView();
            if (view.isAttachedToWindow() && !view.isHardwareAccelerated()) {
                return false;
            }
        }
        return true;
    }

    @NotNull
    public final ErrorResult Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull ImageRequest imageRequest, @NotNull Throwable th) {
        Drawable Wwwwwwwwwwwwwww2;
        if (th instanceof NullRequestDataException) {
            Wwwwwwwwwwwwwww2 = imageRequest.Wwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwwww2 == null) {
                Wwwwwwwwwwwwwww2 = imageRequest.Wwwwwwwwwwwwwww();
            }
        } else {
            Wwwwwwwwwwwwwww2 = imageRequest.Wwwwwwwwwwwwwww();
        }
        return new ErrorResult(Wwwwwwwwwwwwwww2, imageRequest, th);
    }

    @WorkerThread
    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Options options) {
        if (Bitmaps.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(options.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()) && !this.f2146Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            return false;
        }
        return true;
    }
}
