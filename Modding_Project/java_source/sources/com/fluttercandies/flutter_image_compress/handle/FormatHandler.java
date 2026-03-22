package com.fluttercandies.flutter_image_compress.handle;

import android.content.Context;
import com.mbridge.msdk.MBridgeConstans;
import java.io.OutputStream;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\bf\u0018\u00002\u00020\u0001JW\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\bH&¢\u0006\u0004\b\u0011\u0010\u0012J_\u0010\u0016\u001a\u00020\u00102\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\b2\u0006\u0010\u0015\u001a\u00020\bH&¢\u0006\u0004\b\u0016\u0010\u0017R\u0014\u0010\u001a\u001a\u00020\b8&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0019¨\u0006\u001b"}, d2 = {"Lcom/fluttercandies/flutter_image_compress/handle/FormatHandler;", "", "Landroid/content/Context;", "context", "", "byteArray", "Ljava/io/OutputStream;", "outputStream", "", "minWidth", "minHeight", "quality", "rotate", "", "keepExif", "inSampleSize", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;[BLjava/io/OutputStream;IIIIZI)V", "", MBridgeConstans.DYNAMIC_VIEW_WX_PATH, "numberOfRetries", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;Ljava/lang/String;Ljava/io/OutputStream;IIIIZII)V", "getType", "()I", "type", "flutter_image_compress_common_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes4.dex */
public interface FormatHandler {
    void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context, @NotNull String str, @NotNull OutputStream outputStream, int i, int i2, int i3, int i4, boolean z, int i5, int i6);

    void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context, @NotNull byte[] bArr, @NotNull OutputStream outputStream, int i, int i2, int i3, int i4, boolean z, int i5);

    int getType();
}
