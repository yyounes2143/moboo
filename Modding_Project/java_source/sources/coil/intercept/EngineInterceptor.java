package coil.intercept;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import androidx.annotation.VisibleForTesting;
import coil.EventListener;
import coil.ImageLoader;
import coil.decode.DataSource;
import coil.memory.MemoryCacheService;
import coil.request.ImageRequest;
import coil.request.Options;
import coil.request.RequestService;
import coil.transform.Transformation;
import coil.util.Bitmaps;
import coil.util.DrawableUtils;
import coil.util.Logger;
import coil.util.Utils;
import com.vungle.ads.internal.ui.AdActivity;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.BuildersKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0000\u0018\u0000 82\u00020\u0001:\u000289B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\tJ\u001b\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\nH\u0096@ø\u0001\u0000¢\u0006\u0004\b\r\u0010\u000eJ3\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u0015H\u0081@ø\u0001\u0000¢\u0006\u0004\b\u0017\u0010\u0018J3\u0010\u001c\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u0015H\u0082@ø\u0001\u0000¢\u0006\u0004\b\u001c\u0010\u001dJ;\u0010!\u001a\u00020 2\u0006\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u0015H\u0082@ø\u0001\u0000¢\u0006\u0004\b!\u0010\"JC\u0010%\u001a\u00020\u000f2\u0006\u0010$\u001a\u00020#2\u0006\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u0015H\u0082@ø\u0001\u0000¢\u0006\u0004\b%\u0010&J-\u0010-\u001a\u00020,2\u0006\u0010(\u001a\u00020'2\u0006\u0010\u0014\u001a\u00020\u00132\f\u0010+\u001a\b\u0012\u0004\u0012\u00020*0)H\u0002¢\u0006\u0004\b-\u0010.R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010/R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b0\u00101R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b2\u00103R\u0014\u00107\u001a\u0002048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b5\u00106\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006:"}, d2 = {"Lcoil/intercept/EngineInterceptor;", "Lcoil/intercept/Interceptor;", "Lcoil/ImageLoader;", "imageLoader", "Lcoil/request/RequestService;", "requestService", "Lcoil/util/Logger;", "logger", "<init>", "(Lcoil/ImageLoader;Lcoil/request/RequestService;Lcoil/util/Logger;)V", "Lcoil/intercept/Interceptor$Chain;", "chain", "Lcoil/request/ImageResult;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcoil/intercept/Interceptor$Chain;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcoil/intercept/EngineInterceptor$ExecuteResult;", "result", "Lcoil/request/ImageRequest;", AdActivity.REQUEST_KEY_EXTRA, "Lcoil/request/Options;", "options", "Lcoil/EventListener;", "eventListener", "Wwwwwwwwwwwwwwwwwwwwwwww", "(Lcoil/intercept/EngineInterceptor$ExecuteResult;Lcoil/request/ImageRequest;Lcoil/request/Options;Lcoil/EventListener;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "mappedData", "_options", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcoil/request/ImageRequest;Ljava/lang/Object;Lcoil/request/Options;Lcoil/EventListener;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcoil/ComponentRegistry;", "components", "Lcoil/fetch/FetchResult;", "Wwwwwwwwwwwwwwwwwwwwwwwww", "(Lcoil/ComponentRegistry;Lcoil/request/ImageRequest;Ljava/lang/Object;Lcoil/request/Options;Lcoil/EventListener;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcoil/fetch/SourceResult;", "fetchResult", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcoil/fetch/SourceResult;Lcoil/ComponentRegistry;Lcoil/request/ImageRequest;Ljava/lang/Object;Lcoil/request/Options;Lcoil/EventListener;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Landroid/graphics/drawable/Drawable;", "drawable", "", "Lcoil/transform/Transformation;", "transformations", "Landroid/graphics/Bitmap;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/graphics/drawable/Drawable;Lcoil/request/Options;Ljava/util/List;)Landroid/graphics/Bitmap;", "Lcoil/ImageLoader;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcoil/request/RequestService;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcoil/util/Logger;", "Lcoil/memory/MemoryCacheService;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcoil/memory/MemoryCacheService;", "memoryCacheService", "Companion", "ExecuteResult", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class EngineInterceptor implements Interceptor {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final MemoryCacheService f1935Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Logger f1936Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final RequestService f1937Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ImageLoader f1938Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lcoil/intercept/EngineInterceptor$Companion;", "", "()V", "TAG", "", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0013\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\n\u0010\u000bJ7\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\u00062\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\f\u0010\rR\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\f\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R\u0017\u0010\u0007\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0015\u0010\u0017R\u0019\u0010\t\u001a\u0004\u0018\u00010\b8\u0006¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u0018\u0010\u001a¨\u0006\u001b"}, d2 = {"Lcoil/intercept/EngineInterceptor$ExecuteResult;", "", "Landroid/graphics/drawable/Drawable;", "drawable", "", "isSampled", "Lcoil/decode/DataSource;", "dataSource", "", "diskCacheKey", "<init>", "(Landroid/graphics/drawable/Drawable;ZLcoil/decode/DataSource;Ljava/lang/String;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/graphics/drawable/Drawable;ZLcoil/decode/DataSource;Ljava/lang/String;)Lcoil/intercept/EngineInterceptor$ExecuteResult;", "Landroid/graphics/drawable/Drawable;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Landroid/graphics/drawable/Drawable;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcoil/decode/DataSource;", "()Lcoil/decode/DataSource;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "()Ljava/lang/String;", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class ExecuteResult {
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final String f1939Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final DataSource f1940Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final boolean f1941Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Drawable f1942Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public ExecuteResult(@NotNull Drawable drawable, boolean z, @NotNull DataSource dataSource, @Nullable String str) {
            this.f1942Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = drawable;
            this.f1941Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = z;
            this.f1940Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = dataSource;
            this.f1939Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
        }

        public static /* synthetic */ ExecuteResult Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ExecuteResult executeResult, Drawable drawable, boolean z, DataSource dataSource, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                drawable = executeResult.f1942Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            }
            if ((i & 2) != 0) {
                z = executeResult.f1941Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            }
            if ((i & 4) != 0) {
                dataSource = executeResult.f1940Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            }
            if ((i & 8) != 0) {
                str = executeResult.f1939Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            }
            return executeResult.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(drawable, z, dataSource, str);
        }

        public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f1941Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public final Drawable Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f1942Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @Nullable
        public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f1939Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public final DataSource Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f1940Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public final ExecuteResult Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Drawable drawable, boolean z, @NotNull DataSource dataSource, @Nullable String str) {
            return new ExecuteResult(drawable, z, dataSource, str);
        }
    }

    public EngineInterceptor(@NotNull ImageLoader imageLoader, @NotNull RequestService requestService, @Nullable Logger logger) {
        this.f1938Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = imageLoader;
        this.f1937Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = requestService;
        this.f1936Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = logger;
        this.f1935Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new MemoryCacheService(imageLoader, requestService, logger);
    }

    @VisibleForTesting
    @Nullable
    public final Object Wwwwwwwwwwwwwwwwwwwwwwww(@NotNull ExecuteResult executeResult, @NotNull ImageRequest imageRequest, @NotNull Options options, @NotNull EventListener eventListener, @NotNull Continuation<? super ExecuteResult> continuation) {
        List<Transformation> Kkkkkkkkkkkkkkkkkk2 = imageRequest.Kkkkkkkkkkkkkkkkkk();
        if (Kkkkkkkkkkkkkkkkkk2.isEmpty()) {
            return executeResult;
        }
        if (!(executeResult.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() instanceof BitmapDrawable) && !imageRequest.Wwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            Logger logger = this.f1936Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (logger != null && logger.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() <= 4) {
                String canonicalName = executeResult.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().getClass().getCanonicalName();
                logger.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("EngineInterceptor", 4, "allowConversionToBitmap=false, skipping transformations for type " + canonicalName + '.', null);
            }
            return executeResult;
        }
        return BuildersKt.withContext(imageRequest.Kkkkkkkkkkkkkkkkkkk(), new EngineInterceptor$transform$3(this, executeResult, options, Kkkkkkkkkkkkkkkkkk2, eventListener, imageRequest, null), continuation);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x009c A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00b5  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0091 -> B:21:0x0095). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object Wwwwwwwwwwwwwwwwwwwwwwwww(coil.ComponentRegistry r8, coil.request.ImageRequest r9, java.lang.Object r10, coil.request.Options r11, coil.EventListener r12, kotlin.coroutines.Continuation<? super coil.fetch.FetchResult> r13) {
        /*
            Method dump skipped, instructions count: 208
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: coil.intercept.EngineInterceptor.Wwwwwwwwwwwwwwwwwwwwwwwww(coil.ComponentRegistry, coil.request.ImageRequest, java.lang.Object, coil.request.Options, coil.EventListener, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:75:0x01ff, code lost:
        if (r0 == r9) goto L38;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:11:0x002c  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0163 A[Catch: all -> 0x0089, TRY_LEAVE, TryCatch #2 {all -> 0x0089, blocks: (B:23:0x0079, B:48:0x0158, B:50:0x0163), top: B:98:0x0079 }] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x01a1 A[Catch: all -> 0x0058, TryCatch #1 {all -> 0x0058, blocks: (B:18:0x0053, B:58:0x0193, B:54:0x0178, B:62:0x01a1, B:64:0x01ac, B:85:0x021b, B:86:0x0220), top: B:97:0x002a }] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01d1  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x01d4  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x01d7  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0227  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x022c  */
    /* JADX WARN: Type inference failed for: r2v16, types: [T, coil.ComponentRegistry] */
    /* JADX WARN: Type inference failed for: r2v23, types: [T, coil.request.Options] */
    /* JADX WARN: Type inference failed for: r2v24 */
    /* JADX WARN: Type inference failed for: r2v28 */
    /* JADX WARN: Type inference failed for: r2v3, types: [int] */
    /* JADX WARN: Type inference failed for: r2v8, types: [T, coil.ComponentRegistry] */
    /* JADX WARN: Type inference failed for: r2v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object Wwwwwwwwwwwwwwwwwwwwwwwwww(coil.request.ImageRequest r33, java.lang.Object r34, coil.request.Options r35, coil.EventListener r36, kotlin.coroutines.Continuation<? super coil.intercept.EngineInterceptor.ExecuteResult> r37) {
        /*
            Method dump skipped, instructions count: 566
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: coil.intercept.EngineInterceptor.Wwwwwwwwwwwwwwwwwwwwwwwwww(coil.request.ImageRequest, java.lang.Object, coil.request.Options, coil.EventListener, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00ce  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0097 -> B:21:0x009e). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object Wwwwwwwwwwwwwwwwwwwwwwwwwww(coil.fetch.SourceResult r8, coil.ComponentRegistry r9, coil.request.ImageRequest r10, java.lang.Object r11, coil.request.Options r12, coil.EventListener r13, kotlin.coroutines.Continuation<? super coil.intercept.EngineInterceptor.ExecuteResult> r14) {
        /*
            Method dump skipped, instructions count: 233
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: coil.intercept.EngineInterceptor.Wwwwwwwwwwwwwwwwwwwwwwwwwww(coil.fetch.SourceResult, coil.ComponentRegistry, coil.request.ImageRequest, java.lang.Object, coil.request.Options, coil.EventListener, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final Bitmap Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Drawable drawable, Options options, List<? extends Transformation> list) {
        if (drawable instanceof BitmapDrawable) {
            Bitmap bitmap = ((BitmapDrawable) drawable).getBitmap();
            Bitmap.Config Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Bitmaps.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bitmap);
            if (ArraysKt.contains(Utils.Wwwwwwwwwwwwwwwwwww(), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2)) {
                return bitmap;
            }
            Logger logger = this.f1936Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (logger != null && logger.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() <= 4) {
                logger.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("EngineInterceptor", 4, "Converting bitmap with config " + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 + " to apply transformations: " + list + '.', null);
            }
        } else {
            Logger logger2 = this.f1936Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (logger2 != null && logger2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() <= 4) {
                logger2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("EngineInterceptor", 4, "Converting drawable of type " + drawable.getClass().getCanonicalName() + " to apply transformations: " + list + '.', null);
            }
        }
        return DrawableUtils.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(drawable, options.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(), options.Wwwwwwwwwwwwwwwwwwwww(), options.Wwwwwwwwwwwwwwwwwwwwww(), options.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00b2  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00bd  */
    @Override // coil.intercept.Interceptor
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@org.jetbrains.annotations.NotNull coil.intercept.Interceptor.Chain r14, @org.jetbrains.annotations.NotNull kotlin.coroutines.Continuation<? super coil.request.ImageResult> r15) {
        /*
            r13 = this;
            boolean r0 = r15 instanceof coil.intercept.EngineInterceptor$intercept$1
            if (r0 == 0) goto L13
            r0 = r15
            coil.intercept.EngineInterceptor$intercept$1 r0 = (coil.intercept.EngineInterceptor$intercept$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            coil.intercept.EngineInterceptor$intercept$1 r0 = new coil.intercept.EngineInterceptor$intercept$1
            r0.<init>(r13, r15)
        L18:
            java.lang.Object r15 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L3f
            if (r2 != r3) goto L37
            java.lang.Object r14 = r0.L$1
            coil.intercept.Interceptor$Chain r14 = (coil.intercept.Interceptor.Chain) r14
            java.lang.Object r0 = r0.L$0
            r1 = r0
            coil.intercept.EngineInterceptor r1 = (coil.intercept.EngineInterceptor) r1
            kotlin.ResultKt.throwOnFailure(r15)     // Catch: java.lang.Throwable -> L32
            return r15
        L32:
            r0 = move-exception
            r15 = r0
            r5 = r13
            goto Lae
        L37:
            java.lang.IllegalStateException r14 = new java.lang.IllegalStateException
            java.lang.String r15 = "call to 'resume' before 'invoke' with coroutine"
            r14.<init>(r15)
            throw r14
        L3f:
            kotlin.ResultKt.throwOnFailure(r15)
            coil.request.ImageRequest r6 = r14.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()     // Catch: java.lang.Throwable -> La9
            java.lang.Object r15 = r6.Wwwwwwwwwwwwwwwwwwwwww()     // Catch: java.lang.Throwable -> La9
            coil.size.Size r2 = r14.getSize()     // Catch: java.lang.Throwable -> La9
            coil.EventListener r9 = coil.util.Utils.Wwwwwwwwwwwwwwwwwwwwwwwwwww(r14)     // Catch: java.lang.Throwable -> La9
            coil.request.RequestService r4 = r13.f1937Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> La9
            coil.request.Options r8 = r4.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(r6, r2)     // Catch: java.lang.Throwable -> La9
            coil.size.Scale r4 = r8.Wwwwwwwwwwwwwwwwwwwwww()     // Catch: java.lang.Throwable -> La9
            r9.Wwwwwwwwwwwwwwwwwwwwwwwwww(r6, r15)     // Catch: java.lang.Throwable -> La9
            coil.ImageLoader r5 = r13.f1938Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> La9
            coil.ComponentRegistry r5 = r5.getComponents()     // Catch: java.lang.Throwable -> La9
            java.lang.Object r7 = r5.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(r15, r8)     // Catch: java.lang.Throwable -> La9
            r9.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(r6, r7)     // Catch: java.lang.Throwable -> La9
            coil.memory.MemoryCacheService r15 = r13.f1935Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> La9
            coil.memory.MemoryCache$Key r10 = r15.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(r6, r7, r8, r9)     // Catch: java.lang.Throwable -> La9
            if (r10 == 0) goto L80
            coil.memory.MemoryCacheService r15 = r13.f1935Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> L7b
            coil.memory.MemoryCache$Value r15 = r15.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r6, r10, r2, r4)     // Catch: java.lang.Throwable -> L7b
            goto L81
        L7b:
            r0 = move-exception
            r15 = r0
            r1 = r13
            r5 = r1
            goto Lae
        L80:
            r15 = 0
        L81:
            if (r15 == 0) goto L8a
            coil.memory.MemoryCacheService r0 = r13.f1935Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> L7b
            coil.request.SuccessResult r14 = r0.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(r14, r6, r10, r15)     // Catch: java.lang.Throwable -> L7b
            return r14
        L8a:
            kotlinx.coroutines.CoroutineDispatcher r15 = r6.Wwwwwwwwwwwww()     // Catch: java.lang.Throwable -> La9
            coil.intercept.EngineInterceptor$intercept$2 r4 = new coil.intercept.EngineInterceptor$intercept$2     // Catch: java.lang.Throwable -> La9
            r12 = 0
            r5 = r13
            r11 = r14
            r4.<init>(r5, r6, r7, r8, r9, r10, r11, r12)     // Catch: java.lang.Throwable -> La4
            r0.L$0 = r5     // Catch: java.lang.Throwable -> La4
            r0.L$1 = r11     // Catch: java.lang.Throwable -> La4
            r0.label = r3     // Catch: java.lang.Throwable -> La4
            java.lang.Object r14 = kotlinx.coroutines.BuildersKt.withContext(r15, r4, r0)     // Catch: java.lang.Throwable -> La4
            if (r14 != r1) goto La3
            return r1
        La3:
            return r14
        La4:
            r0 = move-exception
            r15 = r0
            r1 = r5
            r14 = r11
            goto Lae
        La9:
            r0 = move-exception
            r5 = r13
            r11 = r14
            r15 = r0
            r1 = r5
        Lae:
            boolean r0 = r15 instanceof java.util.concurrent.CancellationException
            if (r0 != 0) goto Lbd
            coil.request.RequestService r0 = r1.f1937Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            coil.request.ImageRequest r14 = r14.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()
            coil.request.ErrorResult r14 = r0.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r14, r15)
            return r14
        Lbd:
            throw r15
        */
        throw new UnsupportedOperationException("Method not decompiled: coil.intercept.EngineInterceptor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(coil.intercept.Interceptor$Chain, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
