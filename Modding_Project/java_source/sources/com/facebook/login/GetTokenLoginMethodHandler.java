package com.facebook.login;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.facebook.AccessTokenSource;
import com.facebook.FacebookException;
import com.facebook.FacebookSdk;
import com.facebook.internal.PlatformServiceClient;
import com.facebook.internal.Utility;
import com.facebook.login.LoginClient;
import com.facebook.login.LoginMethodHandler;
import com.google.android.gms.common.Scopes;
import com.vungle.ads.internal.ui.AdActivity;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0007\u0018\u0000 #2\u00020\u0001:\u0001#B\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\u0011\b\u0016\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u0004\u0010\bJ\u000f\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u001f\u0010\u0013\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\f2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011¢\u0006\u0004\b\u0013\u0010\u0014J\u001d\u0010\u0015\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u0015\u0010\u0014J\u001d\u0010\u0016\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u0016\u0010\u0014J\u000f\u0010\u0017\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0017\u0010\u0018R\u0018\u0010\u001c\u001a\u0004\u0018\u00010\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u001a\u0010\"\u001a\u00020\u001d8\u0016X\u0096D¢\u0006\f\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!¨\u0006$"}, d2 = {"Lcom/facebook/login/GetTokenLoginMethodHandler;", "Lcom/facebook/login/LoginMethodHandler;", "Lcom/facebook/login/LoginClient;", "loginClient", "<init>", "(Lcom/facebook/login/LoginClient;)V", "Landroid/os/Parcel;", "source", "(Landroid/os/Parcel;)V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()V", "Lcom/facebook/login/LoginClient$Request;", AdActivity.REQUEST_KEY_EXTRA, "", "Wwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/login/LoginClient$Request;)I", "Landroid/os/Bundle;", "result", "Wwwwwwwwwwwwwwwww", "(Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;)V", "Wwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwww", "describeContents", "()I", "Lcom/facebook/login/GetTokenClient;", "Wwwwwwwwwwwwwwwwwwwwwww", "Lcom/facebook/login/GetTokenClient;", "getTokenClient", "", "Wwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/lang/String;", "nameForLogging", "Companion", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class GetTokenLoginMethodHandler extends LoginMethodHandler {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f6950Wwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public GetTokenClient f6951Wwwwwwwwwwwwwwwwwwwwwww;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @JvmField
    @NotNull
    public static final Parcelable.Creator<GetTokenLoginMethodHandler> CREATOR = new Parcelable.Creator<GetTokenLoginMethodHandler>() { // from class: com.facebook.login.GetTokenLoginMethodHandler$Companion$CREATOR$1
        @Override // android.os.Parcelable.Creator
        @NotNull
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public GetTokenLoginMethodHandler[] newArray(int i) {
            return new GetTokenLoginMethodHandler[i];
        }

        @Override // android.os.Parcelable.Creator
        @NotNull
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public GetTokenLoginMethodHandler createFromParcel(@NotNull Parcel parcel) {
            return new GetTokenLoginMethodHandler(parcel);
        }
    };

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"Lcom/facebook/login/GetTokenLoginMethodHandler$Companion;", "", "()V", "CREATOR", "Landroid/os/Parcelable$Creator;", "Lcom/facebook/login/GetTokenLoginMethodHandler;", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    public GetTokenLoginMethodHandler(@NotNull LoginClient loginClient) {
        super(loginClient);
        this.f6950Wwwwwwwwwwwwwwwwwwwwww = "get_token";
    }

    public static final void Wwwwwwwwwwwwwww(GetTokenLoginMethodHandler getTokenLoginMethodHandler, LoginClient.Request request, Bundle bundle) {
        getTokenLoginMethodHandler.Wwwwwwwwwwwwwwwww(request, bundle);
    }

    public final void Wwwwwwwwwwwwwwww(@NotNull LoginClient.Request request, @NotNull Bundle bundle) {
        LoginClient.Result Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        try {
            LoginMethodHandler.Companion companion = LoginMethodHandler.Companion;
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = LoginClient.Result.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(request, companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bundle, AccessTokenSource.FACEBOOK_APPLICATION_SERVICE, request.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()), companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bundle, request.Wwwwwwwwwwwwwwwwwwwwww()));
        } catch (FacebookException e) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = LoginClient.Result.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(LoginClient.Result.Companion, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwww(), null, e.getMessage(), null, 8, null);
        }
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
    }

    public final void Wwwwwwwwwwwwwwwww(@NotNull LoginClient.Request request, @Nullable Bundle bundle) {
        GetTokenClient getTokenClient = this.f6951Wwwwwwwwwwwwwwwwwwwwwww;
        if (getTokenClient != null) {
            getTokenClient.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(null);
        }
        this.f6951Wwwwwwwwwwwwwwwwwwwwwww = null;
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwww();
        if (bundle != null) {
            List stringArrayList = bundle.getStringArrayList("com.facebook.platform.extra.PERMISSIONS");
            if (stringArrayList == null) {
                stringArrayList = CollectionsKt.emptyList();
            }
            Set<String> Wwwwwwwwwwwwwwwwwwwww2 = request.Wwwwwwwwwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwwwwwwwwww2 == null) {
                Wwwwwwwwwwwwwwwwwwwww2 = SetsKt.emptySet();
            }
            String string = bundle.getString("com.facebook.platform.extra.ID_TOKEN");
            if (Wwwwwwwwwwwwwwwwwwwww2.contains(Scopes.OPEN_ID) && (string == null || string.length() == 0)) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwww();
                return;
            } else if (stringArrayList.containsAll(Wwwwwwwwwwwwwwwwwwwww2)) {
                Wwwwwwwwwwwwwwwwww(request, bundle);
                return;
            } else {
                HashSet hashSet = new HashSet();
                for (String str : Wwwwwwwwwwwwwwwwwwwww2) {
                    if (!stringArrayList.contains(str)) {
                        hashSet.add(str);
                    }
                }
                if (!hashSet.isEmpty()) {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("new_permissions", TextUtils.join(",", hashSet));
                }
                request.Wwwwwwwwwwww(hashSet);
            }
        }
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwww();
    }

    public final void Wwwwwwwwwwwwwwwwww(@NotNull final LoginClient.Request request, @NotNull final Bundle bundle) {
        String string = bundle.getString("com.facebook.platform.extra.USER_ID");
        if (string != null && string.length() != 0) {
            Wwwwwwwwwwwwwwww(request, bundle);
            return;
        }
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwww();
        String string2 = bundle.getString("com.facebook.platform.extra.ACCESS_TOKEN");
        if (string2 != null) {
            Utility utility = Utility.INSTANCE;
            Utility.Kkkkkkkkkkkkkkkkkkkkkkkkk(string2, new Utility.GraphMeRequestWithCacheCallback() { // from class: com.facebook.login.GetTokenLoginMethodHandler$complete$1
                @Override // com.facebook.internal.Utility.GraphMeRequestWithCacheCallback
                public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable FacebookException facebookException) {
                    String message;
                    LoginClient Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    LoginClient.Result.Companion companion = LoginClient.Result.Companion;
                    LoginClient.Request Wwwwwwwwwwwwwwwwwwww2 = this.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwww();
                    if (facebookException == null) {
                        message = null;
                    } else {
                        message = facebookException.getMessage();
                    }
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(LoginClient.Result.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(companion, Wwwwwwwwwwwwwwwwwwww2, "Caught exception", message, null, 8, null));
                }

                @Override // com.facebook.internal.Utility.GraphMeRequestWithCacheCallback
                public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable JSONObject jSONObject) {
                    String string3;
                    try {
                        Bundle bundle2 = bundle;
                        if (jSONObject == null) {
                            string3 = null;
                        } else {
                            string3 = jSONObject.getString("id");
                        }
                        bundle2.putString("com.facebook.platform.extra.USER_ID", string3);
                        this.Wwwwwwwwwwwwwwww(request, bundle);
                    } catch (JSONException e) {
                        this.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(LoginClient.Result.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(LoginClient.Result.Companion, this.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwww(), "Caught exception", e.getMessage(), null, 8, null));
                    }
                }
            });
            return;
        }
        throw new IllegalStateException("Required value was null.");
    }

    @Override // com.facebook.login.LoginMethodHandler
    public int Wwwwwwwwwwwwwwwwwwww(@NotNull final LoginClient.Request request) {
        Context Wwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwww2 = FacebookSdk.Wwwwwwwwwwwwwwwwwwwwwww();
        }
        GetTokenClient getTokenClient = new GetTokenClient(Wwwwwwwwwwwwwwwwwwwwwwwwww2, request);
        this.f6951Wwwwwwwwwwwwwwwwwwwwwww = getTokenClient;
        if (Intrinsics.areEqual(Boolean.valueOf(getTokenClient.Wwwwwwwwwwwwwwwwwwwwwwwwwww()), Boolean.FALSE)) {
            return 0;
        }
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwww();
        PlatformServiceClient.CompletedListener completedListener = new PlatformServiceClient.CompletedListener() { // from class: com.facebook.login.Wwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // com.facebook.internal.PlatformServiceClient.CompletedListener
            public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Bundle bundle) {
                GetTokenLoginMethodHandler.Wwwwwwwwwwwwwww(GetTokenLoginMethodHandler.this, request, bundle);
            }
        };
        GetTokenClient getTokenClient2 = this.f6951Wwwwwwwwwwwwwwwwwwwwwww;
        if (getTokenClient2 != null) {
            getTokenClient2.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(completedListener);
            return 1;
        }
        return 1;
    }

    @Override // com.facebook.login.LoginMethodHandler
    @NotNull
    public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f6950Wwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // com.facebook.login.LoginMethodHandler
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        GetTokenClient getTokenClient = this.f6951Wwwwwwwwwwwwwwwwwwwwwww;
        if (getTokenClient == null) {
            return;
        }
        getTokenClient.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        getTokenClient.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(null);
        this.f6951Wwwwwwwwwwwwwwwwwwwwwww = null;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public GetTokenLoginMethodHandler(@NotNull Parcel parcel) {
        super(parcel);
        this.f6950Wwwwwwwwwwwwwwwwwwwwww = "get_token";
    }
}
