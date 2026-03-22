package com.fluttercandies.flutter_image_compress.core;

import android.content.Context;
import androidx.core.app.NotificationCompat;
import com.fluttercandies.flutter_image_compress.ImageCompressPlugin;
import com.fluttercandies.flutter_image_compress.core.CompressListHandler;
import com.fluttercandies.flutter_image_compress.exception.CompressError;
import com.fluttercandies.flutter_image_compress.exif.Exif;
import com.fluttercandies.flutter_image_compress.format.FormatRegister;
import com.fluttercandies.flutter_image_compress.handle.FormatHandler;
import com.fluttercandies.flutter_image_compress.logger.LogExtKt;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import java.io.ByteArrayOutputStream;
import java.util.List;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0015\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\u000b\u0010\fR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcom/fluttercandies/flutter_image_compress/core/CompressListHandler;", "Lcom/fluttercandies/flutter_image_compress/core/ResultHandler;", "Lio/flutter/plugin/common/MethodCall;", NotificationCompat.CATEGORY_CALL, "Lio/flutter/plugin/common/MethodChannel$Result;", "result", "<init>", "(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V", "Landroid/content/Context;", "context", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lio/flutter/plugin/common/MethodCall;", "flutter_image_compress_common_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class CompressListHandler extends ResultHandler {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final MethodCall f7263Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public CompressListHandler(@NotNull MethodCall methodCall, @NotNull MethodChannel.Result result) {
        super(result);
        this.f7263Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = methodCall;
    }

    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(CompressListHandler compressListHandler, Context context) {
        int i;
        List list = (List) compressListHandler.f7263Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.arguments;
        int i2 = 0;
        byte[] bArr = (byte[]) list.get(0);
        int intValue = ((Integer) list.get(1)).intValue();
        int intValue2 = ((Integer) list.get(2)).intValue();
        int intValue3 = ((Integer) list.get(3)).intValue();
        int intValue4 = ((Integer) list.get(4)).intValue();
        boolean booleanValue = ((Boolean) list.get(5)).booleanValue();
        int intValue5 = ((Integer) list.get(6)).intValue();
        boolean booleanValue2 = ((Boolean) list.get(7)).booleanValue();
        int intValue6 = ((Integer) list.get(8)).intValue();
        if (booleanValue) {
            i2 = Exif.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bArr);
        }
        if (i2 != 90 && i2 != 270) {
            i = intValue2;
        } else {
            i = intValue;
            intValue = intValue2;
        }
        FormatHandler Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = FormatRegister.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(intValue5);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            LogExtKt.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("No support format.");
            compressListHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(null);
            return;
        }
        int i3 = intValue4 + i2;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            try {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, bArr, byteArrayOutputStream, intValue, i, intValue3, i3, booleanValue2, intValue6);
                compressListHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(byteArrayOutputStream.toByteArray());
                byteArrayOutputStream.close();
            } catch (CompressError e) {
                LogExtKt.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(e.getMessage());
                if (ImageCompressPlugin.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                    e.printStackTrace();
                }
                compressListHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(null);
                byteArrayOutputStream.close();
            } catch (Exception e2) {
                if (ImageCompressPlugin.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                    e2.printStackTrace();
                }
                compressListHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(null);
                byteArrayOutputStream.close();
            }
        } catch (Throwable th) {
            byteArrayOutputStream.close();
            throw th;
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull final Context context) {
        ResultHandler.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().execute(new Runnable() { // from class: Kkkkkkkkkkkkkkkkkkkkkkkkk.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                CompressListHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(CompressListHandler.this, context);
            }
        });
    }
}
