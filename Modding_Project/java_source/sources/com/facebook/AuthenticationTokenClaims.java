package com.facebook;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import androidx.annotation.VisibleForTesting;
import com.facebook.internal.Utility;
import com.facebook.internal.Validate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.IntCompanionObject;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.Charsets;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\t\n\u0002\b\t\n\u0002\u0010\u001e\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b'\n\u0002\u0010\"\n\u0002\b\u0014\u0018\u0000 h2\u00020\u0001:\u0001hB\u0019\b\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006B\u0087\u0002\b\u0017\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\r\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0002\u0012\u0010\b\u0002\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0015\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0002\u0012\u0016\b\u0002\u0010\u001a\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0019\u0018\u00010\u0018\u0012\u0016\b\u0002\u0010\u001b\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0018\u0012\u0016\b\u0002\u0010\u001c\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0018\u0012\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0005\u0010\u001fB\u0011\b\u0010\u0012\u0006\u0010!\u001a\u00020 ¢\u0006\u0004\b\u0005\u0010\"J\u001f\u0010&\u001a\u00020%2\u0006\u0010$\u001a\u00020#2\u0006\u0010\u0004\u001a\u00020\u0002H\u0002¢\u0006\u0004\b&\u0010'J\u001f\u0010+\u001a\u00020*2\u0006\u0010(\u001a\u00020 2\u0006\u0010)\u001a\u00020\u0019H\u0016¢\u0006\u0004\b+\u0010,J\u001a\u0010/\u001a\u00020%2\b\u0010.\u001a\u0004\u0018\u00010-H\u0096\u0002¢\u0006\u0004\b/\u00100J\u000f\u00101\u001a\u00020\u0019H\u0016¢\u0006\u0004\b1\u00102J\u000f\u00103\u001a\u00020\u0002H\u0016¢\u0006\u0004\b3\u00104J\u000f\u00105\u001a\u00020\u0019H\u0016¢\u0006\u0004\b5\u00102J\u000f\u00106\u001a\u00020#H\u0001¢\u0006\u0004\b6\u00107R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b8\u00109\u001a\u0004\b:\u00104R\u0017\u0010\b\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b;\u00109\u001a\u0004\b<\u00104R\u0017\u0010\t\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b=\u00109\u001a\u0004\b>\u00104R\u0017\u0010\n\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b?\u00109\u001a\u0004\b@\u00104R\u0017\u0010\f\u001a\u00020\u000b8\u0006¢\u0006\f\n\u0004\bA\u0010B\u001a\u0004\bC\u0010DR\u0017\u0010\r\u001a\u00020\u000b8\u0006¢\u0006\f\n\u0004\bE\u0010B\u001a\u0004\bF\u0010DR\u0017\u0010\u000e\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\bG\u00109\u001a\u0004\bH\u00104R\u0019\u0010\u000f\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\bI\u00109\u001a\u0004\bJ\u00104R\u0019\u0010\u0010\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\bK\u00109\u001a\u0004\bL\u00104R\u0019\u0010\u0011\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\bM\u00109\u001a\u0004\bN\u00104R\u0019\u0010\u0012\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\bO\u00109\u001a\u0004\bP\u00104R\u0019\u0010\u0013\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\bQ\u00109\u001a\u0004\bR\u00104R\u0019\u0010\u0014\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\bS\u00109\u001a\u0004\bT\u00104R\u001f\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010U8\u0006¢\u0006\f\n\u0004\bV\u0010W\u001a\u0004\bX\u0010YR\u0019\u0010\u0017\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\bZ\u00109\u001a\u0004\b[\u00104R%\u0010\u001a\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0019\u0018\u00010\u00188\u0006¢\u0006\f\n\u0004\b\\\u0010]\u001a\u0004\b^\u0010_R%\u0010\u001b\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00188\u0006¢\u0006\f\n\u0004\b`\u0010]\u001a\u0004\ba\u0010_R%\u0010\u001c\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00188\u0006¢\u0006\f\n\u0004\bb\u0010]\u001a\u0004\bc\u0010_R\u0019\u0010\u001d\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\bd\u00109\u001a\u0004\be\u00104R\u0019\u0010\u001e\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\bf\u00109\u001a\u0004\bg\u00104¨\u0006i"}, d2 = {"Lcom/facebook/AuthenticationTokenClaims;", "Landroid/os/Parcelable;", "", "encodedClaims", "expectedNonce", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "jti", "iss", "aud", "nonce", "", "exp", "iat", "sub", "name", "givenName", "middleName", "familyName", "email", "picture", "", "userFriends", "userBirthday", "", "", "userAgeRange", "userHometown", "userLocation", "userGender", "userLink", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V", "Landroid/os/Parcel;", "parcel", "(Landroid/os/Parcel;)V", "Lorg/json/JSONObject;", "claimsJson", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lorg/json/JSONObject;Ljava/lang/String;)Z", "dest", "flags", "", "writeToParcel", "(Landroid/os/Parcel;I)V", "", "other", "equals", "(Ljava/lang/Object;)Z", "hashCode", "()I", "toString", "()Ljava/lang/String;", "describeContents", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lorg/json/JSONObject;", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "getJti", "Wwwwwwwwwwwwwwwwwwwwwwww", "getIss", "Wwwwwwwwwwwwwwwwwwwwwww", "getAud", "Wwwwwwwwwwwwwwwwwwwwww", "getNonce", "Wwwwwwwwwwwwwwwwwwwww", "J", "getExp", "()J", "Wwwwwwwwwwwwwwwwwwww", "getIat", "Wwwwwwwwwwwwwwwwwww", "getSub", "Wwwwwwwwwwwwwwwwww", "getName", "Wwwwwwwwwwwwwwwww", "getGivenName", "Wwwwwwwwwwwwwwww", "getMiddleName", "Wwwwwwwwwwwwwww", "getFamilyName", "Wwwwwwwwwwwwww", "getEmail", "Wwwwwwwwwwwww", "getPicture", "", "Wwwwwwwwwwww", "Ljava/util/Set;", "getUserFriends", "()Ljava/util/Set;", "Wwwwwwwwwww", "getUserBirthday", "Wwwwwwwwww", "Ljava/util/Map;", "getUserAgeRange", "()Ljava/util/Map;", "Wwwwwwwww", "getUserHometown", "Wwwwwwww", "getUserLocation", "Wwwwwww", "getUserGender", "Wwwwww", "getUserLink", "Companion", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class AuthenticationTokenClaims implements Parcelable {
    @Nullable

    /* renamed from: Wwwwww  reason: collision with root package name */
    public final String f5913Wwwwww;
    @Nullable

    /* renamed from: Wwwwwww  reason: collision with root package name */
    public final String f5914Wwwwwww;
    @Nullable

    /* renamed from: Wwwwwwww  reason: collision with root package name */
    public final Map<String, String> f5915Wwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwww  reason: collision with root package name */
    public final Map<String, String> f5916Wwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwww  reason: collision with root package name */
    public final Map<String, Integer> f5917Wwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwww  reason: collision with root package name */
    public final String f5918Wwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwww  reason: collision with root package name */
    public final Set<String> f5919Wwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwww  reason: collision with root package name */
    public final String f5920Wwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwww  reason: collision with root package name */
    public final String f5921Wwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f5922Wwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f5923Wwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f5924Wwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f5925Wwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f5926Wwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final long f5927Wwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final long f5928Wwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f5929Wwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f5930Wwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f5931Wwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f5932Wwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @JvmField
    @NotNull
    public static final Parcelable.Creator<AuthenticationTokenClaims> CREATOR = new Parcelable.Creator<AuthenticationTokenClaims>() { // from class: com.facebook.AuthenticationTokenClaims$Companion$CREATOR$1
        @Override // android.os.Parcelable.Creator
        @NotNull
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public AuthenticationTokenClaims[] newArray(int i) {
            return new AuthenticationTokenClaims[i];
        }

        @Override // android.os.Parcelable.Creator
        @NotNull
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public AuthenticationTokenClaims createFromParcel(@NotNull Parcel parcel) {
            return new AuthenticationTokenClaims(parcel);
        }
    };

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0010\t\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001d\u0010\u0007\u001a\u0004\u0018\u00010\u0005*\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0005H\u0000¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0004H\u0001¢\u0006\u0004\b\u000b\u0010\fR\u001a\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\n0\r8\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0010\u001a\u00020\u00058\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0012\u001a\u00020\u00058\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0012\u0010\u0011R\u0014\u0010\u0013\u001a\u00020\u00058\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0013\u0010\u0011R\u0014\u0010\u0014\u001a\u00020\u00058\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0014\u0010\u0011R\u0014\u0010\u0015\u001a\u00020\u00058\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0015\u0010\u0011R\u0014\u0010\u0016\u001a\u00020\u00058\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0016\u0010\u0011R\u0014\u0010\u0017\u001a\u00020\u00058\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0017\u0010\u0011R\u0014\u0010\u0018\u001a\u00020\u00058\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0018\u0010\u0011R\u0014\u0010\u0019\u001a\u00020\u00058\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0019\u0010\u0011R\u0014\u0010\u001a\u001a\u00020\u00058\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u001a\u0010\u0011R\u0014\u0010\u001b\u001a\u00020\u00058\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u001b\u0010\u0011R\u0014\u0010\u001c\u001a\u00020\u00058\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u001c\u0010\u0011R\u0014\u0010\u001d\u001a\u00020\u00058\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u001d\u0010\u0011R\u0014\u0010\u001e\u001a\u00020\u00058\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u001e\u0010\u0011R\u0014\u0010\u001f\u001a\u00020\u00058\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u001f\u0010\u0011R\u0014\u0010 \u001a\u00020\u00058\u0006X\u0086T¢\u0006\u0006\n\u0004\b \u0010\u0011R\u0014\u0010!\u001a\u00020\u00058\u0006X\u0086T¢\u0006\u0006\n\u0004\b!\u0010\u0011R\u0014\u0010\"\u001a\u00020\u00058\u0006X\u0086T¢\u0006\u0006\n\u0004\b\"\u0010\u0011R\u0014\u0010#\u001a\u00020\u00058\u0006X\u0086T¢\u0006\u0006\n\u0004\b#\u0010\u0011R\u0014\u0010$\u001a\u00020\u00058\u0006X\u0086T¢\u0006\u0006\n\u0004\b$\u0010\u0011R\u0014\u0010&\u001a\u00020%8\u0006X\u0086T¢\u0006\u0006\n\u0004\b&\u0010'¨\u0006("}, d2 = {"Lcom/facebook/AuthenticationTokenClaims$Companion;", "", "<init>", "()V", "Lorg/json/JSONObject;", "", "name", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;", "jsonObject", "Lcom/facebook/AuthenticationTokenClaims;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lorg/json/JSONObject;)Lcom/facebook/AuthenticationTokenClaims;", "Landroid/os/Parcelable$Creator;", "CREATOR", "Landroid/os/Parcelable$Creator;", "JSON_KEY_AUD", "Ljava/lang/String;", "JSON_KEY_EMAIL", "JSON_KEY_EXP", "JSON_KEY_FAMILY_NAME", "JSON_KEY_GIVEN_NAME", "JSON_KEY_IAT", "JSON_KEY_ISS", "JSON_KEY_JIT", "JSON_KEY_MIDDLE_NAME", "JSON_KEY_NAME", "JSON_KEY_NONCE", "JSON_KEY_PICTURE", "JSON_KEY_SUB", "JSON_KEY_USER_AGE_RANGE", "JSON_KEY_USER_BIRTHDAY", "JSON_KEY_USER_FRIENDS", "JSON_KEY_USER_GENDER", "JSON_KEY_USER_HOMETOWN", "JSON_KEY_USER_LINK", "JSON_KEY_USER_LOCATION", "", "MAX_TIME_SINCE_TOKEN_ISSUED", "J", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Nullable
        public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull JSONObject jSONObject, @NotNull String str) {
            if (jSONObject.has(str)) {
                return jSONObject.getString(str);
            }
            return null;
        }

        @JvmStatic
        @NotNull
        public final AuthenticationTokenClaims Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull JSONObject jSONObject) throws JSONException {
            List<String> Illlllllllllllllllllllllll;
            Map<String, Object> Wwwwwwwwwwwwwwwwwwww2;
            Map<String, String> Wwwwwwwwwwwwwwwwwww2;
            String string = jSONObject.getString("jti");
            String string2 = jSONObject.getString("iss");
            String string3 = jSONObject.getString("aud");
            String string4 = jSONObject.getString("nonce");
            long j = jSONObject.getLong("exp");
            long j2 = jSONObject.getLong("iat");
            String string5 = jSONObject.getString("sub");
            String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject, "name");
            String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject, "given_name");
            String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject, "middle_name");
            String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww5 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject, "family_name");
            String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww6 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject, "email");
            String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww7 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject, "picture");
            JSONArray optJSONArray = jSONObject.optJSONArray("user_friends");
            String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww8 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject, "user_birthday");
            JSONObject optJSONObject = jSONObject.optJSONObject("user_age_range");
            JSONObject optJSONObject2 = jSONObject.optJSONObject("user_hometown");
            JSONObject optJSONObject3 = jSONObject.optJSONObject("user_location");
            String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww9 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject, "user_gender");
            String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww10 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject, "user_link");
            Map<String, String> map = null;
            if (optJSONArray == null) {
                Illlllllllllllllllllllllll = null;
            } else {
                Illlllllllllllllllllllllll = Utility.Illlllllllllllllllllllllll(optJSONArray);
            }
            List<String> list = Illlllllllllllllllllllllll;
            if (optJSONObject == null) {
                Wwwwwwwwwwwwwwwwwwww2 = null;
            } else {
                Wwwwwwwwwwwwwwwwwwww2 = Utility.Wwwwwwwwwwwwwwwwwwww(optJSONObject);
            }
            if (optJSONObject2 == null) {
                Wwwwwwwwwwwwwwwwwww2 = null;
            } else {
                Wwwwwwwwwwwwwwwwwww2 = Utility.Wwwwwwwwwwwwwwwwwww(optJSONObject2);
            }
            if (optJSONObject3 != null) {
                map = Utility.Wwwwwwwwwwwwwwwwwww(optJSONObject3);
            }
            return new AuthenticationTokenClaims(string, string2, string3, string4, j, j2, string5, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww5, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww6, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww7, list, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww8, Wwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwww2, map, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww9, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww10);
        }

        public Companion() {
        }
    }

    @JvmOverloads
    public AuthenticationTokenClaims(@NotNull String str, @NotNull String str2) {
        Validate.Wwwwwwwwwwwwwwwwwwwwwwwww(str, "encodedClaims");
        JSONObject jSONObject = new JSONObject(new String(Base64.decode(str, 8), Charsets.UTF_8));
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject, str2)) {
            this.f5932Wwwwwwwwwwwwwwwwwwwwwwwww = jSONObject.getString("jti");
            this.f5931Wwwwwwwwwwwwwwwwwwwwwwww = jSONObject.getString("iss");
            this.f5930Wwwwwwwwwwwwwwwwwwwwwww = jSONObject.getString("aud");
            this.f5929Wwwwwwwwwwwwwwwwwwwwww = jSONObject.getString("nonce");
            this.f5928Wwwwwwwwwwwwwwwwwwwww = jSONObject.getLong("exp");
            this.f5927Wwwwwwwwwwwwwwwwwwww = jSONObject.getLong("iat");
            this.f5926Wwwwwwwwwwwwwwwwwww = jSONObject.getString("sub");
            Companion companion = Companion;
            this.f5925Wwwwwwwwwwwwwwwwww = companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject, "name");
            this.f5924Wwwwwwwwwwwwwwwww = companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject, "given_name");
            this.f5923Wwwwwwwwwwwwwwww = companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject, "middle_name");
            this.f5922Wwwwwwwwwwwwwww = companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject, "family_name");
            this.f5921Wwwwwwwwwwwwww = companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject, "email");
            this.f5920Wwwwwwwwwwwww = companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject, "picture");
            JSONArray optJSONArray = jSONObject.optJSONArray("user_friends");
            this.f5919Wwwwwwwwwwww = optJSONArray == null ? null : Collections.unmodifiableSet(Utility.Illllllllllllllllllllllllll(optJSONArray));
            this.f5918Wwwwwwwwwww = companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject, "user_birthday");
            JSONObject optJSONObject = jSONObject.optJSONObject("user_age_range");
            this.f5917Wwwwwwwwww = optJSONObject == null ? null : Collections.unmodifiableMap(Utility.Wwwwwwwwwwwwwwwwwwww(optJSONObject));
            JSONObject optJSONObject2 = jSONObject.optJSONObject("user_hometown");
            this.f5916Wwwwwwwww = optJSONObject2 == null ? null : Collections.unmodifiableMap(Utility.Wwwwwwwwwwwwwwwwwww(optJSONObject2));
            JSONObject optJSONObject3 = jSONObject.optJSONObject("user_location");
            this.f5915Wwwwwwww = optJSONObject3 != null ? Collections.unmodifiableMap(Utility.Wwwwwwwwwwwwwwwwwww(optJSONObject3)) : null;
            this.f5914Wwwwwww = companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject, "user_gender");
            this.f5913Wwwwww = companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject, "user_link");
            return;
        }
        throw new IllegalArgumentException("Invalid claims");
    }

    @VisibleForTesting(otherwise = 2)
    @NotNull
    public final JSONObject Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("jti", this.f5932Wwwwwwwwwwwwwwwwwwwwwwwww);
        jSONObject.put("iss", this.f5931Wwwwwwwwwwwwwwwwwwwwwwww);
        jSONObject.put("aud", this.f5930Wwwwwwwwwwwwwwwwwwwwwww);
        jSONObject.put("nonce", this.f5929Wwwwwwwwwwwwwwwwwwwwww);
        jSONObject.put("exp", this.f5928Wwwwwwwwwwwwwwwwwwwww);
        jSONObject.put("iat", this.f5927Wwwwwwwwwwwwwwwwwwww);
        String str = this.f5926Wwwwwwwwwwwwwwwwwww;
        if (str != null) {
            jSONObject.put("sub", str);
        }
        String str2 = this.f5925Wwwwwwwwwwwwwwwwww;
        if (str2 != null) {
            jSONObject.put("name", str2);
        }
        String str3 = this.f5924Wwwwwwwwwwwwwwwww;
        if (str3 != null) {
            jSONObject.put("given_name", str3);
        }
        String str4 = this.f5923Wwwwwwwwwwwwwwww;
        if (str4 != null) {
            jSONObject.put("middle_name", str4);
        }
        String str5 = this.f5922Wwwwwwwwwwwwwww;
        if (str5 != null) {
            jSONObject.put("family_name", str5);
        }
        String str6 = this.f5921Wwwwwwwwwwwwww;
        if (str6 != null) {
            jSONObject.put("email", str6);
        }
        String str7 = this.f5920Wwwwwwwwwwwww;
        if (str7 != null) {
            jSONObject.put("picture", str7);
        }
        if (this.f5919Wwwwwwwwwwww != null) {
            jSONObject.put("user_friends", new JSONArray((Collection) this.f5919Wwwwwwwwwwww));
        }
        String str8 = this.f5918Wwwwwwwwwww;
        if (str8 != null) {
            jSONObject.put("user_birthday", str8);
        }
        if (this.f5917Wwwwwwwwww != null) {
            jSONObject.put("user_age_range", new JSONObject(this.f5917Wwwwwwwwww));
        }
        if (this.f5916Wwwwwwwww != null) {
            jSONObject.put("user_hometown", new JSONObject(this.f5916Wwwwwwwww));
        }
        if (this.f5915Wwwwwwww != null) {
            jSONObject.put("user_location", new JSONObject(this.f5915Wwwwwwww));
        }
        String str9 = this.f5914Wwwwwww;
        if (str9 != null) {
            jSONObject.put("user_gender", str9);
        }
        String str10 = this.f5913Wwwwww;
        if (str10 != null) {
            jSONObject.put("user_link", str10);
        }
        return jSONObject;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x003e, code lost:
        if (kotlin.jvm.internal.Intrinsics.areEqual(new java.net.URL(r1).getHost(), "www.facebook.com") == false) goto L12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(org.json.JSONObject r7, java.lang.String r8) {
        /*
            r6 = this;
            r0 = 0
            if (r7 != 0) goto L4
            return r0
        L4:
            java.lang.String r1 = "jti"
            java.lang.String r1 = r7.optString(r1)
            int r1 = r1.length()
            if (r1 != 0) goto L11
            return r0
        L11:
            java.lang.String r1 = "iss"
            java.lang.String r1 = r7.optString(r1)     // Catch: java.net.MalformedURLException -> Lb3
            int r2 = r1.length()     // Catch: java.net.MalformedURLException -> Lb3
            if (r2 != 0) goto L1e
            goto L40
        L1e:
            java.net.URL r2 = new java.net.URL     // Catch: java.net.MalformedURLException -> Lb3
            r2.<init>(r1)     // Catch: java.net.MalformedURLException -> Lb3
            java.lang.String r2 = r2.getHost()     // Catch: java.net.MalformedURLException -> Lb3
            java.lang.String r3 = "facebook.com"
            boolean r2 = kotlin.jvm.internal.Intrinsics.areEqual(r2, r3)     // Catch: java.net.MalformedURLException -> Lb3
            if (r2 != 0) goto L41
            java.net.URL r2 = new java.net.URL     // Catch: java.net.MalformedURLException -> Lb3
            r2.<init>(r1)     // Catch: java.net.MalformedURLException -> Lb3
            java.lang.String r1 = r2.getHost()     // Catch: java.net.MalformedURLException -> Lb3
            java.lang.String r2 = "www.facebook.com"
            boolean r1 = kotlin.jvm.internal.Intrinsics.areEqual(r1, r2)     // Catch: java.net.MalformedURLException -> Lb3
            if (r1 != 0) goto L41
        L40:
            return r0
        L41:
            java.lang.String r1 = "aud"
            java.lang.String r1 = r7.optString(r1)
            int r2 = r1.length()
            if (r2 != 0) goto L4e
            goto L58
        L4e:
            java.lang.String r2 = com.facebook.FacebookSdk.Wwwwwwwwwwwwwwwwwwwwww()
            boolean r1 = kotlin.jvm.internal.Intrinsics.areEqual(r1, r2)
            if (r1 != 0) goto L59
        L58:
            return r0
        L59:
            java.util.Date r1 = new java.util.Date
            java.lang.String r2 = "exp"
            long r2 = r7.optLong(r2)
            r4 = 1000(0x3e8, float:1.401E-42)
            long r4 = (long) r4
            long r2 = r2 * r4
            r1.<init>(r2)
            java.util.Date r2 = new java.util.Date
            r2.<init>()
            boolean r1 = r2.after(r1)
            if (r1 == 0) goto L74
            return r0
        L74:
            java.lang.String r1 = "iat"
            long r1 = r7.optLong(r1)
            java.util.Date r3 = new java.util.Date
            long r1 = r1 * r4
            r4 = 600000(0x927c0, double:2.964394E-318)
            long r1 = r1 + r4
            r3.<init>(r1)
            java.util.Date r1 = new java.util.Date
            r1.<init>()
            boolean r1 = r1.after(r3)
            if (r1 == 0) goto L90
            return r0
        L90:
            java.lang.String r1 = "sub"
            java.lang.String r1 = r7.optString(r1)
            int r1 = r1.length()
            if (r1 != 0) goto L9d
            return r0
        L9d:
            java.lang.String r1 = "nonce"
            java.lang.String r7 = r7.optString(r1)
            int r1 = r7.length()
            if (r1 != 0) goto Laa
            goto Lb0
        Laa:
            boolean r7 = kotlin.jvm.internal.Intrinsics.areEqual(r7, r8)
            if (r7 != 0) goto Lb1
        Lb0:
            return r0
        Lb1:
            r7 = 1
            return r7
        Lb3:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.AuthenticationTokenClaims.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(org.json.JSONObject, java.lang.String):boolean");
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AuthenticationTokenClaims)) {
            return false;
        }
        AuthenticationTokenClaims authenticationTokenClaims = (AuthenticationTokenClaims) obj;
        if (Intrinsics.areEqual(this.f5932Wwwwwwwwwwwwwwwwwwwwwwwww, authenticationTokenClaims.f5932Wwwwwwwwwwwwwwwwwwwwwwwww) && Intrinsics.areEqual(this.f5931Wwwwwwwwwwwwwwwwwwwwwwww, authenticationTokenClaims.f5931Wwwwwwwwwwwwwwwwwwwwwwww) && Intrinsics.areEqual(this.f5930Wwwwwwwwwwwwwwwwwwwwwww, authenticationTokenClaims.f5930Wwwwwwwwwwwwwwwwwwwwwww) && Intrinsics.areEqual(this.f5929Wwwwwwwwwwwwwwwwwwwwww, authenticationTokenClaims.f5929Wwwwwwwwwwwwwwwwwwwwww) && this.f5928Wwwwwwwwwwwwwwwwwwwww == authenticationTokenClaims.f5928Wwwwwwwwwwwwwwwwwwwww && this.f5927Wwwwwwwwwwwwwwwwwwww == authenticationTokenClaims.f5927Wwwwwwwwwwwwwwwwwwww && Intrinsics.areEqual(this.f5926Wwwwwwwwwwwwwwwwwww, authenticationTokenClaims.f5926Wwwwwwwwwwwwwwwwwww) && Intrinsics.areEqual(this.f5925Wwwwwwwwwwwwwwwwww, authenticationTokenClaims.f5925Wwwwwwwwwwwwwwwwww) && Intrinsics.areEqual(this.f5924Wwwwwwwwwwwwwwwww, authenticationTokenClaims.f5924Wwwwwwwwwwwwwwwww) && Intrinsics.areEqual(this.f5923Wwwwwwwwwwwwwwww, authenticationTokenClaims.f5923Wwwwwwwwwwwwwwww) && Intrinsics.areEqual(this.f5922Wwwwwwwwwwwwwww, authenticationTokenClaims.f5922Wwwwwwwwwwwwwww) && Intrinsics.areEqual(this.f5921Wwwwwwwwwwwwww, authenticationTokenClaims.f5921Wwwwwwwwwwwwww) && Intrinsics.areEqual(this.f5920Wwwwwwwwwwwww, authenticationTokenClaims.f5920Wwwwwwwwwwwww) && Intrinsics.areEqual(this.f5919Wwwwwwwwwwww, authenticationTokenClaims.f5919Wwwwwwwwwwww) && Intrinsics.areEqual(this.f5918Wwwwwwwwwww, authenticationTokenClaims.f5918Wwwwwwwwwww) && Intrinsics.areEqual(this.f5917Wwwwwwwwww, authenticationTokenClaims.f5917Wwwwwwwwww) && Intrinsics.areEqual(this.f5916Wwwwwwwww, authenticationTokenClaims.f5916Wwwwwwwww) && Intrinsics.areEqual(this.f5915Wwwwwwww, authenticationTokenClaims.f5915Wwwwwwww) && Intrinsics.areEqual(this.f5914Wwwwwww, authenticationTokenClaims.f5914Wwwwwww) && Intrinsics.areEqual(this.f5913Wwwwww, authenticationTokenClaims.f5913Wwwwww)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        int hashCode4;
        int hashCode5;
        int hashCode6;
        int hashCode7;
        int hashCode8;
        int hashCode9;
        int hashCode10;
        int hashCode11;
        int hashCode12;
        int hashCode13 = (((((((((((((527 + this.f5932Wwwwwwwwwwwwwwwwwwwwwwwww.hashCode()) * 31) + this.f5931Wwwwwwwwwwwwwwwwwwwwwwww.hashCode()) * 31) + this.f5930Wwwwwwwwwwwwwwwwwwwwwww.hashCode()) * 31) + this.f5929Wwwwwwwwwwwwwwwwwwwwww.hashCode()) * 31) + androidx.collection.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f5928Wwwwwwwwwwwwwwwwwwwww)) * 31) + androidx.collection.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f5927Wwwwwwwwwwwwwwwwwwww)) * 31) + this.f5926Wwwwwwwwwwwwwwwwwww.hashCode()) * 31;
        String str = this.f5925Wwwwwwwwwwwwwwwwww;
        int i = 0;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        int i2 = (hashCode13 + hashCode) * 31;
        String str2 = this.f5924Wwwwwwwwwwwwwwwww;
        if (str2 == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = str2.hashCode();
        }
        int i3 = (i2 + hashCode2) * 31;
        String str3 = this.f5923Wwwwwwwwwwwwwwww;
        if (str3 == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = str3.hashCode();
        }
        int i4 = (i3 + hashCode3) * 31;
        String str4 = this.f5922Wwwwwwwwwwwwwww;
        if (str4 == null) {
            hashCode4 = 0;
        } else {
            hashCode4 = str4.hashCode();
        }
        int i5 = (i4 + hashCode4) * 31;
        String str5 = this.f5921Wwwwwwwwwwwwww;
        if (str5 == null) {
            hashCode5 = 0;
        } else {
            hashCode5 = str5.hashCode();
        }
        int i6 = (i5 + hashCode5) * 31;
        String str6 = this.f5920Wwwwwwwwwwwww;
        if (str6 == null) {
            hashCode6 = 0;
        } else {
            hashCode6 = str6.hashCode();
        }
        int i7 = (i6 + hashCode6) * 31;
        Set<String> set = this.f5919Wwwwwwwwwwww;
        if (set == null) {
            hashCode7 = 0;
        } else {
            hashCode7 = set.hashCode();
        }
        int i8 = (i7 + hashCode7) * 31;
        String str7 = this.f5918Wwwwwwwwwww;
        if (str7 == null) {
            hashCode8 = 0;
        } else {
            hashCode8 = str7.hashCode();
        }
        int i9 = (i8 + hashCode8) * 31;
        Map<String, Integer> map = this.f5917Wwwwwwwwww;
        if (map == null) {
            hashCode9 = 0;
        } else {
            hashCode9 = map.hashCode();
        }
        int i10 = (i9 + hashCode9) * 31;
        Map<String, String> map2 = this.f5916Wwwwwwwww;
        if (map2 == null) {
            hashCode10 = 0;
        } else {
            hashCode10 = map2.hashCode();
        }
        int i11 = (i10 + hashCode10) * 31;
        Map<String, String> map3 = this.f5915Wwwwwwww;
        if (map3 == null) {
            hashCode11 = 0;
        } else {
            hashCode11 = map3.hashCode();
        }
        int i12 = (i11 + hashCode11) * 31;
        String str8 = this.f5914Wwwwwww;
        if (str8 == null) {
            hashCode12 = 0;
        } else {
            hashCode12 = str8.hashCode();
        }
        int i13 = (i12 + hashCode12) * 31;
        String str9 = this.f5913Wwwwww;
        if (str9 != null) {
            i = str9.hashCode();
        }
        return i13 + i;
    }

    @NotNull
    public String toString() {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NotNull Parcel parcel, int i) {
        parcel.writeString(this.f5932Wwwwwwwwwwwwwwwwwwwwwwwww);
        parcel.writeString(this.f5931Wwwwwwwwwwwwwwwwwwwwwwww);
        parcel.writeString(this.f5930Wwwwwwwwwwwwwwwwwwwwwww);
        parcel.writeString(this.f5929Wwwwwwwwwwwwwwwwwwwwww);
        parcel.writeLong(this.f5928Wwwwwwwwwwwwwwwwwwwww);
        parcel.writeLong(this.f5927Wwwwwwwwwwwwwwwwwwww);
        parcel.writeString(this.f5926Wwwwwwwwwwwwwwwwwww);
        parcel.writeString(this.f5925Wwwwwwwwwwwwwwwwww);
        parcel.writeString(this.f5924Wwwwwwwwwwwwwwwww);
        parcel.writeString(this.f5923Wwwwwwwwwwwwwwww);
        parcel.writeString(this.f5922Wwwwwwwwwwwwwww);
        parcel.writeString(this.f5921Wwwwwwwwwwwwww);
        parcel.writeString(this.f5920Wwwwwwwwwwwww);
        if (this.f5919Wwwwwwwwwwww == null) {
            parcel.writeStringList(null);
        } else {
            parcel.writeStringList(new ArrayList(this.f5919Wwwwwwwwwwww));
        }
        parcel.writeString(this.f5918Wwwwwwwwwww);
        parcel.writeMap(this.f5917Wwwwwwwwww);
        parcel.writeMap(this.f5916Wwwwwwwww);
        parcel.writeMap(this.f5915Wwwwwwww);
        parcel.writeString(this.f5914Wwwwwww);
        parcel.writeString(this.f5913Wwwwww);
    }

    @JvmOverloads
    @VisibleForTesting(otherwise = 2)
    public AuthenticationTokenClaims(@NotNull String str, @NotNull String str2, @NotNull String str3, @NotNull String str4, long j, long j2, @NotNull String str5, @Nullable String str6, @Nullable String str7, @Nullable String str8, @Nullable String str9, @Nullable String str10, @Nullable String str11, @Nullable Collection<String> collection, @Nullable String str12, @Nullable Map<String, Integer> map, @Nullable Map<String, String> map2, @Nullable Map<String, String> map3, @Nullable String str13, @Nullable String str14) {
        Validate.Wwwwwwwwwwwwwwwwwwwwwwwww(str, "jti");
        Validate.Wwwwwwwwwwwwwwwwwwwwwwwww(str2, "iss");
        Validate.Wwwwwwwwwwwwwwwwwwwwwwwww(str3, "aud");
        Validate.Wwwwwwwwwwwwwwwwwwwwwwwww(str4, "nonce");
        Validate.Wwwwwwwwwwwwwwwwwwwwwwwww(str5, "sub");
        this.f5932Wwwwwwwwwwwwwwwwwwwwwwwww = str;
        this.f5931Wwwwwwwwwwwwwwwwwwwwwwww = str2;
        this.f5930Wwwwwwwwwwwwwwwwwwwwwww = str3;
        this.f5929Wwwwwwwwwwwwwwwwwwwwww = str4;
        this.f5928Wwwwwwwwwwwwwwwwwwwww = j;
        this.f5927Wwwwwwwwwwwwwwwwwwww = j2;
        this.f5926Wwwwwwwwwwwwwwwwwww = str5;
        this.f5925Wwwwwwwwwwwwwwwwww = str6;
        this.f5924Wwwwwwwwwwwwwwwww = str7;
        this.f5923Wwwwwwwwwwwwwwww = str8;
        this.f5922Wwwwwwwwwwwwwww = str9;
        this.f5921Wwwwwwwwwwwwww = str10;
        this.f5920Wwwwwwwwwwwww = str11;
        this.f5919Wwwwwwwwwwww = collection != null ? Collections.unmodifiableSet(new HashSet(collection)) : null;
        this.f5918Wwwwwwwwwww = str12;
        this.f5917Wwwwwwwwww = map != null ? Collections.unmodifiableMap(new HashMap(map)) : null;
        this.f5916Wwwwwwwww = map2 != null ? Collections.unmodifiableMap(new HashMap(map2)) : null;
        this.f5915Wwwwwwww = map3 != null ? Collections.unmodifiableMap(new HashMap(map3)) : null;
        this.f5914Wwwwwww = str13;
        this.f5913Wwwwww = str14;
    }

    public AuthenticationTokenClaims(@NotNull Parcel parcel) {
        this.f5932Wwwwwwwwwwwwwwwwwwwwwwwww = Validate.Wwwwwwwwwwwwwwwwwwwww(parcel.readString(), "jti");
        this.f5931Wwwwwwwwwwwwwwwwwwwwwwww = Validate.Wwwwwwwwwwwwwwwwwwwww(parcel.readString(), "iss");
        this.f5930Wwwwwwwwwwwwwwwwwwwwwww = Validate.Wwwwwwwwwwwwwwwwwwwww(parcel.readString(), "aud");
        this.f5929Wwwwwwwwwwwwwwwwwwwwww = Validate.Wwwwwwwwwwwwwwwwwwwww(parcel.readString(), "nonce");
        this.f5928Wwwwwwwwwwwwwwwwwwwww = parcel.readLong();
        this.f5927Wwwwwwwwwwwwwwwwwwww = parcel.readLong();
        this.f5926Wwwwwwwwwwwwwwwwwww = Validate.Wwwwwwwwwwwwwwwwwwwww(parcel.readString(), "sub");
        this.f5925Wwwwwwwwwwwwwwwwww = parcel.readString();
        this.f5924Wwwwwwwwwwwwwwwww = parcel.readString();
        this.f5923Wwwwwwwwwwwwwwww = parcel.readString();
        this.f5922Wwwwwwwwwwwwwww = parcel.readString();
        this.f5921Wwwwwwwwwwwwww = parcel.readString();
        this.f5920Wwwwwwwwwwwww = parcel.readString();
        ArrayList<String> createStringArrayList = parcel.createStringArrayList();
        this.f5919Wwwwwwwwwwww = createStringArrayList != null ? Collections.unmodifiableSet(new HashSet(createStringArrayList)) : null;
        this.f5918Wwwwwwwwwww = parcel.readString();
        HashMap readHashMap = parcel.readHashMap(IntCompanionObject.INSTANCE.getClass().getClassLoader());
        readHashMap = androidx.activity.Wwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(readHashMap) ? readHashMap : null;
        this.f5917Wwwwwwwwww = readHashMap != null ? Collections.unmodifiableMap(readHashMap) : null;
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        HashMap readHashMap2 = parcel.readHashMap(stringCompanionObject.getClass().getClassLoader());
        readHashMap2 = androidx.activity.Wwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(readHashMap2) ? readHashMap2 : null;
        this.f5916Wwwwwwwww = readHashMap2 != null ? Collections.unmodifiableMap(readHashMap2) : null;
        HashMap readHashMap3 = parcel.readHashMap(stringCompanionObject.getClass().getClassLoader());
        readHashMap3 = androidx.activity.Wwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(readHashMap3) ? readHashMap3 : null;
        this.f5915Wwwwwwww = readHashMap3 != null ? Collections.unmodifiableMap(readHashMap3) : null;
        this.f5914Wwwwwww = parcel.readString();
        this.f5913Wwwwww = parcel.readString();
    }
}
