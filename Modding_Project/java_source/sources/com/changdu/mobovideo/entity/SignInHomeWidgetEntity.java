package com.changdu.mobovideo.entity;

import androidx.privacysandbox.ads.adservices.adid.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
import com.google.gson.annotations.SerializedName;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0014\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001BC\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\b\u001a\u00020\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\u0006¢\u0006\u0004\b\n\u0010\u000bJ\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0006HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0006HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0006HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0006HÆ\u0003JE\u0010\u0018\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\b\u001a\u00020\u00062\b\b\u0002\u0010\t\u001a\u00020\u0006HÆ\u0001J\u0013\u0010\u0019\u001a\u00020\u00032\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bHÖ\u0003J\t\u0010\u001c\u001a\u00020\u001dHÖ\u0001J\t\u0010\u001e\u001a\u00020\u0006HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\fR\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0004\u0010\fR\u0016\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0016\u0010\u0007\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000eR\u0016\u0010\b\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000eR\u0016\u0010\t\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u000e¨\u0006\u001f"}, d2 = {"Lcom/changdu/mobovideo/entity/SignInHomeWidgetEntity;", "Ljava/io/Serializable;", "isSignIn", "", "isClaimed", "signInValue", "", "claimValue", "claimHint", "signInHint", "<init>", "(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "()Z", "getSignInValue", "()Ljava/lang/String;", "getClaimValue", "getClaimHint", "getSignInHint", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "other", "", "hashCode", "", "toString", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class SignInHomeWidgetEntity implements Serializable {
    @SerializedName("claimHint")
    @NotNull
    private final String claimHint;
    @SerializedName("claimValue")
    @NotNull
    private final String claimValue;
    @SerializedName("isClaimed")
    private final boolean isClaimed;
    @SerializedName("isSignIn")
    private final boolean isSignIn;
    @SerializedName("signInHint")
    @NotNull
    private final String signInHint;
    @SerializedName("signInValue")
    @NotNull
    private final String signInValue;

    public SignInHomeWidgetEntity() {
        this(false, false, null, null, null, null, 63, null);
    }

    public static /* synthetic */ SignInHomeWidgetEntity copy$default(SignInHomeWidgetEntity signInHomeWidgetEntity, boolean z, boolean z2, String str, String str2, String str3, String str4, int i, Object obj) {
        if ((i & 1) != 0) {
            z = signInHomeWidgetEntity.isSignIn;
        }
        if ((i & 2) != 0) {
            z2 = signInHomeWidgetEntity.isClaimed;
        }
        if ((i & 4) != 0) {
            str = signInHomeWidgetEntity.signInValue;
        }
        if ((i & 8) != 0) {
            str2 = signInHomeWidgetEntity.claimValue;
        }
        if ((i & 16) != 0) {
            str3 = signInHomeWidgetEntity.claimHint;
        }
        if ((i & 32) != 0) {
            str4 = signInHomeWidgetEntity.signInHint;
        }
        String str5 = str3;
        String str6 = str4;
        return signInHomeWidgetEntity.copy(z, z2, str, str2, str5, str6);
    }

    public final boolean component1() {
        return this.isSignIn;
    }

    public final boolean component2() {
        return this.isClaimed;
    }

    @NotNull
    public final String component3() {
        return this.signInValue;
    }

    @NotNull
    public final String component4() {
        return this.claimValue;
    }

    @NotNull
    public final String component5() {
        return this.claimHint;
    }

    @NotNull
    public final String component6() {
        return this.signInHint;
    }

    @NotNull
    public final SignInHomeWidgetEntity copy(boolean z, boolean z2, @NotNull String str, @NotNull String str2, @NotNull String str3, @NotNull String str4) {
        return new SignInHomeWidgetEntity(z, z2, str, str2, str3, str4);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SignInHomeWidgetEntity)) {
            return false;
        }
        SignInHomeWidgetEntity signInHomeWidgetEntity = (SignInHomeWidgetEntity) obj;
        if (this.isSignIn == signInHomeWidgetEntity.isSignIn && this.isClaimed == signInHomeWidgetEntity.isClaimed && Intrinsics.areEqual(this.signInValue, signInHomeWidgetEntity.signInValue) && Intrinsics.areEqual(this.claimValue, signInHomeWidgetEntity.claimValue) && Intrinsics.areEqual(this.claimHint, signInHomeWidgetEntity.claimHint) && Intrinsics.areEqual(this.signInHint, signInHomeWidgetEntity.signInHint)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final String getClaimHint() {
        return this.claimHint;
    }

    @NotNull
    public final String getClaimValue() {
        return this.claimValue;
    }

    @NotNull
    public final String getSignInHint() {
        return this.signInHint;
    }

    @NotNull
    public final String getSignInValue() {
        return this.signInValue;
    }

    public int hashCode() {
        return (((((((((Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.isSignIn) * 31) + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.isClaimed)) * 31) + this.signInValue.hashCode()) * 31) + this.claimValue.hashCode()) * 31) + this.claimHint.hashCode()) * 31) + this.signInHint.hashCode();
    }

    public final boolean isClaimed() {
        return this.isClaimed;
    }

    public final boolean isSignIn() {
        return this.isSignIn;
    }

    @NotNull
    public String toString() {
        boolean z = this.isSignIn;
        boolean z2 = this.isClaimed;
        String str = this.signInValue;
        String str2 = this.claimValue;
        String str3 = this.claimHint;
        String str4 = this.signInHint;
        return "SignInHomeWidgetEntity(isSignIn=" + z + ", isClaimed=" + z2 + ", signInValue=" + str + ", claimValue=" + str2 + ", claimHint=" + str3 + ", signInHint=" + str4 + ")";
    }

    public SignInHomeWidgetEntity(boolean z, boolean z2, @NotNull String str, @NotNull String str2, @NotNull String str3, @NotNull String str4) {
        this.isSignIn = z;
        this.isClaimed = z2;
        this.signInValue = str;
        this.claimValue = str2;
        this.claimHint = str3;
        this.signInHint = str4;
    }

    public /* synthetic */ SignInHomeWidgetEntity(boolean z, boolean z2, String str, String str2, String str3, String str4, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? false : z, (i & 2) != 0 ? false : z2, (i & 4) != 0 ? "" : str, (i & 8) != 0 ? "" : str2, (i & 16) != 0 ? "" : str3, (i & 32) != 0 ? "" : str4);
    }
}
