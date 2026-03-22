package com.fluttercandies.flutter_image_compress.format;

import android.util.SparseArray;
import com.fluttercandies.flutter_image_compress.handle.FormatHandler;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0015\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\u000b\u001a\u0004\u0018\u00010\u00042\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\fR\u001a\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00040\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\u000e¨\u0006\u0010"}, d2 = {"Lcom/fluttercandies/flutter_image_compress/format/FormatRegister;", "", "<init>", "()V", "Lcom/fluttercandies/flutter_image_compress/handle/FormatHandler;", "handler", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/fluttercandies/flutter_image_compress/handle/FormatHandler;)V", "", "formatIndex", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(I)Lcom/fluttercandies/flutter_image_compress/handle/FormatHandler;", "Landroid/util/SparseArray;", "Landroid/util/SparseArray;", "formatMap", "flutter_image_compress_common_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class FormatRegister {
    @NotNull
    public static final FormatRegister INSTANCE = new FormatRegister();
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final SparseArray<FormatHandler> f7270Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new SparseArray<>();

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull FormatHandler formatHandler) {
        f7270Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.append(formatHandler.getType(), formatHandler);
    }

    @Nullable
    public final FormatHandler Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
        return f7270Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(i);
    }
}
