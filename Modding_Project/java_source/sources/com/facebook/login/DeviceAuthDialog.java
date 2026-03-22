package com.facebook.login;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.DialogInterface;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Html;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import androidx.annotation.LayoutRes;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentActivity;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.facebook.AccessToken;
import com.facebook.AccessTokenSource;
import com.facebook.FacebookActivity;
import com.facebook.FacebookException;
import com.facebook.FacebookRequestError;
import com.facebook.FacebookSdk;
import com.facebook.GraphRequest;
import com.facebook.GraphRequestAsyncTask;
import com.facebook.GraphResponse;
import com.facebook.HttpMethod;
import com.facebook.appevents.InternalAppEventsLogger;
import com.facebook.devicerequests.internal.DeviceRequestsHelper;
import com.facebook.internal.FetchedAppSettings;
import com.facebook.internal.FetchedAppSettingsManager;
import com.facebook.internal.SmartLoginOption;
import com.facebook.internal.Utility;
import com.facebook.internal.Validate;
import com.facebook.login.DeviceAuthDialog;
import com.facebook.login.LoginClient;
import com.google.ads.mediation.vungle.VungleConstants;
import com.sensorsdata.analytics.android.autotrack.aop.FragmentTrackHelper;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import com.sensorsdata.analytics.android.sdk.SensorsDataInstrumented;
import com.vungle.ads.internal.ui.AdActivity;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.EnumSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.collections.MapsKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000¸\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0016\u0018\u0000 e2\u00020\u0001:\u0003efgB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J-\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u0019\u0010\u000e\u001a\u00020\r2\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0016\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0018\u0010\u0003J\u0017\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u0019H\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u001d\u0010\u001f\u001a\u0010\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\u001e\u0018\u00010\u001dH\u0016¢\u0006\u0004\b\u001f\u0010 J\u000f\u0010!\u001a\u00020\u001eH\u0016¢\u0006\u0004\b!\u0010\"J\u0017\u0010%\u001a\u00020\n2\u0006\u0010$\u001a\u00020#H\u0014¢\u0006\u0004\b%\u0010&J\u0017\u0010(\u001a\u00020'2\u0006\u0010$\u001a\u00020#H\u0015¢\u0006\u0004\b(\u0010)J\u0017\u0010,\u001a\u00020\u00122\u0006\u0010+\u001a\u00020*H\u0014¢\u0006\u0004\b,\u0010-J\u000f\u0010.\u001a\u00020\u0012H\u0014¢\u0006\u0004\b.\u0010\u0003J\u000f\u0010/\u001a\u00020#H\u0014¢\u0006\u0004\b/\u00100J\u0017\u00103\u001a\u00020\u00122\u0006\u00102\u001a\u000201H\u0002¢\u0006\u0004\b3\u00104J\u000f\u00105\u001a\u00020\u0012H\u0002¢\u0006\u0004\b5\u0010\u0003J\u000f\u00106\u001a\u00020\u0012H\u0002¢\u0006\u0004\b6\u0010\u0003JC\u0010?\u001a\u00020\u00122\u0006\u00107\u001a\u00020\u001e2\u0006\u00109\u001a\u0002082\u0006\u0010:\u001a\u00020\u001e2\u0006\u0010;\u001a\u00020\u001e2\b\u0010=\u001a\u0004\u0018\u00010<2\b\u0010>\u001a\u0004\u0018\u00010<H\u0002¢\u0006\u0004\b?\u0010@J)\u0010C\u001a\u00020\u00122\u0006\u0010:\u001a\u00020\u001e2\u0006\u0010B\u001a\u00020A2\b\u0010>\u001a\u0004\u0018\u00010AH\u0002¢\u0006\u0004\bC\u0010DJ;\u0010E\u001a\u00020\u00122\u0006\u00107\u001a\u00020\u001e2\u0006\u00109\u001a\u0002082\u0006\u0010:\u001a\u00020\u001e2\b\u0010=\u001a\u0004\u0018\u00010<2\b\u0010>\u001a\u0004\u0018\u00010<H\u0002¢\u0006\u0004\bE\u0010FR\u0016\u0010I\u001a\u00020\n8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bG\u0010HR\u0016\u0010M\u001a\u00020J8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bK\u0010LR\u0016\u0010N\u001a\u00020J8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u001f\u0010LR\u0018\u0010Q\u001a\u0004\u0018\u00010O8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bE\u0010PR\u0014\u0010T\u001a\u00020R8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u0010SR\u0018\u0010W\u001a\u0004\u0018\u00010U8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010VR\u001c\u0010[\u001a\b\u0012\u0002\b\u0003\u0018\u00010X8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bY\u0010ZR\u0018\u00102\u001a\u0004\u0018\u0001018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010\\R\u0016\u0010_\u001a\u00020#8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b]\u0010^R\u0016\u0010`\u001a\u00020#8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u0010^R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b.\u0010aR\u0014\u0010d\u001a\u00020b8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bY\u0010c¨\u0006h"}, d2 = {"Lcom/facebook/login/DeviceAuthDialog;", "Landroidx/fragment/app/DialogFragment;", "<init>", "()V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", TtmlNode.RUBY_CONTAINER, "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", "Landroid/app/Dialog;", "onCreateDialog", "(Landroid/os/Bundle;)Landroid/app/Dialog;", "Landroid/content/DialogInterface;", "dialog", "", "onDismiss", "(Landroid/content/DialogInterface;)V", "outState", "onSaveInstanceState", "(Landroid/os/Bundle;)V", "onDestroyView", "Lcom/facebook/login/LoginClient$Request;", AdActivity.REQUEST_KEY_EXTRA, "Www", "(Lcom/facebook/login/LoginClient$Request;)V", "", "", "Wwwwwwwwwwwwwwwwwwwwww", "()Ljava/util/Map;", "Wwwwwwwwwwwwwwwwwwww", "()Ljava/lang/String;", "", "isSmartLogin", "Wwwwwwwwwwwwwwwww", "(Z)Landroid/view/View;", "", "Wwwwwwwwwwwwwwwwwww", "(Z)I", "Lcom/facebook/FacebookException;", "ex", "Wwwwwwwwwwwww", "(Lcom/facebook/FacebookException;)V", "Wwwwwwwwwwwwww", "Wwwwwwwwwwwwwww", "()Z", "Lcom/facebook/login/DeviceAuthDialog$RequestState;", "currentRequestState", "Wwww", "(Lcom/facebook/login/DeviceAuthDialog$RequestState;)V", "Wwwwwwwwww", "Wwwwww", VungleConstants.KEY_USER_ID, "Lcom/facebook/login/DeviceAuthDialog$PermissionsLists;", "permissions", "accessToken", "name", "Ljava/util/Date;", "expirationTime", "dataAccessExpirationTime", "Wwwwwwwww", "(Ljava/lang/String;Lcom/facebook/login/DeviceAuthDialog$PermissionsLists;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V", "", "expiresIn", "Wwwwwwwwwwww", "(Ljava/lang/String;JLjava/lang/Long;)V", "Wwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Lcom/facebook/login/DeviceAuthDialog$PermissionsLists;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V", "Wwwwwwwwwwwwwwwwwwwwwwww", "Landroid/view/View;", "progressBar", "Landroid/widget/TextView;", "Wwwwwwwwwwwwwwwwwwwwwww", "Landroid/widget/TextView;", "confirmationCode", "instructions", "Lcom/facebook/login/DeviceAuthMethodHandler;", "Lcom/facebook/login/DeviceAuthMethodHandler;", "deviceAuthMethodHandler", "Ljava/util/concurrent/atomic/AtomicBoolean;", "Ljava/util/concurrent/atomic/AtomicBoolean;", "completed", "Lcom/facebook/GraphRequestAsyncTask;", "Lcom/facebook/GraphRequestAsyncTask;", "currentGraphRequestPoll", "Ljava/util/concurrent/ScheduledFuture;", "Wwwwwwwwwwwwwwwwww", "Ljava/util/concurrent/ScheduledFuture;", "scheduledPoll", "Lcom/facebook/login/DeviceAuthDialog$RequestState;", "Wwwwwwwwwwwwwwww", "Z", "isBeingDestroyed", "isRetry", "Lcom/facebook/login/LoginClient$Request;", "Lcom/facebook/GraphRequest;", "()Lcom/facebook/GraphRequest;", "pollRequest", "Companion", "PermissionsLists", "RequestState", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public class DeviceAuthDialog extends DialogFragment {
    @Nullable

    /* renamed from: Wwwwwwwwwwwwww  reason: collision with root package name */
    public LoginClient.Request f6925Wwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f6926Wwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f6927Wwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwww  reason: collision with root package name */
    public volatile RequestState f6928Wwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public volatile ScheduledFuture<?> f6929Wwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public volatile GraphRequestAsyncTask f6930Wwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final AtomicBoolean f6931Wwwwwwwwwwwwwwwwwwww = new AtomicBoolean();
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public DeviceAuthMethodHandler f6932Wwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public TextView f6933Wwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public TextView f6934Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public View f6935Wwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull

    /* renamed from: Wwwwwwwwwwwww  reason: collision with root package name */
    public static final String f6924Wwwwwwwwwwwww = "device/login";
    @NotNull

    /* renamed from: Wwwwwwwwwwww  reason: collision with root package name */
    public static final String f6923Wwwwwwwwwwww = "device/login_status";

    /* renamed from: Wwwwwwwwwww  reason: collision with root package name */
    public static final int f6922Wwwwwwwwwww = 1349174;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0014\u0010\n\u001a\u00020\t8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0014\u0010\f\u001a\u00020\t8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\f\u0010\u000bR\u0014\u0010\r\u001a\u00020\t8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\r\u0010\u000bR\u0014\u0010\u000f\u001a\u00020\u000e8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Lcom/facebook/login/DeviceAuthDialog$Companion;", "", "<init>", "()V", "Lorg/json/JSONObject;", "result", "Lcom/facebook/login/DeviceAuthDialog$PermissionsLists;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lorg/json/JSONObject;)Lcom/facebook/login/DeviceAuthDialog$PermissionsLists;", "", "LOGIN_ERROR_SUBCODE_AUTHORIZATION_DECLINED", "I", "LOGIN_ERROR_SUBCODE_CODE_EXPIRED", "LOGIN_ERROR_SUBCODE_EXCESSIVE_POLLING", "", "REQUEST_STATE_KEY", "Ljava/lang/String;", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final PermissionsLists Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(JSONObject jSONObject) throws JSONException {
            String optString;
            JSONArray jSONArray = jSONObject.getJSONObject("permissions").getJSONArray("data");
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            ArrayList arrayList3 = new ArrayList();
            int length = jSONArray.length();
            if (length > 0) {
                int i = 0;
                while (true) {
                    int i2 = i + 1;
                    JSONObject optJSONObject = jSONArray.optJSONObject(i);
                    String optString2 = optJSONObject.optString("permission");
                    if (optString2.length() != 0 && !Intrinsics.areEqual(optString2, "installed") && (optString = optJSONObject.optString(NotificationCompat.CATEGORY_STATUS)) != null) {
                        int hashCode = optString.hashCode();
                        if (hashCode != -1309235419) {
                            if (hashCode != 280295099) {
                                if (hashCode == 568196142 && optString.equals("declined")) {
                                    arrayList2.add(optString2);
                                }
                            } else if (optString.equals("granted")) {
                                arrayList.add(optString2);
                            }
                        } else if (optString.equals("expired")) {
                            arrayList3.add(optString2);
                        }
                    }
                    if (i2 >= length) {
                        break;
                    }
                    i = i2;
                }
            }
            return new PermissionsLists(arrayList, arrayList2, arrayList3);
        }

        public Companion() {
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u000f\b\u0002\u0018\u00002\u00020\u0001B1\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0007\u0010\bR(\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR(\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\n\u001a\u0004\b\t\u0010\f\"\u0004\b\u0010\u0010\u000eR(\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\n\u001a\u0004\b\u000f\u0010\f\"\u0004\b\u0011\u0010\u000e¨\u0006\u0012"}, d2 = {"Lcom/facebook/login/DeviceAuthDialog$PermissionsLists;", "", "", "", "grantedPermissions", "declinedPermissions", "expiredPermissions", "<init>", "(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/List;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/util/List;", "setGrantedPermissions", "(Ljava/util/List;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "setDeclinedPermissions", "setExpiredPermissions", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class PermissionsLists {
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public List<String> f6936Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public List<String> f6937Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public List<String> f6938Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public PermissionsLists(@NotNull List<String> list, @NotNull List<String> list2, @NotNull List<String> list3) {
            this.f6938Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = list;
            this.f6937Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = list2;
            this.f6936Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = list3;
        }

        @NotNull
        public final List<String> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f6938Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public final List<String> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f6936Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public final List<String> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f6937Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0019\b\u0002\u0018\u0000 -2\u00020\u0001:\u0001-B\t\b\u0010¢\u0006\u0004\b\u0002\u0010\u0003B\u0011\b\u0014\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0002\u0010\u0006J\u000f\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\f\u001a\u00020\u000b2\b\u0010\n\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\f\u0010\rJ\u0015\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0010\u0010\u0011J\r\u0010\u0013\u001a\u00020\u0012¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0016\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u001f\u0010\u001a\u001a\u00020\u000b2\u0006\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u001a\u0010\u001bR(\u0010 \u001a\u0004\u0018\u00010\u00072\b\u0010\u001c\u001a\u0004\u0018\u00010\u00078\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010\tR\u0018\u0010\n\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010\u001eR$\u0010%\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\"\u0010\u001e\u001a\u0004\b#\u0010\t\"\u0004\b$\u0010\rR\"\u0010+\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)\"\u0004\b*\u0010\u0011R\u0016\u0010\u000f\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b,\u0010'¨\u0006."}, d2 = {"Lcom/facebook/login/DeviceAuthDialog$RequestState;", "Landroid/os/Parcelable;", "<init>", "()V", "Landroid/os/Parcel;", "parcel", "(Landroid/os/Parcel;)V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/lang/String;", "userCode", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)V", "", "lastPoll", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(J)V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "()Z", "", "describeContents", "()I", "dest", "flags", "writeToParcel", "(Landroid/os/Parcel;I)V", "<set-?>", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "authorizationUri", "Wwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "requestCode", "Wwwwwwwwwwwwwwwwwwwwww", "J", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()J", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "interval", "Wwwwwwwwwwwwwwwwwwwww", "Companion", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class RequestState implements Parcelable {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public long f6939Wwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public long f6940Wwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public String f6941Wwwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public String f6942Wwwwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public String f6943Wwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull
        public static final Companion Companion = new Companion(null);
        @JvmField
        @NotNull
        public static final Parcelable.Creator<RequestState> CREATOR = new Parcelable.Creator<RequestState>() { // from class: com.facebook.login.DeviceAuthDialog$RequestState$Companion$CREATOR$1
            @Override // android.os.Parcelable.Creator
            @NotNull
            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
            public DeviceAuthDialog.RequestState[] newArray(int i) {
                return new DeviceAuthDialog.RequestState[i];
            }

            @Override // android.os.Parcelable.Creator
            @NotNull
            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
            public DeviceAuthDialog.RequestState createFromParcel(@NotNull Parcel parcel) {
                return new DeviceAuthDialog.RequestState(parcel);
            }
        };

        /* compiled from: Proguard */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"Lcom/facebook/login/DeviceAuthDialog$RequestState$Companion;", "", "()V", "CREATOR", "Landroid/os/Parcelable$Creator;", "Lcom/facebook/login/DeviceAuthDialog$RequestState;", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
        /* loaded from: classes4.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public Companion() {
            }
        }

        public RequestState() {
        }

        public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwww() {
            if (this.f6939Wwwwwwwwwwwwwwwwwwwww == 0 || (new Date().getTime() - this.f6939Wwwwwwwwwwwwwwwwwwwww) - (this.f6940Wwwwwwwwwwwwwwwwwwwwww * 1000) >= 0) {
                return false;
            }
            return true;
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable String str) {
            this.f6942Wwwwwwwwwwwwwwwwwwwwwwww = str;
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            this.f6943Wwwwwwwwwwwwwwwwwwwwwwwww = String.format(Locale.ENGLISH, "https://facebook.com/device?user_code=%1$s&qr=1", Arrays.copyOf(new Object[]{str}, 1));
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable String str) {
            this.f6941Wwwwwwwwwwwwwwwwwwwwwww = str;
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(long j) {
            this.f6939Wwwwwwwwwwwwwwwwwwwww = j;
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(long j) {
            this.f6940Wwwwwwwwwwwwwwwwwwwwww = j;
        }

        @Nullable
        public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f6942Wwwwwwwwwwwwwwwwwwwwwwww;
        }

        @Nullable
        public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f6941Wwwwwwwwwwwwwwwwwwwwwww;
        }

        public final long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f6940Wwwwwwwwwwwwwwwwwwwwww;
        }

        @Nullable
        public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f6943Wwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(@NotNull Parcel parcel, int i) {
            parcel.writeString(this.f6943Wwwwwwwwwwwwwwwwwwwwwwwww);
            parcel.writeString(this.f6942Wwwwwwwwwwwwwwwwwwwwwwww);
            parcel.writeString(this.f6941Wwwwwwwwwwwwwwwwwwwwwww);
            parcel.writeLong(this.f6940Wwwwwwwwwwwwwwwwwwwwww);
            parcel.writeLong(this.f6939Wwwwwwwwwwwwwwwwwwwww);
        }

        public RequestState(@NotNull Parcel parcel) {
            this.f6943Wwwwwwwwwwwwwwwwwwwwwwwww = parcel.readString();
            this.f6942Wwwwwwwwwwwwwwwwwwwwwwww = parcel.readString();
            this.f6941Wwwwwwwwwwwwwwwwwwwwwww = parcel.readString();
            this.f6940Wwwwwwwwwwwwwwwwwwwwww = parcel.readLong();
            this.f6939Wwwwwwwwwwwwwwwwwwwww = parcel.readLong();
        }
    }

    public static final void Kkkkkkkkkkkkkkkkkkkkkkkkkk(DeviceAuthDialog deviceAuthDialog, GraphResponse graphResponse) {
        FacebookException Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        if (deviceAuthDialog.f6927Wwwwwwwwwwwwwwww) {
            return;
        }
        if (graphResponse.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() != null) {
            FacebookRequestError Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = graphResponse.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = null;
            } else {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            }
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = new FacebookException();
            }
            deviceAuthDialog.Wwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            return;
        }
        JSONObject Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = graphResponse.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = new JSONObject();
        }
        RequestState requestState = new RequestState();
        try {
            requestState.Wwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.getString("user_code"));
            requestState.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.getString("code"));
            requestState.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.getLong("interval"));
            deviceAuthDialog.Wwww(requestState);
        } catch (JSONException e) {
            deviceAuthDialog.Wwwwwwwwwwwww(new FacebookException(e));
        }
    }

    public static final void Wwwww(DeviceAuthDialog deviceAuthDialog) {
        deviceAuthDialog.Wwwwwwwwww();
    }

    @SensorsDataInstrumented
    public static final void Wwwwwww(DeviceAuthDialog deviceAuthDialog, DialogInterface dialogInterface, int i) {
        View Wwwwwwwwwwwwwwwww2 = deviceAuthDialog.Wwwwwwwwwwwwwwwww(false);
        Dialog dialog = deviceAuthDialog.getDialog();
        if (dialog != null) {
            dialog.setContentView(Wwwwwwwwwwwwwwwww2);
        }
        LoginClient.Request request = deviceAuthDialog.f6925Wwwwwwwwwwwwww;
        if (request != null) {
            deviceAuthDialog.Www(request);
        }
        SensorsDataAutoTrackHelper.trackDialog(dialogInterface, i);
    }

    @SensorsDataInstrumented
    public static final void Wwwwwwww(DeviceAuthDialog deviceAuthDialog, String str, PermissionsLists permissionsLists, String str2, Date date, Date date2, DialogInterface dialogInterface, int i) {
        deviceAuthDialog.Wwwwwwwwwwwwwwwwwwwww(str, permissionsLists, str2, date, date2);
        SensorsDataAutoTrackHelper.trackDialog(dialogInterface, i);
    }

    public static final void Wwwwwwwwwww(DeviceAuthDialog deviceAuthDialog, String str, Date date, Date date2, GraphResponse graphResponse) {
        DeviceAuthDialog deviceAuthDialog2;
        JSONException jSONException;
        EnumSet<SmartLoginOption> Wwwwwwwwwwwwwwwww2;
        if (deviceAuthDialog.f6931Wwwwwwwwwwwwwwwwwwww.get()) {
            return;
        }
        FacebookRequestError Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = graphResponse.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
            FacebookException Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = new FacebookException();
            }
            deviceAuthDialog.Wwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            return;
        }
        try {
            JSONObject Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = graphResponse.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
                try {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = new JSONObject();
                } catch (JSONException e) {
                    jSONException = e;
                    deviceAuthDialog2 = deviceAuthDialog;
                    deviceAuthDialog2.Wwwwwwwwwwwww(new FacebookException(jSONException));
                    return;
                }
            }
            String string = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.getString("id");
            PermissionsLists Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            String string2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.getString("name");
            RequestState requestState = deviceAuthDialog.f6928Wwwwwwwwwwwwwwwww;
            if (requestState != null) {
                DeviceRequestsHelper deviceRequestsHelper = DeviceRequestsHelper.INSTANCE;
                DeviceRequestsHelper.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(requestState.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            }
            FetchedAppSettingsManager fetchedAppSettingsManager = FetchedAppSettingsManager.INSTANCE;
            FetchedAppSettings Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = FetchedAppSettingsManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(FacebookSdk.Wwwwwwwwwwwwwwwwwwwwww());
            Boolean bool = null;
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null && (Wwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwww()) != null) {
                bool = Boolean.valueOf(Wwwwwwwwwwwwwwwww2.contains(SmartLoginOption.RequireConfirm));
            }
            if (Intrinsics.areEqual(bool, Boolean.TRUE) && !deviceAuthDialog.f6926Wwwwwwwwwwwwwww) {
                deviceAuthDialog.f6926Wwwwwwwwwwwwwww = true;
                deviceAuthDialog.Wwwwwwwww(string, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3, str, string2, date, date2);
                return;
            }
            deviceAuthDialog.Wwwwwwwwwwwwwwwwwwwww(string, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3, str, date, date2);
        } catch (JSONException e2) {
            deviceAuthDialog2 = deviceAuthDialog;
            jSONException = e2;
        }
    }

    @SensorsDataInstrumented
    public static final void Wwwwwwwwwwwwwwww(DeviceAuthDialog deviceAuthDialog, View view) {
        deviceAuthDialog.Wwwwwwwwwwwwww();
        SensorsDataAutoTrackHelper.trackViewOnClick(view);
    }

    public static final void Wwwwwwwwwwwwwwwwwwwwwww(DeviceAuthDialog deviceAuthDialog, GraphResponse graphResponse) {
        FacebookException Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        if (!deviceAuthDialog.f6931Wwwwwwwwwwwwwwwwwwww.get()) {
            FacebookRequestError Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = graphResponse.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                int Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 == f6922Wwwwwwwwwww || Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 == 1349172) {
                    deviceAuthDialog.Wwwwww();
                    return;
                } else if (Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 == 1349152) {
                    RequestState requestState = deviceAuthDialog.f6928Wwwwwwwwwwwwwwwww;
                    if (requestState != null) {
                        DeviceRequestsHelper deviceRequestsHelper = DeviceRequestsHelper.INSTANCE;
                        DeviceRequestsHelper.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(requestState.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
                    }
                    LoginClient.Request request = deviceAuthDialog.f6925Wwwwwwwwwwwwww;
                    if (request != null) {
                        deviceAuthDialog.Www(request);
                        return;
                    } else {
                        deviceAuthDialog.Wwwwwwwwwwwwww();
                        return;
                    }
                } else if (Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 == 1349173) {
                    deviceAuthDialog.Wwwwwwwwwwwwww();
                    return;
                } else {
                    FacebookRequestError Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = graphResponse.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 == null) {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = null;
                    } else {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    }
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = new FacebookException();
                    }
                    deviceAuthDialog.Wwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                    return;
                }
            }
            try {
                JSONObject Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = graphResponse.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = new JSONObject();
                }
                deviceAuthDialog.Wwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.getString("access_token"), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.getLong("expires_in"), Long.valueOf(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.optLong("data_access_expiration_time")));
            } catch (JSONException e) {
                deviceAuthDialog.Wwwwwwwwwwwww(new FacebookException(e));
            }
        }
    }

    public void Www(@NotNull LoginClient.Request request) {
        Map mutableMap;
        this.f6925Wwwwwwwwwwwwww = request;
        Bundle bundle = new Bundle();
        bundle.putString("scope", TextUtils.join(",", request.Wwwwwwwwwwwwwwwwwwwww()));
        Utility utility = Utility.INSTANCE;
        Utility.Illlllllllllllll(bundle, "redirect_uri", request.Wwwwwwwwwwwwwwwwwwwwwwwwww());
        Utility.Illlllllllllllll(bundle, "target_user_id", request.Wwwwwwwwwwwwwwwwwwwwwwwwwww());
        bundle.putString("access_token", Wwwwwwwwwwwwwwwwwwww());
        DeviceRequestsHelper deviceRequestsHelper = DeviceRequestsHelper.INSTANCE;
        Map<String, String> Wwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwww2 == null) {
            mutableMap = null;
        } else {
            mutableMap = MapsKt.toMutableMap(Wwwwwwwwwwwwwwwwwwwwww2);
        }
        bundle.putString("device_info", DeviceRequestsHelper.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(mutableMap));
        GraphRequest.Companion.Wwwwwww(null, f6924Wwwwwwwwwwwww, bundle, new GraphRequest.Callback() { // from class: com.facebook.login.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // com.facebook.GraphRequest.Callback
            public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(GraphResponse graphResponse) {
                DeviceAuthDialog.Kkkkkkkkkkkkkkkkkkkkkkkkkk(DeviceAuthDialog.this, graphResponse);
            }
        }).Wwwwwwwwwwwwwwwwwwwwwww();
    }

    public final void Wwww(RequestState requestState) {
        this.f6928Wwwwwwwwwwwwwwwww = requestState;
        TextView textView = this.f6934Wwwwwwwwwwwwwwwwwwwwwww;
        textView.getClass();
        textView.setText(requestState.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        DeviceRequestsHelper deviceRequestsHelper = DeviceRequestsHelper.INSTANCE;
        BitmapDrawable bitmapDrawable = new BitmapDrawable(getResources(), DeviceRequestsHelper.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(requestState.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()));
        TextView textView2 = this.f6933Wwwwwwwwwwwwwwwwwwwwww;
        textView2.getClass();
        textView2.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, bitmapDrawable, (Drawable) null, (Drawable) null);
        TextView textView3 = this.f6934Wwwwwwwwwwwwwwwwwwwwwww;
        textView3.getClass();
        textView3.setVisibility(0);
        View view = this.f6935Wwwwwwwwwwwwwwwwwwwwwwww;
        view.getClass();
        view.setVisibility(8);
        if (!this.f6926Wwwwwwwwwwwwwww && DeviceRequestsHelper.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(requestState.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww())) {
            new InternalAppEventsLogger(getContext()).Wwwwwwwwwwwwwwwwwwwwwwwwwwwww("fb_smart_login_service");
        }
        if (requestState.Wwwwwwwwwwwwwwwwwwwwwwwwww()) {
            Wwwwww();
        } else {
            Wwwwwwwwww();
        }
    }

    public final void Wwwwww() {
        Long valueOf;
        RequestState requestState = this.f6928Wwwwwwwwwwwwwwwww;
        if (requestState == null) {
            valueOf = null;
        } else {
            valueOf = Long.valueOf(requestState.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        }
        if (valueOf != null) {
            this.f6929Wwwwwwwwwwwwwwwwww = DeviceAuthMethodHandler.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().schedule(new Runnable() { // from class: com.facebook.login.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // java.lang.Runnable
                public final void run() {
                    DeviceAuthDialog.Wwwww(DeviceAuthDialog.this);
                }
            }, valueOf.longValue(), TimeUnit.SECONDS);
        }
    }

    public final void Wwwwwwwww(final String str, final PermissionsLists permissionsLists, final String str2, String str3, final Date date, final Date date2) {
        String string = getResources().getString(com.facebook.common.R.string.com_facebook_smart_login_confirmation_title);
        String string2 = getResources().getString(com.facebook.common.R.string.com_facebook_smart_login_confirmation_continue_as);
        String string3 = getResources().getString(com.facebook.common.R.string.com_facebook_smart_login_confirmation_cancel);
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String format = String.format(string2, Arrays.copyOf(new Object[]{str3}, 1));
        AlertDialog.Builder builder = new AlertDialog.Builder(getContext());
        builder.setMessage(string).setCancelable(true).setNegativeButton(format, new DialogInterface.OnClickListener() { // from class: com.facebook.login.Wwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                DeviceAuthDialog.Wwwwwwww(DeviceAuthDialog.this, str, permissionsLists, str2, date, date2, dialogInterface, i);
            }
        }).setPositiveButton(string3, new DialogInterface.OnClickListener() { // from class: com.facebook.login.Wwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                DeviceAuthDialog.Wwwwwww(DeviceAuthDialog.this, dialogInterface, i);
            }
        });
        builder.create().show();
    }

    public final void Wwwwwwwwww() {
        RequestState requestState = this.f6928Wwwwwwwwwwwwwwwww;
        if (requestState != null) {
            requestState.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(new Date().getTime());
        }
        this.f6930Wwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwww();
    }

    public final void Wwwwwwwwwwww(final String str, long j, Long l) {
        Date date;
        Bundle bundle = new Bundle();
        bundle.putString("fields", "id,permissions,name");
        Date date2 = null;
        if (j != 0) {
            date = new Date(new Date().getTime() + (j * 1000));
        } else {
            date = null;
        }
        if ((l == null || l.longValue() != 0) && l != null) {
            date2 = new Date(l.longValue() * 1000);
        }
        final Date date3 = date2;
        final Date date4 = date;
        GraphRequest Wwwwwwwwwww2 = GraphRequest.Companion.Wwwwwwwwwww(new AccessToken(str, FacebookSdk.Wwwwwwwwwwwwwwwwwwwwww(), "0", null, null, null, null, date, null, date3, null, 1024, null), "me", new GraphRequest.Callback() { // from class: com.facebook.login.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // com.facebook.GraphRequest.Callback
            public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(GraphResponse graphResponse) {
                DeviceAuthDialog.Wwwwwwwwwww(DeviceAuthDialog.this, str, date4, date3, graphResponse);
            }
        });
        Wwwwwwwwwww2.Kkkkkkkkkkkkkkkkkkkkkkkkk(HttpMethod.GET);
        Wwwwwwwwwww2.Kkkkkkkkkkkkkkkkkkkkkkkk(bundle);
        Wwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwww();
    }

    public void Wwwwwwwwwwwww(@NotNull FacebookException facebookException) {
        if (this.f6931Wwwwwwwwwwwwwwwwwwww.compareAndSet(false, true)) {
            RequestState requestState = this.f6928Wwwwwwwwwwwwwwwww;
            if (requestState != null) {
                DeviceRequestsHelper deviceRequestsHelper = DeviceRequestsHelper.INSTANCE;
                DeviceRequestsHelper.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(requestState.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            }
            DeviceAuthMethodHandler deviceAuthMethodHandler = this.f6932Wwwwwwwwwwwwwwwwwwwww;
            if (deviceAuthMethodHandler != null) {
                deviceAuthMethodHandler.Wwwwwwwwwwwwwww(facebookException);
            }
            Dialog dialog = getDialog();
            if (dialog == null) {
                return;
            }
            dialog.dismiss();
        }
    }

    public void Wwwwwwwwwwwwww() {
        if (this.f6931Wwwwwwwwwwwwwwwwwwww.compareAndSet(false, true)) {
            RequestState requestState = this.f6928Wwwwwwwwwwwwwwwww;
            if (requestState != null) {
                DeviceRequestsHelper deviceRequestsHelper = DeviceRequestsHelper.INSTANCE;
                DeviceRequestsHelper.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(requestState.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            }
            DeviceAuthMethodHandler deviceAuthMethodHandler = this.f6932Wwwwwwwwwwwwwwwwwwwww;
            if (deviceAuthMethodHandler != null) {
                deviceAuthMethodHandler.Wwwwwwwwwwwwwwww();
            }
            Dialog dialog = getDialog();
            if (dialog == null) {
                return;
            }
            dialog.dismiss();
        }
    }

    public boolean Wwwwwwwwwwwwwww() {
        return true;
    }

    @NotNull
    public View Wwwwwwwwwwwwwwwww(boolean z) {
        View inflate = requireActivity().getLayoutInflater().inflate(Wwwwwwwwwwwwwwwwwww(z), (ViewGroup) null);
        this.f6935Wwwwwwwwwwwwwwwwwwwwwwww = inflate.findViewById(com.facebook.common.R.id.progress_bar);
        View findViewById = inflate.findViewById(com.facebook.common.R.id.confirmation_code);
        if (findViewById != null) {
            this.f6934Wwwwwwwwwwwwwwwwwwwwwww = (TextView) findViewById;
            View findViewById2 = inflate.findViewById(com.facebook.common.R.id.cancel_button);
            if (findViewById2 != null) {
                ((Button) findViewById2).setOnClickListener(new View.OnClickListener() { // from class: com.facebook.login.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        DeviceAuthDialog.Wwwwwwwwwwwwwwww(DeviceAuthDialog.this, view);
                    }
                });
                View findViewById3 = inflate.findViewById(com.facebook.common.R.id.com_facebook_device_auth_instructions);
                if (findViewById3 != null) {
                    TextView textView = (TextView) findViewById3;
                    this.f6933Wwwwwwwwwwwwwwwwwwwwww = textView;
                    textView.setText(Html.fromHtml(getString(com.facebook.common.R.string.com_facebook_device_auth_instructions)));
                    return inflate;
                }
                throw new NullPointerException("null cannot be cast to non-null type android.widget.TextView");
            }
            throw new NullPointerException("null cannot be cast to non-null type android.widget.Button");
        }
        throw new NullPointerException("null cannot be cast to non-null type android.widget.TextView");
    }

    public final GraphRequest Wwwwwwwwwwwwwwwwww() {
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        Bundle bundle = new Bundle();
        RequestState requestState = this.f6928Wwwwwwwwwwwwwwwww;
        if (requestState == null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = null;
        } else {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = requestState.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        bundle.putString("code", Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        bundle.putString("access_token", Wwwwwwwwwwwwwwwwwwww());
        return GraphRequest.Companion.Wwwwwww(null, f6923Wwwwwwwwwwww, bundle, new GraphRequest.Callback() { // from class: com.facebook.login.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // com.facebook.GraphRequest.Callback
            public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(GraphResponse graphResponse) {
                DeviceAuthDialog.Wwwwwwwwwwwwwwwwwwwwwww(DeviceAuthDialog.this, graphResponse);
            }
        });
    }

    @LayoutRes
    public int Wwwwwwwwwwwwwwwwwww(boolean z) {
        if (z) {
            return com.facebook.common.R.layout.com_facebook_smart_device_dialog_fragment;
        }
        return com.facebook.common.R.layout.com_facebook_device_auth_dialog_fragment;
    }

    @NotNull
    public String Wwwwwwwwwwwwwwwwwwww() {
        return Validate.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() + '|' + Validate.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public final void Wwwwwwwwwwwwwwwwwwwww(String str, PermissionsLists permissionsLists, String str2, Date date, Date date2) {
        DeviceAuthMethodHandler deviceAuthMethodHandler = this.f6932Wwwwwwwwwwwwwwwwwwwww;
        if (deviceAuthMethodHandler != null) {
            deviceAuthMethodHandler.Wwwwwwwwwwwwww(str2, FacebookSdk.Wwwwwwwwwwwwwwwwwwwwww(), str, permissionsLists.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), permissionsLists.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), permissionsLists.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), AccessTokenSource.DEVICE_AUTH, date, null, date2);
        }
        Dialog dialog = getDialog();
        if (dialog == null) {
            return;
        }
        dialog.dismiss();
    }

    @Nullable
    public Map<String, String> Wwwwwwwwwwwwwwwwwwwwww() {
        return null;
    }

    @Override // androidx.fragment.app.DialogFragment
    @NotNull
    public Dialog onCreateDialog(@Nullable Bundle bundle) {
        boolean z;
        final FragmentActivity requireActivity = requireActivity();
        final int i = com.facebook.common.R.style.com_facebook_auth_dialog;
        Dialog dialog = new Dialog(requireActivity, i) { // from class: com.facebook.login.DeviceAuthDialog$onCreateDialog$dialog$1
            @Override // android.app.Dialog
            public void onBackPressed() {
                if (DeviceAuthDialog.this.Wwwwwwwwwwwwwww()) {
                    super.onBackPressed();
                }
            }
        };
        if (DeviceRequestsHelper.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() && !this.f6926Wwwwwwwwwwwwwww) {
            z = true;
        } else {
            z = false;
        }
        dialog.setContentView(Wwwwwwwwwwwwwwwww(z));
        return dialog;
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        RequestState requestState;
        LoginClient Wwwwwwwwwwwwwwwwwwwwwww2;
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        LoginFragment loginFragment = (LoginFragment) ((FacebookActivity) requireActivity()).Wwwwwwwwwwwwwwwwwwwwwwww();
        LoginMethodHandler loginMethodHandler = null;
        if (loginFragment != null && (Wwwwwwwwwwwwwwwwwwwwwww2 = loginFragment.Wwwwwwwwwwwwwwwwwwwwwww()) != null) {
            loginMethodHandler = Wwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwww();
        }
        this.f6932Wwwwwwwwwwwwwwwwwwwww = (DeviceAuthMethodHandler) loginMethodHandler;
        if (bundle == null || (requestState = (RequestState) bundle.getParcelable("request_state")) == null) {
            return onCreateView;
        }
        Wwww(requestState);
        return onCreateView;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        this.f6927Wwwwwwwwwwwwwwww = true;
        this.f6931Wwwwwwwwwwwwwwwwwwww.set(true);
        super.onDestroyView();
        GraphRequestAsyncTask graphRequestAsyncTask = this.f6930Wwwwwwwwwwwwwwwwwww;
        if (graphRequestAsyncTask != null) {
            graphRequestAsyncTask.cancel(true);
        }
        ScheduledFuture<?> scheduledFuture = this.f6929Wwwwwwwwwwwwwwwwww;
        if (scheduledFuture == null) {
            return;
        }
        scheduledFuture.cancel(true);
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(@NotNull DialogInterface dialogInterface) {
        super.onDismiss(dialogInterface);
        if (!this.f6927Wwwwwwwwwwwwwwww) {
            Wwwwwwwwwwwwww();
        }
    }

    @Override // androidx.fragment.app.Fragment
    @SensorsDataInstrumented
    public void onHiddenChanged(boolean z) {
        super.onHiddenChanged(z);
        FragmentTrackHelper.trackOnHiddenChanged(this, z);
    }

    @Override // androidx.fragment.app.Fragment
    @SensorsDataInstrumented
    public void onPause() {
        super.onPause();
        FragmentTrackHelper.trackFragmentPause(this);
    }

    @Override // androidx.fragment.app.Fragment
    @SensorsDataInstrumented
    public void onResume() {
        super.onResume();
        FragmentTrackHelper.trackFragmentResume(this);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(@NotNull Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (this.f6928Wwwwwwwwwwwwwwwww != null) {
            bundle.putParcelable("request_state", this.f6928Wwwwwwwwwwwwwwwww);
        }
    }

    @Override // androidx.fragment.app.Fragment
    @SensorsDataInstrumented
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        FragmentTrackHelper.onFragmentViewCreated(this, view, bundle);
    }

    @Override // androidx.fragment.app.Fragment
    @SensorsDataInstrumented
    public void setUserVisibleHint(boolean z) {
        super.setUserVisibleHint(z);
        FragmentTrackHelper.trackFragmentSetUserVisibleHint(this, z);
    }
}
