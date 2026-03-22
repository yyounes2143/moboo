package com.fluttercandies.image_editor.option;

import android.graphics.PorterDuff;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.fluttercandies.image_editor.util.ConvertUtils;
import java.util.Map;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0017\u0012\u000e\u0010\u0003\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\u0017\u0010\u000b\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\nR\u0017\u0010\u0010\u001a\u00020\f8\u0006¢\u0006\f\n\u0004\b\t\u0010\r\u001a\u0004\b\u000e\u0010\u000fR\u0017\u0010\u0013\u001a\u00020\f8\u0006¢\u0006\f\n\u0004\b\u0011\u0010\r\u001a\u0004\b\u0012\u0010\u000fR\u0017\u0010\u0015\u001a\u00020\f8\u0006¢\u0006\f\n\u0004\b\u0014\u0010\r\u001a\u0004\b\u0014\u0010\u000fR\u0017\u0010\u0016\u001a\u00020\f8\u0006¢\u0006\f\n\u0004\b\u000e\u0010\r\u001a\u0004\b\u0007\u0010\u000fR\u0014\u0010\u0019\u001a\u00020\u00178\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0018R\u0011\u0010\u001c\u001a\u00020\u001a8F¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u001b¨\u0006\u001d"}, d2 = {"Lcom/fluttercandies/image_editor/option/MixImageOpt;", "Lcom/fluttercandies/image_editor/option/Option;", "", "map", "<init>", "(Ljava/util/Map;)V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "[B", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()[B", "img", "", "I", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()I", "x", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "y", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "w", "h", "", "Ljava/lang/String;", "type", "Landroid/graphics/PorterDuff$Mode;", "()Landroid/graphics/PorterDuff$Mode;", "porterDuffMode", "image_editor_common_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class MixImageOpt implements Option {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f7310Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f7311Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f7312Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f7313Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f7314Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final byte[] f7315Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public MixImageOpt(@NotNull Map<?, ?> map) {
        this.f7315Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = (byte[]) ((Map) map.get(TypedValues.AttributesType.S_TARGET)).get("memory");
        this.f7314Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = ((Integer) map.get("x")).intValue();
        this.f7313Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = ((Integer) map.get("y")).intValue();
        this.f7312Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = ((Integer) map.get("w")).intValue();
        this.f7311Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = ((Integer) map.get("h")).intValue();
        this.f7310Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = (String) map.get("mixMode");
    }

    public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f7313Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f7314Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f7312Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final PorterDuff.Mode Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return ConvertUtils.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f7310Wwwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }

    @NotNull
    public final byte[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f7315Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f7311Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }
}
