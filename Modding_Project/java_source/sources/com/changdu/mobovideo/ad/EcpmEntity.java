package com.changdu.mobovideo.ad;

import androidx.privacysandbox.ads.adservices.adid.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0013\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\u0005¢\u0006\u0004\b\n\u0010\u000bJ\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0017\u001a\u00020\bHÆ\u0003J\t\u0010\u0018\u001a\u00020\u0005HÆ\u0003J;\u0010\u0019\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u001a\u001a\u00020\u00032\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cHÖ\u0003J\t\u0010\u001d\u001a\u00020\u001eHÖ\u0001J\t\u0010\u001f\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000fR\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0011\u0010\t\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u000f¨\u0006 "}, d2 = {"Lcom/changdu/mobovideo/ad/EcpmEntity;", "Ljava/io/Serializable;", "loadSuccess", "", "adId", "", "revenuePrecision", "value", "", "networkName", "<init>", "(ZLjava/lang/String;Ljava/lang/String;DLjava/lang/String;)V", "getLoadSuccess", "()Z", "getAdId", "()Ljava/lang/String;", "getRevenuePrecision", "getValue", "()D", "getNetworkName", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "other", "", "hashCode", "", "toString", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class EcpmEntity implements Serializable {
    @NotNull
    private final String adId;
    private final boolean loadSuccess;
    @NotNull
    private final String networkName;
    @NotNull
    private final String revenuePrecision;
    private final double value;

    public EcpmEntity(boolean z, @NotNull String str, @NotNull String str2, double d, @NotNull String str3) {
        this.loadSuccess = z;
        this.adId = str;
        this.revenuePrecision = str2;
        this.value = d;
        this.networkName = str3;
    }

    public static /* synthetic */ EcpmEntity copy$default(EcpmEntity ecpmEntity, boolean z, String str, String str2, double d, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            z = ecpmEntity.loadSuccess;
        }
        if ((i & 2) != 0) {
            str = ecpmEntity.adId;
        }
        if ((i & 4) != 0) {
            str2 = ecpmEntity.revenuePrecision;
        }
        if ((i & 8) != 0) {
            d = ecpmEntity.value;
        }
        if ((i & 16) != 0) {
            str3 = ecpmEntity.networkName;
        }
        String str4 = str3;
        String str5 = str2;
        return ecpmEntity.copy(z, str, str5, d, str4);
    }

    public final boolean component1() {
        return this.loadSuccess;
    }

    @NotNull
    public final String component2() {
        return this.adId;
    }

    @NotNull
    public final String component3() {
        return this.revenuePrecision;
    }

    public final double component4() {
        return this.value;
    }

    @NotNull
    public final String component5() {
        return this.networkName;
    }

    @NotNull
    public final EcpmEntity copy(boolean z, @NotNull String str, @NotNull String str2, double d, @NotNull String str3) {
        return new EcpmEntity(z, str, str2, d, str3);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof EcpmEntity)) {
            return false;
        }
        EcpmEntity ecpmEntity = (EcpmEntity) obj;
        if (this.loadSuccess == ecpmEntity.loadSuccess && Intrinsics.areEqual(this.adId, ecpmEntity.adId) && Intrinsics.areEqual(this.revenuePrecision, ecpmEntity.revenuePrecision) && Double.compare(this.value, ecpmEntity.value) == 0 && Intrinsics.areEqual(this.networkName, ecpmEntity.networkName)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final String getAdId() {
        return this.adId;
    }

    public final boolean getLoadSuccess() {
        return this.loadSuccess;
    }

    @NotNull
    public final String getNetworkName() {
        return this.networkName;
    }

    @NotNull
    public final String getRevenuePrecision() {
        return this.revenuePrecision;
    }

    public final double getValue() {
        return this.value;
    }

    public int hashCode() {
        return (((((((Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.loadSuccess) * 31) + this.adId.hashCode()) * 31) + this.revenuePrecision.hashCode()) * 31) + com.appsflyer.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.value)) * 31) + this.networkName.hashCode();
    }

    @NotNull
    public String toString() {
        boolean z = this.loadSuccess;
        String str = this.adId;
        String str2 = this.revenuePrecision;
        double d = this.value;
        String str3 = this.networkName;
        return "EcpmEntity(loadSuccess=" + z + ", adId=" + str + ", revenuePrecision=" + str2 + ", value=" + d + ", networkName=" + str3 + ")";
    }
}
