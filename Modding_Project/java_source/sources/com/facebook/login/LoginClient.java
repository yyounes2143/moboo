package com.facebook.login;

import android.content.Context;
import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.RestrictTo;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.facebook.AccessToken;
import com.facebook.AuthenticationToken;
import com.facebook.CustomTabMainActivity;
import com.facebook.FacebookException;
import com.facebook.FacebookSdk;
import com.facebook.internal.CallbackManagerImpl;
import com.facebook.internal.Utility;
import com.facebook.internal.Validate;
import com.facebook.login.LoginClient;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.mbridge.msdk.mbbid.out.BidResponsed;
import com.vungle.ads.internal.ui.AdActivity;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.collections.MapsKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u0090\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010$\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b!\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010%\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\n\b\u0017\u0018\u0000 \u0082\u00012\u00020\u0001:\n\u0083\u0001\u0082\u0001\u0084\u0001\u0085\u0001\u0086\u0001B\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\u0011\b\u0016\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u0004\u0010\bJ\u000f\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\n\u0010\u000bJ'\u0010\u0011\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0015\u001a\u00020\t2\u0006\u0010\u0014\u001a\u00020\u0013H\u0002¢\u0006\u0004\b\u0015\u0010\u0016J9\u0010\u001b\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\f2\u0006\u0010\u0018\u001a\u00020\u00132\u0018\u0010\u001a\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\f\u0012\u0006\u0012\u0004\u0018\u00010\f\u0018\u00010\u0019H\u0002¢\u0006\u0004\b\u001b\u0010\u001cJM\u0010\u001f\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\f2\u0006\u0010\u0018\u001a\u00020\f2\b\u0010\u001d\u001a\u0004\u0018\u00010\f2\b\u0010\u001e\u001a\u0004\u0018\u00010\f2\u0018\u0010\u001a\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\f\u0012\u0006\u0012\u0004\u0018\u00010\f\u0018\u00010\u0019H\u0002¢\u0006\u0004\b\u001f\u0010 J\u0017\u0010#\u001a\u00020\t2\b\u0010\"\u001a\u0004\u0018\u00010!¢\u0006\u0004\b#\u0010$J\u0017\u0010%\u001a\u00020\t2\b\u0010\"\u001a\u0004\u0018\u00010!¢\u0006\u0004\b%\u0010$J\r\u0010&\u001a\u00020\t¢\u0006\u0004\b&\u0010\u000bJ\u000f\u0010(\u001a\u0004\u0018\u00010'¢\u0006\u0004\b(\u0010)J'\u0010/\u001a\u00020\u000f2\u0006\u0010+\u001a\u00020*2\u0006\u0010,\u001a\u00020*2\b\u0010.\u001a\u0004\u0018\u00010-¢\u0006\u0004\b/\u00100J\u001f\u00102\u001a\n\u0012\u0004\u0012\u00020'\u0018\u0001012\u0006\u0010\"\u001a\u00020!H\u0016¢\u0006\u0004\b2\u00103J\r\u00104\u001a\u00020\u000f¢\u0006\u0004\b4\u00105J\r\u00106\u001a\u00020\t¢\u0006\u0004\b6\u0010\u000bJ\r\u00107\u001a\u00020\u000f¢\u0006\u0004\b7\u00105J\u0015\u00108\u001a\u00020\t2\u0006\u0010\u0014\u001a\u00020\u0013¢\u0006\u0004\b8\u0010\u0016J\u0015\u00109\u001a\u00020\t2\u0006\u0010\u0014\u001a\u00020\u0013¢\u0006\u0004\b9\u0010\u0016J\u0015\u0010;\u001a\u00020*2\u0006\u0010:\u001a\u00020\f¢\u0006\u0004\b;\u0010<J\u0015\u0010>\u001a\u00020\t2\u0006\u0010=\u001a\u00020\u0013¢\u0006\u0004\b>\u0010\u0016J\r\u0010?\u001a\u00020\t¢\u0006\u0004\b?\u0010\u000bJ\r\u0010@\u001a\u00020\t¢\u0006\u0004\b@\u0010\u000bJ\u000f\u0010A\u001a\u00020*H\u0016¢\u0006\u0004\bA\u0010BJ\u001f\u0010E\u001a\u00020\t2\u0006\u0010C\u001a\u00020\u00062\u0006\u0010D\u001a\u00020*H\u0016¢\u0006\u0004\bE\u0010FR*\u0010L\u001a\n\u0012\u0004\u0012\u00020'\u0018\u0001018\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b(\u0010G\u001a\u0004\bH\u0010I\"\u0004\bJ\u0010KR\u0016\u0010O\u001a\u00020*8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bM\u0010NR.\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\u000e\u001a\u0004\u0018\u00010\u00028\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b2\u0010P\u001a\u0004\bM\u0010Q\"\u0004\bR\u0010\u0005R$\u0010Z\u001a\u0004\u0018\u00010S8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bT\u0010U\u001a\u0004\bV\u0010W\"\u0004\bX\u0010YR$\u0010b\u001a\u0004\u0018\u00010[8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\\\u0010]\u001a\u0004\b^\u0010_\"\u0004\b`\u0010aR\"\u0010h\u001a\u00020\u000f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bc\u0010d\u001a\u0004\be\u00105\"\u0004\bf\u0010gR$\u0010l\u001a\u0004\u0018\u00010!8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010i\u001a\u0004\bc\u0010j\"\u0004\bk\u0010$R0\u0010\u001a\u001a\u0010\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\f\u0018\u00010m8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001f\u0010n\u001a\u0004\bo\u0010p\"\u0004\bq\u0010rR0\u0010u\u001a\u0010\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\f\u0018\u00010m8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b?\u0010n\u001a\u0004\bs\u0010p\"\u0004\bt\u0010rR\u0018\u0010x\u001a\u0004\u0018\u00010v8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b@\u0010wR\u0016\u0010y\u001a\u00020*8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010NR\u0016\u0010z\u001a\u00020*8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u0010NR\u0014\u0010|\u001a\u00020v8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\\\u0010{R\u0014\u0010\u0080\u0001\u001a\u0004\u0018\u00010}8F¢\u0006\u0006\u001a\u0004\b~\u0010\u007fR\u0012\u0010\u0081\u0001\u001a\u00020\u000f8F¢\u0006\u0006\u001a\u0004\bT\u00105¨\u0006\u0087\u0001"}, d2 = {"Lcom/facebook/login/LoginClient;", "Landroid/os/Parcelable;", "Landroidx/fragment/app/Fragment;", "fragment", "<init>", "(Landroidx/fragment/app/Fragment;)V", "Landroid/os/Parcel;", "source", "(Landroid/os/Parcel;)V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "()V", "", "key", "value", "", "accumulate", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/lang/String;Z)V", "Lcom/facebook/login/LoginClient$Result;", "outcome", "Wwwwwwwwwwwwwww", "(Lcom/facebook/login/LoginClient$Result;)V", FirebaseAnalytics.Param.METHOD, "result", "", "loggingExtras", "Wwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Lcom/facebook/login/LoginClient$Result;Ljava/util/Map;)V", "errorMessage", "errorCode", "Wwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V", "Lcom/facebook/login/LoginClient$Request;", AdActivity.REQUEST_KEY_EXTRA, "Wwwwwwwwww", "(Lcom/facebook/login/LoginClient$Request;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcom/facebook/login/LoginMethodHandler;", "Wwwwwwwwwwwwwwwwwwwwwwwww", "()Lcom/facebook/login/LoginMethodHandler;", "", "requestCode", "resultCode", "Landroid/content/Intent;", "data", "Wwwwwwwwwwwwww", "(IILandroid/content/Intent;)Z", "", "Wwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/login/LoginClient$Request;)[Lcom/facebook/login/LoginMethodHandler;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Z", "Wwwwwwww", "Wwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "permission", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)I", "pendingResult", "Wwwwwww", "Wwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwww", "describeContents", "()I", "dest", "flags", "writeToParcel", "(Landroid/os/Parcel;I)V", "[Lcom/facebook/login/LoginMethodHandler;", "getHandlersToTry", "()[Lcom/facebook/login/LoginMethodHandler;", "setHandlersToTry", "([Lcom/facebook/login/LoginMethodHandler;)V", "handlersToTry", "Wwwwwwwwwwwwwwwwwwwwwwww", "I", "currentHandler", "Landroidx/fragment/app/Fragment;", "()Landroidx/fragment/app/Fragment;", "Wwwwwwwwwwww", "Lcom/facebook/login/LoginClient$OnCompletedListener;", "Wwwwwwwwwwwwwwwwwwwwww", "Lcom/facebook/login/LoginClient$OnCompletedListener;", "getOnCompletedListener", "()Lcom/facebook/login/LoginClient$OnCompletedListener;", "Wwwwwwwwwww", "(Lcom/facebook/login/LoginClient$OnCompletedListener;)V", "onCompletedListener", "Lcom/facebook/login/LoginClient$BackgroundProcessingListener;", "Wwwwwwwwwwwwwwwwwwwww", "Lcom/facebook/login/LoginClient$BackgroundProcessingListener;", "getBackgroundProcessingListener", "()Lcom/facebook/login/LoginClient$BackgroundProcessingListener;", "Wwwwwwwwwwwww", "(Lcom/facebook/login/LoginClient$BackgroundProcessingListener;)V", "backgroundProcessingListener", "Wwwwwwwwwwwwwwwwwwww", "Z", "getCheckedInternetPermission", "setCheckedInternetPermission", "(Z)V", "checkedInternetPermission", "Lcom/facebook/login/LoginClient$Request;", "()Lcom/facebook/login/LoginClient$Request;", "setPendingRequest", "pendingRequest", "", "Ljava/util/Map;", "getLoggingExtras", "()Ljava/util/Map;", "setLoggingExtras", "(Ljava/util/Map;)V", "getExtraData", "setExtraData", "extraData", "Lcom/facebook/login/LoginLogger;", "Lcom/facebook/login/LoginLogger;", "loginLogger", "numActivitiesReturned", "numTotalIntentsFired", "()Lcom/facebook/login/LoginLogger;", "logger", "Landroidx/fragment/app/FragmentActivity;", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "()Landroidx/fragment/app/FragmentActivity;", "activity", "inProgress", "Companion", "BackgroundProcessingListener", "OnCompletedListener", "Request", "Result", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes4.dex */
public class LoginClient implements Parcelable {

    /* renamed from: Wwwwwwwwwwwwww  reason: collision with root package name */
    public int f6958Wwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwww  reason: collision with root package name */
    public int f6959Wwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwww  reason: collision with root package name */
    public LoginLogger f6960Wwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Map<String, String> f6961Wwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Map<String, String> f6962Wwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Request f6963Wwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f6964Wwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public BackgroundProcessingListener f6965Wwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public OnCompletedListener f6966Wwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Fragment f6967Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f6968Wwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public LoginMethodHandler[] f6969Wwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @JvmField
    @NotNull
    public static final Parcelable.Creator<LoginClient> CREATOR = new Parcelable.Creator<LoginClient>() { // from class: com.facebook.login.LoginClient$Companion$CREATOR$1
        @Override // android.os.Parcelable.Creator
        @NotNull
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public LoginClient[] newArray(int i) {
            return new LoginClient[i];
        }

        @Override // android.os.Parcelable.Creator
        @NotNull
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public LoginClient createFromParcel(@NotNull Parcel parcel) {
            return new LoginClient(parcel);
        }
    };

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\bf\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H&¢\u0006\u0004\b\u0005\u0010\u0004¨\u0006\u0006"}, d2 = {"Lcom/facebook/login/LoginClient$BackgroundProcessingListener;", "", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public interface BackgroundProcessingListener {
        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();

        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0007¢\u0006\u0004\b\b\u0010\tR\u001a\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\n8\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/facebook/login/LoginClient$Companion;", "", "<init>", "()V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()I", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/lang/String;", "Landroid/os/Parcelable$Creator;", "Lcom/facebook/login/LoginClient;", "CREATOR", "Landroid/os/Parcelable$Creator;", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return CallbackManagerImpl.RequestCodeOffset.Login.toRequestCode();
        }

        @JvmStatic
        @NotNull
        public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("init", System.currentTimeMillis());
            } catch (JSONException unused) {
            }
            return jSONObject.toString();
        }

        public Companion() {
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\bæ\u0080\u0001\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/facebook/login/LoginClient$OnCompletedListener;", "", "Lcom/facebook/login/LoginClient$Result;", "result", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/login/LoginClient$Result;)V", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public interface OnCompletedListener {
        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Result result);
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b:\u0018\u0000 Y2\u00020\u0001:\u0001YB}\b\u0011\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0005\u0012\u0006\u0010\n\u001a\u00020\u0005\u0012\u0006\u0010\u000b\u001a\u00020\u0005\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0011¢\u0006\u0004\b\u0013\u0010\u0014B\u0011\b\u0012\u0012\u0006\u0010\u0016\u001a\u00020\u0015¢\u0006\u0004\b\u0013\u0010\u0017J\r\u0010\u0019\u001a\u00020\u0018¢\u0006\u0004\b\u0019\u0010\u001aJ\u0015\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u001b\u001a\u00020\u0018¢\u0006\u0004\b\u001d\u0010\u001eJ\r\u0010\u001f\u001a\u00020\u0018¢\u0006\u0004\b\u001f\u0010\u001aJ\u000f\u0010!\u001a\u00020 H\u0016¢\u0006\u0004\b!\u0010\"J\u001f\u0010%\u001a\u00020\u001c2\u0006\u0010#\u001a\u00020\u00152\u0006\u0010$\u001a\u00020 H\u0016¢\u0006\u0004\b%\u0010&R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b'\u0010(\u001a\u0004\b'\u0010)R(\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b*\u0010+\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/R\u0017\u0010\b\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b0\u00101\u001a\u0004\b2\u00103R\u0017\u0010\n\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b4\u00105\u001a\u0004\b6\u00107R\"\u0010\u000b\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b,\u00105\u001a\u0004\b8\u00107\"\u0004\b9\u0010:R\"\u0010?\u001a\u00020\u00188\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b;\u0010<\u001a\u0004\b=\u0010\u001a\"\u0004\b>\u0010\u001eR$\u0010B\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001f\u00105\u001a\u0004\b@\u00107\"\u0004\bA\u0010:R\"\u0010\t\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bC\u00105\u001a\u0004\bD\u00107\"\u0004\bE\u0010:R$\u0010I\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bF\u00105\u001a\u0004\bG\u00107\"\u0004\bH\u0010:R$\u0010K\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b=\u00105\u001a\u0004\b0\u00107\"\u0004\bJ\u0010:R\"\u0010M\u001a\u00020\u00188\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b9\u0010<\u001a\u0004\b;\u0010\u001a\"\u0004\bL\u0010\u001eR\u0017\u0010Q\u001a\u00020\f8\u0006¢\u0006\f\n\u0004\bN\u0010O\u001a\u0004\b*\u0010PR\"\u0010R\u001a\u00020\u00188\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bJ\u0010<\u001a\u0004\bC\u0010\u001a\"\u0004\bN\u0010\u001eR\u0016\u0010\u001b\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b.\u0010<R\u0017\u0010\u000e\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b>\u00105\u001a\u0004\b4\u00107R\u0019\u0010\u000f\u001a\u0004\u0018\u00010\u00058\u0006¢\u0006\f\n\u0004\bL\u00105\u001a\u0004\bS\u00107R\u0019\u0010\u0010\u001a\u0004\u0018\u00010\u00058\u0006¢\u0006\f\n\u0004\b\u001d\u00105\u001a\u0004\bT\u00107R\u0019\u0010\u0012\u001a\u0004\u0018\u00010\u00118\u0006¢\u0006\f\n\u0004\b\u0019\u0010U\u001a\u0004\bV\u0010WR\u0011\u0010X\u001a\u00020\u00188F¢\u0006\u0006\u001a\u0004\bF\u0010\u001a¨\u0006Z"}, d2 = {"Lcom/facebook/login/LoginClient$Request;", "Landroid/os/Parcelable;", "Lcom/facebook/login/LoginBehavior;", "loginBehavior", "", "", "permissions", "Lcom/facebook/login/DefaultAudience;", "defaultAudience", "authType", "applicationId", "authId", "Lcom/facebook/login/LoginTargetApp;", "targetApp", "nonce", "codeVerifier", "codeChallenge", "Lcom/facebook/login/CodeChallengeMethod;", "codeChallengeMethod", "<init>", "(Lcom/facebook/login/LoginBehavior;Ljava/util/Set;Lcom/facebook/login/DefaultAudience;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/login/LoginTargetApp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/login/CodeChallengeMethod;)V", "Landroid/os/Parcel;", "parcel", "(Landroid/os/Parcel;)V", "", "Wwwwwwww", "()Z", "shouldSkipAccountDeduplication", "", "Wwwwwwwww", "(Z)V", "Wwwwwwwwwwwwwwwwwww", "", "describeContents", "()I", "dest", "flags", "writeToParcel", "(Landroid/os/Parcel;I)V", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Lcom/facebook/login/LoginBehavior;", "()Lcom/facebook/login/LoginBehavior;", "Wwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/Set;", "Wwwwwwwwwwwwwwwwwwwww", "()Ljava/util/Set;", "Wwwwwwwwwwww", "(Ljava/util/Set;)V", "Wwwwwwwwwwwwwwwwwwwwwww", "Lcom/facebook/login/DefaultAudience;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lcom/facebook/login/DefaultAudience;", "Wwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwww", "(Ljava/lang/String;)V", "Wwwwwwwwwwwwwwwwwwww", "Z", "Wwwwwwwwwwwwwwww", "Wwwwwwwwwww", "isRerequest", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "setDeviceRedirectUriString", "deviceRedirectUriString", "Wwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "setAuthType", "Wwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "setDeviceAuthTargetUserId", "deviceAuthTargetUserId", "Wwwwwwwwwwwww", "messengerPageId", "Wwwwwwwwww", "resetMessengerState", "Wwwwwwwwwwwwww", "Lcom/facebook/login/LoginTargetApp;", "()Lcom/facebook/login/LoginTargetApp;", "loginTargetApp", "isFamilyLogin", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcom/facebook/login/CodeChallengeMethod;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lcom/facebook/login/CodeChallengeMethod;", "isInstagramLogin", "Companion", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Request implements Parcelable {
        @Nullable

        /* renamed from: Wwwwwwww  reason: collision with root package name */
        public final CodeChallengeMethod f6970Wwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwww  reason: collision with root package name */
        public final String f6971Wwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwww  reason: collision with root package name */
        public final String f6972Wwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwww  reason: collision with root package name */
        public final String f6973Wwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwww  reason: collision with root package name */
        public boolean f6974Wwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwww  reason: collision with root package name */
        public boolean f6975Wwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwww  reason: collision with root package name */
        public final LoginTargetApp f6976Wwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwww  reason: collision with root package name */
        public boolean f6977Wwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwww  reason: collision with root package name */
        public String f6978Wwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwww  reason: collision with root package name */
        public String f6979Wwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public String f6980Wwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public String f6981Wwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public boolean f6982Wwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public String f6983Wwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final String f6984Wwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final DefaultAudience f6985Wwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Set<String> f6986Wwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final LoginBehavior f6987Wwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull
        public static final Companion Companion = new Companion(null);
        @JvmField
        @NotNull
        public static final Parcelable.Creator<Request> CREATOR = new Parcelable.Creator<Request>() { // from class: com.facebook.login.LoginClient$Request$Companion$CREATOR$1
            @Override // android.os.Parcelable.Creator
            @NotNull
            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
            public LoginClient.Request[] newArray(int i) {
                return new LoginClient.Request[i];
            }

            @Override // android.os.Parcelable.Creator
            @NotNull
            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
            public LoginClient.Request createFromParcel(@NotNull Parcel parcel) {
                return new LoginClient.Request(parcel, null);
            }
        };

        /* compiled from: Proguard */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"Lcom/facebook/login/LoginClient$Request$Companion;", "", "()V", "CREATOR", "Landroid/os/Parcelable$Creator;", "Lcom/facebook/login/LoginClient$Request;", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
        /* loaded from: classes4.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public Companion() {
            }
        }

        public /* synthetic */ Request(Parcel parcel, DefaultConstructorMarker defaultConstructorMarker) {
            this(parcel);
        }

        public final boolean Wwwwwwww() {
            return this.f6974Wwwwwwwwwwww;
        }

        public final void Wwwwwwwww(boolean z) {
            this.f6974Wwwwwwwwwwww = z;
        }

        public final void Wwwwwwwwww(boolean z) {
            this.f6977Wwwwwwwwwwwwwww = z;
        }

        public final void Wwwwwwwwwww(boolean z) {
            this.f6982Wwwwwwwwwwwwwwwwwwww = z;
        }

        public final void Wwwwwwwwwwww(@NotNull Set<String> set) {
            this.f6986Wwwwwwwwwwwwwwwwwwwwwwww = set;
        }

        public final void Wwwwwwwwwwwww(@Nullable String str) {
            this.f6978Wwwwwwwwwwwwwwww = str;
        }

        public final void Wwwwwwwwwwwwww(boolean z) {
            this.f6975Wwwwwwwwwwwww = z;
        }

        public final void Wwwwwwwwwwwwwww(@NotNull String str) {
            this.f6983Wwwwwwwwwwwwwwwwwwwww = str;
        }

        public final boolean Wwwwwwwwwwwwwwww() {
            return this.f6982Wwwwwwwwwwwwwwwwwwww;
        }

        public final boolean Wwwwwwwwwwwwwwwww() {
            if (this.f6976Wwwwwwwwwwwwww == LoginTargetApp.INSTAGRAM) {
                return true;
            }
            return false;
        }

        public final boolean Wwwwwwwwwwwwwwwwww() {
            return this.f6975Wwwwwwwwwwwww;
        }

        public final boolean Wwwwwwwwwwwwwwwwwww() {
            for (String str : this.f6986Wwwwwwwwwwwwwwwwwwwwwwww) {
                if (LoginManager.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(str)) {
                    return true;
                }
            }
            return false;
        }

        public final boolean Wwwwwwwwwwwwwwwwwwww() {
            return this.f6977Wwwwwwwwwwwwwww;
        }

        @NotNull
        public final Set<String> Wwwwwwwwwwwwwwwwwwwww() {
            return this.f6986Wwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public final String Wwwwwwwwwwwwwwwwwwwwww() {
            return this.f6973Wwwwwwwwwww;
        }

        @Nullable
        public final String Wwwwwwwwwwwwwwwwwwwwwww() {
            return this.f6978Wwwwwwwwwwwwwwww;
        }

        @NotNull
        public final LoginTargetApp Wwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f6976Wwwwwwwwwwwwww;
        }

        @NotNull
        public final LoginBehavior Wwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f6987Wwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @Nullable
        public final String Wwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f6981Wwwwwwwwwwwwwwwwwww;
        }

        @Nullable
        public final String Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f6979Wwwwwwwwwwwwwwwww;
        }

        @NotNull
        public final DefaultAudience Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f6985Wwwwwwwwwwwwwwwwwwwwwww;
        }

        @Nullable
        public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f6972Wwwwwwwwww;
        }

        @Nullable
        public final CodeChallengeMethod Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f6970Wwwwwwww;
        }

        @Nullable
        public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f6971Wwwwwwwww;
        }

        @NotNull
        public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f6980Wwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f6983Wwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f6984Wwwwwwwwwwwwwwwwwwwwww;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(@NotNull Parcel parcel, int i) {
            String name;
            parcel.writeString(this.f6987Wwwwwwwwwwwwwwwwwwwwwwwww.name());
            parcel.writeStringList(new ArrayList(this.f6986Wwwwwwwwwwwwwwwwwwwwwwww));
            parcel.writeString(this.f6985Wwwwwwwwwwwwwwwwwwwwwww.name());
            parcel.writeString(this.f6984Wwwwwwwwwwwwwwwwwwwwww);
            parcel.writeString(this.f6983Wwwwwwwwwwwwwwwwwwwww);
            parcel.writeByte(this.f6982Wwwwwwwwwwwwwwwwwwww ? (byte) 1 : (byte) 0);
            parcel.writeString(this.f6981Wwwwwwwwwwwwwwwwwww);
            parcel.writeString(this.f6980Wwwwwwwwwwwwwwwwww);
            parcel.writeString(this.f6979Wwwwwwwwwwwwwwwww);
            parcel.writeString(this.f6978Wwwwwwwwwwwwwwww);
            parcel.writeByte(this.f6977Wwwwwwwwwwwwwww ? (byte) 1 : (byte) 0);
            parcel.writeString(this.f6976Wwwwwwwwwwwwww.name());
            parcel.writeByte(this.f6975Wwwwwwwwwwwww ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.f6974Wwwwwwwwwwww ? (byte) 1 : (byte) 0);
            parcel.writeString(this.f6973Wwwwwwwwwww);
            parcel.writeString(this.f6972Wwwwwwwwww);
            parcel.writeString(this.f6971Wwwwwwwww);
            CodeChallengeMethod codeChallengeMethod = this.f6970Wwwwwwww;
            if (codeChallengeMethod == null) {
                name = null;
            } else {
                name = codeChallengeMethod.name();
            }
            parcel.writeString(name);
        }

        @JvmOverloads
        public Request(@NotNull LoginBehavior loginBehavior, @Nullable Set<String> set, @NotNull DefaultAudience defaultAudience, @NotNull String str, @NotNull String str2, @NotNull String str3, @Nullable LoginTargetApp loginTargetApp, @Nullable String str4, @Nullable String str5, @Nullable String str6, @Nullable CodeChallengeMethod codeChallengeMethod) {
            this.f6987Wwwwwwwwwwwwwwwwwwwwwwwww = loginBehavior;
            this.f6986Wwwwwwwwwwwwwwwwwwwwwwww = set == null ? new HashSet<>() : set;
            this.f6985Wwwwwwwwwwwwwwwwwwwwwww = defaultAudience;
            this.f6980Wwwwwwwwwwwwwwwwww = str;
            this.f6984Wwwwwwwwwwwwwwwwwwwwww = str2;
            this.f6983Wwwwwwwwwwwwwwwwwwwww = str3;
            this.f6976Wwwwwwwwwwwwww = loginTargetApp == null ? LoginTargetApp.FACEBOOK : loginTargetApp;
            if (str4 != null && str4.length() != 0) {
                this.f6973Wwwwwwwwwww = str4;
            } else {
                this.f6973Wwwwwwwwwww = UUID.randomUUID().toString();
            }
            this.f6972Wwwwwwwwww = str5;
            this.f6971Wwwwwwwww = str6;
            this.f6970Wwwwwwww = codeChallengeMethod;
        }

        public Request(Parcel parcel) {
            DefaultAudience defaultAudience;
            LoginTargetApp loginTargetApp;
            Validate validate = Validate.INSTANCE;
            this.f6987Wwwwwwwwwwwwwwwwwwwwwwwww = LoginBehavior.valueOf(Validate.Wwwwwwwwwwwwwwwwwwwww(parcel.readString(), "loginBehavior"));
            ArrayList arrayList = new ArrayList();
            parcel.readStringList(arrayList);
            this.f6986Wwwwwwwwwwwwwwwwwwwwwwww = new HashSet(arrayList);
            String readString = parcel.readString();
            if (readString != null) {
                defaultAudience = DefaultAudience.valueOf(readString);
            } else {
                defaultAudience = DefaultAudience.NONE;
            }
            this.f6985Wwwwwwwwwwwwwwwwwwwwwww = defaultAudience;
            this.f6984Wwwwwwwwwwwwwwwwwwwwww = Validate.Wwwwwwwwwwwwwwwwwwwww(parcel.readString(), "applicationId");
            this.f6983Wwwwwwwwwwwwwwwwwwwww = Validate.Wwwwwwwwwwwwwwwwwwwww(parcel.readString(), "authId");
            this.f6982Wwwwwwwwwwwwwwwwwwww = parcel.readByte() != 0;
            this.f6981Wwwwwwwwwwwwwwwwwww = parcel.readString();
            this.f6980Wwwwwwwwwwwwwwwwww = Validate.Wwwwwwwwwwwwwwwwwwwww(parcel.readString(), "authType");
            this.f6979Wwwwwwwwwwwwwwwww = parcel.readString();
            this.f6978Wwwwwwwwwwwwwwww = parcel.readString();
            this.f6977Wwwwwwwwwwwwwww = parcel.readByte() != 0;
            String readString2 = parcel.readString();
            if (readString2 != null) {
                loginTargetApp = LoginTargetApp.valueOf(readString2);
            } else {
                loginTargetApp = LoginTargetApp.FACEBOOK;
            }
            this.f6976Wwwwwwwwwwwwww = loginTargetApp;
            this.f6975Wwwwwwwwwwwww = parcel.readByte() != 0;
            this.f6974Wwwwwwwwwwww = parcel.readByte() != 0;
            this.f6973Wwwwwwwwwww = Validate.Wwwwwwwwwwwwwwwwwwwww(parcel.readString(), "nonce");
            this.f6972Wwwwwwwwww = parcel.readString();
            this.f6971Wwwwwwwww = parcel.readString();
            String readString3 = parcel.readString();
            this.f6970Wwwwwwww = readString3 == null ? null : CodeChallengeMethod.valueOf(readString3);
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\r\n\u0002\u0010$\n\u0002\b\b\u0018\u0000 -2\u00020\u0001:\u0002.-B9\b\u0010\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\u0010\n\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\u000b\u0010\fBC\b\u0010\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\u0010\n\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\u000b\u0010\u0010B\u0011\b\u0012\u0012\u0006\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u000b\u0010\u0013J\u000f\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u001f\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0017\u001a\u00020\u00112\u0006\u0010\u0018\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u001a\u0010\u001bR\u0014\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0016\u0010\u000f\u001a\u0004\u0018\u00010\u000e8\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b \u0010!R\u0016\u0010\t\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\"\u0010#R\u0016\u0010\n\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b$\u0010#R\u0016\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b%\u0010&R$\u0010*\u001a\u0010\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b\u0018\u00010'8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b(\u0010)R$\u0010,\u001a\u0010\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b\u0018\u00010'8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b+\u0010)¨\u0006/"}, d2 = {"Lcom/facebook/login/LoginClient$Result;", "Landroid/os/Parcelable;", "Lcom/facebook/login/LoginClient$Request;", AdActivity.REQUEST_KEY_EXTRA, "Lcom/facebook/login/LoginClient$Result$Code;", "code", "Lcom/facebook/AccessToken;", BidResponsed.KEY_TOKEN, "", "errorMessage", "errorCode", "<init>", "(Lcom/facebook/login/LoginClient$Request;Lcom/facebook/login/LoginClient$Result$Code;Lcom/facebook/AccessToken;Ljava/lang/String;Ljava/lang/String;)V", "accessToken", "Lcom/facebook/AuthenticationToken;", "authenticationToken", "(Lcom/facebook/login/LoginClient$Request;Lcom/facebook/login/LoginClient$Result$Code;Lcom/facebook/AccessToken;Lcom/facebook/AuthenticationToken;Ljava/lang/String;Ljava/lang/String;)V", "Landroid/os/Parcel;", "parcel", "(Landroid/os/Parcel;)V", "", "describeContents", "()I", "dest", "flags", "", "writeToParcel", "(Landroid/os/Parcel;I)V", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Lcom/facebook/login/LoginClient$Result$Code;", "Wwwwwwwwwwwwwwwwwwwwwwww", "Lcom/facebook/AccessToken;", "Wwwwwwwwwwwwwwwwwwwwwww", "Lcom/facebook/AuthenticationToken;", "Wwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwww", "Lcom/facebook/login/LoginClient$Request;", "", "Wwwwwwwwwwwwwwwwwww", "Ljava/util/Map;", "loggingExtras", "Wwwwwwwwwwwwwwwwww", "extraData", "Companion", "Code", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Result implements Parcelable {
        @JvmField
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Map<String, String> f6988Wwwwwwwwwwwwwwwwww;
        @JvmField
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Map<String, String> f6989Wwwwwwwwwwwwwwwwwww;
        @JvmField
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Request f6990Wwwwwwwwwwwwwwwwwwww;
        @JvmField
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final String f6991Wwwwwwwwwwwwwwwwwwwww;
        @JvmField
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final String f6992Wwwwwwwwwwwwwwwwwwwwww;
        @JvmField
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final AuthenticationToken f6993Wwwwwwwwwwwwwwwwwwwwwww;
        @JvmField
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final AccessToken f6994Wwwwwwwwwwwwwwwwwwwwwwww;
        @JvmField
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Code f6995Wwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull
        public static final Companion Companion = new Companion(null);
        @JvmField
        @NotNull
        public static final Parcelable.Creator<Result> CREATOR = new Parcelable.Creator<Result>() { // from class: com.facebook.login.LoginClient$Result$Companion$CREATOR$1
            @Override // android.os.Parcelable.Creator
            @NotNull
            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
            public LoginClient.Result[] newArray(int i) {
                return new LoginClient.Result[i];
            }

            @Override // android.os.Parcelable.Creator
            @NotNull
            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
            public LoginClient.Result createFromParcel(@NotNull Parcel parcel) {
                return new LoginClient.Result(parcel, null);
            }
        };

        /* compiled from: Proguard */
        @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\t¨\u0006\n"}, d2 = {"Lcom/facebook/login/LoginClient$Result$Code;", "", "loggingValue", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getLoggingValue", "()Ljava/lang/String;", "SUCCESS", "CANCEL", "ERROR", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
        /* loaded from: classes4.dex */
        public enum Code {
            SUCCESS(FirebaseAnalytics.Param.SUCCESS),
            CANCEL("cancel"),
            ERROR("error");
            
            @NotNull
            private final String loggingValue;

            Code(String str) {
                this.loggingValue = str;
            }

            /* renamed from: values  reason: to resolve conflict with enum method */
            public static Code[] valuesCustom() {
                Code[] valuesCustom = values();
                return (Code[]) Arrays.copyOf(valuesCustom, valuesCustom.length);
            }

            @NotNull
            public final String getLoggingValue() {
                return this.loggingValue;
            }
        }

        /* compiled from: Proguard */
        @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J!\u0010\t\u001a\u00020\b2\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0007¢\u0006\u0004\b\t\u0010\nJ-\u0010\u000e\u001a\u00020\b2\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u000b\u001a\u0004\u0018\u00010\u00062\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0007¢\u0006\u0004\b\u000e\u0010\u000fJ#\u0010\u0012\u001a\u00020\b2\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0007¢\u0006\u0004\b\u0012\u0010\u0013J9\u0010\u0017\u001a\u00020\b2\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0014\u001a\u0004\u0018\u00010\u00102\b\u0010\u0015\u001a\u0004\u0018\u00010\u00102\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0010H\u0007¢\u0006\u0004\b\u0017\u0010\u0018R\u001a\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\b0\u00198\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001b¨\u0006\u001c"}, d2 = {"Lcom/facebook/login/LoginClient$Result$Companion;", "", "<init>", "()V", "Lcom/facebook/login/LoginClient$Request;", AdActivity.REQUEST_KEY_EXTRA, "Lcom/facebook/AccessToken;", BidResponsed.KEY_TOKEN, "Lcom/facebook/login/LoginClient$Result;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/login/LoginClient$Request;Lcom/facebook/AccessToken;)Lcom/facebook/login/LoginClient$Result;", "accessToken", "Lcom/facebook/AuthenticationToken;", "authenticationToken", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/login/LoginClient$Request;Lcom/facebook/AccessToken;Lcom/facebook/AuthenticationToken;)Lcom/facebook/login/LoginClient$Result;", "", "message", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result;", "errorType", "errorDescription", "errorCode", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result;", "Landroid/os/Parcelable$Creator;", "CREATOR", "Landroid/os/Parcelable$Creator;", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
        /* loaded from: classes4.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public static /* synthetic */ Result Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Companion companion, Request request, String str, String str2, String str3, int i, Object obj) {
                if ((i & 8) != 0) {
                    str3 = null;
                }
                return companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(request, str, str2, str3);
            }

            @JvmStatic
            @NotNull
            public final Result Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Request request, @NotNull AccessToken accessToken) {
                return new Result(request, Code.SUCCESS, accessToken, null, null);
            }

            @JvmStatic
            @JvmOverloads
            @NotNull
            public final Result Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Request request, @Nullable String str, @Nullable String str2, @Nullable String str3) {
                ArrayList arrayList = new ArrayList();
                if (str != null) {
                    arrayList.add(str);
                }
                if (str2 != null) {
                    arrayList.add(str2);
                }
                return new Result(request, Code.ERROR, null, TextUtils.join(": ", arrayList), str3);
            }

            @JvmStatic
            @NotNull
            public final Result Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Request request, @Nullable AccessToken accessToken, @Nullable AuthenticationToken authenticationToken) {
                return new Result(request, Code.SUCCESS, accessToken, authenticationToken, null, null);
            }

            @JvmStatic
            @NotNull
            public final Result Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Request request, @Nullable String str) {
                return new Result(request, Code.CANCEL, null, str, null);
            }

            public Companion() {
            }
        }

        public /* synthetic */ Result(Parcel parcel, DefaultConstructorMarker defaultConstructorMarker) {
            this(parcel);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(@NotNull Parcel parcel, int i) {
            parcel.writeString(this.f6995Wwwwwwwwwwwwwwwwwwwwwwwww.name());
            parcel.writeParcelable(this.f6994Wwwwwwwwwwwwwwwwwwwwwwww, i);
            parcel.writeParcelable(this.f6993Wwwwwwwwwwwwwwwwwwwwwww, i);
            parcel.writeString(this.f6992Wwwwwwwwwwwwwwwwwwwwww);
            parcel.writeString(this.f6991Wwwwwwwwwwwwwwwwwwwww);
            parcel.writeParcelable(this.f6990Wwwwwwwwwwwwwwwwwwww, i);
            Utility utility = Utility.INSTANCE;
            Utility.IIlllllll(parcel, this.f6989Wwwwwwwwwwwwwwwwwww);
            Utility.IIlllllll(parcel, this.f6988Wwwwwwwwwwwwwwwwww);
        }

        public Result(@Nullable Request request, @NotNull Code code, @Nullable AccessToken accessToken, @Nullable String str, @Nullable String str2) {
            this(request, code, accessToken, null, str, str2);
        }

        public Result(@Nullable Request request, @NotNull Code code, @Nullable AccessToken accessToken, @Nullable AuthenticationToken authenticationToken, @Nullable String str, @Nullable String str2) {
            this.f6990Wwwwwwwwwwwwwwwwwwww = request;
            this.f6994Wwwwwwwwwwwwwwwwwwwwwwww = accessToken;
            this.f6993Wwwwwwwwwwwwwwwwwwwwwww = authenticationToken;
            this.f6992Wwwwwwwwwwwwwwwwwwwwww = str;
            this.f6995Wwwwwwwwwwwwwwwwwwwwwwwww = code;
            this.f6991Wwwwwwwwwwwwwwwwwwwww = str2;
        }

        public Result(Parcel parcel) {
            String readString = parcel.readString();
            this.f6995Wwwwwwwwwwwwwwwwwwwwwwwww = Code.valueOf(readString == null ? "error" : readString);
            this.f6994Wwwwwwwwwwwwwwwwwwwwwwww = (AccessToken) parcel.readParcelable(AccessToken.class.getClassLoader());
            this.f6993Wwwwwwwwwwwwwwwwwwwwwww = (AuthenticationToken) parcel.readParcelable(AuthenticationToken.class.getClassLoader());
            this.f6992Wwwwwwwwwwwwwwwwwwwwww = parcel.readString();
            this.f6991Wwwwwwwwwwwwwwwwwwwww = parcel.readString();
            this.f6990Wwwwwwwwwwwwwwwwwwww = (Request) parcel.readParcelable(Request.class.getClassLoader());
            this.f6989Wwwwwwwwwwwwwwwwwww = Utility.Illlllllllllll(parcel);
            this.f6988Wwwwwwwwwwwwwwwwww = Utility.Illlllllllllll(parcel);
        }
    }

    public LoginClient(@NotNull Fragment fragment) {
        this.f6968Wwwwwwwwwwwwwwwwwwwwwwww = -1;
        Wwwwwwwwwwww(fragment);
    }

    public final void Wwwwwww(@NotNull Result result) {
        Result Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        if (result.f6994Wwwwwwwwwwwwwwwwwwwwwwww != null) {
            AccessToken Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = AccessToken.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
            AccessToken accessToken = result.f6994Wwwwwwwwwwwwwwwwwwwwwwww;
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                try {
                    if (Intrinsics.areEqual(Wwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwww(), accessToken.Wwwwwwwwwwwwwwwwwwwww())) {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Result.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f6963Wwwwwwwwwwwwwwwwwww, result.f6994Wwwwwwwwwwwwwwwwwwwwwwww, result.f6993Wwwwwwwwwwwwwwwwwwwwwww);
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                        return;
                    }
                } catch (Exception e) {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Result.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Result.Companion, this.f6963Wwwwwwwwwwwwwwwwwww, "Caught exception", e.getMessage(), null, 8, null));
                    return;
                }
            }
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Result.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Result.Companion, this.f6963Wwwwwwwwwwwwwwwwwww, "User logged in as different Facebook user.", null, null, 8, null);
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            return;
        }
        throw new FacebookException("Can't validate without a token");
    }

    public final void Wwwwwwww() {
        LoginClient loginClient;
        LoginMethodHandler Wwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
            loginClient = this;
            loginClient.Wwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(), "skipped", null, null, Wwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        } else {
            loginClient = this;
        }
        LoginMethodHandler[] loginMethodHandlerArr = loginClient.f6969Wwwwwwwwwwwwwwwwwwwwwwwww;
        while (loginMethodHandlerArr != null) {
            int i = loginClient.f6968Wwwwwwwwwwwwwwwwwwwwwwww;
            if (i >= loginMethodHandlerArr.length - 1) {
                break;
            }
            loginClient.f6968Wwwwwwwwwwwwwwwwwwwwwwww = i + 1;
            if (Wwwwwwwww()) {
                return;
            }
        }
        if (loginClient.f6963Wwwwwwwwwwwwwwwwwww != null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
    }

    public final boolean Wwwwwwwww() {
        String str;
        String str2;
        LoginMethodHandler Wwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            return false;
        }
        if (Wwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwww() && !Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("no_internet_permission", "1", false);
            return false;
        }
        Request request = this.f6963Wwwwwwwwwwwwwwwwwww;
        if (request == null) {
            return false;
        }
        int Wwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwww(request);
        this.f6959Wwwwwwwwwwwwwww = 0;
        if (Wwwwwwwwwwwwwwwwwwww2 > 0) {
            LoginLogger Wwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwww();
            String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = request.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            String Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (request.Wwwwwwwwwwwwwwwwww()) {
                str2 = "foa_mobile_login_method_start";
            } else {
                str2 = "fb_mobile_login_method_start";
            }
            Wwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2, str2);
            this.f6958Wwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwww2;
        } else {
            LoginLogger Wwwwwwwwwwwwwwwwwwwww3 = Wwwwwwwwwwwwwwwwwwwww();
            String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = request.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            String Wwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = Wwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (request.Wwwwwwwwwwwwwwwwww()) {
                str = "foa_mobile_login_method_not_tried";
            } else {
                str = "fb_mobile_login_method_not_tried";
            }
            Wwwwwwwwwwwwwwwwwwwww3.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3, Wwwwwwwwwwwwwwwwwwwwwwwwwwwww3, str);
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("not_tried", Wwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(), true);
        }
        if (Wwwwwwwwwwwwwwwwwwww2 <= 0) {
            return false;
        }
        return true;
    }

    public final void Wwwwwwwwww(@Nullable Request request) {
        if (!Wwwwwwwwwwwwwwwwwwwwww()) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(request);
        }
    }

    public final void Wwwwwwwwwww(@Nullable OnCompletedListener onCompletedListener) {
        this.f6966Wwwwwwwwwwwwwwwwwwwwww = onCompletedListener;
    }

    public final void Wwwwwwwwwwww(@Nullable Fragment fragment) {
        if (this.f6967Wwwwwwwwwwwwwwwwwwwwwww == null) {
            this.f6967Wwwwwwwwwwwwwwwwwwwwwww = fragment;
            return;
        }
        throw new FacebookException("Can't set fragment once it is already set.");
    }

    public final void Wwwwwwwwwwwww(@Nullable BackgroundProcessingListener backgroundProcessingListener) {
        this.f6965Wwwwwwwwwwwwwwwwwwwww = backgroundProcessingListener;
    }

    public final boolean Wwwwwwwwwwwwww(int i, int i2, @Nullable Intent intent) {
        this.f6959Wwwwwwwwwwwwwww++;
        if (this.f6963Wwwwwwwwwwwwwwwwwww != null) {
            if (intent != null && intent.getBooleanExtra(CustomTabMainActivity.f5952Wwwwwwwwwwwwwwwww, false)) {
                Wwwwwwww();
                return false;
            }
            LoginMethodHandler Wwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwwwwwwwwwwwwww2 != null && (!Wwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwww() || intent != null || this.f6959Wwwwwwwwwwwwwww >= this.f6958Wwwwwwwwwwwwww)) {
                return Wwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwww(i, i2, intent);
            }
        }
        return false;
    }

    public final void Wwwwwwwwwwwwwww(Result result) {
        OnCompletedListener onCompletedListener = this.f6966Wwwwwwwwwwwwwwwwwwwwww;
        if (onCompletedListener == null) {
            return;
        }
        onCompletedListener.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(result);
    }

    public final void Wwwwwwwwwwwwwwww() {
        BackgroundProcessingListener backgroundProcessingListener = this.f6965Wwwwwwwwwwwwwwwwwwwww;
        if (backgroundProcessingListener == null) {
            return;
        }
        backgroundProcessingListener.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public final void Wwwwwwwwwwwwwwwww() {
        BackgroundProcessingListener backgroundProcessingListener = this.f6965Wwwwwwwwwwwwwwwwwwwww;
        if (backgroundProcessingListener == null) {
            return;
        }
        backgroundProcessingListener.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public final void Wwwwwwwwwwwwwwwwww(String str, String str2, String str3, String str4, Map<String, String> map) {
        Request request = this.f6963Wwwwwwwwwwwwwwwwwww;
        String str5 = "fb_mobile_login_method_complete";
        if (request == null) {
            Wwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwww("fb_mobile_login_method_complete", "Unexpected call to logCompleteLogin with null pendingAuthorizationRequest.", str);
            return;
        }
        LoginLogger Wwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwww();
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = request.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (request.Wwwwwwwwwwwwwwwwww()) {
            str5 = "foa_mobile_login_method_complete";
        }
        Wwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, str, str2, str3, str4, map, str5);
    }

    public final void Wwwwwwwwwwwwwwwwwww(String str, Result result, Map<String, String> map) {
        Wwwwwwwwwwwwwwwwww(str, result.f6995Wwwwwwwwwwwwwwwwwwwwwwwww.getLoggingValue(), result.f6992Wwwwwwwwwwwwwwwwwwwwww, result.f6991Wwwwwwwwwwwwwwwwwwwww, map);
    }

    @Nullable
    public final Request Wwwwwwwwwwwwwwwwwwww() {
        return this.f6963Wwwwwwwwwwwwwwwwwww;
    }

    public final LoginLogger Wwwwwwwwwwwwwwwwwwwww() {
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3;
        LoginLogger loginLogger = this.f6960Wwwwwwwwwwwwwwww;
        if (loginLogger != null) {
            String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = loginLogger.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            Request request = this.f6963Wwwwwwwwwwwwwwwwwww;
            if (request == null) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = null;
            } else {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = request.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            }
            if (Intrinsics.areEqual(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3)) {
                return loginLogger;
            }
        }
        Context Wwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwww2 = FacebookSdk.Wwwwwwwwwwwwwwwwwwwwwww();
        }
        Request request2 = this.f6963Wwwwwwwwwwwwwwwwwww;
        if (request2 == null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = FacebookSdk.Wwwwwwwwwwwwwwwwwwwwww();
        } else {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = request2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        LoginLogger loginLogger2 = new LoginLogger(Wwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        this.f6960Wwwwwwwwwwwwwwww = loginLogger2;
        return loginLogger2;
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwww() {
        if (this.f6963Wwwwwwwwwwwwwwwwwww != null && this.f6968Wwwwwwwwwwwwwwwwwwwwwwww >= 0) {
            return true;
        }
        return false;
    }

    @Nullable
    public LoginMethodHandler[] Wwwwwwwwwwwwwwwwwwwwwww(@NotNull Request request) {
        ArrayList arrayList = new ArrayList();
        LoginBehavior Wwwwwwwwwwwwwwwwwwwwwwwww2 = request.Wwwwwwwwwwwwwwwwwwwwwwwww();
        if (request.Wwwwwwwwwwwwwwwww()) {
            if (!FacebookSdk.f5996Wwwwwwwwwwwwwwwww && Wwwwwwwwwwwwwwwwwwwwwwwww2.allowsInstagramAppAuth()) {
                arrayList.add(new InstagramAppLoginMethodHandler(this));
            }
        } else {
            if (Wwwwwwwwwwwwwwwwwwwwwwwww2.allowsGetTokenAuth()) {
                arrayList.add(new GetTokenLoginMethodHandler(this));
            }
            if (!FacebookSdk.f5996Wwwwwwwwwwwwwwwww && Wwwwwwwwwwwwwwwwwwwwwwwww2.allowsKatanaAuth()) {
                arrayList.add(new KatanaProxyLoginMethodHandler(this));
            }
        }
        if (Wwwwwwwwwwwwwwwwwwwwwwwww2.allowsCustomTabAuth()) {
            arrayList.add(new CustomTabLoginMethodHandler(this));
        }
        if (Wwwwwwwwwwwwwwwwwwwwwwwww2.allowsWebViewAuth()) {
            arrayList.add(new WebViewLoginMethodHandler(this));
        }
        if (!request.Wwwwwwwwwwwwwwwww() && Wwwwwwwwwwwwwwwwwwwwwwwww2.allowsDeviceAuth()) {
            arrayList.add(new DeviceAuthMethodHandler(this));
        }
        Object[] array = arrayList.toArray(new LoginMethodHandler[0]);
        if (array != null) {
            return (LoginMethodHandler[]) array;
        }
        throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
    }

    @Nullable
    public final Fragment Wwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f6967Wwwwwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public final LoginMethodHandler Wwwwwwwwwwwwwwwwwwwwwwwww() {
        LoginMethodHandler[] loginMethodHandlerArr;
        int i = this.f6968Wwwwwwwwwwwwwwwwwwwwwwww;
        if (i < 0 || (loginMethodHandlerArr = this.f6969Wwwwwwwwwwwwwwwwwwwwwwwww) == null) {
            return null;
        }
        return loginMethodHandlerArr[i];
    }

    @Nullable
    public final FragmentActivity Wwwwwwwwwwwwwwwwwwwwwwwwww() {
        Fragment fragment = this.f6967Wwwwwwwwwwwwwwwwwwwwwww;
        if (fragment == null) {
            return null;
        }
        return fragment.getActivity();
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Result.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Result.Companion, this.f6963Wwwwwwwwwwwwwwwwwww, "Login attempt failed.", null, null, 8, null));
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Result result) {
        if (result.f6994Wwwwwwwwwwwwwwwwwwwwwwww != null && AccessToken.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwww()) {
            Wwwwwww(result);
        } else {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(result);
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Result result) {
        LoginMethodHandler Wwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
            Wwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(), result, Wwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        }
        Map<String, String> map = this.f6962Wwwwwwwwwwwwwwwwww;
        if (map != null) {
            result.f6989Wwwwwwwwwwwwwwwwwww = map;
        }
        Map<String, String> map2 = this.f6961Wwwwwwwwwwwwwwwww;
        if (map2 != null) {
            result.f6988Wwwwwwwwwwwwwwwwww = map2;
        }
        this.f6969Wwwwwwwwwwwwwwwwwwwwwwwww = null;
        this.f6968Wwwwwwwwwwwwwwwwwwwwwwww = -1;
        this.f6963Wwwwwwwwwwwwwwwwwww = null;
        this.f6962Wwwwwwwwwwwwwwwwww = null;
        this.f6959Wwwwwwwwwwwwwww = 0;
        this.f6958Wwwwwwwwwwwwww = 0;
        Wwwwwwwwwwwwwww(result);
    }

    public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str) {
        FragmentActivity Wwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            return -1;
        }
        return Wwwwwwwwwwwwwwwwwwwwwwwwww2.checkCallingOrSelfPermission(str);
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        String string;
        if (this.f6964Wwwwwwwwwwwwwwwwwwww) {
            return true;
        }
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww("android.permission.INTERNET") != 0) {
            FragmentActivity Wwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwww();
            String str = null;
            if (Wwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
                string = null;
            } else {
                string = Wwwwwwwwwwwwwwwwwwwwwwwwww2.getString(com.facebook.common.R.string.com_facebook_internet_permission_error_title);
            }
            if (Wwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                str = Wwwwwwwwwwwwwwwwwwwwwwwwww2.getString(com.facebook.common.R.string.com_facebook_internet_permission_error_message);
            }
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Result.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Result.Companion, this.f6963Wwwwwwwwwwwwwwwwwww, string, str, null, 8, null));
            return false;
        }
        this.f6964Wwwwwwwwwwwwwwwwwwww = true;
        return true;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        LoginMethodHandler Wwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            return;
        }
        Wwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Request request) {
        if (request != null) {
            if (this.f6963Wwwwwwwwwwwwwwwwwww == null) {
                if (AccessToken.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwww() && !Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                    return;
                }
                this.f6963Wwwwwwwwwwwwwwwwwww = request;
                this.f6969Wwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwww(request);
                Wwwwwwww();
                return;
            }
            throw new FacebookException("Attempted to authorize while a request is pending.");
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, String str2, boolean z) {
        Map<String, String> map = this.f6962Wwwwwwwwwwwwwwwwww;
        if (map == null) {
            map = new HashMap<>();
        }
        if (this.f6962Wwwwwwwwwwwwwwwwww == null) {
            this.f6962Wwwwwwwwwwwwwwwwww = map;
        }
        if (map.containsKey(str) && z) {
            str2 = ((Object) map.get(str)) + AbstractJsonLexerKt.COMMA + str2;
        }
        map.put(str, str2);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NotNull Parcel parcel, int i) {
        parcel.writeParcelableArray(this.f6969Wwwwwwwwwwwwwwwwwwwwwwwww, i);
        parcel.writeInt(this.f6968Wwwwwwwwwwwwwwwwwwwwwwww);
        parcel.writeParcelable(this.f6963Wwwwwwwwwwwwwwwwwww, i);
        Utility utility = Utility.INSTANCE;
        Utility.IIlllllll(parcel, this.f6962Wwwwwwwwwwwwwwwwww);
        Utility.IIlllllll(parcel, this.f6961Wwwwwwwwwwwwwwwww);
    }

    public LoginClient(@NotNull Parcel parcel) {
        this.f6968Wwwwwwwwwwwwwwwwwwwwwwww = -1;
        Parcelable[] readParcelableArray = parcel.readParcelableArray(LoginMethodHandler.class.getClassLoader());
        readParcelableArray = readParcelableArray == null ? new Parcelable[0] : readParcelableArray;
        ArrayList arrayList = new ArrayList();
        int length = readParcelableArray.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                break;
            }
            Parcelable parcelable = readParcelableArray[i];
            LoginMethodHandler loginMethodHandler = parcelable instanceof LoginMethodHandler ? (LoginMethodHandler) parcelable : null;
            if (loginMethodHandler != null) {
                loginMethodHandler.Wwwwwwwwwwwwwwwwwwwwww(this);
            }
            if (loginMethodHandler != null) {
                arrayList.add(loginMethodHandler);
            }
            i++;
        }
        Object[] array = arrayList.toArray(new LoginMethodHandler[0]);
        if (array != null) {
            this.f6969Wwwwwwwwwwwwwwwwwwwwwwwww = (LoginMethodHandler[]) array;
            this.f6968Wwwwwwwwwwwwwwwwwwwwwwww = parcel.readInt();
            this.f6963Wwwwwwwwwwwwwwwwwww = (Request) parcel.readParcelable(Request.class.getClassLoader());
            Map<String, String> Illlllllllllll = Utility.Illlllllllllll(parcel);
            this.f6962Wwwwwwwwwwwwwwwwww = Illlllllllllll == null ? null : MapsKt.toMutableMap(Illlllllllllll);
            Map<String, String> Illlllllllllll2 = Utility.Illlllllllllll(parcel);
            this.f6961Wwwwwwwwwwwwwwwww = Illlllllllllll2 != null ? MapsKt.toMutableMap(Illlllllllllll2) : null;
            return;
        }
        throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
    }
}
