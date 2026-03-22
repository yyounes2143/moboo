package com.facebook;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import com.facebook.internal.Validate;
import com.google.android.gms.fido.u2f.api.common.ClientData;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0014\u0018\u0000 +2\u00020\u0001:\u0001+B\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\u0011\b\u0010\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u0004\u0010\bB\u0011\b\u0010\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u0004\u0010\u000bJ\u001f\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\f\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u001a\u0010\u0019\u001a\u00020\u00182\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u0096\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\rH\u0016¢\u0006\u0004\b\u001b\u0010\u0013J\u000f\u0010\u001c\u001a\u00020\tH\u0000¢\u0006\u0004\b\u001c\u0010\u001dJ\u0017\u0010\u001f\u001a\u00020\u00182\u0006\u0010\u001e\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u001f\u0010 R\u0017\u0010$\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010\u0015R\u0017\u0010'\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b%\u0010\"\u001a\u0004\b&\u0010\u0015R\u0017\u0010*\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b(\u0010\"\u001a\u0004\b)\u0010\u0015¨\u0006,"}, d2 = {"Lcom/facebook/AuthenticationTokenHeader;", "Landroid/os/Parcelable;", "", "encodedHeaderString", "<init>", "(Ljava/lang/String;)V", "Landroid/os/Parcel;", "parcel", "(Landroid/os/Parcel;)V", "Lorg/json/JSONObject;", "jsonObject", "(Lorg/json/JSONObject;)V", "dest", "", "flags", "", "writeToParcel", "(Landroid/os/Parcel;I)V", "describeContents", "()I", "toString", "()Ljava/lang/String;", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "hashCode", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lorg/json/JSONObject;", "headerString", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)Z", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "getAlg", "alg", "Wwwwwwwwwwwwwwwwwwwwwwww", "getTyp", ClientData.KEY_TYPE, "Wwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "kid", "Companion", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class AuthenticationTokenHeader implements Parcelable {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f5933Wwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f5934Wwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f5935Wwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @JvmField
    @NotNull
    public static final Parcelable.Creator<AuthenticationTokenHeader> CREATOR = new Parcelable.Creator<AuthenticationTokenHeader>() { // from class: com.facebook.AuthenticationTokenHeader$Companion$CREATOR$1
        @Override // android.os.Parcelable.Creator
        @NotNull
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public AuthenticationTokenHeader[] newArray(int i) {
            return new AuthenticationTokenHeader[i];
        }

        @Override // android.os.Parcelable.Creator
        @NotNull
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public AuthenticationTokenHeader createFromParcel(@NotNull Parcel parcel) {
            return new AuthenticationTokenHeader(parcel);
        }
    };

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"Lcom/facebook/AuthenticationTokenHeader$Companion;", "", "()V", "CREATOR", "Landroid/os/Parcelable$Creator;", "Lcom/facebook/AuthenticationTokenHeader;", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    public AuthenticationTokenHeader(@NotNull String str) {
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str)) {
            JSONObject jSONObject = new JSONObject(new String(Base64.decode(str, 0), Charsets.UTF_8));
            this.f5935Wwwwwwwwwwwwwwwwwwwwwwwww = jSONObject.getString("alg");
            this.f5934Wwwwwwwwwwwwwwwwwwwwwwww = jSONObject.getString(ClientData.KEY_TYPE);
            this.f5933Wwwwwwwwwwwwwwwwwwwwwww = jSONObject.getString("kid");
            return;
        }
        throw new IllegalArgumentException("Invalid Header");
    }

    @NotNull
    public final JSONObject Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("alg", this.f5935Wwwwwwwwwwwwwwwwwwwwwwwww);
        jSONObject.put(ClientData.KEY_TYPE, this.f5934Wwwwwwwwwwwwwwwwwwwwwwww);
        jSONObject.put("kid", this.f5933Wwwwwwwwwwwwwwwwwwwwwww);
        return jSONObject;
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        boolean z;
        boolean z2;
        boolean z3;
        Validate.Wwwwwwwwwwwwwwwwwwwwwwwww(str, "encodedHeaderString");
        try {
            JSONObject jSONObject = new JSONObject(new String(Base64.decode(str, 0), Charsets.UTF_8));
            String optString = jSONObject.optString("alg");
            if (optString.length() > 0 && Intrinsics.areEqual(optString, "RS256")) {
                z = true;
            } else {
                z = false;
            }
            if (jSONObject.optString("kid").length() > 0) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (jSONObject.optString(ClientData.KEY_TYPE).length() > 0) {
                z3 = true;
            } else {
                z3 = false;
            }
        } catch (JSONException unused) {
        }
        if (!z || !z2 || !z3) {
            return false;
        }
        return true;
    }

    @NotNull
    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f5933Wwwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AuthenticationTokenHeader)) {
            return false;
        }
        AuthenticationTokenHeader authenticationTokenHeader = (AuthenticationTokenHeader) obj;
        if (Intrinsics.areEqual(this.f5935Wwwwwwwwwwwwwwwwwwwwwwwww, authenticationTokenHeader.f5935Wwwwwwwwwwwwwwwwwwwwwwwww) && Intrinsics.areEqual(this.f5934Wwwwwwwwwwwwwwwwwwwwwwww, authenticationTokenHeader.f5934Wwwwwwwwwwwwwwwwwwwwwwww) && Intrinsics.areEqual(this.f5933Wwwwwwwwwwwwwwwwwwwwwww, authenticationTokenHeader.f5933Wwwwwwwwwwwwwwwwwwwwwww)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ((((527 + this.f5935Wwwwwwwwwwwwwwwwwwwwwwwww.hashCode()) * 31) + this.f5934Wwwwwwwwwwwwwwwwwwwwwwww.hashCode()) * 31) + this.f5933Wwwwwwwwwwwwwwwwwwwwwww.hashCode();
    }

    @NotNull
    public String toString() {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NotNull Parcel parcel, int i) {
        parcel.writeString(this.f5935Wwwwwwwwwwwwwwwwwwwwwwwww);
        parcel.writeString(this.f5934Wwwwwwwwwwwwwwwwwwwwwwww);
        parcel.writeString(this.f5933Wwwwwwwwwwwwwwwwwwwwwww);
    }

    public AuthenticationTokenHeader(@NotNull Parcel parcel) {
        this.f5935Wwwwwwwwwwwwwwwwwwwwwwwww = Validate.Wwwwwwwwwwwwwwwwwwwww(parcel.readString(), "alg");
        this.f5934Wwwwwwwwwwwwwwwwwwwwwwww = Validate.Wwwwwwwwwwwwwwwwwwwww(parcel.readString(), ClientData.KEY_TYPE);
        this.f5933Wwwwwwwwwwwwwwwwwwwwwww = Validate.Wwwwwwwwwwwwwwwwwwwww(parcel.readString(), "kid");
    }

    public AuthenticationTokenHeader(@NotNull JSONObject jSONObject) throws JSONException {
        this.f5935Wwwwwwwwwwwwwwwwwwwwwwwww = jSONObject.getString("alg");
        this.f5934Wwwwwwwwwwwwwwwwwwwwwwww = jSONObject.getString(ClientData.KEY_TYPE);
        this.f5933Wwwwwwwwwwwwwwwwwwwwwww = jSONObject.getString("kid");
    }
}
