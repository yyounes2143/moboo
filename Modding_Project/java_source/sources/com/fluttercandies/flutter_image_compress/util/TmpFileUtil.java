package com.fluttercandies.flutter_image_compress.util;

import android.content.Context;
import java.io.File;
import java.util.UUID;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0015\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/fluttercandies/flutter_image_compress/util/TmpFileUtil;", "", "<init>", "()V", "Landroid/content/Context;", "context", "Ljava/io/File;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;)Ljava/io/File;", "flutter_image_compress_common_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class TmpFileUtil {
    @NotNull
    public static final TmpFileUtil INSTANCE = new TmpFileUtil();

    @NotNull
    public final File Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context) {
        return new File(context.getCacheDir(), UUID.randomUUID().toString());
    }
}
