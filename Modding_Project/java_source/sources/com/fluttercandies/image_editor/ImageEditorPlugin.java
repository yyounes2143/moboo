package com.fluttercandies.image_editor;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import androidx.annotation.NonNull;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.NotificationCompat;
import androidx.exifinterface.media.ExifInterface;
import com.fluttercandies.image_editor.common.font.FontUtils;
import com.fluttercandies.image_editor.core.BitmapWrapper;
import com.fluttercandies.image_editor.core.ImageHandler;
import com.fluttercandies.image_editor.core.ImageMerger;
import com.fluttercandies.image_editor.core.ResultHandler;
import com.fluttercandies.image_editor.error.BitmapDecodeException;
import com.fluttercandies.image_editor.option.FlipOption;
import com.fluttercandies.image_editor.option.FormatOption;
import com.fluttercandies.image_editor.option.MergeOption;
import com.fluttercandies.image_editor.option.Option;
import com.fluttercandies.image_editor.util.ConvertUtils;
import com.mbridge.msdk.MBridgeConstans;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.io.FilesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 :2\u00020\u00012\u00020\u0002:\u0001:B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0019\u0010\b\u001a\u00020\u00072\b\b\u0001\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\n\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\n\u0010\tJ\u001f\u0010\u000f\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J'\u0010\u0015\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u0013H\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u0015\u0010\u0018\u001a\u0004\u0018\u00010\u0017*\u00020\u000bH\u0002¢\u0006\u0004\b\u0018\u0010\u0019J\u0015\u0010\u001a\u001a\u0004\u0018\u00010\u0017*\u00020\u000bH\u0002¢\u0006\u0004\b\u001a\u0010\u0019J!\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u001e0\u001d*\u00020\u000b2\u0006\u0010\u001c\u001a\u00020\u001bH\u0002¢\u0006\u0004\b\u001f\u0010 J\u0015\u0010\"\u001a\u0004\u0018\u00010!*\u00020\u000bH\u0002¢\u0006\u0004\b\"\u0010#J\u0013\u0010$\u001a\u00020\u001b*\u00020\u000bH\u0002¢\u0006\u0004\b$\u0010%J\u001f\u0010*\u001a\u00020\u001b2\u0006\u0010'\u001a\u00020&2\u0006\u0010)\u001a\u00020(H\u0002¢\u0006\u0004\b*\u0010+J\u0013\u0010-\u001a\u00020,*\u00020\u000bH\u0002¢\u0006\u0004\b-\u0010.J;\u00104\u001a\u00020\u00072\u0006\u00100\u001a\u00020/2\u0006\u00101\u001a\u00020,2\u0006\u00102\u001a\u00020\u00132\u0006\u0010\u0012\u001a\u00020\u00112\n\b\u0002\u00103\u001a\u0004\u0018\u00010\u0017H\u0002¢\u0006\u0004\b4\u00105J'\u00106\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u00102\u001a\u00020\u0013H\u0002¢\u0006\u0004\b6\u0010\u0016R\u0018\u00109\u001a\u0004\u0018\u0001078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u00108¨\u0006;"}, d2 = {"Lcom/fluttercandies/image_editor/ImageEditorPlugin;", "Lio/flutter/embedding/engine/plugins/FlutterPlugin;", "Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;", "<init>", "()V", "Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;", "binding", "", "onAttachedToEngine", "(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V", "onDetachedFromEngine", "Lio/flutter/plugin/common/MethodCall;", NotificationCompat.CATEGORY_CALL, "Lio/flutter/plugin/common/MethodChannel$Result;", "result", "onMethodCall", "(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V", "Lcom/fluttercandies/image_editor/core/ResultHandler;", "resultHandler", "", "memory", "Wwwwwwwwwwwwwwwwwwwwww", "(Lio/flutter/plugin/common/MethodCall;Lcom/fluttercandies/image_editor/core/ResultHandler;Z)V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "(Lio/flutter/plugin/common/MethodCall;)Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Lcom/fluttercandies/image_editor/core/BitmapWrapper;", "bitmapWrapper", "", "Lcom/fluttercandies/image_editor/option/Option;", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lio/flutter/plugin/common/MethodCall;Lcom/fluttercandies/image_editor/core/BitmapWrapper;)Ljava/util/List;", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lio/flutter/plugin/common/MethodCall;)[B", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lio/flutter/plugin/common/MethodCall;)Lcom/fluttercandies/image_editor/core/BitmapWrapper;", "Landroid/graphics/Bitmap;", "bitmap", "Landroidx/exifinterface/media/ExifInterface;", "exifInterface", "Wwwwwwwwwwwwwwwwwwwww", "(Landroid/graphics/Bitmap;Landroidx/exifinterface/media/ExifInterface;)Lcom/fluttercandies/image_editor/core/BitmapWrapper;", "Lcom/fluttercandies/image_editor/option/FormatOption;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lio/flutter/plugin/common/MethodCall;)Lcom/fluttercandies/image_editor/option/FormatOption;", "Lcom/fluttercandies/image_editor/core/ImageHandler;", "imageHandler", "formatOption", "outputMemory", "targetPath", "Wwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/fluttercandies/image_editor/core/ImageHandler;Lcom/fluttercandies/image_editor/option/FormatOption;ZLcom/fluttercandies/image_editor/core/ResultHandler;Ljava/lang/String;)V", "Wwwwwwwwwwwwwwwwwwwwwww", "Landroid/content/Context;", "Landroid/content/Context;", "applicationContext", "Companion", "image_editor_common_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nImageEditorPlugin.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImageEditorPlugin.kt\ncom/fluttercandies/image_editor/ImageEditorPlugin\n+ 2 ImageEditorPlugin.kt\ncom/fluttercandies/image_editor/ImageEditorPlugin$Companion\n*L\n1#1,221:1\n37#2,4:222\n*S KotlinDebug\n*F\n+ 1 ImageEditorPlugin.kt\ncom/fluttercandies/image_editor/ImageEditorPlugin\n*L\n55#1:222,4\n*E\n"})
/* loaded from: classes4.dex */
public final class ImageEditorPlugin implements FlutterPlugin, MethodChannel.MethodCallHandler {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final ExecutorService f7274Wwwwwwwwwwwwwwwwwwwwwwww = Executors.newCachedThreadPool();
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Context f7275Wwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\bR\u0014\u0010\n\u001a\u00020\t8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/fluttercandies/image_editor/ImageEditorPlugin$Companion;", "", "<init>", "()V", "Ljava/util/concurrent/ExecutorService;", "threadPool", "Ljava/util/concurrent/ExecutorService;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/util/concurrent/ExecutorService;", "", "channelName", "Ljava/lang/String;", "image_editor_common_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final ExecutorService Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return ImageEditorPlugin.f7274Wwwwwwwwwwwwwwwwwwwwwwww;
        }

        public Companion() {
        }
    }

    public final BitmapWrapper Wwwwwwwwwwwwwwwwwwwww(Bitmap bitmap, ExifInterface exifInterface) {
        int i = 0;
        FlipOption flipOption = new FlipOption(false, false, 2, null);
        switch (exifInterface.getAttributeInt(ExifInterface.TAG_ORIENTATION, 1)) {
            case 2:
                flipOption = new FlipOption(true, false, 2, null);
                break;
            case 3:
                i = 180;
                break;
            case 4:
                flipOption = new FlipOption(false, true, 1, null);
                break;
            case 5:
                flipOption = new FlipOption(true, false, 2, null);
            case 6:
                i = 90;
                break;
            case 7:
                flipOption = new FlipOption(true, false, 2, null);
            case 8:
                i = 270;
                break;
        }
        return new BitmapWrapper(bitmap, i, flipOption);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwww(MethodCall methodCall, ResultHandler resultHandler, boolean z) {
        String str;
        MergeOption mergeOption = new MergeOption((Map) methodCall.argument("option"));
        byte[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = new ImageMerger(mergeOption).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            ResultHandler.Wwwwwwwwwwwwwwwwwwwwwwwwww(resultHandler, "Cannot merge image.", null, null, 6, null);
        } else if (z) {
            resultHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        } else {
            if (mergeOption.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() == 1) {
                str = "jpg";
            } else {
                str = "png";
            }
            File cacheDir = this.f7275Wwwwwwwwwwwwwwwwwwwwwwwww.getCacheDir();
            File file = new File(cacheDir, System.currentTimeMillis() + '.' + str);
            FilesKt.writeBytes(file, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            resultHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(file.getPath());
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwww(MethodCall methodCall, ResultHandler resultHandler, boolean z) {
        BitmapWrapper Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(methodCall);
        ImageHandler imageHandler = new ImageHandler(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        imageHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwww(methodCall, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2));
        Wwwwwwwwwwwwwwwwwwwwwwww(imageHandler, Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(methodCall), z, resultHandler, Wwwwwwwwwwwwwwwwwwwwwwwww(methodCall));
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwww(ImageHandler imageHandler, FormatOption formatOption, boolean z, ResultHandler resultHandler, String str) {
        if (z) {
            resultHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(imageHandler.Wwwwwwwwwwwwwwwwwwwwwww(formatOption));
        } else if (str == null) {
            resultHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(null);
        } else {
            imageHandler.Wwwwwwwwwwwwwwwwwwwwww(str, formatOption);
            resultHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
        }
    }

    public final String Wwwwwwwwwwwwwwwwwwwwwwwww(MethodCall methodCall) {
        return (String) methodCall.argument(TypedValues.AttributesType.S_TARGET);
    }

    public final String Wwwwwwwwwwwwwwwwwwwwwwwwww(MethodCall methodCall) {
        return (String) methodCall.argument("src");
    }

    public final List<Option> Wwwwwwwwwwwwwwwwwwwwwwwwwww(MethodCall methodCall, BitmapWrapper bitmapWrapper) {
        return ConvertUtils.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((List) methodCall.argument("options"), bitmapWrapper);
    }

    public final byte[] Wwwwwwwwwwwwwwwwwwwwwwwwwwww(MethodCall methodCall) {
        return (byte[]) methodCall.argument("image");
    }

    public final FormatOption Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(MethodCall methodCall) {
        return ConvertUtils.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwww(methodCall);
    }

    public final BitmapWrapper Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MethodCall methodCall) {
        String Wwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwww(methodCall);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
            return Wwwwwwwwwwwwwwwwwwwww(BitmapFactory.decodeFile(Wwwwwwwwwwwwwwwwwwwwwwwwww2), new ExifInterface(Wwwwwwwwwwwwwwwwwwwwwwwwww2));
        }
        byte[] Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwww(methodCall);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
            return Wwwwwwwwwwwwwwwwwwwww(BitmapFactory.decodeByteArray(Wwwwwwwwwwwwwwwwwwwwwwwwwwww2, 0, Wwwwwwwwwwwwwwwwwwwwwwwwwwww2.length), new ExifInterface(new ByteArrayInputStream(Wwwwwwwwwwwwwwwwwwwwwwwwwwww2)));
        }
        throw new BitmapDecodeException();
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(@NonNull @NotNull FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        this.f7275Wwwwwwwwwwwwwwwwwwwwwwwww = flutterPluginBinding.getApplicationContext();
        new MethodChannel(flutterPluginBinding.getBinaryMessenger(), "com.fluttercandies/image_editor").setMethodCallHandler(this);
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(@NotNull FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        this.f7275Wwwwwwwwwwwwwwwwwwwwwwwww = null;
    }

    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(@NotNull final MethodCall methodCall, @NotNull MethodChannel.Result result) {
        final ResultHandler resultHandler = new ResultHandler(result);
        Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().execute(new Runnable() { // from class: com.fluttercandies.image_editor.ImageEditorPlugin$onMethodCall$$inlined$runOnBackground$1
            @Override // java.lang.Runnable
            public final void run() {
                Context context;
                String str;
                File cacheDir;
                try {
                    String str2 = MethodCall.this.method;
                    if (str2 != null) {
                        switch (str2.hashCode()) {
                            case -2032648323:
                                if (!str2.equals("memoryToMemory")) {
                                    break;
                                } else {
                                    this.Wwwwwwwwwwwwwwwwwwwwwww(MethodCall.this, resultHandler, true);
                                    return;
                                }
                            case -1708153454:
                                if (!str2.equals("registerFont")) {
                                    break;
                                } else {
                                    resultHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(FontUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((String) MethodCall.this.argument(MBridgeConstans.DYNAMIC_VIEW_WX_PATH)));
                                    return;
                                }
                            case -563320815:
                                if (!str2.equals("getCachePath")) {
                                    break;
                                } else {
                                    ResultHandler resultHandler2 = resultHandler;
                                    context = this.f7275Wwwwwwwwwwwwwwwwwwwwwwwww;
                                    if (context != null && (cacheDir = context.getCacheDir()) != null) {
                                        str = cacheDir.getAbsolutePath();
                                    } else {
                                        str = null;
                                    }
                                    resultHandler2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
                                    return;
                                }
                            case 215369967:
                                if (!str2.equals("mergeToFile")) {
                                    break;
                                } else {
                                    this.Wwwwwwwwwwwwwwwwwwwwww(MethodCall.this, resultHandler, false);
                                    return;
                                }
                            case 712763128:
                                if (!str2.equals("memoryToFile")) {
                                    break;
                                } else {
                                    this.Wwwwwwwwwwwwwwwwwwwwwww(MethodCall.this, resultHandler, false);
                                    return;
                                }
                            case 1008861108:
                                if (!str2.equals("mergeToMemory")) {
                                    break;
                                } else {
                                    this.Wwwwwwwwwwwwwwwwwwwwww(MethodCall.this, resultHandler, true);
                                    return;
                                }
                            case 1064226040:
                                if (!str2.equals("fileToMemory")) {
                                    break;
                                } else {
                                    this.Wwwwwwwwwwwwwwwwwwwwwww(MethodCall.this, resultHandler, true);
                                    return;
                                }
                            case 1824364339:
                                if (!str2.equals("fileToFile")) {
                                    break;
                                } else {
                                    this.Wwwwwwwwwwwwwwwwwwwwwww(MethodCall.this, resultHandler, false);
                                    return;
                                }
                        }
                    }
                    resultHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                } catch (BitmapDecodeException unused) {
                    ResultHandler.Wwwwwwwwwwwwwwwwwwwwwwwwww(resultHandler, "Decode bitmap error.", null, null, 6, null);
                } catch (Exception e) {
                    StringWriter stringWriter = new StringWriter();
                    PrintWriter printWriter = new PrintWriter(stringWriter);
                    try {
                        e.printStackTrace(printWriter);
                        resultHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwww(stringWriter.getBuffer().toString(), "", null);
                        Unit unit = Unit.INSTANCE;
                        CloseableKt.closeFinally(printWriter, null);
                    } catch (Throwable th) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            CloseableKt.closeFinally(printWriter, th);
                            throw th2;
                        }
                    }
                }
            }
        });
    }
}
