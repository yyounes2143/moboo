package com.changdu.mobovideo.googleengage;

import com.appsflyer.AppsFlyerProperties;
import com.google.ads.mediation.vungle.VungleConstants;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\t\n\u0002\b\u001c\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001Bu\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0003\u0012\b\b\u0002\u0010\b\u001a\u00020\u0003\u0012\b\b\u0002\u0010\t\u001a\u00020\u0003\u0012\b\b\u0002\u0010\n\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0003\u0012\b\b\u0002\u0010\f\u001a\u00020\u0003\u0012\b\b\u0002\u0010\r\u001a\u00020\u000e¢\u0006\u0004\b\u000f\u0010\u0010J\t\u0010\u001e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001f\u001a\u00020\u0003HÆ\u0003J\t\u0010 \u001a\u00020\u0003HÆ\u0003J\t\u0010!\u001a\u00020\u0003HÆ\u0003J\t\u0010\"\u001a\u00020\u0003HÆ\u0003J\t\u0010#\u001a\u00020\u0003HÆ\u0003J\t\u0010$\u001a\u00020\u0003HÆ\u0003J\t\u0010%\u001a\u00020\u0003HÆ\u0003J\t\u0010&\u001a\u00020\u0003HÆ\u0003J\t\u0010'\u001a\u00020\u0003HÆ\u0003J\t\u0010(\u001a\u00020\u000eHÆ\u0003Jw\u0010)\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\u00032\b\b\u0002\u0010\n\u001a\u00020\u00032\b\b\u0002\u0010\u000b\u001a\u00020\u00032\b\b\u0002\u0010\f\u001a\u00020\u00032\b\b\u0002\u0010\r\u001a\u00020\u000eHÆ\u0001J\u0013\u0010*\u001a\u00020+2\b\u0010,\u001a\u0004\u0018\u00010-HÖ\u0003J\t\u0010.\u001a\u00020/HÖ\u0001J\t\u00100\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0012R\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0012R\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0012R\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0012R\u0011\u0010\b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0012R\u0011\u0010\t\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0012R\u0011\u0010\n\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0012R\u0011\u0010\u000b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0012R\u0011\u0010\f\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0012R\u0011\u0010\r\u001a\u00020\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001d¨\u00061"}, d2 = {"Lcom/changdu/mobovideo/googleengage/UserRequestCache;", "Ljava/io/Serializable;", "langId", "", AppsFlyerProperties.CHANNEL, "protocolVersion", "salt", VungleConstants.KEY_USER_ID, "userToken", RemoteConfigConstants.RequestFieldKey.APP_ID, "productX", "terminalType", "baseHost", "tokenExpireTs", "", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V", "getLangId", "()Ljava/lang/String;", "getChannel", "getProtocolVersion", "getSalt", "getUserId", "getUserToken", "getAppId", "getProductX", "getTerminalType", "getBaseHost", "getTokenExpireTs", "()J", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "copy", "equals", "", "other", "", "hashCode", "", "toString", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class UserRequestCache implements Serializable {
    @NotNull
    private final String appId;
    @NotNull
    private final String baseHost;
    @NotNull
    private final String channel;
    @NotNull
    private final String langId;
    @NotNull
    private final String productX;
    @NotNull
    private final String protocolVersion;
    @NotNull
    private final String salt;
    @NotNull
    private final String terminalType;
    private final long tokenExpireTs;
    @NotNull
    private final String userId;
    @NotNull
    private final String userToken;

    public UserRequestCache() {
        this(null, null, null, null, null, null, null, null, null, null, 0L, 2047, null);
    }

    public static /* synthetic */ UserRequestCache copy$default(UserRequestCache userRequestCache, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            str = userRequestCache.langId;
        }
        if ((i & 2) != 0) {
            str2 = userRequestCache.channel;
        }
        if ((i & 4) != 0) {
            str3 = userRequestCache.protocolVersion;
        }
        if ((i & 8) != 0) {
            str4 = userRequestCache.salt;
        }
        if ((i & 16) != 0) {
            str5 = userRequestCache.userId;
        }
        if ((i & 32) != 0) {
            str6 = userRequestCache.userToken;
        }
        if ((i & 64) != 0) {
            str7 = userRequestCache.appId;
        }
        if ((i & 128) != 0) {
            str8 = userRequestCache.productX;
        }
        if ((i & 256) != 0) {
            str9 = userRequestCache.terminalType;
        }
        if ((i & 512) != 0) {
            str10 = userRequestCache.baseHost;
        }
        if ((i & 1024) != 0) {
            j = userRequestCache.tokenExpireTs;
        }
        long j2 = j;
        String str11 = str9;
        String str12 = str10;
        String str13 = str7;
        String str14 = str8;
        String str15 = str5;
        String str16 = str6;
        return userRequestCache.copy(str, str2, str3, str4, str15, str16, str13, str14, str11, str12, j2);
    }

    @NotNull
    public final String component1() {
        return this.langId;
    }

    @NotNull
    public final String component10() {
        return this.baseHost;
    }

    public final long component11() {
        return this.tokenExpireTs;
    }

    @NotNull
    public final String component2() {
        return this.channel;
    }

    @NotNull
    public final String component3() {
        return this.protocolVersion;
    }

    @NotNull
    public final String component4() {
        return this.salt;
    }

    @NotNull
    public final String component5() {
        return this.userId;
    }

    @NotNull
    public final String component6() {
        return this.userToken;
    }

    @NotNull
    public final String component7() {
        return this.appId;
    }

    @NotNull
    public final String component8() {
        return this.productX;
    }

    @NotNull
    public final String component9() {
        return this.terminalType;
    }

    @NotNull
    public final UserRequestCache copy(@NotNull String str, @NotNull String str2, @NotNull String str3, @NotNull String str4, @NotNull String str5, @NotNull String str6, @NotNull String str7, @NotNull String str8, @NotNull String str9, @NotNull String str10, long j) {
        return new UserRequestCache(str, str2, str3, str4, str5, str6, str7, str8, str9, str10, j);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof UserRequestCache)) {
            return false;
        }
        UserRequestCache userRequestCache = (UserRequestCache) obj;
        if (Intrinsics.areEqual(this.langId, userRequestCache.langId) && Intrinsics.areEqual(this.channel, userRequestCache.channel) && Intrinsics.areEqual(this.protocolVersion, userRequestCache.protocolVersion) && Intrinsics.areEqual(this.salt, userRequestCache.salt) && Intrinsics.areEqual(this.userId, userRequestCache.userId) && Intrinsics.areEqual(this.userToken, userRequestCache.userToken) && Intrinsics.areEqual(this.appId, userRequestCache.appId) && Intrinsics.areEqual(this.productX, userRequestCache.productX) && Intrinsics.areEqual(this.terminalType, userRequestCache.terminalType) && Intrinsics.areEqual(this.baseHost, userRequestCache.baseHost) && this.tokenExpireTs == userRequestCache.tokenExpireTs) {
            return true;
        }
        return false;
    }

    @NotNull
    public final String getAppId() {
        return this.appId;
    }

    @NotNull
    public final String getBaseHost() {
        return this.baseHost;
    }

    @NotNull
    public final String getChannel() {
        return this.channel;
    }

    @NotNull
    public final String getLangId() {
        return this.langId;
    }

    @NotNull
    public final String getProductX() {
        return this.productX;
    }

    @NotNull
    public final String getProtocolVersion() {
        return this.protocolVersion;
    }

    @NotNull
    public final String getSalt() {
        return this.salt;
    }

    @NotNull
    public final String getTerminalType() {
        return this.terminalType;
    }

    public final long getTokenExpireTs() {
        return this.tokenExpireTs;
    }

    @NotNull
    public final String getUserId() {
        return this.userId;
    }

    @NotNull
    public final String getUserToken() {
        return this.userToken;
    }

    public int hashCode() {
        return (((((((((((((((((((this.langId.hashCode() * 31) + this.channel.hashCode()) * 31) + this.protocolVersion.hashCode()) * 31) + this.salt.hashCode()) * 31) + this.userId.hashCode()) * 31) + this.userToken.hashCode()) * 31) + this.appId.hashCode()) * 31) + this.productX.hashCode()) * 31) + this.terminalType.hashCode()) * 31) + this.baseHost.hashCode()) * 31) + androidx.collection.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.tokenExpireTs);
    }

    @NotNull
    public String toString() {
        String str = this.langId;
        String str2 = this.channel;
        String str3 = this.protocolVersion;
        String str4 = this.salt;
        String str5 = this.userId;
        String str6 = this.userToken;
        String str7 = this.appId;
        String str8 = this.productX;
        String str9 = this.terminalType;
        String str10 = this.baseHost;
        long j = this.tokenExpireTs;
        return "UserRequestCache(langId=" + str + ", channel=" + str2 + ", protocolVersion=" + str3 + ", salt=" + str4 + ", userId=" + str5 + ", userToken=" + str6 + ", appId=" + str7 + ", productX=" + str8 + ", terminalType=" + str9 + ", baseHost=" + str10 + ", tokenExpireTs=" + j + ")";
    }

    public UserRequestCache(@NotNull String str, @NotNull String str2, @NotNull String str3, @NotNull String str4, @NotNull String str5, @NotNull String str6, @NotNull String str7, @NotNull String str8, @NotNull String str9, @NotNull String str10, long j) {
        this.langId = str;
        this.channel = str2;
        this.protocolVersion = str3;
        this.salt = str4;
        this.userId = str5;
        this.userToken = str6;
        this.appId = str7;
        this.productX = str8;
        this.terminalType = str9;
        this.baseHost = str10;
        this.tokenExpireTs = j;
    }

    public /* synthetic */ UserRequestCache(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, long j, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? "" : str3, (i & 8) != 0 ? "" : str4, (i & 16) != 0 ? "" : str5, (i & 32) != 0 ? "" : str6, (i & 64) != 0 ? "" : str7, (i & 128) != 0 ? "" : str8, (i & 256) != 0 ? "" : str9, (i & 512) != 0 ? "" : str10, (i & 1024) != 0 ? 0L : j);
    }
}
