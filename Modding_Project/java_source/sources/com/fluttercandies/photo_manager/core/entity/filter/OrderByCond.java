package com.fluttercandies.photo_manager.core.entity.filter;

import androidx.privacysandbox.ads.adservices.adid.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\f\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\r\u0010\b\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\n\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\n\u0010\tJ\u0010\u0010\f\u001a\u00020\u000bHÖ\u0001¢\u0006\u0004\b\f\u0010\rJ\u001a\u0010\u000f\u001a\u00020\u00042\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u000f\u0010\u0010R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\b\u0010\u0011\u001a\u0004\b\u0012\u0010\tR\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016¨\u0006\u0017"}, d2 = {"Lcom/fluttercandies/photo_manager/core/entity/filter/OrderByCond;", "", "", "key", "", "asc", "<init>", "(Ljava/lang/String;Z)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/lang/String;", "toString", "", "hashCode", "()I", "other", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getKey", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Z", "getAsc", "()Z", "photo_manager_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class OrderByCond {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f7456Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f7457Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public OrderByCond(@NotNull String str, boolean z) {
        this.f7457Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
        this.f7456Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = z;
    }

    @NotNull
    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        String str;
        if (this.f7456Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            str = "asc";
        } else {
            str = CampaignEx.JSON_KEY_DESC;
        }
        String str2 = this.f7457Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        return str2 + " " + str;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof OrderByCond)) {
            return false;
        }
        OrderByCond orderByCond = (OrderByCond) obj;
        if (Intrinsics.areEqual(this.f7457Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, orderByCond.f7457Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) && this.f7456Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == orderByCond.f7456Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (this.f7457Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode() * 31) + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f7456Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }

    @NotNull
    public String toString() {
        String str = this.f7457Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        boolean z = this.f7456Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        return "OrderByCond(key=" + str + ", asc=" + z + ")";
    }
}
