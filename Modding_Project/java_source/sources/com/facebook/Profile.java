package com.facebook;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.AccessToken;
import com.facebook.internal.ImageRequest;
import com.facebook.internal.Utility;
import com.facebook.internal.Validate;
import com.google.android.gms.common.Scopes;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010\u0002\n\u0002\b\u0016\u0018\u0000 92\u00020\u0001:\u00019BQ\b\u0017\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\u000b\u0010\fB\u0011\b\u0010\u0012\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u000b\u0010\u000fB\u0011\b\u0012\u0012\u0006\u0010\u0011\u001a\u00020\u0010¢\u0006\u0004\b\u000b\u0010\u0012J\u001d\u0010\u0016\u001a\u00020\b2\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0013¢\u0006\u0004\b\u0016\u0010\u0017J\u001a\u0010\u001b\u001a\u00020\u001a2\b\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0096\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ\u000f\u0010\u001d\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u000f\u0010\u001f\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\u001f\u0010 J\u000f\u0010!\u001a\u00020\u0013H\u0016¢\u0006\u0004\b!\u0010\u001eJ\u001f\u0010%\u001a\u00020$2\u0006\u0010\"\u001a\u00020\u00102\u0006\u0010#\u001a\u00020\u0013H\u0016¢\u0006\u0004\b%\u0010&R\u0019\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b'\u0010(\u001a\u0004\b)\u0010*R\u0019\u0010\u0004\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b+\u0010(\u001a\u0004\b,\u0010*R\u0019\u0010\u0005\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b-\u0010(\u001a\u0004\b.\u0010*R\u0019\u0010\u0006\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b/\u0010(\u001a\u0004\b0\u0010*R\u0019\u0010\u0007\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b1\u0010(\u001a\u0004\b2\u0010*R\u0019\u0010\t\u001a\u0004\u0018\u00010\b8\u0006¢\u0006\f\n\u0004\b3\u00104\u001a\u0004\b5\u00106R\u0019\u0010\n\u001a\u0004\u0018\u00010\b8\u0006¢\u0006\f\n\u0004\b7\u00104\u001a\u0004\b8\u00106¨\u0006:"}, d2 = {"Lcom/facebook/Profile;", "Landroid/os/Parcelable;", "", "id", "firstName", "middleName", "lastName", "name", "Landroid/net/Uri;", "linkUri", "pictureUri", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)V", "Lorg/json/JSONObject;", "jsonObject", "(Lorg/json/JSONObject;)V", "Landroid/os/Parcel;", "source", "(Landroid/os/Parcel;)V", "", "width", "height", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(II)Landroid/net/Uri;", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "hashCode", "()I", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lorg/json/JSONObject;", "describeContents", "dest", "flags", "", "writeToParcel", "(Landroid/os/Parcel;I)V", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwww", "getFirstName", "Wwwwwwwwwwwwwwwwwwwwwww", "getMiddleName", "Wwwwwwwwwwwwwwwwwwwwww", "getLastName", "Wwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwww", "Landroid/net/Uri;", "getLinkUri", "()Landroid/net/Uri;", "Wwwwwwwwwwwwwwwwwww", "getPictureUri", "Companion", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class Profile implements Parcelable {
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Uri f6066Wwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Uri f6067Wwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f6068Wwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f6069Wwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f6070Wwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f6071Wwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f6072Wwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull
    public static final Companion Companion = new Companion(null);

    /* renamed from: Wwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final String f6065Wwwwwwwwwwwwwwwwww = Profile.class.getSimpleName();
    @JvmField
    @NotNull
    public static final Parcelable.Creator<Profile> CREATOR = new Parcelable.Creator<Profile>() { // from class: com.facebook.Profile$Companion$CREATOR$1
        @Override // android.os.Parcelable.Creator
        @NotNull
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public Profile[] newArray(int i) {
            return new Profile[i];
        }

        @Override // android.os.Parcelable.Creator
        @NotNull
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public Profile createFromParcel(@NotNull Parcel parcel) {
            return new Profile(parcel, null);
        }
    };

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000b\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0011\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u0019\u0010\t\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0004H\u0007¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\bH\u0007¢\u0006\u0004\b\u000b\u0010\u0003R\u001a\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00040\f8\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0014\u0010\u0010\u001a\u00020\u000f8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0012\u001a\u00020\u000f8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0012\u0010\u0011R\u0014\u0010\u0013\u001a\u00020\u000f8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0013\u0010\u0011R\u0014\u0010\u0014\u001a\u00020\u000f8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0014\u0010\u0011R\u0014\u0010\u0015\u001a\u00020\u000f8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0015\u0010\u0011R\u0014\u0010\u0016\u001a\u00020\u000f8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0016\u0010\u0011R\u0014\u0010\u0017\u001a\u00020\u000f8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0017\u0010\u0011R\u001c\u0010\u0019\u001a\n \u0018*\u0004\u0018\u00010\u000f0\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u0011¨\u0006\u001a"}, d2 = {"Lcom/facebook/Profile$Companion;", "", "<init>", "()V", "Lcom/facebook/Profile;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lcom/facebook/Profile;", Scopes.PROFILE, "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/Profile;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Landroid/os/Parcelable$Creator;", "CREATOR", "Landroid/os/Parcelable$Creator;", "", "FIRST_NAME_KEY", "Ljava/lang/String;", "ID_KEY", "LAST_NAME_KEY", "LINK_URI_KEY", "MIDDLE_NAME_KEY", "NAME_KEY", "PICTURE_URI_KEY", "kotlin.jvm.PlatformType", "TAG", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Profile profile) {
            ProfileManager.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(profile);
        }

        @JvmStatic
        @Nullable
        public final Profile Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return ProfileManager.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }

        @JvmStatic
        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            AccessToken.Companion companion = AccessToken.Companion;
            AccessToken Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
                return;
            }
            if (!companion.Wwwwwwwwwwwwwwwwwwwwwwwwww()) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(null);
                return;
            }
            Utility utility = Utility.INSTANCE;
            Utility.Kkkkkkkkkkkkkkkkkkkkkkkkk(Wwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwww(), new Utility.GraphMeRequestWithCacheCallback() { // from class: com.facebook.Profile$Companion$fetchProfileForCurrentAccessToken$1
                @Override // com.facebook.internal.Utility.GraphMeRequestWithCacheCallback
                public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable FacebookException facebookException) {
                    String unused;
                    unused = Profile.f6065Wwwwwwwwwwwwwwwwww;
                    Intrinsics.stringPlus("Got unexpected exception: ", facebookException);
                }

                @Override // com.facebook.internal.Utility.GraphMeRequestWithCacheCallback
                public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable JSONObject jSONObject) {
                    String optString;
                    Uri uri;
                    String unused;
                    Uri uri2 = null;
                    if (jSONObject == null) {
                        optString = null;
                    } else {
                        optString = jSONObject.optString("id");
                    }
                    if (optString == null) {
                        unused = Profile.f6065Wwwwwwwwwwwwwwwwww;
                        return;
                    }
                    String optString2 = jSONObject.optString("link");
                    String optString3 = jSONObject.optString("profile_picture", null);
                    String optString4 = jSONObject.optString("first_name");
                    String optString5 = jSONObject.optString("middle_name");
                    String optString6 = jSONObject.optString("last_name");
                    String optString7 = jSONObject.optString("name");
                    if (optString2 != null) {
                        uri = Uri.parse(optString2);
                    } else {
                        uri = null;
                    }
                    if (optString3 != null) {
                        uri2 = Uri.parse(optString3);
                    }
                    Profile.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new Profile(optString, optString4, optString5, optString6, optString7, uri, uri2));
                }
            });
        }

        public Companion() {
        }
    }

    public /* synthetic */ Profile(Parcel parcel, DefaultConstructorMarker defaultConstructorMarker) {
        this(parcel);
    }

    @Nullable
    public final JSONObject Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("id", this.f6072Wwwwwwwwwwwwwwwwwwwwwwwww);
            jSONObject.put("first_name", this.f6071Wwwwwwwwwwwwwwwwwwwwwwww);
            jSONObject.put("middle_name", this.f6070Wwwwwwwwwwwwwwwwwwwwwww);
            jSONObject.put("last_name", this.f6069Wwwwwwwwwwwwwwwwwwwwww);
            jSONObject.put("name", this.f6068Wwwwwwwwwwwwwwwwwwwww);
            Uri uri = this.f6067Wwwwwwwwwwwwwwwwwwww;
            if (uri != null) {
                jSONObject.put("link_uri", uri.toString());
            }
            Uri uri2 = this.f6066Wwwwwwwwwwwwwwwwwww;
            if (uri2 != null) {
                jSONObject.put("picture_uri", uri2.toString());
            }
            return jSONObject;
        } catch (JSONException unused) {
            return null;
        }
    }

    @NotNull
    public final Uri Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, int i2) {
        String str;
        Uri uri = this.f6066Wwwwwwwwwwwwwwwwwww;
        if (uri != null) {
            return uri;
        }
        AccessToken.Companion companion = AccessToken.Companion;
        if (companion.Wwwwwwwwwwwwwwwwwwwwwwwwww()) {
            AccessToken Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
                str = null;
            } else {
                str = Wwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwww();
            }
        } else {
            str = "";
        }
        return ImageRequest.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f6072Wwwwwwwwwwwwwwwwwwwwwwwww, i, i2, str);
    }

    @Nullable
    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f6068Wwwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f6072Wwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        String str;
        String str2;
        String str3;
        String str4;
        Uri uri;
        Uri uri2;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Profile)) {
            return false;
        }
        String str5 = this.f6072Wwwwwwwwwwwwwwwwwwwwwwwww;
        if (((str5 == null && ((Profile) obj).f6072Wwwwwwwwwwwwwwwwwwwwwwwww == null) || Intrinsics.areEqual(str5, ((Profile) obj).f6072Wwwwwwwwwwwwwwwwwwwwwwwww)) && ((((str = this.f6071Wwwwwwwwwwwwwwwwwwwwwwww) == null && ((Profile) obj).f6071Wwwwwwwwwwwwwwwwwwwwwwww == null) || Intrinsics.areEqual(str, ((Profile) obj).f6071Wwwwwwwwwwwwwwwwwwwwwwww)) && ((((str2 = this.f6070Wwwwwwwwwwwwwwwwwwwwwww) == null && ((Profile) obj).f6070Wwwwwwwwwwwwwwwwwwwwwww == null) || Intrinsics.areEqual(str2, ((Profile) obj).f6070Wwwwwwwwwwwwwwwwwwwwwww)) && ((((str3 = this.f6069Wwwwwwwwwwwwwwwwwwwwww) == null && ((Profile) obj).f6069Wwwwwwwwwwwwwwwwwwwwww == null) || Intrinsics.areEqual(str3, ((Profile) obj).f6069Wwwwwwwwwwwwwwwwwwwwww)) && ((((str4 = this.f6068Wwwwwwwwwwwwwwwwwwwww) == null && ((Profile) obj).f6068Wwwwwwwwwwwwwwwwwwwww == null) || Intrinsics.areEqual(str4, ((Profile) obj).f6068Wwwwwwwwwwwwwwwwwwwww)) && ((((uri = this.f6067Wwwwwwwwwwwwwwwwwwww) == null && ((Profile) obj).f6067Wwwwwwwwwwwwwwwwwwww == null) || Intrinsics.areEqual(uri, ((Profile) obj).f6067Wwwwwwwwwwwwwwwwwwww)) && (((uri2 = this.f6066Wwwwwwwwwwwwwwwwwww) == null && ((Profile) obj).f6066Wwwwwwwwwwwwwwwwwww == null) || Intrinsics.areEqual(uri2, ((Profile) obj).f6066Wwwwwwwwwwwwwwwwwww)))))))) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int i;
        String str = this.f6072Wwwwwwwwwwwwwwwwwwwwwwwww;
        if (str != null) {
            i = str.hashCode();
        } else {
            i = 0;
        }
        int i2 = 527 + i;
        String str2 = this.f6071Wwwwwwwwwwwwwwwwwwwwwwww;
        if (str2 != null) {
            i2 = (i2 * 31) + str2.hashCode();
        }
        String str3 = this.f6070Wwwwwwwwwwwwwwwwwwwwwww;
        if (str3 != null) {
            i2 = (i2 * 31) + str3.hashCode();
        }
        String str4 = this.f6069Wwwwwwwwwwwwwwwwwwwwww;
        if (str4 != null) {
            i2 = (i2 * 31) + str4.hashCode();
        }
        String str5 = this.f6068Wwwwwwwwwwwwwwwwwwwww;
        if (str5 != null) {
            i2 = (i2 * 31) + str5.hashCode();
        }
        Uri uri = this.f6067Wwwwwwwwwwwwwwwwwwww;
        if (uri != null) {
            i2 = (i2 * 31) + uri.hashCode();
        }
        Uri uri2 = this.f6066Wwwwwwwwwwwwwwwwwww;
        if (uri2 != null) {
            return (i2 * 31) + uri2.hashCode();
        }
        return i2;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NotNull Parcel parcel, int i) {
        String uri;
        parcel.writeString(this.f6072Wwwwwwwwwwwwwwwwwwwwwwwww);
        parcel.writeString(this.f6071Wwwwwwwwwwwwwwwwwwwwwwww);
        parcel.writeString(this.f6070Wwwwwwwwwwwwwwwwwwwwwww);
        parcel.writeString(this.f6069Wwwwwwwwwwwwwwwwwwwwww);
        parcel.writeString(this.f6068Wwwwwwwwwwwwwwwwwwwww);
        Uri uri2 = this.f6067Wwwwwwwwwwwwwwwwwwww;
        String str = null;
        if (uri2 == null) {
            uri = null;
        } else {
            uri = uri2.toString();
        }
        parcel.writeString(uri);
        Uri uri3 = this.f6066Wwwwwwwwwwwwwwwwwww;
        if (uri3 != null) {
            str = uri3.toString();
        }
        parcel.writeString(str);
    }

    @JvmOverloads
    public Profile(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable Uri uri, @Nullable Uri uri2) {
        Validate.Wwwwwwwwwwwwwwwwwwwww(str, "id");
        this.f6072Wwwwwwwwwwwwwwwwwwwwwwwww = str;
        this.f6071Wwwwwwwwwwwwwwwwwwwwwwww = str2;
        this.f6070Wwwwwwwwwwwwwwwwwwwwwww = str3;
        this.f6069Wwwwwwwwwwwwwwwwwwwwww = str4;
        this.f6068Wwwwwwwwwwwwwwwwwwwww = str5;
        this.f6067Wwwwwwwwwwwwwwwwwwww = uri;
        this.f6066Wwwwwwwwwwwwwwwwwww = uri2;
    }

    public Profile(@NotNull JSONObject jSONObject) {
        this.f6072Wwwwwwwwwwwwwwwwwwwwwwwww = jSONObject.optString("id", null);
        this.f6071Wwwwwwwwwwwwwwwwwwwwwwww = jSONObject.optString("first_name", null);
        this.f6070Wwwwwwwwwwwwwwwwwwwwwww = jSONObject.optString("middle_name", null);
        this.f6069Wwwwwwwwwwwwwwwwwwwwww = jSONObject.optString("last_name", null);
        this.f6068Wwwwwwwwwwwwwwwwwwwww = jSONObject.optString("name", null);
        String optString = jSONObject.optString("link_uri", null);
        this.f6067Wwwwwwwwwwwwwwwwwwww = optString == null ? null : Uri.parse(optString);
        String optString2 = jSONObject.optString("picture_uri", null);
        this.f6066Wwwwwwwwwwwwwwwwwww = optString2 != null ? Uri.parse(optString2) : null;
    }

    public Profile(Parcel parcel) {
        this.f6072Wwwwwwwwwwwwwwwwwwwwwwwww = parcel.readString();
        this.f6071Wwwwwwwwwwwwwwwwwwwwwwww = parcel.readString();
        this.f6070Wwwwwwwwwwwwwwwwwwwwwww = parcel.readString();
        this.f6069Wwwwwwwwwwwwwwwwwwwwww = parcel.readString();
        this.f6068Wwwwwwwwwwwwwwwwwwwww = parcel.readString();
        String readString = parcel.readString();
        this.f6067Wwwwwwwwwwwwwwwwwwww = readString == null ? null : Uri.parse(readString);
        String readString2 = parcel.readString();
        this.f6066Wwwwwwwwwwwwwwwwwww = readString2 != null ? Uri.parse(readString2) : null;
    }
}
