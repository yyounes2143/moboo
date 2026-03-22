package coil.util;

import android.app.ActivityManager;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.VectorDrawable;
import android.net.Uri;
import android.os.Build;
import android.os.Looper;
import android.view.View;
import android.webkit.MimeTypeMap;
import android.widget.ImageView;
import androidx.core.content.ContextCompat;
import androidx.vectordrawable.graphics.drawable.VectorDrawableCompat;
import coil.EventListener;
import coil.base.R;
import coil.decode.DataSource;
import coil.disk.DiskCache;
import coil.intercept.Interceptor;
import coil.intercept.RealInterceptorChain;
import coil.request.Parameters;
import coil.request.Tags;
import coil.request.ViewTargetRequestManager;
import coil.size.Dimension;
import coil.size.Scale;
import java.io.Closeable;
import java.io.File;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import okhttp3.Headers;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000Â\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0005\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a\u0013\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u0000¢\u0006\u0004\b\u0002\u0010\u0003\u001a\u001f\u0010\u0007\u001a\u0004\u0018\u00010\u0005*\u00020\u00042\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0000¢\u0006\u0004\b\u0007\u0010\b\u001a\u0015\u0010\n\u001a\u00020\t*\u0004\u0018\u00010\tH\u0000¢\u0006\u0004\b\n\u0010\u000b\u001a\u0015\u0010\r\u001a\u00020\f*\u0004\u0018\u00010\fH\u0000¢\u0006\u0004\b\r\u0010\u000e\u001a\u0015\u0010\u0010\u001a\u00020\u000f*\u0004\u0018\u00010\u000fH\u0000¢\u0006\u0004\b\u0010\u0010\u0011\u001a\u000f\u0010\u0013\u001a\u00020\u0012H\u0000¢\u0006\u0004\b\u0013\u0010\u0014\u001a\u001b\u0010\u0017\u001a\u00020\u0015*\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u0015H\u0000¢\u0006\u0004\b\u0017\u0010\u0018\u001a\u0013\u0010\u001a\u001a\u00020\u0001*\u00020\u0019H\u0000¢\u0006\u0004\b\u001a\u0010\u001b\u001a\u0013\u0010\u001c\u001a\u00020\u0012*\u00020\u0015H\u0000¢\u0006\u0004\b\u001c\u0010\u001d\u001a\u001b\u0010!\u001a\u00020\u0015*\u00020\u001e2\u0006\u0010 \u001a\u00020\u001fH\u0000¢\u0006\u0004\b!\u0010\"\u001a\u0017\u0010%\u001a\u00020\u00122\u0006\u0010$\u001a\u00020#H\u0000¢\u0006\u0004\b%\u0010&\u001a\u001b\u0010)\u001a\u00020'*\u00020'2\u0006\u0010(\u001a\u00020\u0005H\u0000¢\u0006\u0004\b)\u0010*\u001a\u0017\u0010.\u001a\u00020-2\u0006\u0010,\u001a\u00020+H\u0000¢\u0006\u0004\b.\u0010/\u001a\u001f\u00101\u001a\u00020\u00152\u0006\u0010,\u001a\u00020+2\u0006\u00100\u001a\u00020-H\u0000¢\u0006\u0004\b1\u00102\" \u00108\u001a\b\u0012\u0004\u0012\u000204038\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u001a\u00105\u001a\u0004\b6\u00107\"\u001a\u0010<\u001a\u0002048\u0000X\u0080\u0004¢\u0006\f\n\u0004\b)\u00109\u001a\u0004\b:\u0010;\"\u001a\u0010@\u001a\u00020\t8\u0000X\u0080\u0004¢\u0006\f\n\u0004\b1\u0010=\u001a\u0004\b>\u0010?\"\u0018\u0010E\u001a\u00020B*\u00020A8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\bC\u0010D\"\u0018\u0010I\u001a\u00020\u0005*\u00020F8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\bG\u0010H\"\u0018\u0010M\u001a\u00020\u0015*\u00020J8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\bK\u0010L\"\u0018\u0010O\u001a\u00020\u0015*\u00020J8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\bN\u0010L\"\u0018\u0010R\u001a\u00020\u0012*\u00020J8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\bP\u0010Q\"\u0018\u0010 \u001a\u00020\u001f*\u00020S8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\bT\u0010U\"\u001a\u0010X\u001a\u0004\u0018\u00010\u0005*\u00020#8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\bV\u0010W\"\u0018\u0010\\\u001a\u00020\u0015*\u00020Y8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\bZ\u0010[\"\u0018\u0010`\u001a\u00020]*\u00020+8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b^\u0010_\"\u0018\u0010d\u001a\u00020\u0012*\u00020a8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\bb\u0010c\"\u0018\u0010h\u001a\u00020e*\u00020a8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\bf\u0010g¨\u0006i"}, d2 = {"Ljava/io/Closeable;", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/io/Closeable;)V", "Landroid/webkit/MimeTypeMap;", "", "url", "Wwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/webkit/MimeTypeMap;Ljava/lang/String;)Ljava/lang/String;", "Lokhttp3/Headers;", "Wwwwwwwwww", "(Lokhttp3/Headers;)Lokhttp3/Headers;", "Lcoil/request/Tags;", "Wwwwwwwwwww", "(Lcoil/request/Tags;)Lcoil/request/Tags;", "Lcoil/request/Parameters;", "Wwwwwwwwwwww", "(Lcoil/request/Parameters;)Lcoil/request/Parameters;", "", "Wwwwwwwwwwwwwwww", "()Z", "", "defaultValue", "Wwwwwwwww", "(Ljava/lang/String;I)I", "Lcoil/disk/DiskCache$Editor;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcoil/disk/DiskCache$Editor;)V", "Wwwwwwwwwwwwwww", "(I)Z", "Lcoil/size/Dimension;", "Lcoil/size/Scale;", "scale", "Wwwwwwww", "(Lcoil/size/Dimension;Lcoil/size/Scale;)I", "Landroid/net/Uri;", "uri", "Wwwwwwwwwwwwwwwww", "(Landroid/net/Uri;)Z", "Lokhttp3/Headers$Builder;", "line", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/Headers$Builder;Ljava/lang/String;)Lokhttp3/Headers$Builder;", "Landroid/content/Context;", "context", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;)D", "percent", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;D)I", "", "Landroid/graphics/Bitmap$Config;", "[Landroid/graphics/Bitmap$Config;", "Wwwwwwwwwwwwwwwwwww", "()[Landroid/graphics/Bitmap$Config;", "VALID_TRANSFORMATION_CONFIGS", "Landroid/graphics/Bitmap$Config;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Landroid/graphics/Bitmap$Config;", "DEFAULT_BITMAP_CONFIG", "Lokhttp3/Headers;", "getEMPTY_HEADERS", "()Lokhttp3/Headers;", "EMPTY_HEADERS", "Landroid/view/View;", "Lcoil/request/ViewTargetRequestManager;", "Wwwwwwwwwwwwwwwwwwwwww", "(Landroid/view/View;)Lcoil/request/ViewTargetRequestManager;", "requestManager", "Lcoil/decode/DataSource;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcoil/decode/DataSource;)Ljava/lang/String;", "emoji", "Landroid/graphics/drawable/Drawable;", "Wwwwwwwwwwwwwwwwww", "(Landroid/graphics/drawable/Drawable;)I", "width", "Wwwwwwwwwwwwwwwwwwwwwwwww", "height", "Wwwwwwwwwwwww", "(Landroid/graphics/drawable/Drawable;)Z", "isVector", "Landroid/widget/ImageView;", "Wwwwwwwwwwwwwwwwwwww", "(Landroid/widget/ImageView;)Lcoil/size/Scale;", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/net/Uri;)Ljava/lang/String;", "firstPathSegment", "Landroid/content/res/Configuration;", "Wwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/res/Configuration;)I", "nightMode", "Ljava/io/File;", "Wwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;)Ljava/io/File;", "safeCacheDir", "Lcoil/intercept/Interceptor$Chain;", "Wwwwwwwwwwwwww", "(Lcoil/intercept/Interceptor$Chain;)Z", "isPlaceholderCached", "Lcoil/EventListener;", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcoil/intercept/Interceptor$Chain;)Lcoil/EventListener;", "eventListener", "coil-base_release"}, k = 2, mv = {1, 7, 1}, xi = 48)
@JvmName(name = "-Utils")
/* renamed from: coil.util.-Utils  reason: invalid class name */
/* loaded from: classes3.dex */
public final class Utils {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Headers f2203Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Bitmap.Config f2204Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Bitmap.Config[] f2205Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* renamed from: coil.util.-Utils$WhenMappings */
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;
        public static final /* synthetic */ int[] $EnumSwitchMapping$2;

