package com.appsflyer.internal;

import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.JvmName;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0012\b\u0000\u0018\u00002\u00020\u0001BC\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000b\u001a\u00020\u0007\u0012\u0006\u0010\f\u001a\u00020\u0007¢\u0006\u0004\b\r\u0010\u000eJ\u001a\u0010\u0010\u001a\u00020\u000f2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0001H\u0096\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\tH\u0016¢\u0006\u0004\b\u0012\u0010\u0013R\u0011\u0010\u0014\u001a\u00020\u000f8G¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015R\u0014\u0010\u0018\u001a\u00020\u00078\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0014\u0010\u0019\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0014\u0010\u0016\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u001bR\u0014\u0010\u001d\u001a\u00020\u00078\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u0017R\u001a\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00070\u00068\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u001eR\u0014\u0010!\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010 "}, d2 = {"Lcom/appsflyer/internal/AFi1xSDK;", "", "", "p0", "", "p1", "", "", "p2", "", "p3", "p4", "p5", "<init>", "(JFLjava/util/List;ILjava/lang/String;Ljava/lang/String;)V", "", "equals", "(Ljava/lang/Object;)Z", "hashCode", "()I", "AFAdRevenueData", "()Z", "getCurrencyIso4217Code", "Ljava/lang/String;", "getMediationNetwork", "getMonetizationNetwork", "I", "F", "component4", "getRevenue", "Ljava/util/List;", "component1", "J", "component3"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class AFi1xSDK {
    @NotNull
    public List<String> AFAdRevenueData;
    @NotNull
    public final String component4;
    @NotNull
    public final String getCurrencyIso4217Code;
    public final float getMediationNetwork;
    public final int getMonetizationNetwork;
    public long getRevenue;

    @JvmOverloads
    public AFi1xSDK(long j, float f, @NotNull List<String> list, int i, @NotNull String str, @NotNull String str2) {
        this.getRevenue = j;
        this.getMediationNetwork = f;
        this.AFAdRevenueData = list;
        this.getMonetizationNetwork = i;
        this.getCurrencyIso4217Code = str;
        this.component4 = str2;
    }

    @JvmName(name = "AFAdRevenueData")
    public final boolean AFAdRevenueData() {
        if (TimeUnit.SECONDS.toMillis(this.getRevenue) > AFa1ySDK.getRevenue().getMonetizationNetwork().component3().getCurrencyIso4217Code()) {
            return true;
        }
        return false;
    }

    public final boolean equals(@Nullable Object obj) {
        Class<?> cls;
        if (this == obj) {
            return true;
        }
        if (obj != null) {
            cls = obj.getClass();
        } else {
            cls = null;
        }
        if (!Intrinsics.areEqual(AFi1xSDK.class, cls)) {
            return false;
        }
        AFi1xSDK aFi1xSDK = (AFi1xSDK) obj;
        if (this.getRevenue == aFi1xSDK.getRevenue && this.getMediationNetwork == aFi1xSDK.getMediationNetwork && Intrinsics.areEqual(this.AFAdRevenueData, aFi1xSDK.AFAdRevenueData) && this.getMonetizationNetwork == aFi1xSDK.getMonetizationNetwork && Intrinsics.areEqual(this.getCurrencyIso4217Code, aFi1xSDK.getCurrencyIso4217Code) && Intrinsics.areEqual(this.component4, aFi1xSDK.component4)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return (((((((((androidx.collection.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.getRevenue) * 31) + Float.floatToIntBits(this.getMediationNetwork)) * 31) + this.AFAdRevenueData.hashCode()) * 31) + this.getMonetizationNetwork) * 31) + this.getCurrencyIso4217Code.hashCode()) * 31) + this.component4.hashCode();
    }
}
