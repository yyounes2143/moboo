package coil.memory;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import androidx.annotation.VisibleForTesting;
import coil.EventListener;
import coil.ImageLoader;
import coil.decode.DataSource;
import coil.intercept.EngineInterceptor;
import coil.intercept.Interceptor;
import coil.memory.MemoryCache;
import coil.request.ImageRequest;
import coil.request.Options;
import coil.request.RequestService;
import coil.request.SuccessResult;
import coil.size.Scale;
import coil.size.Size;
import coil.transform.Transformation;
import coil.util.Bitmaps;
import coil.util.Logger;
import coil.util.Utils;
import com.vungle.ads.internal.ui.AdActivity;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0000\u0018\u0000 42\u00020\u0001:\u00014B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\tJ/\u0010\u0012\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\u00012\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0012\u0010\u0013J/\u0010\u001a\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u0017¢\u0006\u0004\b\u001a\u0010\u001bJ7\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u001c\u001a\u00020\u00192\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u0017H\u0001¢\u0006\u0004\b\u001e\u0010\u001fJ'\u0010\"\u001a\u00020\u001d2\b\u0010\u0014\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010!\u001a\u00020 ¢\u0006\u0004\b\"\u0010#J-\u0010'\u001a\u00020&2\u0006\u0010%\u001a\u00020$2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u001c\u001a\u00020\u0019¢\u0006\u0004\b'\u0010(J7\u0010)\u001a\u00020\u001d2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u001c\u001a\u00020\u00192\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u0017H\u0002¢\u0006\u0004\b)\u0010\u001fR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010*R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b+\u0010,R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010-R\u0018\u00100\u001a\u00020\u001d*\u00020\u00198BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b.\u0010/R\u001a\u00103\u001a\u0004\u0018\u000101*\u00020\u00198BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b+\u00102¨\u00065"}, d2 = {"Lcoil/memory/MemoryCacheService;", "", "Lcoil/ImageLoader;", "imageLoader", "Lcoil/request/RequestService;", "requestService", "Lcoil/util/Logger;", "logger", "<init>", "(Lcoil/ImageLoader;Lcoil/request/RequestService;Lcoil/util/Logger;)V", "Lcoil/request/ImageRequest;", AdActivity.REQUEST_KEY_EXTRA, "mappedData", "Lcoil/request/Options;", "options", "Lcoil/EventListener;", "eventListener", "Lcoil/memory/MemoryCache$Key;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcoil/request/ImageRequest;Ljava/lang/Object;Lcoil/request/Options;Lcoil/EventListener;)Lcoil/memory/MemoryCache$Key;", "cacheKey", "Lcoil/size/Size;", "size", "Lcoil/size/Scale;", "scale", "Lcoil/memory/MemoryCache$Value;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcoil/request/ImageRequest;Lcoil/memory/MemoryCache$Key;Lcoil/size/Size;Lcoil/size/Scale;)Lcoil/memory/MemoryCache$Value;", "cacheValue", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcoil/request/ImageRequest;Lcoil/memory/MemoryCache$Key;Lcoil/memory/MemoryCache$Value;Lcoil/size/Size;Lcoil/size/Scale;)Z", "Lcoil/intercept/EngineInterceptor$ExecuteResult;", "result", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcoil/memory/MemoryCache$Key;Lcoil/request/ImageRequest;Lcoil/intercept/EngineInterceptor$ExecuteResult;)Z", "Lcoil/intercept/Interceptor$Chain;", "chain", "Lcoil/request/SuccessResult;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcoil/intercept/Interceptor$Chain;Lcoil/request/ImageRequest;Lcoil/memory/MemoryCache$Key;Lcoil/memory/MemoryCache$Value;)Lcoil/request/SuccessResult;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcoil/ImageLoader;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcoil/request/RequestService;", "Lcoil/util/Logger;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcoil/memory/MemoryCache$Value;)Z", "isSampled", "", "(Lcoil/memory/MemoryCache$Value;)Ljava/lang/String;", "diskCacheKey", "Companion", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class MemoryCacheService {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Logger f1962Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final RequestService f1963Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ImageLoader f1964Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcoil/memory/MemoryCacheService$Companion;", "", "<init>", "()V", "", "TAG", "Ljava/lang/String;", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    public MemoryCacheService(@NotNull ImageLoader imageLoader, @NotNull RequestService requestService, @Nullable Logger logger) {
        this.f1964Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = imageLoader;
        this.f1963Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = requestService;
        this.f1962Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = logger;
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable MemoryCache.Key key, @NotNull ImageRequest imageRequest, @NotNull EngineInterceptor.ExecuteResult executeResult) {
        MemoryCache Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        BitmapDrawable bitmapDrawable;
        Bitmap bitmap;
        if (imageRequest.Wwwwww().getWriteEnabled() && (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f1964Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) != null && key != null) {
            Drawable Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = executeResult.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 instanceof BitmapDrawable) {
                bitmapDrawable = (BitmapDrawable) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            } else {
                bitmapDrawable = null;
            }
            if (bitmapDrawable != null && (bitmap = bitmapDrawable.getBitmap()) != null) {
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                linkedHashMap.put("coil#is_sampled", Boolean.valueOf(executeResult.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()));
                String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = executeResult.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                    linkedHashMap.put("coil#disk_cache_key", Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                }
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(key, new MemoryCache.Value(bitmap, linkedHashMap));
                return true;
            }
        }
        return false;
    }

    @NotNull
    public final SuccessResult Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Interceptor.Chain chain, @NotNull ImageRequest imageRequest, @NotNull MemoryCache.Key key, @NotNull MemoryCache.Value value) {
        return new SuccessResult(new BitmapDrawable(imageRequest.Wwwwwwwwwwwwwwwwwwwwwww().getResources(), value.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()), imageRequest, DataSource.MEMORY_CACHE, key, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(value), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(value), Utils.Wwwwwwwwwwwwww(chain));
    }

    @Nullable
    public final MemoryCache.Key Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull ImageRequest imageRequest, @NotNull Object obj, @NotNull Options options, @NotNull EventListener eventListener) {
        MemoryCache.Key Wwwwwww2 = imageRequest.Wwwwwww();
        if (Wwwwwww2 != null) {
            return Wwwwwww2;
        }
        eventListener.Wwwwwwwwwwwwwwwwwwwwww(imageRequest, obj);
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f1964Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getComponents().Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(obj, options);
        eventListener.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(imageRequest, Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            return null;
        }
        List<Transformation> Kkkkkkkkkkkkkkkkkk2 = imageRequest.Kkkkkkkkkkkkkkkkkk();
        Map<String, String> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = imageRequest.Wwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Kkkkkkkkkkkkkkkkkk2.isEmpty() && Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.isEmpty()) {
            return new MemoryCache.Key(Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2, null, 2, null);
        }
        Map mutableMap = MapsKt.toMutableMap(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        if (!Kkkkkkkkkkkkkkkkkk2.isEmpty()) {
            List<Transformation> Kkkkkkkkkkkkkkkkkk3 = imageRequest.Kkkkkkkkkkkkkkkkkk();
            int size = Kkkkkkkkkkkkkkkkkk3.size();
            for (int i = 0; i < size; i++) {
                mutableMap.put("coil#transformation_" + i, Kkkkkkkkkkkkkkkkkk3.get(i).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            }
            mutableMap.put("coil#transformation_size", options.Wwwwwwwwwwwwwwwwwwwww().toString());
        }
        return new MemoryCache.Key(Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2, mutableMap);
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x00c0, code lost:
        if (java.lang.Math.abs(r10 - r4) > 1) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00cd, code lost:
        if (java.lang.Math.abs(r12 - r1) > 1) goto L28;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(coil.request.ImageRequest r20, coil.memory.MemoryCache.Key r21, coil.memory.MemoryCache.Value r22, coil.size.Size r23, coil.size.Scale r24) {
        /*
            Method dump skipped, instructions count: 385
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: coil.memory.MemoryCacheService.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(coil.request.ImageRequest, coil.memory.MemoryCache$Key, coil.memory.MemoryCache$Value, coil.size.Size, coil.size.Scale):boolean");
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MemoryCache.Value value) {
        Boolean bool;
        Object obj = value.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().get("coil#is_sampled");
        if (obj instanceof Boolean) {
            bool = (Boolean) obj;
        } else {
            bool = null;
        }
        if (bool != null) {
            return bool.booleanValue();
        }
        return false;
    }

    @VisibleForTesting
    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull ImageRequest imageRequest, @NotNull MemoryCache.Key key, @NotNull MemoryCache.Value value, @NotNull Size size, @NotNull Scale scale) {
        if (!this.f1963Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(imageRequest, Bitmaps.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(value.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()))) {
            Logger logger = this.f1962Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (logger != null && logger.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() <= 3) {
                logger.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("MemoryCacheService", 3, imageRequest.Wwwwwwwwwwwwwwwwwwwwww() + ": Cached bitmap is hardware-backed, which is incompatible with the request.", null);
                return false;
            }
            return false;
        }
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(imageRequest, key, value, size, scale);
    }

    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MemoryCache.Value value) {
        Object obj = value.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().get("coil#disk_cache_key");
        if (obj instanceof String) {
            return (String) obj;
        }
        return null;
    }

    @Nullable
    public final MemoryCache.Value Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull ImageRequest imageRequest, @NotNull MemoryCache.Key key, @NotNull Size size, @NotNull Scale scale) {
        MemoryCache.Value value;
        if (!imageRequest.Wwwwww().getReadEnabled()) {
            return null;
        }
        MemoryCache Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f1964Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
            value = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(key);
        } else {
            value = null;
        }
        if (value == null || !Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(imageRequest, key, value, size, scale)) {
            return null;
        }
        return value;
    }
}
