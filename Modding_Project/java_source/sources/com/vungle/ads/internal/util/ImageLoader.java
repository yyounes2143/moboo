package com.vungle.ads.internal.util;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.unity3d.services.core.fid.Constants;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J3\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\b2!\u0010\t\u001a\u001d\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u000e\u0012\u0004\u0012\u00020\u00060\nJH\u0010\u000f\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\b26\u0010\u0010\u001a2\u0012\u0013\u0012\u00110\u0012¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u0013\u0012\u0013\u0012\u00110\u0012¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u0014\u0012\u0004\u0012\u00020\u00060\u0011J\u000e\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0004R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/vungle/ads/internal/util/ImageLoader;", "", "()V", "ioExecutor", "Ljava/util/concurrent/Executor;", "displayImage", "", "uri", "", "onImageLoaded", "Lkotlin/Function1;", "Landroid/graphics/Bitmap;", "Lkotlin/ParameterName;", "name", "bitmap", "getImageSize", "onImageSizeLoaded", "Lkotlin/Function2;", "", "width", "height", "init", "Companion", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes6.dex */
public final class ImageLoader {
    @NotNull
    private static final String FILE_SCHEME = "file://";
    @Nullable
    private Executor ioExecutor;
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final String TAG = ImageLoader.class.getSimpleName();
    @NotNull
    private static final ImageLoader instance = new ImageLoader();

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u0016\u0010\u0005\u001a\n \u0006*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vungle/ads/internal/util/ImageLoader$Companion;", "", "()V", "FILE_SCHEME", "", "TAG", "kotlin.jvm.PlatformType", "instance", "Lcom/vungle/ads/internal/util/ImageLoader;", Constants.GET_INSTANCE, "()Lcom/vungle/ads/internal/util/ImageLoader;", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final ImageLoader getInstance() {
            return ImageLoader.instance;
        }

        private Companion() {
        }
    }

    private ImageLoader() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: displayImage$lambda-0  reason: not valid java name */
    public static final void m361displayImage$lambda0(String str, Function1 function1) {
        if (!StringsKt.startsWith$default(str, "file://", false, 2, (Object) null)) {
            return;
        }
        Bitmap decodeFile = BitmapFactory.decodeFile(str.substring(7));
        if (decodeFile != null) {
            function1.invoke(decodeFile);
        } else {
            Logger.Companion.w(TAG, "decode bitmap failed.");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: getImageSize$lambda-1  reason: not valid java name */
    public static final void m362getImageSize$lambda1(String str, Function2 function2) {
        if (!StringsKt.startsWith$default(str, "file://", false, 2, (Object) null)) {
            return;
        }
        String substring = str.substring(7);
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(substring, options);
        function2.invoke(Integer.valueOf(options.outWidth), Integer.valueOf(options.outHeight));
    }

    public final void displayImage(@Nullable final String str, @NotNull final Function1<? super Bitmap, Unit> function1) {
        if (this.ioExecutor == null) {
            Logger.Companion.w(TAG, "ImageLoader not initialized.");
        } else if (str != null && str.length() != 0) {
            Executor executor = this.ioExecutor;
            if (executor != null) {
                executor.execute(new Runnable() { // from class: com.vungle.ads.internal.util.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                    @Override // java.lang.Runnable
                    public final void run() {
                        ImageLoader.m361displayImage$lambda0(str, function1);
                    }
                });
            }
        } else {
            Logger.Companion.w(TAG, "the uri is required.");
        }
    }

    public final void getImageSize(@Nullable final String str, @NotNull final Function2<? super Integer, ? super Integer, Unit> function2) {
        if (this.ioExecutor == null) {
            Logger.Companion.w(TAG, "ImageLoader not initialized.");
        } else if (str != null && str.length() != 0) {
            Executor executor = this.ioExecutor;
            if (executor != null) {
                executor.execute(new Runnable() { // from class: com.vungle.ads.internal.util.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                    @Override // java.lang.Runnable
                    public final void run() {
                        ImageLoader.m362getImageSize$lambda1(str, function2);
                    }
                });
            }
        } else {
            Logger.Companion.w(TAG, "the uri is required.");
        }
    }

    public final void init(@NotNull Executor executor) {
        this.ioExecutor = executor;
    }
}