        static {
            int[] iArr = new int[DataSource.values().length];
            iArr[DataSource.MEMORY_CACHE.ordinal()] = 1;
            iArr[DataSource.MEMORY.ordinal()] = 2;
            iArr[DataSource.DISK.ordinal()] = 3;
            iArr[DataSource.NETWORK.ordinal()] = 4;
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[ImageView.ScaleType.values().length];
            iArr2[ImageView.ScaleType.FIT_START.ordinal()] = 1;
            iArr2[ImageView.ScaleType.FIT_CENTER.ordinal()] = 2;
            iArr2[ImageView.ScaleType.FIT_END.ordinal()] = 3;
            iArr2[ImageView.ScaleType.CENTER_INSIDE.ordinal()] = 4;
            $EnumSwitchMapping$1 = iArr2;
            int[] iArr3 = new int[Scale.values().length];
            iArr3[Scale.FILL.ordinal()] = 1;
            iArr3[Scale.FIT.ordinal()] = 2;
            $EnumSwitchMapping$2 = iArr3;
        }
    }

    static {
        Bitmap.Config[] configArr;
        Bitmap.Config config;
        Bitmap.Config config2;
        int i = Build.VERSION.SDK_INT;
        if (i >= 26) {
            config2 = Bitmap.Config.RGBA_F16;
            configArr = new Bitmap.Config[]{Bitmap.Config.ARGB_8888, config2};
        } else {
            configArr = new Bitmap.Config[]{Bitmap.Config.ARGB_8888};
        }
        f2205Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = configArr;
        if (i >= 26) {
            config = Bitmap.Config.HARDWARE;
        } else {
            config = Bitmap.Config.ARGB_8888;
        }
        f2204Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = config;
        f2203Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new Headers.Builder().Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public static final int Wwwwwwww(@NotNull Dimension dimension, @NotNull Scale scale) {
        if (dimension instanceof Dimension.Pixels) {
            return ((Dimension.Pixels) dimension).f2170Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
        int i = WhenMappings.$EnumSwitchMapping$2[scale.ordinal()];
        if (i != 1) {
            if (i == 2) {
                return Integer.MAX_VALUE;
            }
            throw new NoWhenBranchMatchedException();
        }
        return Integer.MIN_VALUE;
    }

    public static final int Wwwwwwwww(@NotNull String str, int i) {
        Long longOrNull = StringsKt.toLongOrNull(str);
        if (longOrNull != null) {
            long longValue = longOrNull.longValue();
            if (longValue > 2147483647L) {
                return Integer.MAX_VALUE;
            }
            if (longValue < 0) {
                return 0;
            }
            return (int) longValue;
        }
        return i;
    }

    @NotNull
    public static final Headers Wwwwwwwwww(@Nullable Headers headers) {
        if (headers == null) {
            return f2203Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
        return headers;
    }

    @NotNull
    public static final Tags Wwwwwwwwwww(@Nullable Tags tags) {
        if (tags == null) {
            return Tags.f2156Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
        return tags;
    }

    @NotNull
    public static final Parameters Wwwwwwwwwwww(@Nullable Parameters parameters) {
        if (parameters == null) {
            return Parameters.f2141Wwwwwwwwwwwwwwwwwwwwwwww;
        }
        return parameters;
    }

    public static final boolean Wwwwwwwwwwwww(@NotNull Drawable drawable) {
        if (!(drawable instanceof VectorDrawable) && !(drawable instanceof VectorDrawableCompat)) {
            return false;
        }
        return true;
    }

    public static final boolean Wwwwwwwwwwwwww(@NotNull Interceptor.Chain chain) {
        if ((chain instanceof RealInterceptorChain) && ((RealInterceptorChain) chain).Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            return true;
        }
        return false;
    }

    public static final boolean Wwwwwwwwwwwwwww(int i) {
        if (i != Integer.MIN_VALUE && i != Integer.MAX_VALUE) {
            return false;
        }
        return true;
    }

    public static final boolean Wwwwwwwwwwwwwwww() {
        return Intrinsics.areEqual(Looper.myLooper(), Looper.getMainLooper());
    }

    public static final boolean Wwwwwwwwwwwwwwwww(@NotNull Uri uri) {
        if (Intrinsics.areEqual(uri.getScheme(), "file") && Intrinsics.areEqual(Wwwwwwwwwwwwwwwwwwwwwwwwww(uri), "android_asset")) {
            return true;
        }
        return false;
    }

    public static final int Wwwwwwwwwwwwwwwwww(@NotNull Drawable drawable) {
        BitmapDrawable bitmapDrawable;
        Bitmap bitmap;
        if (drawable instanceof BitmapDrawable) {
            bitmapDrawable = (BitmapDrawable) drawable;
        } else {
            bitmapDrawable = null;
        }
        if (bitmapDrawable != null && (bitmap = bitmapDrawable.getBitmap()) != null) {
            return bitmap.getWidth();
        }
        return drawable.getIntrinsicWidth();
    }

    @NotNull
    public static final Bitmap.Config[] Wwwwwwwwwwwwwwwwwww() {
        return f2205Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public static final Scale Wwwwwwwwwwwwwwwwwwww(@NotNull ImageView imageView) {
        int i;
        ImageView.ScaleType scaleType = imageView.getScaleType();
        if (scaleType == null) {
            i = -1;
        } else {
            i = WhenMappings.$EnumSwitchMapping$1[scaleType.ordinal()];
        }
        if (i != 1 && i != 2 && i != 3 && i != 4) {
            return Scale.FILL;
        }
        return Scale.FIT;
    }

    @NotNull
    public static final File Wwwwwwwwwwwwwwwwwwwww(@NotNull Context context) {
        File cacheDir = context.getCacheDir();
        cacheDir.mkdirs();
        return cacheDir;
    }

    @NotNull
    public static final ViewTargetRequestManager Wwwwwwwwwwwwwwwwwwwwww(@NotNull View view) {
        ViewTargetRequestManager viewTargetRequestManager;
        int i = R.id.coil_request_manager;
        Object tag = view.getTag(i);
        ViewTargetRequestManager viewTargetRequestManager2 = null;
        if (tag instanceof ViewTargetRequestManager) {
            viewTargetRequestManager = (ViewTargetRequestManager) tag;
        } else {
            viewTargetRequestManager = null;
        }
        if (viewTargetRequestManager == null) {
            synchronized (view) {
                try {
                    Object tag2 = view.getTag(i);
                    if (tag2 instanceof ViewTargetRequestManager) {
                        viewTargetRequestManager2 = (ViewTargetRequestManager) tag2;
                    }
                    if (viewTargetRequestManager2 == null) {
                        viewTargetRequestManager2 = new ViewTargetRequestManager(view);
                        view.addOnAttachStateChangeListener(viewTargetRequestManager2);
                        view.setTag(i, viewTargetRequestManager2);
                    }
                } finally {
                }
            }
            return viewTargetRequestManager2;
        }
        return viewTargetRequestManager;
    }

    public static final int Wwwwwwwwwwwwwwwwwwwwwww(@NotNull Configuration configuration) {
        return configuration.uiMode & 48;
    }

    @Nullable
    public static final String Wwwwwwwwwwwwwwwwwwwwwwww(@NotNull MimeTypeMap mimeTypeMap, @Nullable String str) {
        if (str == null || StringsKt.isBlank(str)) {
            return null;
        }
        return mimeTypeMap.getMimeTypeFromExtension(StringsKt.substringAfterLast(StringsKt.substringAfterLast$default(StringsKt.substringBeforeLast$default(StringsKt.substringBeforeLast$default(str, '#', (String) null, 2, (Object) null), '?', (String) null, 2, (Object) null), '/', (String) null, 2, (Object) null), '.', ""));
    }

    public static final int Wwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Drawable drawable) {
        BitmapDrawable bitmapDrawable;
        Bitmap bitmap;
        if (drawable instanceof BitmapDrawable) {
            bitmapDrawable = (BitmapDrawable) drawable;
        } else {
            bitmapDrawable = null;
        }
        if (bitmapDrawable != null && (bitmap = bitmapDrawable.getBitmap()) != null) {
            return bitmap.getHeight();
        }
        return drawable.getIntrinsicHeight();
    }

    @Nullable
    public static final String Wwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Uri uri) {
        return (String) CollectionsKt.firstOrNull((List<? extends Object>) uri.getPathSegments());
    }

    @NotNull
    public static final EventListener Wwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Interceptor.Chain chain) {
        if (chain instanceof RealInterceptorChain) {
            return ((RealInterceptorChain) chain).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        return EventListener.f1779Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public static final String Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull DataSource dataSource) {
        int i = WhenMappings.$EnumSwitchMapping$0[dataSource.ordinal()];
        if (i != 1 && i != 2) {
            if (i != 3) {
                if (i == 4) {
                    return "☁️ ";
                }
                throw new NoWhenBranchMatchedException();
            }
            return "💾";
        }
        return "🧠";
    }

    @NotNull
    public static final Bitmap.Config Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return f2204Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public static final double Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context) {
        try {
            if (!((ActivityManager) ContextCompat.getSystemService(context, ActivityManager.class)).isLowRamDevice()) {
                return 0.2d;
            }
            return 0.15d;
        } catch (Exception unused) {
            return 0.2d;
        }
    }

    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Closeable closeable) {
        try {
            closeable.close();
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception unused) {
        }
    }

    public static final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context, double d) {
        int i;
        try {
            ActivityManager activityManager = (ActivityManager) ContextCompat.getSystemService(context, ActivityManager.class);
            if ((context.getApplicationInfo().flags & 1048576) != 0) {
                i = activityManager.getLargeMemoryClass();
            } else {
                i = activityManager.getMemoryClass();
            }
        } catch (Exception unused) {
            i = 256;
        }
        double d2 = 1024;
        return (int) (d * i * d2 * d2);
    }

    @NotNull
    public static final Headers.Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Headers.Builder builder, @NotNull String str) {
        int indexOf$default = StringsKt.indexOf$default((CharSequence) str, (char) AbstractJsonLexerKt.COLON, 0, false, 6, (Object) null);
        if (indexOf$default != -1) {
            builder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(StringsKt.trim((CharSequence) str.substring(0, indexOf$default)).toString(), str.substring(indexOf$default + 1));
            return builder;
        }
        throw new IllegalArgumentException(("Unexpected header: " + str).toString());
    }

    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull DiskCache.Editor editor) {
        try {
            editor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        } catch (Exception unused) {
        }
    }
}
