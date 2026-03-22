package com.facebook;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.facebook.LegacyTokenHelper;
import com.facebook.internal.Utility;
import com.facebook.internal.Validate;
import com.google.ads.mediation.vungle.VungleConstants;
import com.mbridge.msdk.mbbid.out.BidResponsed;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u001e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\"\n\u0002\b\u001c\u0018\u0000 P2\u00020\u0001:\u0003QRPB\u008b\u0001\b\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0010\u0010\u0007\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0018\u00010\u0006\u0012\u0010\u0010\b\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0018\u00010\u0006\u0012\u0010\u0010\t\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0018\u00010\u0006\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\f\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0011\u0010\u0012B\u0011\b\u0010\u0012\u0006\u0010\u0014\u001a\u00020\u0013¢\u0006\u0004\b\u0011\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u001b\u0010\u001c\u001a\u00020\u001b2\n\u0010\u001a\u001a\u00060\u0018j\u0002`\u0019H\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ!\u0010\u001f\u001a\u00020\n2\u0006\u0010\u001e\u001a\u00020\n2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0002H\u0002¢\u0006\u0004\b\u001f\u0010 J\u000f\u0010!\u001a\u00020\u0002H\u0016¢\u0006\u0004\b!\u0010\u0017J\u001a\u0010%\u001a\u00020$2\b\u0010#\u001a\u0004\u0018\u00010\"H\u0096\u0002¢\u0006\u0004\b%\u0010&J\u000f\u0010(\u001a\u00020'H\u0016¢\u0006\u0004\b(\u0010)J\u000f\u0010+\u001a\u00020*H\u0000¢\u0006\u0004\b+\u0010,J\u000f\u0010-\u001a\u00020'H\u0016¢\u0006\u0004\b-\u0010)J\u001f\u00100\u001a\u00020\u001b2\u0006\u0010.\u001a\u00020\u00132\u0006\u0010/\u001a\u00020'H\u0016¢\u0006\u0004\b0\u00101R\u0017\u00106\u001a\u00020\f8\u0006¢\u0006\f\n\u0004\b2\u00103\u001a\u0004\b4\u00105R\u001f\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u0002078\u0006¢\u0006\f\n\u0004\b8\u00109\u001a\u0004\b8\u0010:R\u001f\u0010\b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u0002078\u0006¢\u0006\f\n\u0004\b;\u00109\u001a\u0004\b<\u0010:R\u001f\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u0002078\u0006¢\u0006\f\n\u0004\b=\u00109\u001a\u0004\b>\u0010:R\u0017\u0010A\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b?\u0010@\u001a\u0004\b=\u0010\u0017R\u0017\u0010E\u001a\u00020\n8\u0006¢\u0006\f\n\u0004\bB\u0010C\u001a\u0004\b;\u0010DR\u0017\u0010G\u001a\u00020\f8\u0006¢\u0006\f\n\u0004\bF\u00103\u001a\u0004\b2\u00105R\u0017\u0010\u0004\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b+\u0010@\u001a\u0004\bH\u0010\u0017R\u0017\u0010\u0005\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0016\u0010@\u001a\u0004\b?\u0010\u0017R\u0017\u0010\u000f\u001a\u00020\f8\u0006¢\u0006\f\n\u0004\bI\u00103\u001a\u0004\bJ\u00105R\u0019\u0010\u0010\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\bK\u0010@\u001a\u0004\bL\u0010\u0017R\u0011\u0010N\u001a\u00020$8F¢\u0006\u0006\u001a\u0004\bB\u0010MR\u0011\u0010O\u001a\u00020$8F¢\u0006\u0006\u001a\u0004\bF\u0010M¨\u0006S"}, d2 = {"Lcom/facebook/AccessToken;", "Landroid/os/Parcelable;", "", "accessToken", "applicationId", VungleConstants.KEY_USER_ID, "", "permissions", "declinedPermissions", "expiredPermissions", "Lcom/facebook/AccessTokenSource;", "accessTokenSource", "Ljava/util/Date;", "expirationTime", "lastRefreshTime", "dataAccessExpirationTime", "graphDomain", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Lcom/facebook/AccessTokenSource;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;)V", "Landroid/os/Parcel;", "parcel", "(Landroid/os/Parcel;)V", "Wwwwwwwwwwwwwwwww", "()Ljava/lang/String;", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "builder", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/StringBuilder;)V", "tokenSource", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/AccessTokenSource;Ljava/lang/String;)Lcom/facebook/AccessTokenSource;", "toString", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "Lorg/json/JSONObject;", "Wwwwwwwwwwwwwwwwww", "()Lorg/json/JSONObject;", "describeContents", "dest", "flags", "writeToParcel", "(Landroid/os/Parcel;I)V", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/Date;", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/util/Date;", "expires", "", "Wwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/Set;", "()Ljava/util/Set;", "Wwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", BidResponsed.KEY_TOKEN, "Wwwwwwwwwwwwwwwwwwww", "Lcom/facebook/AccessTokenSource;", "()Lcom/facebook/AccessTokenSource;", "source", "Wwwwwwwwwwwwwwwwwww", "lastRefresh", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "()Z", "isExpired", "isInstagramToken", "Companion", "AccessTokenCreationCallback", "AccessTokenRefreshCallback", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class AccessToken implements Parcelable {
    @JvmField
    @NotNull
    public static final Parcelable.Creator<AccessToken> CREATOR;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull

    /* renamed from: Wwwwwwwwwww  reason: collision with root package name */
    public static final AccessTokenSource f5866Wwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwww  reason: collision with root package name */
    public static final Date f5867Wwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwww  reason: collision with root package name */
    public static final Date f5868Wwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwww  reason: collision with root package name */
    public static final Date f5869Wwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f5870Wwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Date f5871Wwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f5872Wwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f5873Wwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Date f5874Wwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final AccessTokenSource f5875Wwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f5876Wwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Set<String> f5877Wwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Set<String> f5878Wwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Set<String> f5879Wwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Date f5880Wwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\bf\u0018\u00002\u00020\u0001J\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H&¢\u0006\u0004\b\u0005\u0010\u0006J\u0019\u0010\t\u001a\u00020\u00042\b\u0010\b\u001a\u0004\u0018\u00010\u0007H&¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/facebook/AccessToken$AccessTokenCreationCallback;", "", "Lcom/facebook/AccessToken;", BidResponsed.KEY_TOKEN, "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/AccessToken;)V", "Lcom/facebook/FacebookException;", "error", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/FacebookException;)V", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public interface AccessTokenCreationCallback {
        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable AccessToken accessToken);

        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable FacebookException facebookException);
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\bf\u0018\u00002\u00020\u0001J\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H&¢\u0006\u0004\b\u0005\u0010\u0006J\u0019\u0010\t\u001a\u00020\u00042\b\u0010\b\u001a\u0004\u0018\u00010\u0007H&¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/facebook/AccessToken$AccessTokenRefreshCallback;", "", "Lcom/facebook/AccessToken;", "accessToken", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/AccessToken;)V", "Lcom/facebook/FacebookException;", "exception", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/FacebookException;)V", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public interface AccessTokenRefreshCallback {
        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable AccessToken accessToken);

        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable FacebookException facebookException);
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0016\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0011\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u0019\u0010\t\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0004H\u0007¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\f\u001a\u00020\u000bH\u0007¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u000bH\u0007¢\u0006\u0004\b\u000e\u0010\rJ\u000f\u0010\u000f\u001a\u00020\bH\u0007¢\u0006\u0004\b\u000f\u0010\u0003J\u0017\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u0004H\u0000¢\u0006\u0004\b\u0011\u0010\u0012J\u0019\u0010\u0015\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0014\u001a\u00020\u0013H\u0001¢\u0006\u0004\b\u0015\u0010\u0016J)\u0010\u001a\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00170\u00192\u0006\u0010\u0014\u001a\u00020\u00132\b\u0010\u0018\u001a\u0004\u0018\u00010\u0017H\u0001¢\u0006\u0004\b\u001a\u0010\u001bJ\u0017\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u001d\u001a\u00020\u001cH\u0001¢\u0006\u0004\b\u001e\u0010\u001fJC\u0010&\u001a\u0004\u0018\u00010\u00042\u0010\u0010 \u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0017\u0018\u00010\u00192\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\"\u001a\u00020!2\u0006\u0010$\u001a\u00020#2\u0006\u0010%\u001a\u00020\u0017H\u0002¢\u0006\u0004\b&\u0010'R\u0014\u0010(\u001a\u00020\u00178\u0006X\u0086T¢\u0006\u0006\n\u0004\b(\u0010)R\u0014\u0010*\u001a\u00020\u00178\u0002X\u0082T¢\u0006\u0006\n\u0004\b*\u0010)R\u001a\u0010,\u001a\b\u0012\u0004\u0012\u00020\u00040+8\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b,\u0010-R\u0014\u0010/\u001a\u00020.8\u0002X\u0082T¢\u0006\u0006\n\u0004\b/\u00100R\u0014\u00101\u001a\u00020\u00178\u0006X\u0086T¢\u0006\u0006\n\u0004\b1\u0010)R\u0014\u00102\u001a\u00020\u00178\u0002X\u0082T¢\u0006\u0006\n\u0004\b2\u0010)R\u0014\u00103\u001a\u00020!8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b3\u00104R\u0014\u00105\u001a\u00020#8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b5\u00106R\u0014\u00107\u001a\u00020\u00178\u0006X\u0086T¢\u0006\u0006\n\u0004\b7\u0010)R\u0014\u00108\u001a\u00020#8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b8\u00106R\u0014\u00109\u001a\u00020\u00178\u0002X\u0082T¢\u0006\u0006\n\u0004\b9\u0010)R\u0014\u0010:\u001a\u00020\u00178\u0002X\u0082T¢\u0006\u0006\n\u0004\b:\u0010)R\u0014\u0010;\u001a\u00020\u00178\u0006X\u0086T¢\u0006\u0006\n\u0004\b;\u0010)R\u0014\u0010<\u001a\u00020\u00178\u0006X\u0086T¢\u0006\u0006\n\u0004\b<\u0010)R\u0014\u0010=\u001a\u00020\u00178\u0002X\u0082T¢\u0006\u0006\n\u0004\b=\u0010)R\u0014\u0010>\u001a\u00020#8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b>\u00106R\u0014\u0010?\u001a\u00020\u00178\u0002X\u0082T¢\u0006\u0006\n\u0004\b?\u0010)R\u0014\u0010@\u001a\u00020\u00178\u0002X\u0082T¢\u0006\u0006\n\u0004\b@\u0010)R\u0014\u0010A\u001a\u00020\u00178\u0002X\u0082T¢\u0006\u0006\n\u0004\bA\u0010)R\u0014\u0010B\u001a\u00020\u00178\u0006X\u0086T¢\u0006\u0006\n\u0004\bB\u0010)R\u0014\u0010C\u001a\u00020\u00178\u0002X\u0082T¢\u0006\u0006\n\u0004\bC\u0010)¨\u0006D"}, d2 = {"Lcom/facebook/AccessToken$Companion;", "", "<init>", "()V", "Lcom/facebook/AccessToken;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lcom/facebook/AccessToken;", "accessToken", "", "Wwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/AccessToken;)V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "()Z", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "current", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/AccessToken;)Lcom/facebook/AccessToken;", "Landroid/os/Bundle;", "bundle", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/os/Bundle;)Lcom/facebook/AccessToken;", "", "key", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;", "Lorg/json/JSONObject;", "jsonObject", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lorg/json/JSONObject;)Lcom/facebook/AccessToken;", "requestedPermissions", "Lcom/facebook/AccessTokenSource;", "source", "Ljava/util/Date;", "expirationBase", "applicationId", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/util/List;Landroid/os/Bundle;Lcom/facebook/AccessTokenSource;Ljava/util/Date;Ljava/lang/String;)Lcom/facebook/AccessToken;", "ACCESS_TOKEN_KEY", "Ljava/lang/String;", "APPLICATION_ID_KEY", "Landroid/os/Parcelable$Creator;", "CREATOR", "Landroid/os/Parcelable$Creator;", "", "CURRENT_JSON_FORMAT", "I", "DATA_ACCESS_EXPIRATION_TIME", "DECLINED_PERMISSIONS_KEY", "DEFAULT_ACCESS_TOKEN_SOURCE", "Lcom/facebook/AccessTokenSource;", "DEFAULT_EXPIRATION_TIME", "Ljava/util/Date;", "DEFAULT_GRAPH_DOMAIN", "DEFAULT_LAST_REFRESH_TIME", "EXPIRED_PERMISSIONS_KEY", "EXPIRES_AT_KEY", "EXPIRES_IN_KEY", "GRAPH_DOMAIN", "LAST_REFRESH_KEY", "MAX_DATE", "PERMISSIONS_KEY", "SOURCE_KEY", "TOKEN_KEY", "USER_ID_KEY", "VERSION_KEY", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        public final void Wwwwwwwwwwwwwwwwwwwwwwww(@Nullable AccessToken accessToken) {
            AccessTokenManager.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwww(accessToken);
        }

        @JvmStatic
        public final boolean Wwwwwwwwwwwwwwwwwwwwwwwww() {
            AccessToken Wwwwwwwwwwwwwwwwwwwwwwwwww2 = AccessTokenManager.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwww2 != null && !Wwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwww() && Wwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwww()) {
                return true;
            }
            return false;
        }

        @JvmStatic
        public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwww() {
            AccessToken Wwwwwwwwwwwwwwwwwwwwwwwwww2 = AccessTokenManager.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwww2 != null && !Wwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwww()) {
                return true;
            }
            return false;
        }

        @JvmStatic
        @NotNull
        public final List<String> Wwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Bundle bundle, @Nullable String str) {
            ArrayList<String> stringArrayList = bundle.getStringArrayList(str);
            if (stringArrayList == null) {
                return CollectionsKt.emptyList();
            }
            return Collections.unmodifiableList(new ArrayList(stringArrayList));
        }

        @JvmStatic
        @Nullable
        public final AccessToken Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return AccessTokenManager.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwww();
        }

        @JvmStatic
        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            AccessToken Wwwwwwwwwwwwwwwwwwwwwwwwww2 = AccessTokenManager.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                Wwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwww2));
            }
        }

        @JvmStatic
        @Nullable
        public final AccessToken Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Bundle bundle) {
            String string;
            List<String> Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwww(bundle, "com.facebook.TokenCachingStrategy.Permissions");
            List<String> Wwwwwwwwwwwwwwwwwwwwwwwwwww3 = Wwwwwwwwwwwwwwwwwwwwwwwwwww(bundle, "com.facebook.TokenCachingStrategy.DeclinedPermissions");
            List<String> Wwwwwwwwwwwwwwwwwwwwwwwwwww4 = Wwwwwwwwwwwwwwwwwwwwwwwwwww(bundle, "com.facebook.TokenCachingStrategy.ExpiredPermissions");
            LegacyTokenHelper.Companion companion = LegacyTokenHelper.Companion;
            String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bundle);
            if (Utility.Kk(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2)) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = FacebookSdk.Wwwwwwwwwwwwwwwwwwwwww();
            }
            String str = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            String Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(bundle);
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
                return null;
            }
            JSONObject Wwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = Utility.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwww3 == null) {
                string = null;
            } else {
                try {
                    string = Wwwwwwwwwwwwwwwwwwwwwwwwwwwww3.getString("id");
                } catch (JSONException unused) {
                    return null;
                }
            }
            if (str == null || string == null) {
                return null;
            }
            return new AccessToken(Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2, str, string, Wwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwww3, Wwwwwwwwwwwwwwwwwwwwwwwwwww4, companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bundle), companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bundle), companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bundle), null, null, 1024, null);
        }

        @JvmStatic
        @NotNull
        public final AccessToken Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull JSONObject jSONObject) throws JSONException {
            Collection Illlllllllllllllllllllllll;
            if (jSONObject.getInt("version") <= 1) {
                String string = jSONObject.getString(BidResponsed.KEY_TOKEN);
                Date date = new Date(jSONObject.getLong("expires_at"));
                JSONArray jSONArray = jSONObject.getJSONArray("permissions");
                JSONArray jSONArray2 = jSONObject.getJSONArray("declined_permissions");
                JSONArray optJSONArray = jSONObject.optJSONArray("expired_permissions");
                Date date2 = new Date(jSONObject.getLong("last_refresh"));
                AccessTokenSource valueOf = AccessTokenSource.valueOf(jSONObject.getString("source"));
                String string2 = jSONObject.getString("application_id");
                String string3 = jSONObject.getString("user_id");
                Date date3 = new Date(jSONObject.optLong("data_access_expiration_time", 0L));
                String optString = jSONObject.optString("graph_domain", null);
                List<String> Illlllllllllllllllllllllll2 = Utility.Illlllllllllllllllllllllll(jSONArray);
                List<String> Illlllllllllllllllllllllll3 = Utility.Illlllllllllllllllllllllll(jSONArray2);
                if (optJSONArray == null) {
                    Illlllllllllllllllllllllll = new ArrayList();
                } else {
                    Illlllllllllllllllllllllll = Utility.Illlllllllllllllllllllllll(optJSONArray);
                }
                return new AccessToken(string, string2, string3, Illlllllllllllllllllllllll2, Illlllllllllllllllllllllll3, Illlllllllllllllllllllllll, valueOf, date, date2, date3, optString);
            }
            throw new FacebookException("Unknown AccessToken serialization format.");
        }

        public final AccessToken Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(List<String> list, Bundle bundle, AccessTokenSource accessTokenSource, Date date, String str) {
            Date Wwwwwwwwww2;
            String string;
            String string2 = bundle.getString("access_token");
            if (string2 == null || (Wwwwwwwwww2 = Utility.Wwwwwwwwww(bundle, "expires_in", date)) == null || (string = bundle.getString("user_id")) == null) {
                return null;
            }
            return new AccessToken(string2, str, string, list, null, null, accessTokenSource, Wwwwwwwwww2, new Date(), Utility.Wwwwwwwwww(bundle, "data_access_expiration_time", new Date(0L)), null, 1024, null);
        }

        @NotNull
        public final AccessToken Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull AccessToken accessToken) {
            return new AccessToken(accessToken.Wwwwwwwwwwwwwwwwwwwwww(), accessToken.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), accessToken.Wwwwwwwwwwwwwwwwwwwww(), accessToken.Wwwwwwwwwwwwwwwwwwwwwwww(), accessToken.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(), accessToken.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(), accessToken.Wwwwwwwwwwwwwwwwwwwwwww(), new Date(), new Date(), accessToken.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), null, 1024, null);
        }

        public Companion() {
        }
    }

    /* compiled from: Proguard */
    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[AccessTokenSource.valuesCustom().length];
            iArr[AccessTokenSource.FACEBOOK_APPLICATION_WEB.ordinal()] = 1;
            iArr[AccessTokenSource.CHROME_CUSTOM_TAB.ordinal()] = 2;
            iArr[AccessTokenSource.WEB_VIEW.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    static {
        Date date = new Date(Long.MAX_VALUE);
        f5869Wwwwwwwwwwwwww = date;
        f5868Wwwwwwwwwwwww = date;
        f5867Wwwwwwwwwwww = new Date();
        f5866Wwwwwwwwwww = AccessTokenSource.FACEBOOK_APPLICATION_WEB;
        CREATOR = new Parcelable.Creator<AccessToken>() { // from class: com.facebook.AccessToken$Companion$CREATOR$1
            @Override // android.os.Parcelable.Creator
            @NotNull
            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
            public AccessToken[] newArray(int i) {
                return new AccessToken[i];
            }

            @Override // android.os.Parcelable.Creator
            @NotNull
            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
            public AccessToken createFromParcel(@NotNull Parcel parcel) {
                return new AccessToken(parcel);
            }
        };
    }

    public /* synthetic */ AccessToken(String str, String str2, String str3, Collection collection, Collection collection2, Collection collection3, AccessTokenSource accessTokenSource, Date date, Date date2, Date date3, String str4, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, collection, collection2, collection3, accessTokenSource, date, date2, date3, (i & 1024) != 0 ? "facebook" : str4);
    }

    @JvmStatic
    @Nullable
    public static final AccessToken Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public final String Wwwwwwwwwwwwwwwww() {
        FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
        if (FacebookSdk.Kkkkkkkkkkkkkkkkkkkkkkkk(LoggingBehavior.INCLUDE_ACCESS_TOKENS)) {
            return this.f5876Wwwwwwwwwwwwwwwwwwwww;
        }
        return "ACCESS_TOKEN_REMOVED";
    }

    @NotNull
    public final JSONObject Wwwwwwwwwwwwwwwwww() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("version", 1);
        jSONObject.put(BidResponsed.KEY_TOKEN, this.f5876Wwwwwwwwwwwwwwwwwwwww);
        jSONObject.put("expires_at", this.f5880Wwwwwwwwwwwwwwwwwwwwwwwww.getTime());
        jSONObject.put("permissions", new JSONArray((Collection) this.f5879Wwwwwwwwwwwwwwwwwwwwwwww));
        jSONObject.put("declined_permissions", new JSONArray((Collection) this.f5878Wwwwwwwwwwwwwwwwwwwwwww));
        jSONObject.put("expired_permissions", new JSONArray((Collection) this.f5877Wwwwwwwwwwwwwwwwwwwwww));
        jSONObject.put("last_refresh", this.f5874Wwwwwwwwwwwwwwwwwww.getTime());
        jSONObject.put("source", this.f5875Wwwwwwwwwwwwwwwwwwww.name());
        jSONObject.put("application_id", this.f5873Wwwwwwwwwwwwwwwwww);
        jSONObject.put("user_id", this.f5872Wwwwwwwwwwwwwwwww);
        jSONObject.put("data_access_expiration_time", this.f5871Wwwwwwwwwwwwwwww.getTime());
        String str = this.f5870Wwwwwwwwwwwwwww;
        if (str != null) {
            jSONObject.put("graph_domain", str);
        }
        return jSONObject;
    }

    public final boolean Wwwwwwwwwwwwwwwwwww() {
        String str = this.f5870Wwwwwwwwwwwwwww;
        if (str != null && str.equals("instagram")) {
            return true;
        }
        return false;
    }

    public final boolean Wwwwwwwwwwwwwwwwwwww() {
        return new Date().after(this.f5880Wwwwwwwwwwwwwwwwwwwwwwwww);
    }

    @NotNull
    public final String Wwwwwwwwwwwwwwwwwwwww() {
        return this.f5872Wwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final String Wwwwwwwwwwwwwwwwwwwwww() {
        return this.f5876Wwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final AccessTokenSource Wwwwwwwwwwwwwwwwwwwwwww() {
        return this.f5875Wwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final Set<String> Wwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f5879Wwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final Date Wwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f5874Wwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public final String Wwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f5870Wwwwwwwwwwwwwww;
    }

    @NotNull
    public final Date Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f5880Wwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final Set<String> Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f5877Wwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final Set<String> Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f5878Wwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final Date Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f5871Wwwwwwwwwwwwwwww;
    }

    @NotNull
    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f5873Wwwwwwwwwwwwwwwwww;
    }

    public final AccessTokenSource Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(AccessTokenSource accessTokenSource, String str) {
        if (str != null && str.equals("instagram")) {
            int i = WhenMappings.$EnumSwitchMapping$0[accessTokenSource.ordinal()];
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        return accessTokenSource;
                    }
                    return AccessTokenSource.INSTAGRAM_WEB_VIEW;
                }
                return AccessTokenSource.INSTAGRAM_CUSTOM_CHROME_TAB;
            }
            return AccessTokenSource.INSTAGRAM_APPLICATION_WEB;
        }
        return accessTokenSource;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(StringBuilder sb) {
        sb.append(" permissions:");
        sb.append("[");
        sb.append(TextUtils.join(", ", this.f5879Wwwwwwwwwwwwwwwwwwwwwwww));
        sb.append("]");
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        boolean areEqual;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AccessToken)) {
            return false;
        }
        AccessToken accessToken = (AccessToken) obj;
        if (Intrinsics.areEqual(this.f5880Wwwwwwwwwwwwwwwwwwwwwwwww, accessToken.f5880Wwwwwwwwwwwwwwwwwwwwwwwww) && Intrinsics.areEqual(this.f5879Wwwwwwwwwwwwwwwwwwwwwwww, accessToken.f5879Wwwwwwwwwwwwwwwwwwwwwwww) && Intrinsics.areEqual(this.f5878Wwwwwwwwwwwwwwwwwwwwwww, accessToken.f5878Wwwwwwwwwwwwwwwwwwwwwww) && Intrinsics.areEqual(this.f5877Wwwwwwwwwwwwwwwwwwwwww, accessToken.f5877Wwwwwwwwwwwwwwwwwwwwww) && Intrinsics.areEqual(this.f5876Wwwwwwwwwwwwwwwwwwwww, accessToken.f5876Wwwwwwwwwwwwwwwwwwwww) && this.f5875Wwwwwwwwwwwwwwwwwwww == accessToken.f5875Wwwwwwwwwwwwwwwwwwww && Intrinsics.areEqual(this.f5874Wwwwwwwwwwwwwwwwwww, accessToken.f5874Wwwwwwwwwwwwwwwwwww) && Intrinsics.areEqual(this.f5873Wwwwwwwwwwwwwwwwww, accessToken.f5873Wwwwwwwwwwwwwwwwww) && Intrinsics.areEqual(this.f5872Wwwwwwwwwwwwwwwww, accessToken.f5872Wwwwwwwwwwwwwwwww) && Intrinsics.areEqual(this.f5871Wwwwwwwwwwwwwwww, accessToken.f5871Wwwwwwwwwwwwwwww)) {
            String str = this.f5870Wwwwwwwwwwwwwww;
            String str2 = accessToken.f5870Wwwwwwwwwwwwwww;
            if (str == null) {
                if (str2 == null) {
                    areEqual = true;
                } else {
                    areEqual = false;
                }
            } else {
                areEqual = Intrinsics.areEqual(str, str2);
            }
            if (areEqual) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2 = (((((((((((((((((((527 + this.f5880Wwwwwwwwwwwwwwwwwwwwwwwww.hashCode()) * 31) + this.f5879Wwwwwwwwwwwwwwwwwwwwwwww.hashCode()) * 31) + this.f5878Wwwwwwwwwwwwwwwwwwwwwww.hashCode()) * 31) + this.f5877Wwwwwwwwwwwwwwwwwwwwww.hashCode()) * 31) + this.f5876Wwwwwwwwwwwwwwwwwwwww.hashCode()) * 31) + this.f5875Wwwwwwwwwwwwwwwwwwww.hashCode()) * 31) + this.f5874Wwwwwwwwwwwwwwwwwww.hashCode()) * 31) + this.f5873Wwwwwwwwwwwwwwwwww.hashCode()) * 31) + this.f5872Wwwwwwwwwwwwwwwww.hashCode()) * 31) + this.f5871Wwwwwwwwwwwwwwww.hashCode()) * 31;
        String str = this.f5870Wwwwwwwwwwwwwww;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        return hashCode2 + hashCode;
    }

    @NotNull
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{AccessToken");
        sb.append(" token:");
        sb.append(Wwwwwwwwwwwwwwwww());
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(sb);
        sb.append("}");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NotNull Parcel parcel, int i) {
        parcel.writeLong(this.f5880Wwwwwwwwwwwwwwwwwwwwwwwww.getTime());
        parcel.writeStringList(new ArrayList(this.f5879Wwwwwwwwwwwwwwwwwwwwwwww));
        parcel.writeStringList(new ArrayList(this.f5878Wwwwwwwwwwwwwwwwwwwwwww));
        parcel.writeStringList(new ArrayList(this.f5877Wwwwwwwwwwwwwwwwwwwwww));
        parcel.writeString(this.f5876Wwwwwwwwwwwwwwwwwwwww);
        parcel.writeString(this.f5875Wwwwwwwwwwwwwwwwwwww.name());
        parcel.writeLong(this.f5874Wwwwwwwwwwwwwwwwwww.getTime());
        parcel.writeString(this.f5873Wwwwwwwwwwwwwwwwww);
        parcel.writeString(this.f5872Wwwwwwwwwwwwwwwww);
        parcel.writeLong(this.f5871Wwwwwwwwwwwwwwww.getTime());
        parcel.writeString(this.f5870Wwwwwwwwwwwwwww);
    }

    @JvmOverloads
    public AccessToken(@NotNull String str, @NotNull String str2, @NotNull String str3, @Nullable Collection<String> collection, @Nullable Collection<String> collection2, @Nullable Collection<String> collection3, @Nullable AccessTokenSource accessTokenSource, @Nullable Date date, @Nullable Date date2, @Nullable Date date3, @Nullable String str4) {
        Validate.Wwwwwwwwwwwwwwwwwwwwwwwww(str, "accessToken");
        Validate.Wwwwwwwwwwwwwwwwwwwwwwwww(str2, "applicationId");
        Validate.Wwwwwwwwwwwwwwwwwwwwwwwww(str3, VungleConstants.KEY_USER_ID);
        this.f5880Wwwwwwwwwwwwwwwwwwwwwwwww = date == null ? f5868Wwwwwwwwwwwww : date;
        this.f5879Wwwwwwwwwwwwwwwwwwwwwwww = Collections.unmodifiableSet(collection != null ? new HashSet(collection) : new HashSet());
        this.f5878Wwwwwwwwwwwwwwwwwwwwwww = Collections.unmodifiableSet(collection2 != null ? new HashSet(collection2) : new HashSet());
        this.f5877Wwwwwwwwwwwwwwwwwwwwww = Collections.unmodifiableSet(collection3 != null ? new HashSet(collection3) : new HashSet());
        this.f5876Wwwwwwwwwwwwwwwwwwwww = str;
        this.f5875Wwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(accessTokenSource == null ? f5866Wwwwwwwwwww : accessTokenSource, str4);
        this.f5874Wwwwwwwwwwwwwwwwwww = date2 == null ? f5867Wwwwwwwwwwww : date2;
        this.f5873Wwwwwwwwwwwwwwwwww = str2;
        this.f5872Wwwwwwwwwwwwwwwww = str3;
        this.f5871Wwwwwwwwwwwwwwww = (date3 == null || date3.getTime() == 0) ? f5868Wwwwwwwwwwwww : date3;
        this.f5870Wwwwwwwwwwwwwww = str4 == null ? "facebook" : str4;
    }

    public AccessToken(@NotNull Parcel parcel) {
        AccessTokenSource accessTokenSource;
        this.f5880Wwwwwwwwwwwwwwwwwwwwwwwww = new Date(parcel.readLong());
        ArrayList arrayList = new ArrayList();
        parcel.readStringList(arrayList);
        this.f5879Wwwwwwwwwwwwwwwwwwwwwwww = Collections.unmodifiableSet(new HashSet(arrayList));
        arrayList.clear();
        parcel.readStringList(arrayList);
        this.f5878Wwwwwwwwwwwwwwwwwwwwwww = Collections.unmodifiableSet(new HashSet(arrayList));
        arrayList.clear();
        parcel.readStringList(arrayList);
        this.f5877Wwwwwwwwwwwwwwwwwwwwww = Collections.unmodifiableSet(new HashSet(arrayList));
        this.f5876Wwwwwwwwwwwwwwwwwwwww = Validate.Wwwwwwwwwwwwwwwwwwwww(parcel.readString(), BidResponsed.KEY_TOKEN);
        String readString = parcel.readString();
        if (readString != null) {
            accessTokenSource = AccessTokenSource.valueOf(readString);
        } else {
            accessTokenSource = f5866Wwwwwwwwwww;
        }
        this.f5875Wwwwwwwwwwwwwwwwwwww = accessTokenSource;
        this.f5874Wwwwwwwwwwwwwwwwwww = new Date(parcel.readLong());
        this.f5873Wwwwwwwwwwwwwwwwww = Validate.Wwwwwwwwwwwwwwwwwwwww(parcel.readString(), "applicationId");
        this.f5872Wwwwwwwwwwwwwwwww = Validate.Wwwwwwwwwwwwwwwwwwwww(parcel.readString(), VungleConstants.KEY_USER_ID);
        this.f5871Wwwwwwwwwwwwwwww = new Date(parcel.readLong());
        this.f5870Wwwwwwwwwwwwwww = parcel.readString();
    }
}
