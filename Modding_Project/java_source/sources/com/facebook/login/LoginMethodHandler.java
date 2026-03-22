package com.facebook.login;

import android.content.Intent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import androidx.annotation.VisibleForTesting;
import com.facebook.AccessToken;
import com.facebook.AccessTokenSource;
import com.facebook.AuthenticationToken;
import com.facebook.FacebookException;
import com.facebook.FacebookRequestError;
import com.facebook.FacebookSdk;
import com.facebook.FacebookServiceException;
import com.facebook.GraphRequest;
import com.facebook.GraphResponse;
import com.facebook.appevents.InternalAppEventsLogger;
import com.facebook.internal.Utility;
import com.facebook.login.LoginClient;
import com.vungle.ads.internal.ui.AdActivity;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u0000\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010%\n\u0002\b\u000e\b'\u0018\u0000 B2\u00020\u0001:\u0001BB\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\u0011\b\u0014\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u0004\u0010\bJ\u0017\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH&¢\u0006\u0004\b\f\u0010\rJ)\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000b2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u0017\u0010\u001c\u001a\u00020\u00172\u0006\u0010\u001b\u001a\u00020\u001aH\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u001f\u001a\u00020\u001eH\u0014¢\u0006\u0004\b\u001f\u0010 J\u0017\u0010\"\u001a\u00020\u001e2\u0006\u0010!\u001a\u00020\u001eH\u0014¢\u0006\u0004\b\"\u0010#J#\u0010'\u001a\u00020\u00172\b\u0010$\u001a\u0004\u0018\u00010\u001e2\b\u0010&\u001a\u0004\u0018\u00010%H\u0014¢\u0006\u0004\b'\u0010(J\u0019\u0010*\u001a\u00020\u00172\b\u0010)\u001a\u0004\u0018\u00010\u001eH\u0014¢\u0006\u0004\b*\u0010+J\u001f\u0010.\u001a\u00020,2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010-\u001a\u00020,H\u0014¢\u0006\u0004\b.\u0010/J\u001f\u00102\u001a\u00020\u00172\u0006\u00100\u001a\u00020\u00062\u0006\u00101\u001a\u00020\u000bH\u0016¢\u0006\u0004\b2\u00103J\u000f\u00104\u001a\u00020\u0012H\u0016¢\u0006\u0004\b4\u0010\u0016R4\u0010;\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u001e\u0012\u0006\u0012\u0004\u0018\u00010\u001e\u0018\u0001058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u00106\u001a\u0004\b7\u00108\"\u0004\b9\u0010:R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b.\u0010<\u001a\u0004\b=\u0010>\"\u0004\b?\u0010\u0005R\u0014\u0010A\u001a\u00020\u001e8&X¦\u0004¢\u0006\u0006\u001a\u0004\b@\u0010 ¨\u0006C"}, d2 = {"Lcom/facebook/login/LoginMethodHandler;", "Landroid/os/Parcelable;", "Lcom/facebook/login/LoginClient;", "loginClient", "<init>", "(Lcom/facebook/login/LoginClient;)V", "Landroid/os/Parcel;", "source", "(Landroid/os/Parcel;)V", "Lcom/facebook/login/LoginClient$Request;", AdActivity.REQUEST_KEY_EXTRA, "", "Wwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/login/LoginClient$Request;)I", "requestCode", "resultCode", "Landroid/content/Intent;", "data", "", "Wwwwwwwwwwwwwwwwwwwwwwwww", "(IILandroid/content/Intent;)Z", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "()Z", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()V", "Lorg/json/JSONObject;", "param", "Wwwwwwwwwwwwwwwwwwwwwww", "(Lorg/json/JSONObject;)V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/lang/String;", "authId", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)Ljava/lang/String;", "key", "", "value", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/lang/Object;)V", "e2e", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)V", "Landroid/os/Bundle;", "values", "Wwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;)Landroid/os/Bundle;", "dest", "flags", "writeToParcel", "(Landroid/os/Parcel;I)V", "Wwwwwwwwwwwwwwwwwwwww", "", "Ljava/util/Map;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/util/Map;", "setMethodLoggingExtras", "(Ljava/util/Map;)V", "methodLoggingExtras", "Lcom/facebook/login/LoginClient;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lcom/facebook/login/LoginClient;", "Wwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "nameForLogging", "Companion", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
@VisibleForTesting(otherwise = 3)
/* loaded from: classes4.dex */
public abstract class LoginMethodHandler implements Parcelable {
    @NotNull
    public static final Companion Companion = new Companion(null);

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public LoginClient f7031Wwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Map<String, String> f7032Wwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u001e\n\u0002\b\u000b\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J#\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0007¢\u0006\u0004\b\t\u0010\nJ+\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\f\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\r\u001a\u00020\u0006H\u0007¢\u0006\u0004\b\u000f\u0010\u0010J#\u0010\u0011\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0007¢\u0006\u0004\b\u0011\u0010\nJ=\u0010\u0014\u001a\u0004\u0018\u00010\u000e2\u0010\u0010\u0013\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0018\u00010\u00122\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\f\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\r\u001a\u00020\u0006H\u0007¢\u0006\u0004\b\u0014\u0010\u0015J\u0019\u0010\u0017\u001a\u00020\u00062\b\u0010\u0016\u001a\u0004\u0018\u00010\u0006H\u0007¢\u0006\u0004\b\u0017\u0010\u0018R\u0014\u0010\u0019\u001a\u00020\u00068\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0014\u0010\u001b\u001a\u00020\u00068\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u001b\u0010\u001aR\u0014\u0010\u001c\u001a\u00020\u00068\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u001c\u0010\u001a¨\u0006\u001d"}, d2 = {"Lcom/facebook/login/LoginMethodHandler$Companion;", "", "<init>", "()V", "Landroid/os/Bundle;", "bundle", "", "expectedNonce", "Lcom/facebook/AuthenticationToken;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/os/Bundle;Ljava/lang/String;)Lcom/facebook/AuthenticationToken;", "Lcom/facebook/AccessTokenSource;", "source", "applicationId", "Lcom/facebook/AccessToken;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/os/Bundle;Lcom/facebook/AccessTokenSource;Ljava/lang/String;)Lcom/facebook/AccessToken;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "", "requestedPermissions", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/util/Collection;Landroid/os/Bundle;Lcom/facebook/AccessTokenSource;Ljava/lang/String;)Lcom/facebook/AccessToken;", "signedRequest", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)Ljava/lang/String;", "NO_SIGNED_REQUEST_ERROR_MESSAGE", "Ljava/lang/String;", "NO_USER_ID_ERROR_MESSAGE", "USER_CANCELED_LOG_IN_ERROR_MESSAGE", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @NotNull
        public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable String str) throws FacebookException {
            Object[] array;
            if (str != null && str.length() != 0) {
                try {
                    array = StringsKt.split$default((CharSequence) str, new String[]{"."}, false, 0, 6, (Object) null).toArray(new String[0]);
                } catch (UnsupportedEncodingException | JSONException unused) {
                }
                if (array != null) {
                    String[] strArr = (String[]) array;
                    if (strArr.length == 2) {
                        return new JSONObject(new String(Base64.decode(strArr[1], 0), Charsets.UTF_8)).getString("user_id");
                    }
                    throw new FacebookException("Failed to retrieve user_id from signed_request");
                }
                throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
            }
            throw new FacebookException("Authorization response does not contain the signed_request");
        }

        @JvmStatic
        @Nullable
        public final AuthenticationToken Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Bundle bundle, @Nullable String str) throws FacebookException {
            String string = bundle.getString("id_token");
            if (string != null && string.length() != 0 && str != null && str.length() != 0) {
                try {
                    return new AuthenticationToken(string, str);
                } catch (Exception e) {
                    throw new FacebookException(e.getMessage(), e);
                }
            }
            return null;
        }

        @JvmStatic
        @Nullable
        public final AuthenticationToken Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Bundle bundle, @Nullable String str) throws FacebookException {
            String string = bundle.getString("com.facebook.platform.extra.ID_TOKEN");
            if (string != null && string.length() != 0 && str != null && str.length() != 0) {
                try {
                    return new AuthenticationToken(string, str);
                } catch (Exception e) {
                    throw new FacebookException(e.getMessage());
                }
            }
            return null;
        }

        @JvmStatic
        @Nullable
        public final AccessToken Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Collection<String> collection, @NotNull Bundle bundle, @Nullable AccessTokenSource accessTokenSource, @NotNull String str) throws FacebookException {
            ArrayList arrayList;
            ArrayList arrayList2;
            ArrayList arrayList3;
            Utility utility = Utility.INSTANCE;
            Date Wwwwwwwwww2 = Utility.Wwwwwwwwww(bundle, "expires_in", new Date());
            String string = bundle.getString("access_token");
            if (string == null) {
                return null;
            }
            Date Wwwwwwwwww3 = Utility.Wwwwwwwwww(bundle, "data_access_expiration_time", new Date(0L));
            String string2 = bundle.getString("granted_scopes");
            if (string2 != null && string2.length() > 0) {
                Object[] array = StringsKt.split$default((CharSequence) string2, new String[]{","}, false, 0, 6, (Object) null).toArray(new String[0]);
                if (array != null) {
                    String[] strArr = (String[]) array;
                    arrayList = CollectionsKt.arrayListOf(Arrays.copyOf(strArr, strArr.length));
                } else {
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
                }
            } else {
                arrayList = collection;
            }
            String string3 = bundle.getString("denied_scopes");
            if (string3 != null && string3.length() > 0) {
                Object[] array2 = StringsKt.split$default((CharSequence) string3, new String[]{","}, false, 0, 6, (Object) null).toArray(new String[0]);
                if (array2 != null) {
                    String[] strArr2 = (String[]) array2;
                    arrayList2 = CollectionsKt.arrayListOf(Arrays.copyOf(strArr2, strArr2.length));
                } else {
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
                }
            } else {
                arrayList2 = null;
            }
            String string4 = bundle.getString("expired_scopes");
            if (string4 != null && string4.length() > 0) {
                Object[] array3 = StringsKt.split$default((CharSequence) string4, new String[]{","}, false, 0, 6, (Object) null).toArray(new String[0]);
                if (array3 != null) {
                    String[] strArr3 = (String[]) array3;
                    arrayList3 = CollectionsKt.arrayListOf(Arrays.copyOf(strArr3, strArr3.length));
                } else {
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
                }
            } else {
                arrayList3 = null;
            }
            if (Utility.Kk(string)) {
                return null;
            }
            return new AccessToken(string, str, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bundle.getString("signed_request")), arrayList, arrayList2, arrayList3, accessTokenSource, Wwwwwwwwww2, new Date(), Wwwwwwwwww3, bundle.getString("graph_domain"));
        }

        @JvmStatic
        @Nullable
        public final AccessToken Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Bundle bundle, @Nullable AccessTokenSource accessTokenSource, @NotNull String str) {
            String string;
            Utility utility = Utility.INSTANCE;
            Date Wwwwwwwwww2 = Utility.Wwwwwwwwww(bundle, "com.facebook.platform.extra.EXPIRES_SECONDS_SINCE_EPOCH", new Date(0L));
            ArrayList<String> stringArrayList = bundle.getStringArrayList("com.facebook.platform.extra.PERMISSIONS");
            String string2 = bundle.getString("com.facebook.platform.extra.ACCESS_TOKEN");
            Date Wwwwwwwwww3 = Utility.Wwwwwwwwww(bundle, "com.facebook.platform.extra.EXTRA_DATA_ACCESS_EXPIRATION_TIME", new Date(0L));
            if (string2 == null || string2.length() == 0 || (string = bundle.getString("com.facebook.platform.extra.USER_ID")) == null || string.length() == 0) {
                return null;
            }
            return new AccessToken(string2, str, string, stringArrayList, null, null, accessTokenSource, Wwwwwwwwww2, new Date(), Wwwwwwwwww3, bundle.getString("graph_domain"));
        }

        public Companion() {
        }
    }

    public LoginMethodHandler(@NotNull LoginClient loginClient) {
        Wwwwwwwwwwwwwwwwwwwwww(loginClient);
    }

    public abstract int Wwwwwwwwwwwwwwwwwwww(@NotNull LoginClient.Request request);

    public boolean Wwwwwwwwwwwwwwwwwwwww() {
        return false;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwww(@NotNull LoginClient loginClient) {
        this.f7031Wwwwwwwwwwwwwwwwwwwwwwww = loginClient;
    }

    @NotNull
    public Bundle Wwwwwwwwwwwwwwwwwwwwwwww(@NotNull LoginClient.Request request, @NotNull Bundle bundle) throws FacebookException {
        GraphRequest Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        String string = bundle.getString("code");
        if (!Utility.Kk(string)) {
            String str = null;
            if (string == null) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = null;
            } else {
                PKCEUtil pKCEUtil = PKCEUtil.INSTANCE;
                String Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
                String Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = request.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = "";
                }
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = PKCEUtil.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(string, Wwwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            }
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                GraphResponse Wwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwww();
                FacebookRequestError Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
                    try {
                        JSONObject Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                            str = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.getString("access_token");
                        }
                        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null && !Utility.Kk(str)) {
                            bundle.putString("access_token", str);
                            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.has("id_token")) {
                                bundle.putString("id_token", Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.getString("id_token"));
                                return bundle;
                            }
                            return bundle;
                        }
                        throw new FacebookException("No access token found from result");
                    } catch (JSONException e) {
                        throw new FacebookException(Intrinsics.stringPlus("Fail to process code exchange response: ", e.getMessage()));
                    }
                }
                throw new FacebookServiceException(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            }
            throw new FacebookException("Failed to create code exchange request");
        }
        throw new FacebookException("No code param found from the request");
    }

    public boolean Wwwwwwwwwwwwwwwwwwwwwwwww(int i, int i2, @Nullable Intent intent) {
        return false;
    }

    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwww() {
        return false;
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable String str) {
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        LoginClient.Request Wwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwww2 == null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = null;
        } else {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = FacebookSdk.Wwwwwwwwwwwwwwwwwwwwww();
        }
        InternalAppEventsLogger internalAppEventsLogger = new InternalAppEventsLogger(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwww(), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        Bundle bundle = new Bundle();
        bundle.putString("fb_web_login_e2e", str);
        bundle.putLong("fb_web_login_switchback_time", System.currentTimeMillis());
        bundle.putString("app_id", Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        internalAppEventsLogger.Wwwwwwwwwwwwwwwwwwwwwwwwwww("fb_dialogs_web_login_dialog_complete", null, bundle);
    }

    @NotNull
    public String Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return "fb" + FacebookSdk.Wwwwwwwwwwwwwwwwwwwwww() + "://authorize/";
    }

    @NotNull
    public abstract String Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();

    @Nullable
    public final Map<String, String> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f7032Wwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final LoginClient Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        LoginClient loginClient = this.f7031Wwwwwwwwwwwwwwwwwwwwwwww;
        loginClient.getClass();
        return loginClient;
    }

    @NotNull
    public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("0_auth_logger_id", str);
            jSONObject.put("3_method", Wwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            Wwwwwwwwwwwwwwwwwwwwwww(jSONObject);
        } catch (JSONException e) {
            Intrinsics.stringPlus("Error creating client state json: ", e.getMessage());
        }
        return jSONObject.toString();
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable String str, @Nullable Object obj) {
        String obj2;
        if (this.f7032Wwwwwwwwwwwwwwwwwwwwwwwww == null) {
            this.f7032Wwwwwwwwwwwwwwwwwwwwwwwww = new HashMap();
        }
        Map<String, String> map = this.f7032Wwwwwwwwwwwwwwwwwwwwwwwww;
        if (map == null) {
            return;
        }
        if (obj == null) {
            obj2 = null;
        } else {
            obj2 = obj.toString();
        }
        map.put(str, obj2);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NotNull Parcel parcel, int i) {
        Utility utility = Utility.INSTANCE;
        Utility.IIllllll(parcel, this.f7032Wwwwwwwwwwwwwwwwwwwwwwwww);
    }

    public LoginMethodHandler(@NotNull Parcel parcel) {
        Map<String, String> Illlllllllll = Utility.Illlllllllll(parcel);
        this.f7032Wwwwwwwwwwwwwwwwwwwwwwwww = Illlllllllll == null ? null : MapsKt.toMutableMap(Illlllllllll);
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
    }

    public void Wwwwwwwwwwwwwwwwwwwwwww(@NotNull JSONObject jSONObject) throws JSONException {
    }
}
