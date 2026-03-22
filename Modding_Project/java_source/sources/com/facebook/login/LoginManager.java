package com.facebook.login;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.util.Pair;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.ActivityResultRegistryOwner;
import androidx.activity.result.contract.ActivityResultContract;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.browser.customtabs.CustomTabsClient;
import androidx.fragment.app.Fragment;
import com.facebook.AccessToken;
import com.facebook.AuthenticationToken;
import com.facebook.CallbackManager;
import com.facebook.FacebookActivity;
import com.facebook.FacebookAuthorizationException;
import com.facebook.FacebookCallback;
import com.facebook.FacebookException;
import com.facebook.FacebookSdk;
import com.facebook.LoginStatusCallback;
import com.facebook.Profile;
import com.facebook.internal.CallbackManagerImpl;
import com.facebook.internal.CustomTabUtils;
import com.facebook.internal.FragmentWrapper;
import com.facebook.internal.PlatformServiceClient;
import com.facebook.internal.Utility;
import com.facebook.internal.Validate;
import com.facebook.login.LoginClient;
import com.facebook.login.LoginManager;
import com.vungle.ads.internal.ui.AdActivity;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000â\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u001e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u001b\b\u0016\u0018\u0000 \u0098\u00012\u00020\u0001:\f\u0099\u0001\u009a\u0001\u0098\u0001\u009b\u0001\u009c\u0001\u009d\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u001f\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\t\u0010\nJ#\u0010\u000e\u001a\u00020\b2\b\u0010\f\u001a\u0004\u0018\u00010\u000b2\b\u0010\r\u001a\u0004\u0018\u00010\u0006H\u0002¢\u0006\u0004\b\u000e\u0010\u000fJS\u0010\u0019\u001a\u00020\b2\b\u0010\f\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0011\u001a\u00020\u00102\u0014\u0010\u0014\u001a\u0010\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u00122\b\u0010\u0016\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0018\u001a\u00020\u00172\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u001f\u0010\u001b\u001a\u00020\u00172\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ\u0017\u0010\u001f\u001a\u00020\u00172\u0006\u0010\u001e\u001a\u00020\u001dH\u0002¢\u0006\u0004\b\u001f\u0010 JO\u0010+\u001a\u00020\b2\b\u0010\"\u001a\u0004\u0018\u00010!2\b\u0010$\u001a\u0004\u0018\u00010#2\b\u0010%\u001a\u0004\u0018\u00010\u00062\b\u0010\u0016\u001a\u0004\u0018\u00010&2\u0006\u0010'\u001a\u00020\u00172\u000e\u0010*\u001a\n\u0012\u0004\u0012\u00020)\u0018\u00010(H\u0002¢\u0006\u0004\b+\u0010,J'\u00101\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010.\u001a\u00020-2\u0006\u00100\u001a\u00020/H\u0002¢\u0006\u0004\b1\u00102J\u0017\u00104\u001a\u00020\b2\u0006\u00103\u001a\u00020\u0017H\u0002¢\u0006\u0004\b4\u00105J'\u00108\u001a\u00020\b2\b\u00107\u001a\u0004\u0018\u0001062\u000e\u0010*\u001a\n\u0012\u0004\u0012\u00020)\u0018\u00010(¢\u0006\u0004\b8\u00109J3\u0010=\u001a\u00020\u00172\u0006\u0010;\u001a\u00020:2\b\u0010<\u001a\u0004\u0018\u00010\u001d2\u0010\b\u0002\u0010*\u001a\n\u0012\u0004\u0012\u00020)\u0018\u00010(H\u0017¢\u0006\u0004\b=\u0010>J\u0015\u0010A\u001a\u00020\u00002\u0006\u0010@\u001a\u00020?¢\u0006\u0004\bA\u0010BJ\u0015\u0010E\u001a\u00020\u00002\u0006\u0010D\u001a\u00020C¢\u0006\u0004\bE\u0010FJ\u0015\u0010I\u001a\u00020\u00002\u0006\u0010H\u001a\u00020G¢\u0006\u0004\bI\u0010JJ\u0015\u0010L\u001a\u00020\u00002\u0006\u0010K\u001a\u00020\u0013¢\u0006\u0004\bL\u0010MJ\u0017\u0010O\u001a\u00020\u00002\b\u0010N\u001a\u0004\u0018\u00010\u0013¢\u0006\u0004\bO\u0010MJ\u0015\u0010Q\u001a\u00020\u00002\u0006\u0010P\u001a\u00020\u0017¢\u0006\u0004\bQ\u0010RJ\u0015\u0010T\u001a\u00020\u00002\u0006\u0010S\u001a\u00020\u0017¢\u0006\u0004\bT\u0010RJ\u0015\u0010V\u001a\u00020\u00002\u0006\u0010U\u001a\u00020\u0017¢\u0006\u0004\bV\u0010RJ\u000f\u0010W\u001a\u00020\bH\u0016¢\u0006\u0004\bW\u0010\u0003J\u001d\u0010X\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010.\u001a\u00020-¢\u0006\u0004\bX\u0010YJ%\u0010Z\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u00100\u001a\u00020/2\u0006\u0010.\u001a\u00020-¢\u0006\u0004\bZ\u0010[J/\u0010a\u001a\u00020\b2\u0006\u0010]\u001a\u00020\\2\u000e\u0010_\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010^2\b\u0010`\u001a\u0004\u0018\u00010\u0013¢\u0006\u0004\ba\u0010bJ/\u0010d\u001a\u00020\b2\u0006\u0010]\u001a\u00020c2\u000e\u0010_\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010^2\b\u0010`\u001a\u0004\u0018\u00010\u0013¢\u0006\u0004\bd\u0010eJ/\u0010g\u001a\u00020\b2\u0006\u0010]\u001a\u00020f2\u000e\u0010_\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010^2\b\u0010`\u001a\u0004\u0018\u00010\u0013¢\u0006\u0004\bg\u0010hJ%\u0010k\u001a\u00020\b2\u0006\u0010j\u001a\u00020i2\u000e\u0010_\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010^¢\u0006\u0004\bk\u0010lJ\u001d\u0010o\u001a\u00020\b2\u0006\u0010j\u001a\u00020i2\u0006\u0010n\u001a\u00020m¢\u0006\u0004\bo\u0010pJ/\u0010q\u001a\u00020\b2\u0006\u0010j\u001a\u00020i2\u000e\u0010_\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010^2\b\u0010`\u001a\u0004\u0018\u00010\u0013¢\u0006\u0004\bq\u0010rJ+\u0010t\u001a\u00060sR\u00020\u00002\n\b\u0002\u00107\u001a\u0004\u0018\u0001062\n\b\u0002\u0010`\u001a\u0004\u0018\u00010\u0013H\u0007¢\u0006\u0004\bt\u0010uJ\u0017\u0010v\u001a\u00020\u00062\u0006\u0010n\u001a\u00020mH\u0014¢\u0006\u0004\bv\u0010wJ\u0017\u0010x\u001a\u00020\u001d2\u0006\u0010\u0007\u001a\u00020\u0006H\u0014¢\u0006\u0004\bx\u0010yR$\u0010@\u001a\u00020?2\u0006\u0010z\u001a\u00020?8\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b{\u0010|\u001a\u0004\b}\u0010~R'\u0010H\u001a\u00020G2\u0006\u0010z\u001a\u00020G8\u0006@BX\u0086\u000e¢\u0006\u000f\n\u0005\b\u007f\u0010\u0080\u0001\u001a\u0006\b\u0081\u0001\u0010\u0082\u0001R\u0018\u0010\u0086\u0001\u001a\u00030\u0083\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0084\u0001\u0010\u0085\u0001R(\u0010K\u001a\u00020\u00132\u0006\u0010z\u001a\u00020\u00138\u0006@BX\u0086\u000e¢\u0006\u0010\n\u0006\b\u0087\u0001\u0010\u0088\u0001\u001a\u0006\b\u0089\u0001\u0010\u008a\u0001R\u001a\u0010N\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008b\u0001\u0010\u0088\u0001R\u0018\u0010P\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008c\u0001\u0010\u008d\u0001R)\u0010\u0092\u0001\u001a\u00020C2\u0006\u0010z\u001a\u00020C8\u0006@BX\u0086\u000e¢\u0006\u0010\n\u0006\b\u008e\u0001\u0010\u008f\u0001\u001a\u0006\b\u0090\u0001\u0010\u0091\u0001R'\u0010S\u001a\u00020\u00172\u0006\u0010z\u001a\u00020\u00178\u0006@BX\u0086\u000e¢\u0006\u000f\n\u0006\b\u0093\u0001\u0010\u008d\u0001\u001a\u0005\bS\u0010\u0094\u0001R(\u0010U\u001a\u00020\u00172\u0006\u0010z\u001a\u00020\u00178\u0006@BX\u0086\u000e¢\u0006\u0010\n\u0006\b\u0095\u0001\u0010\u008d\u0001\u001a\u0006\b\u0096\u0001\u0010\u0094\u0001R\u0016\u00103\u001a\u00020\u00178BX\u0082\u0004¢\u0006\b\u001a\u0006\b\u0097\u0001\u0010\u0094\u0001¨\u0006\u009e\u0001"}, d2 = {"Lcom/facebook/login/LoginManager;", "", "<init>", "()V", "Lcom/facebook/login/StartActivityDelegate;", "startActivityDelegate", "Lcom/facebook/login/LoginClient$Request;", AdActivity.REQUEST_KEY_EXTRA, "", "Kkkkkkkkkkkkkkkk", "(Lcom/facebook/login/StartActivityDelegate;Lcom/facebook/login/LoginClient$Request;)V", "Landroid/content/Context;", "context", "loginRequest", "Wwwwwwwwwww", "(Landroid/content/Context;Lcom/facebook/login/LoginClient$Request;)V", "Lcom/facebook/login/LoginClient$Result$Code;", "result", "", "", "resultExtras", "Ljava/lang/Exception;", "exception", "", "wasLoginActivityTried", "Wwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;Lcom/facebook/login/LoginClient$Result$Code;Ljava/util/Map;Ljava/lang/Exception;ZLcom/facebook/login/LoginClient$Request;)V", "Kkkkkkkkkkkkkk", "(Lcom/facebook/login/StartActivityDelegate;Lcom/facebook/login/LoginClient$Request;)Z", "Landroid/content/Intent;", "intent", "Wwwwww", "(Landroid/content/Intent;)Z", "Lcom/facebook/AccessToken;", "newToken", "Lcom/facebook/AuthenticationToken;", "newIdToken", "origRequest", "Lcom/facebook/FacebookException;", "isCanceled", "Lcom/facebook/FacebookCallback;", "Lcom/facebook/login/LoginResult;", "callback", "Wwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/AccessToken;Lcom/facebook/AuthenticationToken;Lcom/facebook/login/LoginClient$Request;Lcom/facebook/FacebookException;ZLcom/facebook/FacebookCallback;)V", "Lcom/facebook/LoginStatusCallback;", "responseCallback", "", "toastDurationMs", "Www", "(Landroid/content/Context;Lcom/facebook/LoginStatusCallback;J)V", "isExpressLoginAllowed", "Kkkkkkkkkkkkkkkkkkkkkkk", "(Z)V", "Lcom/facebook/CallbackManager;", "callbackManager", "Wwwwwwww", "(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V", "", "resultCode", "data", "Wwwwwwwwww", "(ILandroid/content/Intent;Lcom/facebook/FacebookCallback;)Z", "Lcom/facebook/login/LoginBehavior;", "loginBehavior", "Kkkkkkkkkkkkkkkkkkkkk", "(Lcom/facebook/login/LoginBehavior;)Lcom/facebook/login/LoginManager;", "Lcom/facebook/login/LoginTargetApp;", "targetApp", "Kkkkkkkkkkkkkkkkkkkk", "(Lcom/facebook/login/LoginTargetApp;)Lcom/facebook/login/LoginManager;", "Lcom/facebook/login/DefaultAudience;", "defaultAudience", "Kkkkkkkkkkkkkkkkkkkkkkkk", "(Lcom/facebook/login/DefaultAudience;)Lcom/facebook/login/LoginManager;", "authType", "Kkkkkkkkkkkkkkkkkkkkkkkkk", "(Ljava/lang/String;)Lcom/facebook/login/LoginManager;", "messengerPageId", "Kkkkkkkkkkkkkkkkkkk", "resetMessengerState", "Kkkkkkkkkkkkkkkkkk", "(Z)Lcom/facebook/login/LoginManager;", "isFamilyLogin", "Kkkkkkkkkkkkkkkkkkkkkk", "shouldSkipAccountDeduplication", "Kkkkkkkkkkkkkkkkk", "Wwwwwwwwwwww", "Wwww", "(Landroid/content/Context;Lcom/facebook/LoginStatusCallback;)V", "Wwwww", "(Landroid/content/Context;JLcom/facebook/LoginStatusCallback;)V", "Landroidx/fragment/app/Fragment;", "fragment", "", "permissions", "loggerID", "Wwwwwwwwwwwwww", "(Landroidx/fragment/app/Fragment;Ljava/util/Collection;Ljava/lang/String;)V", "Landroid/app/Fragment;", "Wwwwwwwwwwwwwww", "(Landroid/app/Fragment;Ljava/util/Collection;Ljava/lang/String;)V", "Lcom/facebook/internal/FragmentWrapper;", "Wwwwwwwwwwwww", "(Lcom/facebook/internal/FragmentWrapper;Ljava/util/Collection;Ljava/lang/String;)V", "Landroid/app/Activity;", "activity", "Wwwwwwwwwwwwwwwww", "(Landroid/app/Activity;Ljava/util/Collection;)V", "Lcom/facebook/login/LoginConfiguration;", "loginConfig", "Wwwwwwwwwwwwwwwwww", "(Landroid/app/Activity;Lcom/facebook/login/LoginConfiguration;)V", "Wwwwwwwwwwwwwwww", "(Landroid/app/Activity;Ljava/util/Collection;Ljava/lang/String;)V", "Lcom/facebook/login/LoginManager$FacebookLoginActivityResultContract;", "Wwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/CallbackManager;Ljava/lang/String;)Lcom/facebook/login/LoginManager$FacebookLoginActivityResultContract;", "Wwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/login/LoginConfiguration;)Lcom/facebook/login/LoginClient$Request;", "Wwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/login/LoginClient$Request;)Landroid/content/Intent;", "<set-?>", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcom/facebook/login/LoginBehavior;", "getLoginBehavior", "()Lcom/facebook/login/LoginBehavior;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcom/facebook/login/DefaultAudience;", "getDefaultAudience", "()Lcom/facebook/login/DefaultAudience;", "Landroid/content/SharedPreferences;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Landroid/content/SharedPreferences;", "sharedPreferences", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "getAuthType", "()Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcom/facebook/login/LoginTargetApp;", "getLoginTargetApp", "()Lcom/facebook/login/LoginTargetApp;", "loginTargetApp", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "()Z", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "getShouldSkipAccountDeduplication", "Wwwwwwwwwwwwwwwwwwww", "Companion", "ActivityStartActivityDelegate", "AndroidxActivityResultRegistryOwnerStartActivityDelegate", "FacebookLoginActivityResultContract", "FragmentStartActivityDelegate", "LoginLoggerHolder", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public class LoginManager {
    @NotNull
    public static final Companion Companion;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static volatile LoginManager f7009Wwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final String f7010Wwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Set<String> f7011Wwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f7012Wwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f7013Wwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f7015Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public String f7016Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final SharedPreferences f7018Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public LoginBehavior f7020Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = LoginBehavior.NATIVE_WITH_FALLBACK;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public DefaultAudience f7019Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = DefaultAudience.FRIENDS;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public String f7017Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = "rerequest";
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public LoginTargetApp f7014Wwwwwwwwwwwwwwwwwwwwwwwwwwww = LoginTargetApp.FACEBOOK;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\b\u0002\u0018\u00002\u00020\u0001B\u0011\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u001f\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\u000b\u0010\fR\u001a\u0010\u0010\u001a\u00020\u00028\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\r\u0010\u000f¨\u0006\u0011"}, d2 = {"Lcom/facebook/login/LoginManager$ActivityStartActivityDelegate;", "Lcom/facebook/login/StartActivityDelegate;", "Landroid/app/Activity;", "activity", "<init>", "(Landroid/app/Activity;)V", "Landroid/content/Intent;", "intent", "", "requestCode", "", "startActivityForResult", "(Landroid/content/Intent;I)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Landroid/app/Activity;", "()Landroid/app/Activity;", "activityContext", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class ActivityStartActivityDelegate implements StartActivityDelegate {
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Activity f7021Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public ActivityStartActivityDelegate(@NotNull Activity activity) {
            this.f7021Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = activity;
        }

        @Override // com.facebook.login.StartActivityDelegate
        @NotNull
        public Activity Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f7021Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @Override // com.facebook.login.StartActivityDelegate
        public void startActivityForResult(@NotNull Intent intent, int i) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().startActivityForResult(intent, i);
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0002\u0018\u00002\u00020\u0001J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bR\u0014\u0010\f\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0013\u001a\u0004\u0018\u00010\u00118VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u0012¨\u0006\u0014"}, d2 = {"Lcom/facebook/login/LoginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate;", "Lcom/facebook/login/StartActivityDelegate;", "Landroid/content/Intent;", "intent", "", "requestCode", "", "startActivityForResult", "(Landroid/content/Intent;I)V", "Landroidx/activity/result/ActivityResultRegistryOwner;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Landroidx/activity/result/ActivityResultRegistryOwner;", "activityResultRegistryOwner", "Lcom/facebook/CallbackManager;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcom/facebook/CallbackManager;", "callbackManager", "Landroid/app/Activity;", "()Landroid/app/Activity;", "activityContext", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class AndroidxActivityResultRegistryOwnerStartActivityDelegate implements StartActivityDelegate {
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final CallbackManager f7022Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final ActivityResultRegistryOwner f7023Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(AndroidxActivityResultRegistryOwnerStartActivityDelegate androidxActivityResultRegistryOwnerStartActivityDelegate, LoginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate$startActivityForResult$LauncherHolder loginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate$startActivityForResult$LauncherHolder, Pair pair) {
            androidxActivityResultRegistryOwnerStartActivityDelegate.f7022Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.onActivityResult(CallbackManagerImpl.RequestCodeOffset.Login.toRequestCode(), ((Number) pair.first).intValue(), (Intent) pair.second);
            ActivityResultLauncher<Intent> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = loginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate$startActivityForResult$LauncherHolder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.unregister();
            }
            loginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate$startActivityForResult$LauncherHolder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(null);
        }

        @Override // com.facebook.login.StartActivityDelegate
        @Nullable
        public Activity Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            ActivityResultRegistryOwner activityResultRegistryOwner = this.f7023Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (activityResultRegistryOwner instanceof Activity) {
                return (Activity) activityResultRegistryOwner;
            }
            return null;
        }

        @Override // com.facebook.login.StartActivityDelegate
        public void startActivityForResult(@NotNull Intent intent, int i) {
            final LoginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate$startActivityForResult$LauncherHolder loginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate$startActivityForResult$LauncherHolder = new LoginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate$startActivityForResult$LauncherHolder();
            loginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate$startActivityForResult$LauncherHolder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f7023Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getActivityResultRegistry().register("facebook-login", new ActivityResultContract<Intent, Pair<Integer, Intent>>() { // from class: com.facebook.login.LoginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate$startActivityForResult$1
                @Override // androidx.activity.result.contract.ActivityResultContract
                @NotNull
                /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
                public Pair<Integer, Intent> parseResult(int i2, @Nullable Intent intent2) {
                    return Pair.create(Integer.valueOf(i2), intent2);
                }

                @Override // androidx.activity.result.contract.ActivityResultContract
                @NotNull
                public Intent createIntent(@NotNull Context context, @NotNull Intent intent2) {
                    return intent2;
                }
            }, new ActivityResultCallback() { // from class: com.facebook.login.Wwwwwwwwwwwwwwwwwww
                @Override // androidx.activity.result.ActivityResultCallback
                public final void onActivityResult(Object obj) {
                    LoginManager.AndroidxActivityResultRegistryOwnerStartActivityDelegate.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(LoginManager.AndroidxActivityResultRegistryOwnerStartActivityDelegate.this, loginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate$startActivityForResult$LauncherHolder, (Pair) obj);
                }
            }));
            ActivityResultLauncher<Intent> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = loginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate$startActivityForResult$LauncherHolder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
                return;
            }
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.launch(intent);
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\b\u000e\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0017¢\u0006\u0004\b\u0005\u0010\u0006J\u0019\u0010\n\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0007¢\u0006\u0004\b\n\u0010\u000bJ)\u0010\u0013\u001a\u00020\u00122\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000e2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0007¢\u0006\u0004\b\u0013\u0010\u0014J9\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u0015\u001a\u00020\u00072\b\u0010\u0016\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001b\u001a\u00020\u001aH\u0002¢\u0006\u0004\b\u001d\u0010\u001eR\u001a\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u00070\u001f8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b \u0010!R\u0014\u0010#\u001a\u00020\u00078\u0002X\u0082T¢\u0006\u0006\n\u0004\b#\u0010$R\u0014\u0010%\u001a\u00020\u00078\u0002X\u0082T¢\u0006\u0006\n\u0004\b%\u0010$R\u001a\u0010&\u001a\b\u0012\u0004\u0012\u00020\u00070\u001f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b&\u0010'R\u0014\u0010(\u001a\u00020\u00078\u0002X\u0082T¢\u0006\u0006\n\u0004\b(\u0010$R\u0014\u0010)\u001a\u00020\u00078\u0002X\u0082T¢\u0006\u0006\n\u0004\b)\u0010$R\u0014\u0010*\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b*\u0010$R\u0016\u0010+\u001a\u00020\u00048\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b+\u0010,¨\u0006-"}, d2 = {"Lcom/facebook/login/LoginManager$Companion;", "", "<init>", "()V", "Lcom/facebook/login/LoginManager;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lcom/facebook/login/LoginManager;", "", "permission", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)Z", "Lcom/facebook/login/LoginClient$Request;", AdActivity.REQUEST_KEY_EXTRA, "Lcom/facebook/AccessToken;", "newToken", "Lcom/facebook/AuthenticationToken;", "newIdToken", "Lcom/facebook/login/LoginResult;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/login/LoginClient$Request;Lcom/facebook/AccessToken;Lcom/facebook/AuthenticationToken;)Lcom/facebook/login/LoginResult;", "errorType", "errorDescription", "loggerRef", "Lcom/facebook/login/LoginLogger;", "logger", "Lcom/facebook/LoginStatusCallback;", "responseCallback", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/login/LoginLogger;Lcom/facebook/LoginStatusCallback;)V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/util/Set;", "otherPublishPermissions", "EXPRESS_LOGIN_ALLOWED", "Ljava/lang/String;", "MANAGE_PERMISSION_PREFIX", "OTHER_PUBLISH_PERMISSIONS", "Ljava/util/Set;", "PREFERENCE_LOGIN_MANAGER", "PUBLISH_PERMISSION_PREFIX", "TAG", "instance", "Lcom/facebook/login/LoginManager;", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable String str) {
            if (str == null || (!StringsKt.startsWith$default(str, "publish", false, 2, (Object) null) && !StringsKt.startsWith$default(str, "manage", false, 2, (Object) null) && !LoginManager.f7011Wwwwwwwwwwwwwwwwwwwwwwwww.contains(str))) {
                return false;
            }
            return true;
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, String str2, String str3, LoginLogger loginLogger, LoginStatusCallback loginStatusCallback) {
            FacebookException facebookException = new FacebookException(str + ": " + ((Object) str2));
            loginLogger.Wwwwwwwwwwwwwwwwwwwwwwwwww(str3, facebookException);
            loginStatusCallback.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(facebookException);
        }

        public final Set<String> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return SetsKt.setOf((Object[]) new String[]{"ads_management", "create_event", "rsvp_event"});
        }

        @JvmStatic
        @NotNull
        public LoginManager Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            if (LoginManager.f7009Wwwwwwwwwwwwwwwwwwwwwww == null) {
                synchronized (this) {
                    LoginManager.f7009Wwwwwwwwwwwwwwwwwwwwwww = new LoginManager();
                    Unit unit = Unit.INSTANCE;
                }
            }
            LoginManager loginManager = LoginManager.f7009Wwwwwwwwwwwwwwwwwwwwwww;
            loginManager.getClass();
            return loginManager;
        }

        @JvmStatic
        @VisibleForTesting(otherwise = 2)
        @NotNull
        public final LoginResult Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull LoginClient.Request request, @NotNull AccessToken accessToken, @Nullable AuthenticationToken authenticationToken) {
            Set<String> Wwwwwwwwwwwwwwwwwwwww2 = request.Wwwwwwwwwwwwwwwwwwwww();
            Set mutableSet = CollectionsKt.toMutableSet(CollectionsKt.filterNotNull(accessToken.Wwwwwwwwwwwwwwwwwwwwwwww()));
            if (request.Wwwwwwwwwwwwwwww()) {
                mutableSet.retainAll(Wwwwwwwwwwwwwwwwwwwww2);
            }
            Set mutableSet2 = CollectionsKt.toMutableSet(CollectionsKt.filterNotNull(Wwwwwwwwwwwwwwwwwwwww2));
            mutableSet2.removeAll(mutableSet);
            return new LoginResult(accessToken, authenticationToken, mutableSet, mutableSet2);
        }

        public Companion() {
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u001e\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u000f\b\u0086\u0004\u0018\u00002\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0004\u0012\u00020\u00040\u0001B\u001f\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\b\u0010\tJ%\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\n2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ!\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u00102\b\u0010\u0012\u001a\u0004\u0018\u00010\rH\u0016¢\u0006\u0004\b\u0013\u0010\u0014R$\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R$\u0010\u0007\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u001a\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001e¨\u0006\u001f"}, d2 = {"Lcom/facebook/login/LoginManager$FacebookLoginActivityResultContract;", "Landroidx/activity/result/contract/ActivityResultContract;", "", "", "Lcom/facebook/CallbackManager$ActivityResultParameters;", "Lcom/facebook/CallbackManager;", "callbackManager", "loggerID", "<init>", "(Lcom/facebook/login/LoginManager;Lcom/facebook/CallbackManager;Ljava/lang/String;)V", "Landroid/content/Context;", "context", "permissions", "Landroid/content/Intent;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;Ljava/util/Collection;)Landroid/content/Intent;", "", "resultCode", "intent", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(ILandroid/content/Intent;)Lcom/facebook/CallbackManager$ActivityResultParameters;", "Lcom/facebook/CallbackManager;", "getCallbackManager", "()Lcom/facebook/CallbackManager;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/CallbackManager;)V", "Ljava/lang/String;", "getLoggerID", "()Ljava/lang/String;", "setLoggerID", "(Ljava/lang/String;)V", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public final class FacebookLoginActivityResultContract extends ActivityResultContract<Collection<? extends String>, CallbackManager.ActivityResultParameters> {
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public String f7026Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public CallbackManager f7027Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public FacebookLoginActivityResultContract(@Nullable CallbackManager callbackManager, @Nullable String str) {
            this.f7027Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = callbackManager;
            this.f7026Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable CallbackManager callbackManager) {
            this.f7027Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = callbackManager;
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        @NotNull
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public CallbackManager.ActivityResultParameters parseResult(int i, @Nullable Intent intent) {
            LoginManager.Wwwwwwwww(LoginManager.this, i, intent, null, 4, null);
            int requestCode = CallbackManagerImpl.RequestCodeOffset.Login.toRequestCode();
            CallbackManager callbackManager = this.f7027Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (callbackManager != null) {
                callbackManager.onActivityResult(requestCode, i, intent);
            }
            return new CallbackManager.ActivityResultParameters(requestCode, i, intent);
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        @NotNull
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public Intent createIntent(@NotNull Context context, @NotNull Collection<String> collection) {
            LoginClient.Request Wwwwwwwwwwwwwwwwwwwwwwww2 = LoginManager.this.Wwwwwwwwwwwwwwwwwwwwwwww(new LoginConfiguration(collection, null, 2, null));
            String str = this.f7026Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (str != null) {
                Wwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwww(str);
            }
            LoginManager.this.Wwwwwwwwwww(context, Wwwwwwwwwwwwwwwwwwwwwwww2);
            Intent Wwwwwwwwwwwwwwwwwwwwww2 = LoginManager.this.Wwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwww2);
            if (LoginManager.this.Wwwwww(Wwwwwwwwwwwwwwwwwwwwww2)) {
                return Wwwwwwwwwwwwwwwwwwwwww2;
            }
            FacebookException facebookException = new FacebookException("Log in attempt failed: FacebookActivity could not be started. Please make sure you added FacebookActivity to the AndroidManifest.");
            LoginManager.this.Wwwwwwwwwwwwwwwwwww(context, LoginClient.Result.Code.ERROR, null, facebookException, false, Wwwwwwwwwwwwwwwwwwwwwwww2);
            throw facebookException;
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u001f\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\u000b\u0010\fR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u000f8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\r\u0010\u0012¨\u0006\u0014"}, d2 = {"Lcom/facebook/login/LoginManager$FragmentStartActivityDelegate;", "Lcom/facebook/login/StartActivityDelegate;", "Lcom/facebook/internal/FragmentWrapper;", "fragment", "<init>", "(Lcom/facebook/internal/FragmentWrapper;)V", "Landroid/content/Intent;", "intent", "", "requestCode", "", "startActivityForResult", "(Landroid/content/Intent;I)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcom/facebook/internal/FragmentWrapper;", "Landroid/app/Activity;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Landroid/app/Activity;", "()Landroid/app/Activity;", "activityContext", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class FragmentStartActivityDelegate implements StartActivityDelegate {
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Activity f7028Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final FragmentWrapper f7029Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public FragmentStartActivityDelegate(@NotNull FragmentWrapper fragmentWrapper) {
            this.f7029Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = fragmentWrapper;
            this.f7028Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = fragmentWrapper.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }

        @Override // com.facebook.login.StartActivityDelegate
        @Nullable
        public Activity Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f7028Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @Override // com.facebook.login.StartActivityDelegate
        public void startActivityForResult(@NotNull Intent intent, int i) {
            this.f7029Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(intent, i);
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\bÂ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0007\u0010\bR\u0018\u0010\n\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0007\u0010\t¨\u0006\u000b"}, d2 = {"Lcom/facebook/login/LoginManager$LoginLoggerHolder;", "", "<init>", "()V", "Landroid/content/Context;", "context", "Lcom/facebook/login/LoginLogger;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;)Lcom/facebook/login/LoginLogger;", "Lcom/facebook/login/LoginLogger;", "logger", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class LoginLoggerHolder {
        @NotNull
        public static final LoginLoggerHolder INSTANCE = new LoginLoggerHolder();
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public static LoginLogger f7030Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        @Nullable
        public final synchronized LoginLogger Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Context context) {
            if (context == null) {
                context = FacebookSdk.Wwwwwwwwwwwwwwwwwwwwwww();
            }
            if (context == null) {
                return null;
            }
            if (f7030Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
                f7030Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new LoginLogger(context, FacebookSdk.Wwwwwwwwwwwwwwwwwwwwww());
            }
            return f7030Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
    }

    static {
        Companion companion = new Companion(null);
        Companion = companion;
        f7011Wwwwwwwwwwwwwwwwwwwwwwwww = companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        f7010Wwwwwwwwwwwwwwwwwwwwwwww = LoginManager.class.toString();
    }

    public LoginManager() {
        Validate.Wwwwwwwwwwwwwwwwwwww();
        this.f7018Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = FacebookSdk.Wwwwwwwwwwwwwwwwwwwwwww().getSharedPreferences("com.facebook.loginManager", 0);
        if (FacebookSdk.f5998Wwwwwwwwwwwwwwwwwww && CustomTabUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() != null) {
            CustomTabsClient.bindCustomTabsService(FacebookSdk.Wwwwwwwwwwwwwwwwwwwwwww(), "com.android.chrome", new CustomTabPrefetchHelper());
            CustomTabsClient.connectAndInitialize(FacebookSdk.Wwwwwwwwwwwwwwwwwwwwwww(), FacebookSdk.Wwwwwwwwwwwwwwwwwwwwwww().getPackageName());
        }
    }

    public static final boolean Kkkkkkkkkkkkkkk(LoginManager loginManager, int i, Intent intent) {
        return Wwwwwwwww(loginManager, i, intent, null, 4, null);
    }

    public static final void Kkkkkkkkkkkkkkkkkkkkkkkkkk(String str, LoginLogger loginLogger, LoginStatusCallback loginStatusCallback, String str2, Bundle bundle) {
        String str3;
        if (bundle != null) {
            String string = bundle.getString("com.facebook.platform.status.ERROR_TYPE");
            String string2 = bundle.getString("com.facebook.platform.status.ERROR_DESCRIPTION");
            if (string != null) {
                Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(string, string2, str, loginLogger, loginStatusCallback);
                return;
            }
            String string3 = bundle.getString("com.facebook.platform.extra.ACCESS_TOKEN");
            Utility utility = Utility.INSTANCE;
            Date Wwwwwwwwww2 = Utility.Wwwwwwwwww(bundle, "com.facebook.platform.extra.EXPIRES_SECONDS_SINCE_EPOCH", new Date(0L));
            ArrayList<String> stringArrayList = bundle.getStringArrayList("com.facebook.platform.extra.PERMISSIONS");
            String string4 = bundle.getString("signed request");
            String string5 = bundle.getString("graph_domain");
            Date Wwwwwwwwww3 = Utility.Wwwwwwwwww(bundle, "com.facebook.platform.extra.EXTRA_DATA_ACCESS_EXPIRATION_TIME", new Date(0L));
            if (string4 != null && string4.length() != 0) {
                str3 = LoginMethodHandler.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(string4);
            } else {
                str3 = null;
            }
            String str4 = str3;
            if (string3 != null && string3.length() != 0 && stringArrayList != null && !stringArrayList.isEmpty() && str4 != null && str4.length() != 0) {
                AccessToken accessToken = new AccessToken(string3, str2, str4, stringArrayList, null, null, null, Wwwwwwwwww2, null, Wwwwwwwwww3, string5);
                AccessToken.Companion.Wwwwwwwwwwwwwwwwwwwwwwww(accessToken);
                Profile.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                loginLogger.Wwwwwwwwwwwwwwwwwwwwwww(str);
                loginStatusCallback.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(accessToken);
                return;
            }
            loginLogger.Wwwwwwwwwwwwwwwwwwwwwwwww(str);
            loginStatusCallback.onFailure();
            return;
        }
        loginLogger.Wwwwwwwwwwwwwwwwwwwwwwwww(str);
        loginStatusCallback.onFailure();
    }

    public static final boolean Wwwwwww(LoginManager loginManager, FacebookCallback facebookCallback, int i, Intent intent) {
        return loginManager.Wwwwwwwwww(i, intent, facebookCallback);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ boolean Wwwwwwwww(LoginManager loginManager, int i, Intent intent, FacebookCallback facebookCallback, int i2, Object obj) {
        if (obj == null) {
            if ((i2 & 4) != 0) {
                facebookCallback = null;
            }
            return loginManager.Wwwwwwwwww(i, intent, facebookCallback);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: onActivityResult");
    }

    @JvmStatic
    @NotNull
    public static LoginManager Wwwwwwwwwwwwwwwwwwwww() {
        return Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public final boolean Kkkkkkkkkkkkkk(StartActivityDelegate startActivityDelegate, LoginClient.Request request) {
        Intent Wwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwww(request);
        if (!Wwwwww(Wwwwwwwwwwwwwwwwwwwwww2)) {
            return false;
        }
        try {
            startActivityDelegate.startActivityForResult(Wwwwwwwwwwwwwwwwwwwwww2, LoginClient.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            return true;
        } catch (ActivityNotFoundException unused) {
            return false;
        }
    }

    public final void Kkkkkkkkkkkkkkkk(StartActivityDelegate startActivityDelegate, LoginClient.Request request) throws FacebookException {
        Wwwwwwwwwww(startActivityDelegate.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), request);
        CallbackManagerImpl.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(CallbackManagerImpl.RequestCodeOffset.Login.toRequestCode(), new CallbackManagerImpl.Callback() { // from class: com.facebook.login.Wwwwwwwwwwwwwwwwwwww
            @Override // com.facebook.internal.CallbackManagerImpl.Callback
            public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, Intent intent) {
                boolean Kkkkkkkkkkkkkkk2;
                Kkkkkkkkkkkkkkk2 = LoginManager.Kkkkkkkkkkkkkkk(LoginManager.this, i, intent);
                return Kkkkkkkkkkkkkkk2;
            }
        });
        if (Kkkkkkkkkkkkkk(startActivityDelegate, request)) {
            return;
        }
        FacebookException facebookException = new FacebookException("Log in attempt failed: FacebookActivity could not be started. Please make sure you added FacebookActivity to the AndroidManifest.");
        Wwwwwwwwwwwwwwwwwww(startActivityDelegate.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), LoginClient.Result.Code.ERROR, null, facebookException, false, request);
        throw facebookException;
    }

    @NotNull
    public final LoginManager Kkkkkkkkkkkkkkkkk(boolean z) {
        this.f7012Wwwwwwwwwwwwwwwwwwwwwwwwww = z;
        return this;
    }

    @NotNull
    public final LoginManager Kkkkkkkkkkkkkkkkkk(boolean z) {
        this.f7015Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = z;
        return this;
    }

    @NotNull
    public final LoginManager Kkkkkkkkkkkkkkkkkkk(@Nullable String str) {
        this.f7016Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
        return this;
    }

    @NotNull
    public final LoginManager Kkkkkkkkkkkkkkkkkkkk(@NotNull LoginTargetApp loginTargetApp) {
        this.f7014Wwwwwwwwwwwwwwwwwwwwwwwwwwww = loginTargetApp;
        return this;
    }

    @NotNull
    public final LoginManager Kkkkkkkkkkkkkkkkkkkkk(@NotNull LoginBehavior loginBehavior) {
        this.f7020Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = loginBehavior;
        return this;
    }

    @NotNull
    public final LoginManager Kkkkkkkkkkkkkkkkkkkkkk(boolean z) {
        this.f7013Wwwwwwwwwwwwwwwwwwwwwwwwwww = z;
        return this;
    }

    public final void Kkkkkkkkkkkkkkkkkkkkkkk(boolean z) {
        SharedPreferences.Editor edit = this.f7018Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.edit();
        edit.putBoolean("express_login_allowed", z);
        edit.apply();
    }

    @NotNull
    public final LoginManager Kkkkkkkkkkkkkkkkkkkkkkkk(@NotNull DefaultAudience defaultAudience) {
        this.f7019Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = defaultAudience;
        return this;
    }

    @NotNull
    public final LoginManager Kkkkkkkkkkkkkkkkkkkkkkkkk(@NotNull String str) {
        this.f7017Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
        return this;
    }

    public final void Www(Context context, final LoginStatusCallback loginStatusCallback, long j) {
        Context context2;
        final String Wwwwwwwwwwwwwwwwwwwwww2 = FacebookSdk.Wwwwwwwwwwwwwwwwwwwwww();
        final String uuid = UUID.randomUUID().toString();
        if (context == null) {
            context2 = FacebookSdk.Wwwwwwwwwwwwwwwwwwwwwww();
        } else {
            context2 = context;
        }
        final LoginLogger loginLogger = new LoginLogger(context2, Wwwwwwwwwwwwwwwwwwwwww2);
        if (!Wwwwwwwwwwwwwwwwwwww()) {
            loginLogger.Wwwwwwwwwwwwwwwwwwwwwwwww(uuid);
            loginStatusCallback.onFailure();
            return;
        }
        LoginStatusClient Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = LoginStatusClient.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, Wwwwwwwwwwwwwwwwwwwwww2, uuid, FacebookSdk.Wwwwwwwwwww(), j, null);
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(new PlatformServiceClient.CompletedListener() { // from class: com.facebook.login.Wwwwwwwwwwwwwwwwwwwww
            @Override // com.facebook.internal.PlatformServiceClient.CompletedListener
            public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Bundle bundle) {
                LoginManager.Kkkkkkkkkkkkkkkkkkkkkkkkkk(uuid, loginLogger, loginStatusCallback, Wwwwwwwwwwwwwwwwwwwwww2, bundle);
            }
        });
        loginLogger.Wwwwwwwwwwwwwwwwwwwwwwww(uuid);
        if (!Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            loginLogger.Wwwwwwwwwwwwwwwwwwwwwwwww(uuid);
            loginStatusCallback.onFailure();
        }
    }

    public final void Wwww(@NotNull Context context, @NotNull LoginStatusCallback loginStatusCallback) {
        Wwwww(context, 5000L, loginStatusCallback);
    }

    public final void Wwwww(@NotNull Context context, long j, @NotNull LoginStatusCallback loginStatusCallback) {
        Www(context, loginStatusCallback, j);
    }

    public final boolean Wwwwww(Intent intent) {
        if (FacebookSdk.Wwwwwwwwwwwwwwwwwwwwwww().getPackageManager().resolveActivity(intent, 0) == null) {
            return false;
        }
        return true;
    }

    public final void Wwwwwwww(@Nullable CallbackManager callbackManager, @Nullable final FacebookCallback<LoginResult> facebookCallback) {
        if (callbackManager instanceof CallbackManagerImpl) {
            ((CallbackManagerImpl) callbackManager).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(CallbackManagerImpl.RequestCodeOffset.Login.toRequestCode(), new CallbackManagerImpl.Callback() { // from class: com.facebook.login.Wwwwwwwwwwwwwwwwwwwwww
                @Override // com.facebook.internal.CallbackManagerImpl.Callback
                public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, Intent intent) {
                    boolean Wwwwwww2;
                    Wwwwwww2 = LoginManager.Wwwwwww(LoginManager.this, facebookCallback, i, intent);
                    return Wwwwwww2;
                }
            });
            return;
        }
        throw new FacebookException("Unexpected CallbackManager, please use the provided Factory.");
    }

    @JvmOverloads
    @VisibleForTesting(otherwise = 3)
    public boolean Wwwwwwwwww(int i, @Nullable Intent intent, @Nullable FacebookCallback<LoginResult> facebookCallback) {
        LoginClient.Result.Code code;
        boolean z;
        AccessToken accessToken;
        AuthenticationToken authenticationToken;
        Map<String, String> map;
        LoginClient.Request request;
        AuthenticationToken authenticationToken2;
        LoginClient.Result.Code code2 = LoginClient.Result.Code.ERROR;
        FacebookException facebookException = null;
        boolean z2 = false;
        if (intent != null) {
            intent.setExtrasClassLoader(LoginClient.Result.class.getClassLoader());
            LoginClient.Result result = (LoginClient.Result) intent.getParcelableExtra("com.facebook.LoginFragment:Result");
            if (result != null) {
                LoginClient.Request request2 = result.f6990Wwwwwwwwwwwwwwwwwwww;
                LoginClient.Result.Code code3 = result.f6995Wwwwwwwwwwwwwwwwwwwwwwwww;
                if (i != -1) {
                    if (i == 0) {
                        z2 = true;
                    }
                    accessToken = null;
                    authenticationToken2 = null;
                } else if (code3 == LoginClient.Result.Code.SUCCESS) {
                    accessToken = result.f6994Wwwwwwwwwwwwwwwwwwwwwwww;
                    authenticationToken2 = result.f6993Wwwwwwwwwwwwwwwwwwwwwww;
                } else {
                    authenticationToken2 = null;
                    facebookException = new FacebookAuthorizationException(result.f6992Wwwwwwwwwwwwwwwwwwwwww);
                    accessToken = null;
                }
                map = result.f6989Wwwwwwwwwwwwwwwwwww;
                request = request2;
                z = z2;
                authenticationToken = authenticationToken2;
                code = code3;
            }
            code = code2;
            accessToken = null;
            authenticationToken = null;
            map = null;
            request = null;
            z = false;
        } else {
            if (i == 0) {
                code = LoginClient.Result.Code.CANCEL;
                z = true;
                accessToken = null;
                authenticationToken = null;
                map = null;
                request = null;
            }
            code = code2;
            accessToken = null;
            authenticationToken = null;
            map = null;
            request = null;
            z = false;
        }
        if (facebookException == null && accessToken == null && !z) {
            facebookException = new FacebookException("Unexpected call to LoginManager.onActivityResult");
        }
        FacebookException facebookException2 = facebookException;
        Wwwwwwwwwwwwwwwwwww(null, code, map, facebookException2, true, request);
        Wwwwwwwwwwwwwwwwwwwwwww(accessToken, authenticationToken, request, facebookException2, z, facebookCallback);
        return true;
    }

    public final void Wwwwwwwwwww(Context context, LoginClient.Request request) {
        String str;
        LoginLogger Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = LoginLoggerHolder.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null && request != null) {
            if (request.Wwwwwwwwwwwwwwwwww()) {
                str = "foa_mobile_login_start";
            } else {
                str = "fb_mobile_login_start";
            }
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwww(request, str);
        }
    }

    public void Wwwwwwwwwwww() {
        AccessToken.Companion.Wwwwwwwwwwwwwwwwwwwwwwww(null);
        AuthenticationToken.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(null);
        Profile.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(null);
        Kkkkkkkkkkkkkkkkkkkkkkk(false);
    }

    public final void Wwwwwwwwwwwww(@NotNull FragmentWrapper fragmentWrapper, @Nullable Collection<String> collection, @Nullable String str) {
        LoginClient.Request Wwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwww(new LoginConfiguration(collection, null, 2, null));
        if (str != null) {
            Wwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwww(str);
        }
        Kkkkkkkkkkkkkkkk(new FragmentStartActivityDelegate(fragmentWrapper), Wwwwwwwwwwwwwwwwwwwwwwww2);
    }

    public final void Wwwwwwwwwwwwww(@NotNull Fragment fragment, @Nullable Collection<String> collection, @Nullable String str) {
        Wwwwwwwwwwwww(new FragmentWrapper(fragment), collection, str);
    }

    public final void Wwwwwwwwwwwwwww(@NotNull android.app.Fragment fragment, @Nullable Collection<String> collection, @Nullable String str) {
        Wwwwwwwwwwwww(new FragmentWrapper(fragment), collection, str);
    }

    public final void Wwwwwwwwwwwwwwww(@NotNull Activity activity, @Nullable Collection<String> collection, @Nullable String str) {
        LoginClient.Request Wwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwww(new LoginConfiguration(collection, null, 2, null));
        if (str != null) {
            Wwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwww(str);
        }
        Kkkkkkkkkkkkkkkk(new ActivityStartActivityDelegate(activity), Wwwwwwwwwwwwwwwwwwwwwwww2);
    }

    public final void Wwwwwwwwwwwwwwwww(@NotNull Activity activity, @Nullable Collection<String> collection) {
        Wwwwwwwwwwwwwwwwww(activity, new LoginConfiguration(collection, null, 2, null));
    }

    public final void Wwwwwwwwwwwwwwwwww(@NotNull Activity activity, @NotNull LoginConfiguration loginConfiguration) {
        boolean z = activity instanceof ActivityResultRegistryOwner;
        Kkkkkkkkkkkkkkkk(new ActivityStartActivityDelegate(activity), Wwwwwwwwwwwwwwwwwwwwwwww(loginConfiguration));
    }

    public final void Wwwwwwwwwwwwwwwwwww(Context context, LoginClient.Result.Code code, Map<String, String> map, Exception exc, boolean z, LoginClient.Request request) {
        String str;
        String str2;
        LoginLogger Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = LoginLoggerHolder.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            return;
        }
        if (request == null) {
            LoginLogger.Wwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, "fb_mobile_login_complete", "Unexpected call to logCompleteLogin with null pendingAuthorizationRequest.", null, 4, null);
            return;
        }
        HashMap hashMap = new HashMap();
        if (z) {
            str = "1";
        } else {
            str = "0";
        }
        hashMap.put("try_login_activity", str);
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = request.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (request.Wwwwwwwwwwwwwwwwww()) {
            str2 = "foa_mobile_login_complete";
        } else {
            str2 = "fb_mobile_login_complete";
        }
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, hashMap, code, map, exc, str2);
    }

    public final boolean Wwwwwwwwwwwwwwwwwwww() {
        return this.f7018Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getBoolean("express_login_allowed", true);
    }

    @NotNull
    public Intent Wwwwwwwwwwwwwwwwwwwwww(@NotNull LoginClient.Request request) {
        Intent intent = new Intent();
        intent.setClass(FacebookSdk.Wwwwwwwwwwwwwwwwwwwwwww(), FacebookActivity.class);
        intent.setAction(request.Wwwwwwwwwwwwwwwwwwwwwwwww().toString());
        Bundle bundle = new Bundle();
        bundle.putParcelable(AdActivity.REQUEST_KEY_EXTRA, request);
        intent.putExtra("com.facebook.LoginFragment:Request", bundle);
        return intent;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwww(AccessToken accessToken, AuthenticationToken authenticationToken, LoginClient.Request request, FacebookException facebookException, boolean z, FacebookCallback<LoginResult> facebookCallback) {
        LoginResult loginResult;
        if (accessToken != null) {
            AccessToken.Companion.Wwwwwwwwwwwwwwwwwwwwwwww(accessToken);
            Profile.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        if (authenticationToken != null) {
            AuthenticationToken.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(authenticationToken);
        }
        if (facebookCallback != null) {
            if (accessToken != null && request != null) {
                loginResult = Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(request, accessToken, authenticationToken);
            } else {
                loginResult = null;
            }
            if (!z && (loginResult == null || !loginResult.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().isEmpty())) {
                if (facebookException != null) {
                    facebookCallback.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(facebookException);
                    return;
                } else if (accessToken != null && loginResult != null) {
                    Kkkkkkkkkkkkkkkkkkkkkkk(true);
                    facebookCallback.onSuccess(loginResult);
                    return;
                } else {
                    return;
                }
            }
            facebookCallback.onCancel();
        }
    }

    @NotNull
    public LoginClient.Request Wwwwwwwwwwwwwwwwwwwwwwww(@NotNull LoginConfiguration loginConfiguration) {
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        CodeChallengeMethod codeChallengeMethod = CodeChallengeMethod.S256;
        try {
            PKCEUtil pKCEUtil = PKCEUtil.INSTANCE;
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = PKCEUtil.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(loginConfiguration.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), codeChallengeMethod);
        } catch (FacebookException unused) {
            codeChallengeMethod = CodeChallengeMethod.PLAIN;
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = loginConfiguration.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        LoginClient.Request request = new LoginClient.Request(this.f7020Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, CollectionsKt.toSet(loginConfiguration.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()), this.f7019Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f7017Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, FacebookSdk.Wwwwwwwwwwwwwwwwwwwwww(), UUID.randomUUID().toString(), this.f7014Wwwwwwwwwwwwwwwwwwwwwwwwwwww, loginConfiguration.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), loginConfiguration.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, codeChallengeMethod);
        request.Wwwwwwwwwww(AccessToken.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwww());
        request.Wwwwwwwwwwwww(this.f7016Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        request.Wwwwwwwwww(this.f7015Wwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        request.Wwwwwwwwwwwwww(this.f7013Wwwwwwwwwwwwwwwwwwwwwwwwwww);
        request.Wwwwwwwww(this.f7012Wwwwwwwwwwwwwwwwwwwwwwwwww);
        return request;
    }

    @JvmOverloads
    @NotNull
    public final FacebookLoginActivityResultContract Wwwwwwwwwwwwwwwwwwwwwwwww(@Nullable CallbackManager callbackManager, @Nullable String str) {
        return new FacebookLoginActivityResultContract(callbackManager, str);
    }
}
