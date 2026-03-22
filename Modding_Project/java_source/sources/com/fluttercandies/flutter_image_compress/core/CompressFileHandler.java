package com.fluttercandies.flutter_image_compress.core;

import android.content.Context;
import androidx.core.app.NotificationCompat;
import com.fluttercandies.flutter_image_compress.ImageCompressPlugin;
import com.fluttercandies.flutter_image_compress.core.CompressFileHandler;
import com.fluttercandies.flutter_image_compress.exif.Exif;
import com.fluttercandies.flutter_image_compress.format.FormatRegister;
import com.fluttercandies.flutter_image_compress.handle.FormatHandler;
import com.fluttercandies.flutter_image_compress.logger.LogExtKt;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.util.List;
import kotlin.Metadata;
import kotlin.io.FilesKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0015\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\u000b\u0010\fJ\u0015\u0010\r\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\r\u0010\fR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Lcom/fluttercandies/flutter_image_compress/core/CompressFileHandler;", "Lcom/fluttercandies/flutter_image_compress/core/ResultHandler;", "Lio/flutter/plugin/common/MethodCall;", NotificationCompat.CATEGORY_CALL, "Lio/flutter/plugin/common/MethodChannel$Result;", "result", "<init>", "(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V", "Landroid/content/Context;", "context", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lio/flutter/plugin/common/MethodCall;", "flutter_image_compress_common_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class CompressFileHandler extends ResultHandler {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final MethodCall f7262Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public CompressFileHandler(@NotNull MethodCall methodCall, @NotNull MethodChannel.Result result) {
        super(result);
        this.f7262Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = methodCall;
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x00e3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void Wwwwwwwwwwwwwwwwwwwwwwwww(com.fluttercandies.flutter_image_compress.core.CompressFileHandler r16, android.content.Context r17) {
        /*
            Method dump skipped, instructions count: 231
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fluttercandies.flutter_image_compress.core.CompressFileHandler.Wwwwwwwwwwwwwwwwwwwwwwwww(com.fluttercandies.flutter_image_compress.core.CompressFileHandler, android.content.Context):void");
    }

    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwww(CompressFileHandler compressFileHandler, Context context) {
        int i;
        int i2;
        List list = (List) compressFileHandler.f7262Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.arguments;
        int i3 = 0;
        String str = (String) list.get(0);
        int intValue = ((Integer) list.get(1)).intValue();
        int intValue2 = ((Integer) list.get(2)).intValue();
        int intValue3 = ((Integer) list.get(3)).intValue();
        int intValue4 = ((Integer) list.get(4)).intValue();
        boolean booleanValue = ((Boolean) list.get(5)).booleanValue();
        int intValue5 = ((Integer) list.get(6)).intValue();
        boolean booleanValue2 = ((Boolean) list.get(7)).booleanValue();
        int intValue6 = ((Integer) list.get(8)).intValue();
        int intValue7 = ((Integer) list.get(9)).intValue();
        FormatHandler Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = FormatRegister.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(intValue5);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            LogExtKt.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("No support format.");
            compressFileHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(null);
            return;
        }
        if (booleanValue) {
            i3 = Exif.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FilesKt.readBytes(new File(str)));
        }
        if (i3 != 90 && i3 != 270) {
            i2 = intValue;
            i = intValue2;
        } else {
            i = intValue;
            i2 = intValue2;
        }
        int i4 = intValue4 + i3;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, str, byteArrayOutputStream, i2, i, intValue3, i4, booleanValue2, intValue6, intValue7);
            compressFileHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(byteArrayOutputStream.toByteArray());
        } catch (Exception e) {
            if (ImageCompressPlugin.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                e.printStackTrace();
            }
            compressFileHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(null);
        } finally {
            byteArrayOutputStream.close();
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull final Context context) {
        ResultHandler.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().execute(new Runnable() { // from class: Kkkkkkkkkkkkkkkkkkkkkkkkk.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                CompressFileHandler.Wwwwwwwwwwwwwwwwwwwwwwwww(CompressFileHandler.this, context);
            }
        });
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull final Context context) {
        ResultHandler.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().execute(new Runnable() { // from class: Kkkkkkkkkkkkkkkkkkkkkkkkk.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                CompressFileHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwww(CompressFileHandler.this, context);
            }
        });
    }
}
