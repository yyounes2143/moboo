package com.facebook.login.widget;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.View;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.ActivityResultRegistryOwner;
import androidx.annotation.StringRes;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.fragment.app.Fragment;
import com.facebook.AccessToken;
import com.facebook.AccessTokenTracker;
import com.facebook.CallbackManager;
import com.facebook.FacebookButtonBase;
import com.facebook.FacebookSdk;
import com.facebook.Profile;
import com.facebook.appevents.InternalAppEventsLogger;
import com.facebook.internal.CallbackManagerImpl;
import com.facebook.internal.FetchedAppSettings;
import com.facebook.internal.FetchedAppSettingsManager;
import com.facebook.internal.Utility;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.facebook.login.DefaultAudience;
import com.facebook.login.LoginBehavior;
import com.facebook.login.LoginManager;
import com.facebook.login.LoginTargetApp;
import com.facebook.login.R;
import com.facebook.login.widget.LoginButton;
import com.facebook.login.widget.ToolTipPopup;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import com.sensorsdata.analytics.android.sdk.SensorsDataInstrumented;
import com.sensorsdata.analytics.android.sdk.plugin.property.beans.SAPropertyFilter;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.StringCompanionObject;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000¾\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\t\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0010\u001e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0018\u0002\n\u0002\b\f\b\u0016\u0018\u0000 ¬\u00012\u00020\u0001:\b¬\u0001\u00ad\u0001®\u0001¯\u0001J\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\t\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007H\u0003¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0004H\u0003¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u0007H\u0003¢\u0006\u0004\b\u000f\u0010\u0010J\u001d\u0010\u0013\u001a\u00020\u00042\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00070\u0011H\u0007¢\u0006\u0004\b\u0013\u0010\u0014J'\u0010\u0013\u001a\u00020\u00042\u0016\u0010\u0012\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00070\u0015\"\u0004\u0018\u00010\u0007H\u0007¢\u0006\u0004\b\u0013\u0010\u0016J%\u0010\u0017\u001a\u00020\u00042\u0016\u0010\u0012\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00070\u0015\"\u0004\u0018\u00010\u0007¢\u0006\u0004\b\u0017\u0010\u0016J\u001d\u0010\u0018\u001a\u00020\u00042\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00070\u0011H\u0007¢\u0006\u0004\b\u0018\u0010\u0014J'\u0010\u0018\u001a\u00020\u00042\u0016\u0010\u0012\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00070\u0015\"\u0004\u0018\u00010\u0007H\u0007¢\u0006\u0004\b\u0018\u0010\u0016J\r\u0010\u0019\u001a\u00020\u0004¢\u0006\u0004\b\u0019\u0010\fJ\u000f\u0010\u001a\u001a\u00020\u0004H\u0015¢\u0006\u0004\b\u001a\u0010\fJ\u0017\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u001bH\u0015¢\u0006\u0004\b\u001d\u0010\u001eJ7\u0010%\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010!\u001a\u00020\u000e2\u0006\u0010\"\u001a\u00020\u000e2\u0006\u0010#\u001a\u00020\u000e2\u0006\u0010$\u001a\u00020\u000eH\u0015¢\u0006\u0004\b%\u0010&J\u000f\u0010'\u001a\u00020\u0004H\u0015¢\u0006\u0004\b'\u0010\fJ\u001f\u0010+\u001a\u00020\u00042\u0006\u0010)\u001a\u00020(2\u0006\u0010*\u001a\u00020\u000eH\u0015¢\u0006\u0004\b+\u0010,J\u001f\u0010/\u001a\u00020\u00042\u0006\u0010-\u001a\u00020\u000e2\u0006\u0010.\u001a\u00020\u000eH\u0015¢\u0006\u0004\b/\u00100J\u0017\u00101\u001a\u00020\u000e2\u0006\u0010-\u001a\u00020\u000eH\u0005¢\u0006\u0004\b1\u00102J\u000f\u00103\u001a\u00020\u0004H\u0005¢\u0006\u0004\b3\u0010\fJ\u000f\u00104\u001a\u00020\u0004H\u0005¢\u0006\u0004\b4\u0010\fR\u0016\u00106\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b4\u00105R.\u0010<\u001a\u0004\u0018\u00010\u00072\b\u00107\u001a\u0004\u0018\u00010\u00078\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b3\u00108\u001a\u0004\b9\u0010:\"\u0004\b;\u0010\nR.\u0010?\u001a\u0004\u0018\u00010\u00072\b\u00107\u001a\u0004\u0018\u00010\u00078\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b\u0005\u00108\u001a\u0004\b=\u0010:\"\u0004\b>\u0010\nR\u001a\u0010E\u001a\u00020@8\u0004X\u0084\u0004¢\u0006\f\n\u0004\bA\u0010B\u001a\u0004\bC\u0010DR\u0016\u0010G\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bF\u00105R\"\u0010O\u001a\u00020H8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bI\u0010J\u001a\u0004\bK\u0010L\"\u0004\bM\u0010NR\"\u0010W\u001a\u00020P8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bQ\u0010R\u001a\u0004\bS\u0010T\"\u0004\bU\u0010VR\"\u0010_\u001a\u00020X8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bY\u0010Z\u001a\u0004\b[\u0010\\\"\u0004\b]\u0010^R\u0018\u0010c\u001a\u0004\u0018\u00010`8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\ba\u0010bR\u0018\u0010g\u001a\u0004\u0018\u00010d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\be\u0010fR(\u0010p\u001a\b\u0012\u0004\u0012\u00020i0h8\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\bj\u0010k\u001a\u0004\bl\u0010m\"\u0004\bn\u0010oR\u0017\u0010s\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\bq\u00108\u001a\u0004\br\u0010:R(\u0010z\u001a\u0004\u0018\u00010t2\b\u0010u\u001a\u0004\u0018\u00010t8\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\bv\u0010w\u001a\u0004\bx\u0010yR$\u0010\u007f\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070|\u0018\u00010{8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b}\u0010~R+\u0010\u0085\u0001\u001a\u00030\u0080\u00012\u0007\u00107\u001a\u00030\u0080\u00018F@FX\u0086\u000e¢\u0006\u0010\u001a\u0006\b\u0081\u0001\u0010\u0082\u0001\"\u0006\b\u0083\u0001\u0010\u0084\u0001R+\u0010\u008b\u0001\u001a\u00030\u0086\u00012\u0007\u00107\u001a\u00030\u0086\u00018F@FX\u0086\u000e¢\u0006\u0010\u001a\u0006\b\u0087\u0001\u0010\u0088\u0001\"\u0006\b\u0089\u0001\u0010\u008a\u0001R+\u0010\u0091\u0001\u001a\u00030\u008c\u00012\u0007\u00107\u001a\u00030\u008c\u00018F@FX\u0086\u000e¢\u0006\u0010\u001a\u0006\b\u008d\u0001\u0010\u008e\u0001\"\u0006\b\u008f\u0001\u0010\u0090\u0001R'\u0010\u0094\u0001\u001a\u00020\u00072\u0006\u00107\u001a\u00020\u00078F@FX\u0086\u000e¢\u0006\u000e\u001a\u0005\b\u0092\u0001\u0010:\"\u0005\b\u0093\u0001\u0010\nR+\u0010\u0097\u0001\u001a\u0004\u0018\u00010\u00072\b\u00107\u001a\u0004\u0018\u00010\u00078F@FX\u0086\u000e¢\u0006\u000e\u001a\u0005\b\u0095\u0001\u0010:\"\u0005\b\u0096\u0001\u0010\nR)\u0010\u009c\u0001\u001a\u00020\u001f2\u0006\u00107\u001a\u00020\u001f8F@FX\u0086\u000e¢\u0006\u0010\u001a\u0006\b\u0098\u0001\u0010\u0099\u0001\"\u0006\b\u009a\u0001\u0010\u009b\u0001R\u0014\u0010\u009e\u0001\u001a\u00020\u001f8F¢\u0006\b\u001a\u0006\b\u009d\u0001\u0010\u0099\u0001R\u0017\u0010¡\u0001\u001a\u00020\u000e8EX\u0084\u0004¢\u0006\b\u001a\u0006\b\u009f\u0001\u0010 \u0001R2\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00070\u00112\f\u00107\u001a\b\u0012\u0004\u0012\u00020\u00070\u00118F@FX\u0086\u000e¢\u0006\u000e\u001a\u0006\b¢\u0001\u0010£\u0001\"\u0004\b\u0017\u0010\u0014R\u001c\u0010§\u0001\u001a\u00070¤\u0001R\u00020\u00008TX\u0094\u0004¢\u0006\b\u001a\u0006\b¥\u0001\u0010¦\u0001R\u0017\u0010©\u0001\u001a\u00020\u000e8TX\u0094\u0004¢\u0006\b\u001a\u0006\b¨\u0001\u0010 \u0001R\u0017\u0010«\u0001\u001a\u00020\u000e8UX\u0094\u0004¢\u0006\b\u001a\u0006\bª\u0001\u0010 \u0001¨\u0006°\u0001"}, d2 = {"Lcom/facebook/login/widget/LoginButton;", "Lcom/facebook/FacebookButtonBase;", "Lcom/facebook/internal/FetchedAppSettings;", "settings", "", "Wwwwwwwwwwwwww", "(Lcom/facebook/internal/FetchedAppSettings;)V", "", "toolTipString", "Wwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)V", "Wwwwwwwwwwwwwwwwwwwwwwww", "()V", "text", "", "Wwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)I", "", "permissions", "setReadPermissions", "(Ljava/util/List;)V", "", "([Ljava/lang/String;)V", "setPermissions", "setPublishPermissions", "Wwwwwwwwwwwwwwwwwwwww", "onAttachedToWindow", "Landroid/graphics/Canvas;", "canvas", "onDraw", "(Landroid/graphics/Canvas;)V", "", "changed", "left", "top", "right", "bottom", "onLayout", "(ZIIII)V", "onDetachedFromWindow", "Landroid/view/View;", "changedView", "visibility", "onVisibilityChanged", "(Landroid/view/View;I)V", "widthMeasureSpec", "heightMeasureSpec", "onMeasure", "(II)V", "Wwwwwwwwwwwwwwwwwww", "(I)I", "Wwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwww", "Z", "confirmLogout", "value", "Ljava/lang/String;", "getLoginText", "()Ljava/lang/String;", "setLoginText", "loginText", "getLogoutText", "setLogoutText", "logoutText", "Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;", "Wwwwwwwwwwwww", "Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;", "getProperties", "()Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;", SAPropertyFilter.PROPERTIES, "Wwwwwwwwwwww", "toolTipChecked", "Lcom/facebook/login/widget/ToolTipPopup$Style;", "Wwwwwwwwwww", "Lcom/facebook/login/widget/ToolTipPopup$Style;", "getToolTipStyle", "()Lcom/facebook/login/widget/ToolTipPopup$Style;", "setToolTipStyle", "(Lcom/facebook/login/widget/ToolTipPopup$Style;)V", "toolTipStyle", "Lcom/facebook/login/widget/LoginButton$ToolTipMode;", "Wwwwwwwwww", "Lcom/facebook/login/widget/LoginButton$ToolTipMode;", "getToolTipMode", "()Lcom/facebook/login/widget/LoginButton$ToolTipMode;", "setToolTipMode", "(Lcom/facebook/login/widget/LoginButton$ToolTipMode;)V", "toolTipMode", "", "Wwwwwwwww", "J", "getToolTipDisplayTime", "()J", "setToolTipDisplayTime", "(J)V", "toolTipDisplayTime", "Lcom/facebook/login/widget/ToolTipPopup;", "Wwwwwwww", "Lcom/facebook/login/widget/ToolTipPopup;", "toolTipPopup", "Lcom/facebook/AccessTokenTracker;", "Wwwwwww", "Lcom/facebook/AccessTokenTracker;", "accessTokenTracker", "Lkotlin/Lazy;", "Lcom/facebook/login/LoginManager;", "Wwwwww", "Lkotlin/Lazy;", "getLoginManagerLazy", "()Lkotlin/Lazy;", "setLoginManagerLazy", "(Lkotlin/Lazy;)V", "loginManagerLazy", "Wwwww", "getLoggerID", "loggerID", "Lcom/facebook/CallbackManager;", "<set-?>", "Wwww", "Lcom/facebook/CallbackManager;", "getCallbackManager", "()Lcom/facebook/CallbackManager;", "callbackManager", "Landroidx/activity/result/ActivityResultLauncher;", "", "Www", "Landroidx/activity/result/ActivityResultLauncher;", "androidXLoginCaller", "Lcom/facebook/login/DefaultAudience;", "getDefaultAudience", "()Lcom/facebook/login/DefaultAudience;", "setDefaultAudience", "(Lcom/facebook/login/DefaultAudience;)V", "defaultAudience", "Lcom/facebook/login/LoginBehavior;", "getLoginBehavior", "()Lcom/facebook/login/LoginBehavior;", "setLoginBehavior", "(Lcom/facebook/login/LoginBehavior;)V", "loginBehavior", "Lcom/facebook/login/LoginTargetApp;", "getLoginTargetApp", "()Lcom/facebook/login/LoginTargetApp;", "setLoginTargetApp", "(Lcom/facebook/login/LoginTargetApp;)V", "loginTargetApp", "getAuthType", "setAuthType", "authType", "getMessengerPageId", "setMessengerPageId", "messengerPageId", "getResetMessengerState", "()Z", "setResetMessengerState", "(Z)V", "resetMessengerState", "getShouldSkipAccountDeduplication", "shouldSkipAccountDeduplication", "getLoginButtonContinueLabel", "()I", "loginButtonContinueLabel", "getPermissions", "()Ljava/util/List;", "Lcom/facebook/login/widget/LoginButton$LoginClickListener;", "getNewLoginClickListener", "()Lcom/facebook/login/widget/LoginButton$LoginClickListener;", "newLoginClickListener", "getDefaultStyleResource", "defaultStyleResource", "getDefaultRequestCode", "defaultRequestCode", "Companion", "LoginButtonProperties", "LoginClickListener", "ToolTipMode", "facebook-login_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public class LoginButton extends FacebookButtonBase {
    @NotNull
    public static final Companion Companion = new Companion(null);

    /* renamed from: Kkkkkkkkkkkkkkkkkkkkkkkkkk  reason: collision with root package name */
    public static final String f7094Kkkkkkkkkkkkkkkkkkkkkkkkkk = LoginButton.class.getName();
    @Nullable

    /* renamed from: Www  reason: collision with root package name */
    public ActivityResultLauncher<Collection<String>> f7095Www;
    @Nullable

    /* renamed from: Wwww  reason: collision with root package name */
    public CallbackManager f7096Wwww;
    @NotNull

    /* renamed from: Wwwww  reason: collision with root package name */
    public final String f7097Wwwww;
    @NotNull

    /* renamed from: Wwwwww  reason: collision with root package name */
    public Lazy<? extends LoginManager> f7098Wwwwww;
    @Nullable

    /* renamed from: Wwwwwww  reason: collision with root package name */
    public AccessTokenTracker f7099Wwwwwww;
    @Nullable

    /* renamed from: Wwwwwwww  reason: collision with root package name */
    public ToolTipPopup f7100Wwwwwwww;

    /* renamed from: Wwwwwwwww  reason: collision with root package name */
    public long f7101Wwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwww  reason: collision with root package name */
    public ToolTipMode f7102Wwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwww  reason: collision with root package name */
    public ToolTipPopup.Style f7103Wwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwww  reason: collision with root package name */
    public boolean f7104Wwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwww  reason: collision with root package name */
    public final LoginButtonProperties f7105Wwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwww  reason: collision with root package name */
    public String f7106Wwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwww  reason: collision with root package name */
    public String f7107Wwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f7108Wwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\n \b*\u0004\u0018\u00010\u00070\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/facebook/login/widget/LoginButton$Companion;", "", "()V", "MAX_BUTTON_TRANSPARENCY", "", "MIN_BUTTON_TRANSPARENCY", "TAG", "", "kotlin.jvm.PlatformType", "facebook-login_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\r\b\u0016\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R\"\u0010\u000b\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR(\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\r0\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\"\u0010\u001a\u001a\u00020\u00148\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0015\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\"\u0010 \u001a\u00020\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u0005\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\"\u0010'\u001a\u00020!8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\"\u0010#\u001a\u0004\b\u001b\u0010$\"\u0004\b%\u0010&R*\u0010/\u001a\u00020(2\u0006\u0010)\u001a\u00020(8\u0006@DX\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010*\u001a\u0004\b+\u0010,\"\u0004\b-\u0010.R$\u00102\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b0\u0010\u001c\u001a\u0004\b\"\u0010\u001d\"\u0004\b1\u0010\u001fR\"\u00104\u001a\u00020(8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b+\u0010*\u001a\u0004\b0\u0010,\"\u0004\b3\u0010.¨\u00065"}, d2 = {"Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;", "", "<init>", "()V", "Lcom/facebook/login/DefaultAudience;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcom/facebook/login/DefaultAudience;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lcom/facebook/login/DefaultAudience;", "Wwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/login/DefaultAudience;)V", "defaultAudience", "", "", "Ljava/util/List;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/util/List;", "Wwwwwwwwwwwwwwwwwwwww", "(Ljava/util/List;)V", "permissions", "Lcom/facebook/login/LoginBehavior;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcom/facebook/login/LoginBehavior;", "()Lcom/facebook/login/LoginBehavior;", "Wwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/login/LoginBehavior;)V", "loginBehavior", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "()Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)V", "authType", "Lcom/facebook/login/LoginTargetApp;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcom/facebook/login/LoginTargetApp;", "()Lcom/facebook/login/LoginTargetApp;", "Wwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/login/LoginTargetApp;)V", "loginTargetApp", "", "<set-?>", "Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "()Z", "setShouldSkipAccountDeduplication", "(Z)V", "shouldSkipAccountDeduplication", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwww", "messengerPageId", "Wwwwwwwwwwwwwwwwwwww", "resetMessengerState", "facebook-login_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static class LoginButtonProperties {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public boolean f7109Wwwwwwwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public String f7110Wwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public boolean f7111Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public DefaultAudience f7116Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = DefaultAudience.FRIENDS;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public List<String> f7115Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = CollectionsKt.emptyList();
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public LoginBehavior f7114Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = LoginBehavior.NATIVE_WITH_FALLBACK;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public String f7113Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = "rerequest";
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public LoginTargetApp f7112Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = LoginTargetApp.FACEBOOK;

        public final void Wwwwwwwwwwwwwwwwwwww(boolean z) {
            this.f7109Wwwwwwwwwwwwwwwwwwwwwwwwwww = z;
        }

        public final void Wwwwwwwwwwwwwwwwwwwww(@NotNull List<String> list) {
            this.f7115Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = list;
        }

        public final void Wwwwwwwwwwwwwwwwwwwwww(@Nullable String str) {
            this.f7110Wwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwww(@NotNull LoginTargetApp loginTargetApp) {
            this.f7112Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = loginTargetApp;
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwww(@NotNull LoginBehavior loginBehavior) {
            this.f7114Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = loginBehavior;
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwww(@NotNull DefaultAudience defaultAudience) {
            this.f7116Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = defaultAudience;
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str) {
            this.f7113Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
        }

        public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f7111Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f7109Wwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public final List<String> Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f7115Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @Nullable
        public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f7110Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public final LoginTargetApp Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f7112Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public final LoginBehavior Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f7114Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public final DefaultAudience Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f7116Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f7113Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0095\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0006H\u0004¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\r\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u000bH\u0004¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0014¢\u0006\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0015\u001a\u00020\u00128DX\u0084\u0004¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0019\u001a\u00020\u00168DX\u0084\u0004¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0018¨\u0006\u001a"}, d2 = {"Lcom/facebook/login/widget/LoginButton$LoginClickListener;", "Landroid/view/View$OnClickListener;", "<init>", "(Lcom/facebook/login/widget/LoginButton;)V", "Landroid/view/View;", "v", "", "onClick", "(Landroid/view/View;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()V", "Landroid/content/Context;", "context", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;)V", "Lcom/facebook/login/LoginManager;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lcom/facebook/login/LoginManager;", "Lcom/facebook/login/LoginTargetApp;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lcom/facebook/login/LoginTargetApp;", "loginTargetApp", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Z", "isFamilyLogin", "facebook-login_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public class LoginClickListener implements View.OnClickListener {
        public LoginClickListener() {
        }

        @SensorsDataInstrumented
        public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(LoginManager loginManager, DialogInterface dialogInterface, int i) {
            if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(LoginClickListener.class)) {
                SensorsDataAutoTrackHelper.trackDialog(dialogInterface, i);
                return;
            }
            try {
                loginManager.Wwwwwwwwwwww();
                SensorsDataAutoTrackHelper.trackDialog(dialogInterface, i);
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, LoginClickListener.class);
                SensorsDataAutoTrackHelper.trackDialog(dialogInterface, i);
            }
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context) {
            String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            String string;
            if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
                return;
            }
            try {
                final LoginManager Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                if (LoginButton.this.f7108Wwwwwwwwwwwwwwww) {
                    String string2 = LoginButton.this.getResources().getString(R.string.com_facebook_loginview_log_out_action);
                    String string3 = LoginButton.this.getResources().getString(R.string.com_facebook_loginview_cancel_action);
                    Profile Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = Profile.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 == null) {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = null;
                    } else {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    }
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                        string = String.format(LoginButton.this.getResources().getString(R.string.com_facebook_loginview_logged_in_as), Arrays.copyOf(new Object[]{Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()}, 1));
                    } else {
                        string = LoginButton.this.getResources().getString(R.string.com_facebook_loginview_logged_in_using_facebook);
                    }
                    AlertDialog.Builder builder = new AlertDialog.Builder(context);
                    builder.setMessage(string).setCancelable(true).setPositiveButton(string2, new DialogInterface.OnClickListener() { // from class: com.facebook.login.widget.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                        @Override // android.content.DialogInterface.OnClickListener
                        public final void onClick(DialogInterface dialogInterface, int i) {
                            LoginButton.LoginClickListener.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(LoginManager.this, dialogInterface, i);
                        }
                    }).setNegativeButton(string3, (DialogInterface.OnClickListener) null);
                    builder.create().show();
                    return;
                }
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwww();
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            }
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
                try {
                    LoginManager Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    ActivityResultLauncher activityResultLauncher = LoginButton.this.f7095Www;
                    if (activityResultLauncher != null) {
                        LoginManager.FacebookLoginActivityResultContract facebookLoginActivityResultContract = (LoginManager.FacebookLoginActivityResultContract) activityResultLauncher.getContract();
                        CallbackManager callbackManager = LoginButton.this.getCallbackManager();
                        if (callbackManager == null) {
                            callbackManager = new CallbackManagerImpl();
                        }
                        facebookLoginActivityResultContract.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(callbackManager);
                        activityResultLauncher.launch(LoginButton.this.getProperties().Wwwwwwwwwwwwwwwwwwwwwwwwwwwww());
                    } else if (LoginButton.this.getFragment() != null) {
                        Fragment fragment = LoginButton.this.getFragment();
                        if (fragment != null) {
                            LoginButton loginButton = LoginButton.this;
                            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwww(fragment, loginButton.getProperties().Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(), loginButton.getLoggerID());
                        }
                    } else if (LoginButton.this.getNativeFragment() != null) {
                        android.app.Fragment nativeFragment = LoginButton.this.getNativeFragment();
                        if (nativeFragment == null) {
                            return;
                        }
                        LoginButton loginButton2 = LoginButton.this;
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwww(nativeFragment, loginButton2.getProperties().Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(), loginButton2.getLoggerID());
                    } else {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwww(LoginButton.this.getActivity(), LoginButton.this.getProperties().Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(), LoginButton.this.getLoggerID());
                    }
                } catch (Throwable th) {
                    CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
                }
            }
        }

        public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
            return false;
        }

        @NotNull
        public final LoginTargetApp Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
                return null;
            }
            try {
                return LoginTargetApp.FACEBOOK;
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
                return null;
            }
        }

        @NotNull
        public LoginManager Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
                return null;
            }
            try {
                LoginManager Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = LoginManager.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Kkkkkkkkkkkkkkkkkkkkkkkk(LoginButton.this.getDefaultAudience());
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Kkkkkkkkkkkkkkkkkkkkk(LoginButton.this.getLoginBehavior());
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Kkkkkkkkkkkkkkkkkkkk(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Kkkkkkkkkkkkkkkkkkkkkkkkk(LoginButton.this.getAuthType());
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Kkkkkkkkkkkkkkkkkkkkkk(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Kkkkkkkkkkkkkkkkk(LoginButton.this.getShouldSkipAccountDeduplication());
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Kkkkkkkkkkkkkkkkkkk(LoginButton.this.getMessengerPageId());
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Kkkkkkkkkkkkkkkkkk(LoginButton.this.getResetMessengerState());
                return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
                return null;
            }
        }

        @Override // android.view.View.OnClickListener
        @SensorsDataInstrumented
        public void onClick(@NotNull View view) {
            if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
                SensorsDataAutoTrackHelper.trackViewOnClick(view);
                return;
            }
            try {
                if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
                    LoginButton.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(view);
                    AccessToken.Companion companion = AccessToken.Companion;
                    AccessToken Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    boolean Wwwwwwwwwwwwwwwwwwwwwwwwww2 = companion.Wwwwwwwwwwwwwwwwwwwwwwwwww();
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwww2) {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(LoginButton.this.getContext());
                    } else {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    }
                    InternalAppEventsLogger internalAppEventsLogger = new InternalAppEventsLogger(LoginButton.this.getContext());
                    Bundle bundle = new Bundle();
                    int i = 1;
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                        i = 0;
                    }
                    bundle.putInt("logging_in", i);
                    bundle.putInt("access_token_expired", Wwwwwwwwwwwwwwwwwwwwwwwwww2 ? 1 : 0);
                    internalAppEventsLogger.Wwwwwwwwwwwwwwwwwwwwwwwwwwww("fb_login_view_usage", bundle);
                    SensorsDataAutoTrackHelper.trackViewOnClick(view);
                    return;
                }
                SensorsDataAutoTrackHelper.trackViewOnClick(view);
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
                SensorsDataAutoTrackHelper.trackViewOnClick(view);
            }
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\t\b\u0086\u0001\u0018\u0000 \r2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\rB\u0017\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\t\u001a\u00020\u0003H\u0016R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000j\u0002\b\nj\u0002\b\u000bj\u0002\b\f¨\u0006\u000e"}, d2 = {"Lcom/facebook/login/widget/LoginButton$ToolTipMode;", "", "stringValue", "", "intValue", "", "(Ljava/lang/String;ILjava/lang/String;I)V", "getIntValue", "()I", "toString", "AUTOMATIC", "DISPLAY_ALWAYS", "NEVER_DISPLAY", "Companion", "facebook-login_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public enum ToolTipMode {
        AUTOMATIC("automatic", 0),
        DISPLAY_ALWAYS("display_always", 1),
        NEVER_DISPLAY("never_display", 2);
        
        @NotNull
        public static final Companion Companion = new Companion(null);
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public static final ToolTipMode f7118Wwwwwwwwwwwwwwwwwwwwwwwww;
        private final int intValue;
        @NotNull
        private final String stringValue;

        /* compiled from: Proguard */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/facebook/login/widget/LoginButton$ToolTipMode$Companion;", "", "<init>", "()V", "facebook-login_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
        /* loaded from: classes4.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public Companion() {
            }
        }

        static {
            ToolTipMode toolTipMode;
            f7118Wwwwwwwwwwwwwwwwwwwwwwwww = toolTipMode;
        }

        ToolTipMode(String str, int i) {
            this.stringValue = str;
            this.intValue = i;
        }

        /* renamed from: values  reason: to resolve conflict with enum method */
        public static ToolTipMode[] valuesCustom() {
            ToolTipMode[] valuesCustom = values();
            return (ToolTipMode[]) Arrays.copyOf(valuesCustom, valuesCustom.length);
        }

        public final int getIntValue() {
            return this.intValue;
        }

        @Override // java.lang.Enum
        @NotNull
        public String toString() {
            return this.stringValue;
        }
    }

    /* compiled from: Proguard */
    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ToolTipMode.valuesCustom().length];
            iArr[ToolTipMode.AUTOMATIC.ordinal()] = 1;
            iArr[ToolTipMode.DISPLAY_ALWAYS.ordinal()] = 2;
            iArr[ToolTipMode.NEVER_DISPLAY.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final void Wwwwwwwwwwwwwwwwwwwwww(LoginButton loginButton, FetchedAppSettings fetchedAppSettings) {
        loginButton.Wwwwwwwwwwwwww(fetchedAppSettings);
    }

    public static final void Wwwwwwwwwwwwwwwwwwwwwww(String str, final LoginButton loginButton) {
        final FetchedAppSettings Wwwwwwwwwwwwwwwwww2 = FetchedAppSettingsManager.Wwwwwwwwwwwwwwwwww(str, false);
        loginButton.getActivity().runOnUiThread(new Runnable() { // from class: com.facebook.login.widget.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                LoginButton.Wwwwwwwwwwwwwwwwwwwwww(LoginButton.this, Wwwwwwwwwwwwwwwwww2);
            }
        });
    }

    public final void Wwwwwwwwwwwwww(FetchedAppSettings fetchedAppSettings) {
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this) && fetchedAppSettings != null) {
            try {
                if (fetchedAppSettings.Wwwwwwwwwwwwwwwwwwwwwwwww() && getVisibility() == 0) {
                    Wwwwwwwwwwwwwwwwwwww(fetchedAppSettings.Wwwwwwwwwwwwwwwwwwwwwwwwww());
                }
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            }
        }
    }

    public final void Wwwwwwwwwwwwwww() {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return;
        }
        try {
            Resources resources = getResources();
            if (!isInEditMode() && AccessToken.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwww()) {
                String str = this.f7106Wwwwwwwwwwwwww;
                if (str == null) {
                    str = resources.getString(R.string.com_facebook_loginview_log_out_button);
                }
                setText(str);
                return;
            }
            String str2 = this.f7107Wwwwwwwwwwwwwww;
            if (str2 != null) {
                setText(str2);
                return;
            }
            String string = resources.getString(getLoginButtonContinueLabel());
            int width = getWidth();
            if (width != 0 && Wwwwwwwwwwwwwwwwww(string) > width) {
                string = resources.getString(R.string.com_facebook_loginview_log_in_button);
            }
            setText(string);
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
        }
    }

    public final void Wwwwwwwwwwwwwwww() {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return;
        }
        try {
            setCompoundDrawablesWithIntrinsicBounds(AppCompatResources.getDrawable(getContext(), com.facebook.common.R.drawable.com_facebook_button_icon), (Drawable) null, (Drawable) null, (Drawable) null);
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
        }
    }

    public final int Wwwwwwwwwwwwwwwwww(String str) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return 0;
        }
        try {
            return getCompoundPaddingLeft() + getCompoundDrawablePadding() + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str) + getCompoundPaddingRight();
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            return 0;
        }
    }

    public final int Wwwwwwwwwwwwwwwwwww(int i) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return 0;
        }
        try {
            Resources resources = getResources();
            String str = this.f7107Wwwwwwwwwwwwwww;
            if (str == null) {
                str = resources.getString(R.string.com_facebook_loginview_log_in_button_continue);
                int Wwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwww(str);
                if (View.resolveSize(Wwwwwwwwwwwwwwwwww2, i) < Wwwwwwwwwwwwwwwwww2) {
                    str = resources.getString(R.string.com_facebook_loginview_log_in_button);
                }
            }
            return Wwwwwwwwwwwwwwwwww(str);
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            return 0;
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwww(String str) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return;
        }
        try {
            ToolTipPopup toolTipPopup = new ToolTipPopup(str, this);
            toolTipPopup.Wwwwwwwwwwwwwwwwwwwwwwwwwww(this.f7103Wwwwwwwwwww);
            toolTipPopup.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f7101Wwwwwwwww);
            toolTipPopup.Wwwwwwwwwwwwwwwwwwwwwwwwww();
            this.f7100Wwwwwwww = toolTipPopup;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwww() {
        ToolTipPopup toolTipPopup = this.f7100Wwwwwwww;
        if (toolTipPopup != null) {
            toolTipPopup.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        this.f7100Wwwwwwww = null;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwww() {
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            try {
                int i = WhenMappings.$EnumSwitchMapping$0[this.f7102Wwwwwwwwww.ordinal()];
                if (i != 1) {
                    if (i != 2) {
                        return;
                    }
                    Wwwwwwwwwwwwwwwwwwww(getResources().getString(R.string.com_facebook_tooltip_default));
                    return;
                }
                Utility utility = Utility.INSTANCE;
                final String Kkkkkkkkkkkkkkkkkkkkkk2 = Utility.Kkkkkkkkkkkkkkkkkkkkkk(getContext());
                FacebookSdk.Wwwwwwwwwwwwww().execute(new Runnable() { // from class: com.facebook.login.widget.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                    @Override // java.lang.Runnable
                    public final void run() {
                        LoginButton.Wwwwwwwwwwwwwwwwwwwwwww(Kkkkkkkkkkkkkkkkkkkkkk2, this);
                    }
                });
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            }
        }
    }

    @NotNull
    public final String getAuthType() {
        return this.f7105Wwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    @Nullable
    public final CallbackManager getCallbackManager() {
        return this.f7096Wwww;
    }

    @NotNull
    public final DefaultAudience getDefaultAudience() {
        return this.f7105Wwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    @Override // com.facebook.FacebookButtonBase
    public int getDefaultRequestCode() {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return 0;
        }
        try {
            return CallbackManagerImpl.RequestCodeOffset.Login.toRequestCode();
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            return 0;
        }
    }

    @Override // com.facebook.FacebookButtonBase
    public int getDefaultStyleResource() {
        return R.style.com_facebook_loginview_default_style;
    }

    @NotNull
    public final String getLoggerID() {
        return this.f7097Wwwww;
    }

    @NotNull
    public final LoginBehavior getLoginBehavior() {
        return this.f7105Wwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    @StringRes
    public final int getLoginButtonContinueLabel() {
        return R.string.com_facebook_loginview_log_in_button_continue;
    }

    @NotNull
    public final Lazy<LoginManager> getLoginManagerLazy() {
        return this.f7098Wwwwww;
    }

    @NotNull
    public final LoginTargetApp getLoginTargetApp() {
        return this.f7105Wwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    @Nullable
    public final String getLoginText() {
        return this.f7107Wwwwwwwwwwwwwww;
    }

    @Nullable
    public final String getLogoutText() {
        return this.f7106Wwwwwwwwwwwwww;
    }

    @Nullable
    public final String getMessengerPageId() {
        return this.f7105Wwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    @NotNull
    public LoginClickListener getNewLoginClickListener() {
        return new LoginClickListener();
    }

    @NotNull
    public final List<String> getPermissions() {
        return this.f7105Wwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    @NotNull
    public final LoginButtonProperties getProperties() {
        return this.f7105Wwwwwwwwwwwww;
    }

    public final boolean getResetMessengerState() {
        return this.f7105Wwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public final boolean getShouldSkipAccountDeduplication() {
        return this.f7105Wwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public final long getToolTipDisplayTime() {
        return this.f7101Wwwwwwwww;
    }

    @NotNull
    public final ToolTipMode getToolTipMode() {
        return this.f7102Wwwwwwwwww;
    }

    @NotNull
    public final ToolTipPopup.Style getToolTipStyle() {
        return this.f7103Wwwwwwwwwww;
    }

    @Override // com.facebook.FacebookButtonBase, android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            try {
                super.onAttachedToWindow();
                if (getContext() instanceof ActivityResultRegistryOwner) {
                    Context context = getContext();
                    if (context != null) {
                        this.f7095Www = ((ActivityResultRegistryOwner) context).getActivityResultRegistry().register("facebook-login", this.f7098Wwwwww.getValue().Wwwwwwwwwwwwwwwwwwwwwwwww(this.f7096Wwww, this.f7097Wwwww), new ActivityResultCallback() { // from class: com.facebook.login.widget.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                            @Override // androidx.activity.result.ActivityResultCallback
                            public final void onActivityResult(Object obj) {
                                LoginButton.Wwwwwwwwwwwwwwwww((CallbackManager.ActivityResultParameters) obj);
                            }
                        });
                    } else {
                        throw new NullPointerException("null cannot be cast to non-null type androidx.activity.result.ActivityResultRegistryOwner");
                    }
                }
                AccessTokenTracker accessTokenTracker = this.f7099Wwwwwww;
                if (accessTokenTracker != null && accessTokenTracker.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                    accessTokenTracker.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    Wwwwwwwwwwwwwww();
                }
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            }
        }
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return;
        }
        try {
            super.onDetachedFromWindow();
            ActivityResultLauncher<Collection<String>> activityResultLauncher = this.f7095Www;
            if (activityResultLauncher != null) {
                activityResultLauncher.unregister();
            }
            AccessTokenTracker accessTokenTracker = this.f7099Wwwwwww;
            if (accessTokenTracker != null) {
                accessTokenTracker.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            }
            Wwwwwwwwwwwwwwwwwwwww();
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
        }
    }

    @Override // com.facebook.FacebookButtonBase, android.widget.TextView, android.view.View
    public void onDraw(@NotNull Canvas canvas) {
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            try {
                super.onDraw(canvas);
                if (!this.f7104Wwwwwwwwwwww && !isInEditMode()) {
                    this.f7104Wwwwwwwwwwww = true;
                    Wwwwwwwwwwwwwwwwwwwwwwww();
                }
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            }
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return;
        }
        try {
            super.onLayout(z, i, i2, i3, i4);
        } catch (Throwable th) {
            th = th;
        }
        try {
            Wwwwwwwwwwwwwww();
        } catch (Throwable th2) {
            th = th2;
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onMeasure(int i, int i2) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return;
        }
        try {
            Paint.FontMetrics fontMetrics = getPaint().getFontMetrics();
            int compoundPaddingTop = getCompoundPaddingTop() + ((int) Math.ceil(Math.abs(fontMetrics.top) + Math.abs(fontMetrics.bottom))) + getCompoundPaddingBottom();
            Resources resources = getResources();
            int Wwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwww(i);
            String str = this.f7106Wwwwwwwwwwwwww;
            if (str == null) {
                str = resources.getString(R.string.com_facebook_loginview_log_out_button);
            }
            setMeasuredDimension(View.resolveSize(Math.max(Wwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwww(str)), i), compoundPaddingTop);
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onVisibilityChanged(@NotNull View view, int i) {
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            try {
                super.onVisibilityChanged(view, i);
                if (i != 0) {
                    Wwwwwwwwwwwwwwwwwwwww();
                }
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            }
        }
    }

    public final void setAuthType(@NotNull String str) {
        this.f7105Wwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwww(str);
    }

    public final void setDefaultAudience(@NotNull DefaultAudience defaultAudience) {
        this.f7105Wwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwww(defaultAudience);
    }

    public final void setLoginBehavior(@NotNull LoginBehavior loginBehavior) {
        this.f7105Wwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwww(loginBehavior);
    }

    public final void setLoginManagerLazy(@NotNull Lazy<? extends LoginManager> lazy) {
        this.f7098Wwwwww = lazy;
    }

    public final void setLoginTargetApp(@NotNull LoginTargetApp loginTargetApp) {
        this.f7105Wwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwww(loginTargetApp);
    }

    public final void setLoginText(@Nullable String str) {
        this.f7107Wwwwwwwwwwwwwww = str;
        Wwwwwwwwwwwwwww();
    }

    public final void setLogoutText(@Nullable String str) {
        this.f7106Wwwwwwwwwwwwww = str;
        Wwwwwwwwwwwwwww();
    }

    public final void setMessengerPageId(@Nullable String str) {
        this.f7105Wwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwww(str);
    }

    public final void setPermissions(@NotNull String... strArr) {
        this.f7105Wwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwww(CollectionsKt.listOfNotNull(Arrays.copyOf(strArr, strArr.length)));
    }

    @Deprecated(message = "Use setPermissions instead", replaceWith = @ReplaceWith(expression = "setPermissions", imports = {}))
    public final void setPublishPermissions(@NotNull List<String> list) {
        this.f7105Wwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwww(list);
    }

    @Deprecated(message = "Use setPermissions instead", replaceWith = @ReplaceWith(expression = "setPermissions", imports = {}))
    public final void setReadPermissions(@NotNull List<String> list) {
        this.f7105Wwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwww(list);
    }

    public final void setResetMessengerState(boolean z) {
        this.f7105Wwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwww(z);
    }

    public final void setToolTipDisplayTime(long j) {
        this.f7101Wwwwwwwww = j;
    }

    public final void setToolTipMode(@NotNull ToolTipMode toolTipMode) {
        this.f7102Wwwwwwwwww = toolTipMode;
    }

    public final void setToolTipStyle(@NotNull ToolTipPopup.Style style) {
        this.f7103Wwwwwwwwwww = style;
    }

    public final void setPermissions(@NotNull List<String> list) {
        this.f7105Wwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwww(list);
    }

    @Deprecated(message = "Use setPermissions instead", replaceWith = @ReplaceWith(expression = "setPermissions", imports = {}))
    public final void setPublishPermissions(@NotNull String... strArr) {
        this.f7105Wwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwww(CollectionsKt.listOfNotNull(Arrays.copyOf(strArr, strArr.length)));
    }

    @Deprecated(message = "Use setPermissions instead", replaceWith = @ReplaceWith(expression = "setPermissions", imports = {}))
    public final void setReadPermissions(@NotNull String... strArr) {
        this.f7105Wwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwww(CollectionsKt.listOfNotNull(Arrays.copyOf(strArr, strArr.length)));
    }

    public static final void Wwwwwwwwwwwwwwwww(CallbackManager.ActivityResultParameters activityResultParameters) {
    }
}
