package com.facebook;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.internal.Validate;
import com.facebook.internal.security.OidcSecurityUtil;
import com.mbridge.msdk.mbbid.out.BidResponsed;
import com.unity3d.ads.metadata.InAppPurchaseMetaData;
import java.io.IOException;
import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u0000 82\u00020\u0001:\u00018B\u0019\b\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006B\u0011\b\u0010\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\u0005\u0010\tB\u0011\b\u0010\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\u0005\u0010\fJ\u000f\u0010\r\u001a\u00020\nH\u0000¢\u0006\u0004\b\r\u0010\u000eJ\u001a\u0010\u0012\u001a\u00020\u00112\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0096\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u001f\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0018\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u001c\u0010\u0016J/\u0010!\u001a\u00020\u00112\u0006\u0010\u001d\u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020\u00022\u0006\u0010\u001f\u001a\u00020\u00022\u0006\u0010 \u001a\u00020\u0002H\u0002¢\u0006\u0004\b!\u0010\"R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b#\u0010$\u001a\u0004\b%\u0010&R\u0017\u0010\u0004\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b'\u0010$\u001a\u0004\b(\u0010&R\u0017\u0010.\u001a\u00020)8\u0006¢\u0006\f\n\u0004\b*\u0010+\u001a\u0004\b,\u0010-R\u0017\u00104\u001a\u00020/8\u0006¢\u0006\f\n\u0004\b0\u00101\u001a\u0004\b2\u00103R\u0017\u00107\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b5\u0010$\u001a\u0004\b6\u0010&¨\u00069"}, d2 = {"Lcom/facebook/AuthenticationToken;", "Landroid/os/Parcelable;", "", BidResponsed.KEY_TOKEN, "expectedNonce", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "Landroid/os/Parcel;", "parcel", "(Landroid/os/Parcel;)V", "Lorg/json/JSONObject;", "jsonObject", "(Lorg/json/JSONObject;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lorg/json/JSONObject;", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "dest", "flags", "", "writeToParcel", "(Landroid/os/Parcel;I)V", "describeContents", "headerString", "claimsString", "sigString", "kid", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "getToken", "()Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwww", "getExpectedNonce", "Lcom/facebook/AuthenticationTokenHeader;", "Wwwwwwwwwwwwwwwwwwwwwww", "Lcom/facebook/AuthenticationTokenHeader;", "getHeader", "()Lcom/facebook/AuthenticationTokenHeader;", "header", "Lcom/facebook/AuthenticationTokenClaims;", "Wwwwwwwwwwwwwwwwwwwwww", "Lcom/facebook/AuthenticationTokenClaims;", "getClaims", "()Lcom/facebook/AuthenticationTokenClaims;", "claims", "Wwwwwwwwwwwwwwwwwwwww", "getSignature", InAppPurchaseMetaData.KEY_SIGNATURE, "Companion", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class AuthenticationToken implements Parcelable {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f5907Wwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final AuthenticationTokenClaims f5908Wwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final AuthenticationTokenHeader f5909Wwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f5910Wwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f5911Wwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @JvmField
    @NotNull
    public static final Parcelable.Creator<AuthenticationToken> CREATOR = new Parcelable.Creator<AuthenticationToken>() { // from class: com.facebook.AuthenticationToken$Companion$CREATOR$1
        @Override // android.os.Parcelable.Creator
        @NotNull
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public AuthenticationToken[] newArray(int i) {
            return new AuthenticationToken[i];
        }

        @Override // android.os.Parcelable.Creator
        @NotNull
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public AuthenticationToken createFromParcel(@NotNull Parcel parcel) {
            return new AuthenticationToken(parcel);
        }
    };

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0007¢\u0006\u0004\b\u0007\u0010\bR\u0014\u0010\n\u001a\u00020\t8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0014\u0010\f\u001a\u00020\t8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\f\u0010\u000bR\u001a\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00040\r8\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0010\u001a\u00020\t8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0010\u0010\u000bR\u0014\u0010\u0011\u001a\u00020\t8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0011\u0010\u000bR\u0014\u0010\u0012\u001a\u00020\t8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0012\u0010\u000bR\u0014\u0010\u0013\u001a\u00020\t8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0013\u0010\u000b¨\u0006\u0014"}, d2 = {"Lcom/facebook/AuthenticationToken$Companion;", "", "<init>", "()V", "Lcom/facebook/AuthenticationToken;", "authenticationToken", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/AuthenticationToken;)V", "", "AUTHENTICATION_TOKEN_KEY", "Ljava/lang/String;", "CLAIMS_KEY", "Landroid/os/Parcelable$Creator;", "CREATOR", "Landroid/os/Parcelable$Creator;", "EXPECTED_NONCE_KEY", "HEADER_KEY", "SIGNATURE_KEY", "TOKEN_STRING_KEY", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable AuthenticationToken authenticationToken) {
            AuthenticationTokenManager.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(authenticationToken);
        }

        public Companion() {
        }
    }

    @JvmOverloads
    public AuthenticationToken(@NotNull String str, @NotNull String str2) {
        Validate.Wwwwwwwwwwwwwwwwwwwwwwwww(str, BidResponsed.KEY_TOKEN);
        Validate.Wwwwwwwwwwwwwwwwwwwwwwwww(str2, "expectedNonce");
        List split$default = StringsKt.split$default((CharSequence) str, new String[]{"."}, false, 0, 6, (Object) null);
        if (split$default.size() == 3) {
            String str3 = (String) split$default.get(0);
            String str4 = (String) split$default.get(1);
            String str5 = (String) split$default.get(2);
            this.f5911Wwwwwwwwwwwwwwwwwwwwwwwww = str;
            this.f5910Wwwwwwwwwwwwwwwwwwwwwwww = str2;
            AuthenticationTokenHeader authenticationTokenHeader = new AuthenticationTokenHeader(str3);
            this.f5909Wwwwwwwwwwwwwwwwwwwwwww = authenticationTokenHeader;
            this.f5908Wwwwwwwwwwwwwwwwwwwwww = new AuthenticationTokenClaims(str4, str2);
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str3, str4, str5, authenticationTokenHeader.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww())) {
                this.f5907Wwwwwwwwwwwwwwwwwwwww = str5;
                return;
            }
            throw new IllegalArgumentException("Invalid Signature");
        }
        throw new IllegalArgumentException("Invalid IdToken string");
    }

    @NotNull
    public final JSONObject Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("token_string", this.f5911Wwwwwwwwwwwwwwwwwwwwwwwww);
        jSONObject.put("expected_nonce", this.f5910Wwwwwwwwwwwwwwwwwwwwwwww);
        jSONObject.put("header", this.f5909Wwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        jSONObject.put("claims", this.f5908Wwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        jSONObject.put(InAppPurchaseMetaData.KEY_SIGNATURE, this.f5907Wwwwwwwwwwwwwwwwwwwww);
        return jSONObject;
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, String str2, String str3, String str4) {
        try {
            String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = OidcSecurityUtil.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str4);
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
                return false;
            }
            PublicKey Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = OidcSecurityUtil.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            return OidcSecurityUtil.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, str + '.' + str2, str3);
        } catch (IOException | InvalidKeySpecException unused) {
            return false;
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AuthenticationToken)) {
            return false;
        }
        AuthenticationToken authenticationToken = (AuthenticationToken) obj;
        if (Intrinsics.areEqual(this.f5911Wwwwwwwwwwwwwwwwwwwwwwwww, authenticationToken.f5911Wwwwwwwwwwwwwwwwwwwwwwwww) && Intrinsics.areEqual(this.f5910Wwwwwwwwwwwwwwwwwwwwwwww, authenticationToken.f5910Wwwwwwwwwwwwwwwwwwwwwwww) && Intrinsics.areEqual(this.f5909Wwwwwwwwwwwwwwwwwwwwwww, authenticationToken.f5909Wwwwwwwwwwwwwwwwwwwwwww) && Intrinsics.areEqual(this.f5908Wwwwwwwwwwwwwwwwwwwwww, authenticationToken.f5908Wwwwwwwwwwwwwwwwwwwwww) && Intrinsics.areEqual(this.f5907Wwwwwwwwwwwwwwwwwwwww, authenticationToken.f5907Wwwwwwwwwwwwwwwwwwwww)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ((((((((527 + this.f5911Wwwwwwwwwwwwwwwwwwwwwwwww.hashCode()) * 31) + this.f5910Wwwwwwwwwwwwwwwwwwwwwwww.hashCode()) * 31) + this.f5909Wwwwwwwwwwwwwwwwwwwwwww.hashCode()) * 31) + this.f5908Wwwwwwwwwwwwwwwwwwwwww.hashCode()) * 31) + this.f5907Wwwwwwwwwwwwwwwwwwwww.hashCode();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NotNull Parcel parcel, int i) {
        parcel.writeString(this.f5911Wwwwwwwwwwwwwwwwwwwwwwwww);
        parcel.writeString(this.f5910Wwwwwwwwwwwwwwwwwwwwwwww);
        parcel.writeParcelable(this.f5909Wwwwwwwwwwwwwwwwwwwwwww, i);
        parcel.writeParcelable(this.f5908Wwwwwwwwwwwwwwwwwwwwww, i);
        parcel.writeString(this.f5907Wwwwwwwwwwwwwwwwwwwww);
    }

    public AuthenticationToken(@NotNull Parcel parcel) {
        this.f5911Wwwwwwwwwwwwwwwwwwwwwwwww = Validate.Wwwwwwwwwwwwwwwwwwwww(parcel.readString(), BidResponsed.KEY_TOKEN);
        this.f5910Wwwwwwwwwwwwwwwwwwwwwwww = Validate.Wwwwwwwwwwwwwwwwwwwww(parcel.readString(), "expectedNonce");
        Parcelable readParcelable = parcel.readParcelable(AuthenticationTokenHeader.class.getClassLoader());
        if (readParcelable != null) {
            this.f5909Wwwwwwwwwwwwwwwwwwwwwww = (AuthenticationTokenHeader) readParcelable;
            Parcelable readParcelable2 = parcel.readParcelable(AuthenticationTokenClaims.class.getClassLoader());
            if (readParcelable2 != null) {
                this.f5908Wwwwwwwwwwwwwwwwwwwwww = (AuthenticationTokenClaims) readParcelable2;
                this.f5907Wwwwwwwwwwwwwwwwwwwww = Validate.Wwwwwwwwwwwwwwwwwwwww(parcel.readString(), InAppPurchaseMetaData.KEY_SIGNATURE);
                return;
            }
            throw new IllegalStateException("Required value was null.");
        }
        throw new IllegalStateException("Required value was null.");
    }

    public AuthenticationToken(@NotNull JSONObject jSONObject) throws JSONException {
        this.f5911Wwwwwwwwwwwwwwwwwwwwwwwww = jSONObject.getString("token_string");
        this.f5910Wwwwwwwwwwwwwwwwwwwwwwww = jSONObject.getString("expected_nonce");
        this.f5907Wwwwwwwwwwwwwwwwwwwww = jSONObject.getString(InAppPurchaseMetaData.KEY_SIGNATURE);
        JSONObject jSONObject2 = jSONObject.getJSONObject("header");
        JSONObject jSONObject3 = jSONObject.getJSONObject("claims");
        this.f5909Wwwwwwwwwwwwwwwwwwwwwww = new AuthenticationTokenHeader(jSONObject2);
        this.f5908Wwwwwwwwwwwwwwwwwwwwww = AuthenticationTokenClaims.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject3);
    }
}
