package com.fluttercandies.image_editor.option.draw;

import android.graphics.Point;
import android.graphics.Rect;
import com.fluttercandies.image_editor.option.draw.ITransferValue;
import java.util.Map;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\b\b\b&\u0018\u00002\u00020\u0001B\u0017\u0012\u000e\u0010\u0003\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\"\u0010\u0003\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u00028\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/fluttercandies/image_editor/option/draw/TransferValue;", "Lcom/fluttercandies/image_editor/option/draw/ITransferValue;", "", "map", "<init>", "(Ljava/util/Map;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/Map;", "getMap", "()Ljava/util/Map;", "image_editor_common_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes4.dex */
public abstract class TransferValue implements ITransferValue {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Map<?, ?> f7347Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public TransferValue(@NotNull Map<?, ?> map) {
        this.f7347Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = map;
    }

    @NotNull
    public Rect Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str) {
        return ITransferValue.DefaultImpls.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this, str);
    }

    @NotNull
    public Point Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str) {
        return ITransferValue.DefaultImpls.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this, str);
    }

    public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str) {
        return ITransferValue.DefaultImpls.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this, str);
    }

    @Override // com.fluttercandies.image_editor.option.draw.ITransferValue
    @NotNull
    public Point Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Map<?, ?> map) {
        return ITransferValue.DefaultImpls.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this, map);
    }

    @Override // com.fluttercandies.image_editor.option.draw.ITransferValue
    @NotNull
    public Map<?, ?> getMap() {
        return this.f7347Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }
}
