package com.facebook.internal;

import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ProviderInfo;
import android.content.pm.ResolveInfo;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.facebook.FacebookException;
import com.facebook.FacebookOperationCanceledException;
import com.facebook.FacebookSdk;
import com.facebook.ads.internal.util.common.FbValidationUtils;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.facebook.login.DefaultAudience;
import com.facebook.login.LoginTargetApp;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000¨\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u001e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010\u0015\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\n\bÇ\u0002\u0018\u00002\u00020\u0001:\u000e\u0081\u0001\u0082\u0001\u0083\u0001\u0084\u0001\u0085\u0001\u0086\u0001\u0087\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0015\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u0015\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0002¢\u0006\u0004\b\b\u0010\u0007J!\u0010\u000b\u001a\u0014\u0012\u0004\u0012\u00020\n\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u00040\tH\u0002¢\u0006\u0004\b\u000b\u0010\fJ-\u0010\u0012\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u000e\u001a\u00020\r2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0005H\u0007¢\u0006\u0004\b\u0012\u0010\u0013J-\u0010\u0014\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u000e\u001a\u00020\r2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0005H\u0007¢\u0006\u0004\b\u0014\u0010\u0013J\u0083\u0001\u0010$\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\n2\u000e\u0010\u0017\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\u00162\u0006\u0010\u0018\u001a\u00020\n2\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u00192\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u001e\u001a\u00020\n2\u0006\u0010\u001f\u001a\u00020\n2\b\u0010 \u001a\u0004\u0018\u00010\n2\u0006\u0010!\u001a\u00020\u00192\u0006\u0010\"\u001a\u00020\u00192\u0006\u0010#\u001a\u00020\u0019H\u0007¢\u0006\u0004\b$\u0010%J©\u0001\u0010,\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\n2\u000e\u0010\u0017\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\u00162\u0006\u0010\u0018\u001a\u00020\n2\u0006\u0010\u001b\u001a\u00020\u00192\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u001e\u001a\u00020\n2\u0006\u0010\u001f\u001a\u00020\n2\u0006\u0010&\u001a\u00020\u00192\b\u0010 \u001a\u0004\u0018\u00010\n2\u0006\u0010!\u001a\u00020\u00192\u0006\u0010(\u001a\u00020'2\u0006\u0010\"\u001a\u00020\u00192\u0006\u0010#\u001a\u00020\u00192\b\u0010)\u001a\u0004\u0018\u00010\n2\b\u0010*\u001a\u0004\u0018\u00010\n2\b\u0010+\u001a\u0004\u0018\u00010\nH\u0002¢\u0006\u0004\b,\u0010-J±\u0001\u0010.\u001a\b\u0012\u0004\u0012\u00020\u000f0\u00042\b\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0015\u001a\u00020\n2\u000e\u0010\u0017\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\u00162\u0006\u0010\u0018\u001a\u00020\n2\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u00192\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u001e\u001a\u00020\n2\u0006\u0010\u001f\u001a\u00020\n2\u0006\u0010&\u001a\u00020\u00192\b\u0010 \u001a\u0004\u0018\u00010\n2\u0006\u0010!\u001a\u00020\u00192\u0006\u0010\"\u001a\u00020\u00192\u0006\u0010#\u001a\u00020\u00192\b\u0010)\u001a\u0004\u0018\u00010\n2\b\u0010*\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010+\u001a\u0004\u0018\u00010\nH\u0007¢\u0006\u0004\b.\u0010/J\u000f\u00101\u001a\u000200H\u0007¢\u0006\u0004\b1\u00102J\u0017\u00104\u001a\u00020\u00192\u0006\u00103\u001a\u000200H\u0007¢\u0006\u0004\b4\u00105JA\u0010<\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u000e\u001a\u00020\r2\b\u00106\u001a\u0004\u0018\u00010\n2\b\u00107\u001a\u0004\u0018\u00010\n2\b\u00109\u001a\u0004\u0018\u0001082\b\u0010;\u001a\u0004\u0018\u00010:H\u0007¢\u0006\u0004\b<\u0010=J=\u0010@\u001a\u00020?2\u0006\u0010\u0010\u001a\u00020\u000f2\b\u00106\u001a\u0004\u0018\u00010\n2\b\u00107\u001a\u0004\u0018\u00010\n2\u0006\u00103\u001a\u0002002\b\u0010>\u001a\u0004\u0018\u00010:H\u0007¢\u0006\u0004\b@\u0010AJ-\u0010F\u001a\u0004\u0018\u00010\u000f2\u0006\u0010B\u001a\u00020\u000f2\b\u0010C\u001a\u0004\u0018\u00010:2\b\u0010E\u001a\u0004\u0018\u00010DH\u0007¢\u0006\u0004\bF\u0010GJ\u0019\u0010H\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u000e\u001a\u00020\rH\u0007¢\u0006\u0004\bH\u0010IJ\u0017\u0010J\u001a\u0002002\u0006\u0010\u0010\u001a\u00020\u000fH\u0007¢\u0006\u0004\bJ\u0010KJ\u001b\u0010M\u001a\u0004\u0018\u00010L2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0007¢\u0006\u0004\bM\u0010NJ\u0019\u0010O\u001a\u0004\u0018\u00010:2\u0006\u0010\u0010\u001a\u00020\u000fH\u0007¢\u0006\u0004\bO\u0010PJ\u0019\u0010Q\u001a\u0004\u0018\u00010:2\u0006\u0010\u0010\u001a\u00020\u000fH\u0007¢\u0006\u0004\bQ\u0010PJ\u0017\u0010S\u001a\u00020\u00192\u0006\u0010R\u001a\u00020\u000fH\u0007¢\u0006\u0004\bS\u0010TJ\u001b\u0010V\u001a\u0004\u0018\u00010D2\b\u0010U\u001a\u0004\u0018\u00010:H\u0007¢\u0006\u0004\bV\u0010WJ\u001b\u0010Y\u001a\u0004\u0018\u00010:2\b\u0010X\u001a\u0004\u0018\u00010DH\u0007¢\u0006\u0004\bY\u0010ZJ\u0017\u0010\\\u001a\u0002002\u0006\u0010[\u001a\u000200H\u0007¢\u0006\u0004\b\\\u0010]J\u001f\u0010`\u001a\u0002082\u0006\u00107\u001a\u00020\n2\u0006\u0010_\u001a\u00020^H\u0007¢\u0006\u0004\b`\u0010aJ'\u0010c\u001a\u0002082\u000e\u0010b\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00042\u0006\u0010_\u001a\u00020^H\u0002¢\u0006\u0004\bc\u0010dJ\u000f\u0010e\u001a\u00020?H\u0007¢\u0006\u0004\be\u0010\u0003J\u001d\u0010g\u001a\b\u0012\u0004\u0012\u0002000f2\u0006\u0010\u0011\u001a\u00020\u0005H\u0002¢\u0006\u0004\bg\u0010hJ/\u0010k\u001a\u0002002\u000e\u0010i\u001a\n\u0012\u0004\u0012\u000200\u0018\u00010f2\u0006\u0010j\u001a\u0002002\u0006\u0010_\u001a\u00020^H\u0007¢\u0006\u0004\bk\u0010lJ\u0017\u0010n\u001a\u00020m2\u0006\u0010\u0011\u001a\u00020\u0005H\u0002¢\u0006\u0004\bn\u0010oR\u001c\u0010s\u001a\n p*\u0004\u0018\u00010\n0\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bq\u0010rR\u001a\u0010v\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bt\u0010uR\u001a\u0010x\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bw\u0010uR&\u0010z\u001a\u0014\u0012\u0004\u0012\u00020\n\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u00040\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010yR\u0014\u0010}\u001a\u00020{8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010|R\u001b\u0010\u0080\u0001\u001a\b\u0012\u0004\u0012\u0002000~8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u007f¨\u0006\u0088\u0001"}, d2 = {"Lcom/facebook/internal/NativeProtocol;", "", "<init>", "()V", "", "Lcom/facebook/internal/NativeProtocol$NativeAppInfo;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/util/List;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/util/Map;", "Landroid/content/Context;", "context", "Landroid/content/Intent;", "intent", "appInfo", "Wwww", "(Landroid/content/Context;Landroid/content/Intent;Lcom/facebook/internal/NativeProtocol$NativeAppInfo;)Landroid/content/Intent;", "Www", "applicationId", "", "permissions", "e2e", "", "isRerequest", "isForPublish", "Lcom/facebook/login/DefaultAudience;", "defaultAudience", "clientState", "authType", "messengerPageId", "resetMessengerState", "isFamilyLogin", "shouldSkipAccountDedupe", "Wwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;ZZLcom/facebook/login/DefaultAudience;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Landroid/content/Intent;", "ignoreAppSwitchToLoggedOut", "Lcom/facebook/login/LoginTargetApp;", "targetApp", "nonce", "codeChallenge", "codeChallengeMethod", "Wwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/internal/NativeProtocol$NativeAppInfo;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;ZLcom/facebook/login/DefaultAudience;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLcom/facebook/login/LoginTargetApp;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;", "Wwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;ZZLcom/facebook/login/DefaultAudience;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;", "", "Wwwwwwwwwwww", "()I", "version", "Wwwwwwww", "(I)Z", "callId", "action", "Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;", "versionResult", "Landroid/os/Bundle;", "extras", "Wwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;Landroid/os/Bundle;)Landroid/content/Intent;", "params", "", "Wwwwwww", "(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V", "requestIntent", "results", "Lcom/facebook/FacebookException;", "error", "Wwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/FacebookException;)Landroid/content/Intent;", "Wwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;)Landroid/content/Intent;", "Wwwwwwwwww", "(Landroid/content/Intent;)I", "Ljava/util/UUID;", "Wwwwwwwwwwwwwwwww", "(Landroid/content/Intent;)Ljava/util/UUID;", "Wwwwwwwwwwwwwwwwww", "(Landroid/content/Intent;)Landroid/os/Bundle;", "Wwwwwwwwwww", "resultIntent", "Wwwwwwwww", "(Landroid/content/Intent;)Z", "errorData", "Wwwwwwwwwwwwwwww", "(Landroid/os/Bundle;)Lcom/facebook/FacebookException;", "e", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/FacebookException;)Landroid/os/Bundle;", "minimumVersion", "Wwwwwwwwwwwww", "(I)I", "", "versionSpec", "Wwwwwwwwwwwwwww", "(Ljava/lang/String;[I)Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;", "appInfoList", "Wwwwwwwwwwwwww", "(Ljava/util/List;[I)Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;", "Wwwwww", "Ljava/util/TreeSet;", "Wwwwwwwwwwwwwwwwwww", "(Lcom/facebook/internal/NativeProtocol$NativeAppInfo;)Ljava/util/TreeSet;", "allAvailableFacebookAppVersions", "latestSdkVersion", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/util/TreeSet;I[I)I", "Landroid/net/Uri;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/internal/NativeProtocol$NativeAppInfo;)Landroid/net/Uri;", "kotlin.jvm.PlatformType", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "TAG", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/List;", "facebookAppInfoList", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "effectCameraAppInfoList", "Ljava/util/Map;", "actionToAppInfoMap", "Ljava/util/concurrent/atomic/AtomicBoolean;", "Ljava/util/concurrent/atomic/AtomicBoolean;", "protocolVersionsAsyncUpdating", "", "[Ljava/lang/Integer;", "KNOWN_PROTOCOL_VERSIONS", "EffectTestAppInfo", "InstagramAppInfo", "KatanaAppInfo", "MessengerAppInfo", "NativeAppInfo", "ProtocolVersionQueryResult", "WakizashiAppInfo", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class NativeProtocol {
    @NotNull
    public static final NativeProtocol INSTANCE;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Integer[] f6778Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final AtomicBoolean f6779Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Map<String, List<NativeAppInfo>> f6780Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final List<NativeAppInfo> f6781Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final List<NativeAppInfo> f6782Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final String f6783Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0001\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0002\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0011\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/facebook/internal/NativeProtocol$EffectTestAppInfo;", "Lcom/facebook/internal/NativeProtocol$NativeAppInfo;", "<init>", "()V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/lang/Void;", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/lang/String;", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class EffectTestAppInfo extends NativeAppInfo {
        @Nullable
        public Void Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return null;
        }

        @Override // com.facebook.internal.NativeProtocol.NativeAppInfo
        @NotNull
        public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return "com.facebook.arstudio.player";
        }

        @Override // com.facebook.internal.NativeProtocol.NativeAppInfo
        public /* bridge */ /* synthetic */ String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return (String) Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0002\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\b\u0010\u0006¨\u0006\t"}, d2 = {"Lcom/facebook/internal/NativeProtocol$InstagramAppInfo;", "Lcom/facebook/internal/NativeProtocol$NativeAppInfo;", "<init>", "()V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class InstagramAppInfo extends NativeAppInfo {
        @Override // com.facebook.internal.NativeProtocol.NativeAppInfo
        @NotNull
        public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return "token,signed_request,graph_domain,granted_scopes";
        }

        @Override // com.facebook.internal.NativeProtocol.NativeAppInfo
        @NotNull
        public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return "com.instagram.android";
        }

        @Override // com.facebook.internal.NativeProtocol.NativeAppInfo
        @NotNull
        public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return "com.instagram.platform.AppAuthorizeActivity";
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\b\u0002\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\u0006J\u000f\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\t\u0010\u0003J\u000f\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/facebook/internal/NativeProtocol$KatanaAppInfo;", "Lcom/facebook/internal/NativeProtocol$NativeAppInfo;", "<init>", "()V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Z", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class KatanaAppInfo extends NativeAppInfo {
        public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            if (FacebookSdk.Wwwwwwwwwwwwwwwwwwwwwww().getApplicationInfo().targetSdkVersion >= 30) {
                return true;
            }
            return false;
        }

        @Override // com.facebook.internal.NativeProtocol.NativeAppInfo
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                NativeProtocol.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            }
        }

        @Override // com.facebook.internal.NativeProtocol.NativeAppInfo
        @NotNull
        public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return FbValidationUtils.FB_PACKAGE;
        }

        @Override // com.facebook.internal.NativeProtocol.NativeAppInfo
        @NotNull
        public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return "com.facebook.katana.ProxyAuth";
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0001\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0002\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0011\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/facebook/internal/NativeProtocol$MessengerAppInfo;", "Lcom/facebook/internal/NativeProtocol$NativeAppInfo;", "<init>", "()V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/lang/Void;", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/lang/String;", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class MessengerAppInfo extends NativeAppInfo {
        @Nullable
        public Void Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return null;
        }

        @Override // com.facebook.internal.NativeProtocol.NativeAppInfo
        @NotNull
        public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return "com.facebook.orca";
        }

        @Override // com.facebook.internal.NativeProtocol.NativeAppInfo
        public /* bridge */ /* synthetic */ String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return (String) Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0007\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R(\u0010\n\u001a\u0004\u0018\u00010\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\tR$\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u000b8\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0012"}, d2 = {"Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;", "", "<init>", "()V", "Lcom/facebook/internal/NativeProtocol$NativeAppInfo;", "<set-?>", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcom/facebook/internal/NativeProtocol$NativeAppInfo;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lcom/facebook/internal/NativeProtocol$NativeAppInfo;", "appInfo", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "I", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()I", "protocolVersion", "Companion", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class ProtocolVersionQueryResult {
        @NotNull
        public static final Companion Companion = new Companion(null);

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public int f6785Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public NativeAppInfo f6786Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* compiled from: Proguard */
        @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J!\u0010\t\u001a\u00020\b2\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0007¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\bH\u0007¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult$Companion;", "", "<init>", "()V", "Lcom/facebook/internal/NativeProtocol$NativeAppInfo;", "nativeAppInfo", "", "protocolVersion", "Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/internal/NativeProtocol$NativeAppInfo;I)Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
        /* loaded from: classes4.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @JvmStatic
            @NotNull
            public final ProtocolVersionQueryResult Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
                ProtocolVersionQueryResult protocolVersionQueryResult = new ProtocolVersionQueryResult(null);
                protocolVersionQueryResult.f6785Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = -1;
                return protocolVersionQueryResult;
            }

            @JvmStatic
            @NotNull
            public final ProtocolVersionQueryResult Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable NativeAppInfo nativeAppInfo, int i) {
                ProtocolVersionQueryResult protocolVersionQueryResult = new ProtocolVersionQueryResult(null);
                protocolVersionQueryResult.f6786Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = nativeAppInfo;
                protocolVersionQueryResult.f6785Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
                return protocolVersionQueryResult;
            }

            public Companion() {
            }
        }

        public /* synthetic */ ProtocolVersionQueryResult(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f6785Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @Nullable
        public final NativeAppInfo Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f6786Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        public ProtocolVersionQueryResult() {
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\u0006¨\u0006\b"}, d2 = {"Lcom/facebook/internal/NativeProtocol$WakizashiAppInfo;", "Lcom/facebook/internal/NativeProtocol$NativeAppInfo;", "<init>", "()V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class WakizashiAppInfo extends NativeAppInfo {
        @Override // com.facebook.internal.NativeProtocol.NativeAppInfo
        @NotNull
        public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return FbValidationUtils.DEBUG_FB_PACKAGE;
        }

        @Override // com.facebook.internal.NativeProtocol.NativeAppInfo
        @NotNull
        public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return "com.facebook.katana.ProxyAuth";
        }
    }

    static {
        NativeProtocol nativeProtocol = new NativeProtocol();
        INSTANCE = nativeProtocol;
        f6783Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = NativeProtocol.class.getName();
        f6782Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = nativeProtocol.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        f6781Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = nativeProtocol.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        f6780Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = nativeProtocol.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        f6779Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new AtomicBoolean(false);
        f6778Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = new Integer[]{20210906, 20171115, 20170417, 20170411, 20170213, 20161017, 20160327, 20150702, 20150401, 20141218, 20141107, 20141028, 20141001, 20140701, 20140324, 20140313, 20140204, 20131107, 20131024, 20130618, 20130502, 20121101};
    }

    @JvmStatic
    @Nullable
    public static final Intent Www(@NotNull Context context, @Nullable Intent intent, @Nullable NativeAppInfo nativeAppInfo) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(NativeProtocol.class) || intent == null) {
            return null;
        }
        try {
            ResolveInfo resolveService = context.getPackageManager().resolveService(intent, 0);
            if (resolveService == null) {
                return null;
            }
            FacebookSignatureValidator facebookSignatureValidator = FacebookSignatureValidator.INSTANCE;
            if (!FacebookSignatureValidator.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, resolveService.serviceInfo.packageName)) {
                return null;
            }
            return intent;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, NativeProtocol.class);
            return null;
        }
    }

    @JvmStatic
    @Nullable
    public static final Intent Wwww(@NotNull Context context, @Nullable Intent intent, @Nullable NativeAppInfo nativeAppInfo) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(NativeProtocol.class) || intent == null) {
            return null;
        }
        try {
            ResolveInfo resolveActivity = context.getPackageManager().resolveActivity(intent, 0);
            if (resolveActivity == null) {
                return null;
            }
            FacebookSignatureValidator facebookSignatureValidator = FacebookSignatureValidator.INSTANCE;
            if (!FacebookSignatureValidator.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, resolveActivity.activityInfo.packageName)) {
                return null;
            }
            return intent;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, NativeProtocol.class);
            return null;
        }
    }

    public static final void Wwwww() {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(NativeProtocol.class)) {
            return;
        }
        try {
            for (NativeAppInfo nativeAppInfo : f6782Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                nativeAppInfo.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(true);
            }
            f6779Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.set(false);
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, NativeProtocol.class);
        }
    }

    @JvmStatic
    public static final void Wwwwww() {
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(NativeProtocol.class)) {
            try {
                if (!f6779Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.compareAndSet(false, true)) {
                    return;
                }
                FacebookSdk.Wwwwwwwwwwwwww().execute(new Runnable() { // from class: com.facebook.internal.Wwwwwwwwwwwwwwwwwwwww
                    @Override // java.lang.Runnable
                    public final void run() {
                        NativeProtocol.Wwwww();
                    }
                });
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, NativeProtocol.class);
            }
        }
    }

    @JvmStatic
    public static final void Wwwwwww(@NotNull Intent intent, @Nullable String str, @Nullable String str2, int i, @Nullable Bundle bundle) {
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(NativeProtocol.class)) {
            try {
                String Wwwwwwwwwwwwwwwwwwwwww2 = FacebookSdk.Wwwwwwwwwwwwwwwwwwwwww();
                String Wwwwwwwwwwwwwwwwwwwww2 = FacebookSdk.Wwwwwwwwwwwwwwwwwwwww();
                intent.putExtra("com.facebook.platform.protocol.PROTOCOL_VERSION", i).putExtra("com.facebook.platform.protocol.PROTOCOL_ACTION", str2).putExtra("com.facebook.platform.extra.APPLICATION_ID", Wwwwwwwwwwwwwwwwwwwwww2);
                if (Wwwwwwww(i)) {
                    Bundle bundle2 = new Bundle();
                    bundle2.putString("action_id", str);
                    Utility.Illlllllllllllll(bundle2, "app_name", Wwwwwwwwwwwwwwwwwwwww2);
                    intent.putExtra("com.facebook.platform.protocol.BRIDGE_ARGS", bundle2);
                    if (bundle == null) {
                        bundle = new Bundle();
                    }
                    intent.putExtra("com.facebook.platform.protocol.METHOD_ARGS", bundle);
                    return;
                }
                intent.putExtra("com.facebook.platform.protocol.CALL_ID", str);
                if (!Utility.Kk(Wwwwwwwwwwwwwwwwwwwww2)) {
                    intent.putExtra("com.facebook.platform.extra.APPLICATION_NAME", Wwwwwwwwwwwwwwwwwwwww2);
                }
                if (bundle != null) {
                    intent.putExtras(bundle);
                }
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, NativeProtocol.class);
            }
        }
    }

    @JvmStatic
    public static final boolean Wwwwwwww(int i) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(NativeProtocol.class)) {
            return false;
        }
        try {
            if (!ArraysKt.contains(f6778Wwwwwwwwwwwwwwwwwwwwwwwwwwwww, Integer.valueOf(i)) || i < 20140701) {
                return false;
            }
            return true;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, NativeProtocol.class);
            return false;
        }
    }

    @JvmStatic
    public static final boolean Wwwwwwwww(@NotNull Intent intent) {
        Boolean valueOf;
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(NativeProtocol.class)) {
            return false;
        }
        try {
            Bundle Wwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwww(intent);
            if (Wwwwwwwwwwwwwwwwww2 == null) {
                valueOf = null;
            } else {
                valueOf = Boolean.valueOf(Wwwwwwwwwwwwwwwwww2.containsKey("error"));
            }
            if (valueOf == null) {
                return intent.hasExtra("com.facebook.platform.status.ERROR_TYPE");
            }
            return valueOf.booleanValue();
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, NativeProtocol.class);
            return false;
        }
    }

    @JvmStatic
    public static final int Wwwwwwwwww(@NotNull Intent intent) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(NativeProtocol.class)) {
            return 0;
        }
        try {
            return intent.getIntExtra("com.facebook.platform.protocol.PROTOCOL_VERSION", 0);
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, NativeProtocol.class);
            return 0;
        }
    }

    @JvmStatic
    @Nullable
    public static final Bundle Wwwwwwwwwww(@NotNull Intent intent) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(NativeProtocol.class)) {
            return null;
        }
        try {
            if (!Wwwwwwww(Wwwwwwwwww(intent))) {
                return intent.getExtras();
            }
            return intent.getBundleExtra("com.facebook.platform.protocol.METHOD_ARGS");
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, NativeProtocol.class);
            return null;
        }
    }

    @JvmStatic
    public static final int Wwwwwwwwwwww() {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(NativeProtocol.class)) {
            return 0;
        }
        try {
            return f6778Wwwwwwwwwwwwwwwwwwwwwwwwwwwww[0].intValue();
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, NativeProtocol.class);
            return 0;
        }
    }

    @JvmStatic
    public static final int Wwwwwwwwwwwww(int i) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(NativeProtocol.class)) {
            return 0;
        }
        try {
            return INSTANCE.Wwwwwwwwwwwwww(f6782Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, new int[]{i}).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, NativeProtocol.class);
            return 0;
        }
    }

    @JvmStatic
    @NotNull
    public static final ProtocolVersionQueryResult Wwwwwwwwwwwwwww(@NotNull String str, @NotNull int[] iArr) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(NativeProtocol.class)) {
            return null;
        }
        try {
            List<NativeAppInfo> list = f6780Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(str);
            if (list == null) {
                list = CollectionsKt.emptyList();
            }
            return INSTANCE.Wwwwwwwwwwwwww(list, iArr);
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, NativeProtocol.class);
            return null;
        }
    }

    @JvmStatic
    @Nullable
    public static final FacebookException Wwwwwwwwwwwwwwww(@Nullable Bundle bundle) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(NativeProtocol.class) || bundle == null) {
            return null;
        }
        try {
            String string = bundle.getString("error_type");
            if (string == null) {
                string = bundle.getString("com.facebook.platform.status.ERROR_TYPE");
            }
            String string2 = bundle.getString("error_description");
            if (string2 == null) {
                string2 = bundle.getString("com.facebook.platform.status.ERROR_DESCRIPTION");
            }
            if (string != null && StringsKt.equals(string, "UserCanceled", true)) {
                return new FacebookOperationCanceledException(string2);
            }
            return new FacebookException(string2);
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, NativeProtocol.class);
            return null;
        }
    }

    @JvmStatic
    @Nullable
    public static final UUID Wwwwwwwwwwwwwwwww(@Nullable Intent intent) {
        String stringExtra;
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(NativeProtocol.class) || intent == null) {
            return null;
        }
        try {
            if (Wwwwwwww(Wwwwwwwwww(intent))) {
                Bundle bundleExtra = intent.getBundleExtra("com.facebook.platform.protocol.BRIDGE_ARGS");
                if (bundleExtra != null) {
                    stringExtra = bundleExtra.getString("action_id");
                } else {
                    stringExtra = null;
                }
            } else {
                stringExtra = intent.getStringExtra("com.facebook.platform.protocol.CALL_ID");
            }
            if (stringExtra != null) {
                try {
                    return UUID.fromString(stringExtra);
                } catch (IllegalArgumentException unused) {
                }
            }
            return null;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, NativeProtocol.class);
            return null;
        }
    }

    @JvmStatic
    @Nullable
    public static final Bundle Wwwwwwwwwwwwwwwwww(@NotNull Intent intent) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(NativeProtocol.class)) {
            return null;
        }
        try {
            if (!Wwwwwwww(Wwwwwwwwww(intent))) {
                return null;
            }
            return intent.getBundleExtra("com.facebook.platform.protocol.BRIDGE_ARGS");
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, NativeProtocol.class);
            return null;
        }
    }

    @JvmStatic
    @NotNull
    public static final List<Intent> Wwwwwwwwwwwwwwwwwwww(@Nullable Context context, @NotNull String str, @NotNull Collection<String> collection, @NotNull String str2, boolean z, boolean z2, @NotNull DefaultAudience defaultAudience, @NotNull String str3, @NotNull String str4, boolean z3, @Nullable String str5, boolean z4, boolean z5, boolean z6, @Nullable String str6, @Nullable String str7, @Nullable String str8) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(NativeProtocol.class)) {
            return null;
        }
        try {
            ArrayList arrayList = new ArrayList();
            for (NativeAppInfo nativeAppInfo : f6782Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                Intent Wwwwwwwwwwwwwwwwwwwwwwww2 = INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwww(nativeAppInfo, str, collection, str2, z2, defaultAudience, str3, str4, z3, str5, z4, LoginTargetApp.FACEBOOK, z5, z6, str6, str7, str8);
                if (Wwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                    arrayList.add(Wwwwwwwwwwwwwwwwwwwwwwww2);
                }
            }
            return arrayList;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, NativeProtocol.class);
            return null;
        }
    }

    @JvmStatic
    @Nullable
    public static final Intent Wwwwwwwwwwwwwwwwwwwww(@NotNull Intent intent, @Nullable Bundle bundle, @Nullable FacebookException facebookException) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(NativeProtocol.class)) {
            return null;
        }
        try {
            UUID Wwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwww(intent);
            if (Wwwwwwwwwwwwwwwww2 == null) {
                return null;
            }
            Intent intent2 = new Intent();
            intent2.putExtra("com.facebook.platform.protocol.PROTOCOL_VERSION", Wwwwwwwwww(intent));
            Bundle bundle2 = new Bundle();
            bundle2.putString("action_id", Wwwwwwwwwwwwwwwww2.toString());
            if (facebookException != null) {
                bundle2.putBundle("error", Wwwwwwwwwwwwwwwwwwwwwwwwww(facebookException));
            }
            intent2.putExtra("com.facebook.platform.protocol.BRIDGE_ARGS", bundle2);
            if (bundle != null) {
                intent2.putExtra("com.facebook.platform.protocol.RESULT_ARGS", bundle);
            }
            return intent2;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, NativeProtocol.class);
            return null;
        }
    }

    @JvmStatic
    @Nullable
    public static final Intent Wwwwwwwwwwwwwwwwwwwwww(@NotNull Context context) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(NativeProtocol.class)) {
            return null;
        }
        try {
            for (NativeAppInfo nativeAppInfo : f6782Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                Intent Www2 = Www(context, new Intent("com.facebook.platform.PLATFORM_SERVICE").setPackage(nativeAppInfo.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()).addCategory("android.intent.category.DEFAULT"), nativeAppInfo);
                if (Www2 != null) {
                    return Www2;
                }
            }
            return null;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, NativeProtocol.class);
            return null;
        }
    }

    @JvmStatic
    @Nullable
    public static final Intent Wwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context, @Nullable String str, @Nullable String str2, @Nullable ProtocolVersionQueryResult protocolVersionQueryResult, @Nullable Bundle bundle) {
        Intent Wwww2;
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(NativeProtocol.class) || protocolVersionQueryResult == null) {
            return null;
        }
        try {
            NativeAppInfo Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = protocolVersionQueryResult.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null || (Wwww2 = Wwww(context, new Intent().setAction("com.facebook.platform.PLATFORM_ACTIVITY").setPackage(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()).addCategory("android.intent.category.DEFAULT"), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2)) == null) {
                return null;
            }
            Wwwwwww(Wwww2, str, str2, protocolVersionQueryResult.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), bundle);
            return Wwww2;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, NativeProtocol.class);
            return null;
        }
    }

    @JvmStatic
    @Nullable
    public static final Intent Wwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context, @NotNull String str, @NotNull Collection<String> collection, @NotNull String str2, boolean z, boolean z2, @NotNull DefaultAudience defaultAudience, @NotNull String str3, @NotNull String str4, @Nullable String str5, boolean z3, boolean z4, boolean z5) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(NativeProtocol.class)) {
            return null;
        }
        try {
            InstagramAppInfo instagramAppInfo = new InstagramAppInfo();
            return Wwww(context, INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwww(instagramAppInfo, str, collection, str2, z2, defaultAudience, str3, str4, false, str5, z3, LoginTargetApp.INSTAGRAM, z4, z5, "", null, null), instagramAppInfo);
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, NativeProtocol.class);
            return null;
        }
    }

    @JvmStatic
    @Nullable
    public static final Bundle Wwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable FacebookException facebookException) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(NativeProtocol.class) || facebookException == null) {
            return null;
        }
        try {
            Bundle bundle = new Bundle();
            bundle.putString("error_description", facebookException.toString());
            if (facebookException instanceof FacebookOperationCanceledException) {
                bundle.putString("error_type", "UserCanceled");
                return bundle;
            }
            return bundle;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, NativeProtocol.class);
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0046, code lost:
        if ((r3 % 2) != 0) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x004c, code lost:
        return java.lang.Math.min(r4, r9);
     */
    @kotlin.jvm.JvmStatic
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final int Wwwwwwwwwwwwwwwwwwwwwwwwwww(@org.jetbrains.annotations.Nullable java.util.TreeSet<java.lang.Integer> r8, int r9, @org.jetbrains.annotations.NotNull int[] r10) {
        /*
            java.lang.Class<com.facebook.internal.NativeProtocol> r0 = com.facebook.internal.NativeProtocol.class
            boolean r1 = com.facebook.internal.instrument.crashshield.CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r0)
            r2 = 0
            if (r1 == 0) goto La
            return r2
        La:
            r1 = -1
            if (r8 != 0) goto Le
            return r1
        Le:
            int r3 = r10.length     // Catch: java.lang.Throwable -> L37
            int r3 = r3 + (-1)
            java.util.Iterator r8 = r8.descendingIterator()     // Catch: java.lang.Throwable -> L37
            r4 = r1
        L16:
            boolean r5 = r8.hasNext()     // Catch: java.lang.Throwable -> L37
            if (r5 == 0) goto L4d
            java.lang.Object r5 = r8.next()     // Catch: java.lang.Throwable -> L37
            java.lang.Integer r5 = (java.lang.Integer) r5     // Catch: java.lang.Throwable -> L37
            int r6 = r5.intValue()     // Catch: java.lang.Throwable -> L37
            int r4 = java.lang.Math.max(r4, r6)     // Catch: java.lang.Throwable -> L37
        L2a:
            if (r3 < 0) goto L39
            r6 = r10[r3]     // Catch: java.lang.Throwable -> L37
            int r7 = r5.intValue()     // Catch: java.lang.Throwable -> L37
            if (r6 <= r7) goto L39
            int r3 = r3 + (-1)
            goto L2a
        L37:
            r8 = move-exception
            goto L4e
        L39:
            if (r3 >= 0) goto L3c
            return r1
        L3c:
            r6 = r10[r3]     // Catch: java.lang.Throwable -> L37
            int r5 = r5.intValue()     // Catch: java.lang.Throwable -> L37
            if (r6 != r5) goto L16
            int r3 = r3 % 2
            if (r3 != 0) goto L4d
            int r8 = java.lang.Math.min(r4, r9)     // Catch: java.lang.Throwable -> L37
            return r8
        L4d:
            return r1
        L4e:
            com.facebook.internal.instrument.crashshield.CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r8, r0)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.NativeProtocol.Wwwwwwwwwwwwwwwwwwwwwwwwwww(java.util.TreeSet, int, int[]):int");
    }

    public static final /* synthetic */ String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(NativeProtocol.class)) {
            return null;
        }
        try {
            return f6783Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, NativeProtocol.class);
            return null;
        }
    }

    public static final /* synthetic */ TreeSet Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(NativeProtocol nativeProtocol, NativeAppInfo nativeAppInfo) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(NativeProtocol.class)) {
            return null;
        }
        try {
            return nativeProtocol.Wwwwwwwwwwwwwwwwwww(nativeAppInfo);
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, NativeProtocol.class);
            return null;
        }
    }

    public final ProtocolVersionQueryResult Wwwwwwwwwwwwww(List<? extends NativeAppInfo> list, int[] iArr) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return null;
        }
        try {
            Wwwwww();
            if (list == null) {
                return ProtocolVersionQueryResult.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            }
            for (NativeAppInfo nativeAppInfo : list) {
                int Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwww(nativeAppInfo.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), Wwwwwwwwwwww(), iArr);
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwww2 != -1) {
                    return ProtocolVersionQueryResult.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(nativeAppInfo, Wwwwwwwwwwwwwwwwwwwwwwwwwww2);
                }
            }
            return ProtocolVersionQueryResult.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            return null;
        }
    }

    public final TreeSet<Integer> Wwwwwwwwwwwwwwwwwww(NativeAppInfo nativeAppInfo) {
        Throwable th;
        Cursor cursor;
        ProviderInfo providerInfo;
        Cursor cursor2;
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return null;
        }
        try {
            TreeSet<Integer> treeSet = new TreeSet<>();
            ContentResolver contentResolver = FacebookSdk.Wwwwwwwwwwwwwwwwwwwwwww().getContentResolver();
            String[] strArr = {"version"};
            Uri Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwww(nativeAppInfo);
            try {
                try {
                    providerInfo = FacebookSdk.Wwwwwwwwwwwwwwwwwwwwwww().getPackageManager().resolveContentProvider(Intrinsics.stringPlus(nativeAppInfo.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), ".provider.PlatformProvider"), 0);
                } catch (RuntimeException unused) {
                    providerInfo = null;
                }
                if (providerInfo != null) {
                    try {
                        cursor2 = contentResolver.query(Wwwwwwwwwwwwwwwwwwwwwwwwwwww2, strArr, null, null, null);
                    } catch (IllegalArgumentException | NullPointerException | SecurityException unused2) {
                        cursor2 = null;
                    }
                    if (cursor2 != null) {
                        while (cursor2.moveToNext()) {
                            try {
                                treeSet.add(Integer.valueOf(cursor2.getInt(cursor2.getColumnIndex("version"))));
                            } catch (Throwable th2) {
                                cursor = cursor2;
                                th = th2;
                                if (cursor != null) {
                                    cursor.close();
                                }
                                throw th;
                            }
                        }
                    }
                } else {
                    cursor2 = null;
                }
                if (cursor2 != null) {
                    cursor2.close();
                }
                return treeSet;
            } catch (Throwable th3) {
                th = th3;
                cursor = null;
            }
        } catch (Throwable th4) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th4, this);
            return null;
        }
    }

    public final Intent Wwwwwwwwwwwwwwwwwwwwwwww(NativeAppInfo nativeAppInfo, String str, Collection<String> collection, String str2, boolean z, DefaultAudience defaultAudience, String str3, String str4, boolean z2, String str5, boolean z3, LoginTargetApp loginTargetApp, boolean z4, boolean z5, String str6, String str7, String str8) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return null;
        }
        try {
            String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = nativeAppInfo.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
                return null;
            }
            Intent putExtra = new Intent().setClassName(nativeAppInfo.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2).putExtra("client_id", str);
            putExtra.putExtra("facebook_sdk_version", FacebookSdk.Wwwwww());
            if (!Utility.Illllllllllllllllllllllllllll(collection)) {
                putExtra.putExtra("scope", TextUtils.join(",", collection));
            }
            if (!Utility.Kk(str2)) {
                putExtra.putExtra("e2e", str2);
            }
            putExtra.putExtra("state", str3);
            putExtra.putExtra("response_type", nativeAppInfo.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            putExtra.putExtra("nonce", str6);
            putExtra.putExtra("return_scopes", "true");
            if (z) {
                putExtra.putExtra("default_audience", defaultAudience.getNativeProtocolAudience());
            }
            putExtra.putExtra("legacy_override", FacebookSdk.Wwwwwwwwwww());
            putExtra.putExtra("auth_type", str4);
            if (z2) {
                putExtra.putExtra("fail_on_logged_out", true);
            }
            putExtra.putExtra("messenger_page_id", str5);
            putExtra.putExtra("reset_messenger_state", z3);
            if (z4) {
                putExtra.putExtra("fx_app", loginTargetApp.toString());
            }
            if (z5) {
                putExtra.putExtra("skip_dedupe", true);
            }
            return putExtra;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            return null;
        }
    }

    public final Uri Wwwwwwwwwwwwwwwwwwwwwwwwwwww(NativeAppInfo nativeAppInfo) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return null;
        }
        try {
            return Uri.parse("content://" + nativeAppInfo.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() + ".provider.PlatformProvider/versions");
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            return null;
        }
    }

    public final List<NativeAppInfo> Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return null;
        }
        try {
            return CollectionsKt.arrayListOf(new KatanaAppInfo(), new WakizashiAppInfo());
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            return null;
        }
    }

    public final List<NativeAppInfo> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return null;
        }
        try {
            ArrayList arrayListOf = CollectionsKt.arrayListOf(new EffectTestAppInfo());
            arrayListOf.addAll(Wwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            return arrayListOf;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            return null;
        }
    }

    public final Map<String, List<NativeAppInfo>> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return null;
        }
        try {
            HashMap hashMap = new HashMap();
            ArrayList arrayList = new ArrayList();
            arrayList.add(new MessengerAppInfo());
            List<NativeAppInfo> list = f6782Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            hashMap.put("com.facebook.platform.action.request.OGACTIONPUBLISH_DIALOG", list);
            hashMap.put("com.facebook.platform.action.request.FEED_DIALOG", list);
            hashMap.put("com.facebook.platform.action.request.LIKE_DIALOG", list);
            hashMap.put("com.facebook.platform.action.request.APPINVITES_DIALOG", list);
            hashMap.put("com.facebook.platform.action.request.MESSAGE_DIALOG", arrayList);
            hashMap.put("com.facebook.platform.action.request.OGMESSAGEPUBLISH_DIALOG", arrayList);
            hashMap.put("com.facebook.platform.action.request.CAMERA_EFFECT", f6781Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            hashMap.put("com.facebook.platform.action.request.SHARE_STORY", list);
            return hashMap;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            return null;
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\b&\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H&¢\u0006\u0004\b\u0005\u0010\u0006J\u0011\u0010\u0007\u001a\u0004\u0018\u00010\u0004H&¢\u0006\u0004\b\u0007\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\b\u0010\u0006J\u000f\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\n\u0010\u0003J\u0015\u0010\r\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000b¢\u0006\u0004\b\r\u0010\u000eJ\u0015\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0011\u0010\u0012R\u001e\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010\u0013¨\u0006\u0015"}, d2 = {"Lcom/facebook/internal/NativeProtocol$NativeAppInfo;", "", "<init>", "()V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/TreeSet;", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/util/TreeSet;", "", "force", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Z)V", "Ljava/util/TreeSet;", "availableVersions", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static abstract class NativeAppInfo {
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public TreeSet<Integer> f6784Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        @NotNull
        public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return "id_token,token,signed_request,graph_domain";
        }

        @NotNull
        public abstract String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();

        @Nullable
        public abstract String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();

        /* JADX WARN: Code restructure failed: missing block: B:8:0x0016, code lost:
            if (kotlin.jvm.internal.Intrinsics.areEqual(r0, java.lang.Boolean.FALSE) == false) goto L11;
         */
        @org.jetbrains.annotations.Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.util.TreeSet<java.lang.Integer> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            /*
                r2 = this;
                java.util.TreeSet<java.lang.Integer> r0 = r2.f6784Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                if (r0 == 0) goto L18
                if (r0 != 0) goto L8
                r0 = 0
                goto L10
            L8:
                boolean r0 = r0.isEmpty()
                java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
            L10:
                java.lang.Boolean r1 = java.lang.Boolean.FALSE
                boolean r0 = kotlin.jvm.internal.Intrinsics.areEqual(r0, r1)
                if (r0 != 0) goto L1c
            L18:
                r0 = 0
                r2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r0)
            L1c:
                java.util.TreeSet<java.lang.Integer> r0 = r2.f6784Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.NativeProtocol.NativeAppInfo.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww():java.util.TreeSet");
        }

        public final synchronized void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z) {
            Boolean valueOf;
            TreeSet<Integer> treeSet;
            if (!z) {
                try {
                    TreeSet<Integer> treeSet2 = this.f6784Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                    if (treeSet2 != null) {
                        if (treeSet2 == null) {
                            valueOf = null;
                        } else {
                            valueOf = Boolean.valueOf(treeSet2.isEmpty());
                        }
                        if (!Intrinsics.areEqual(valueOf, Boolean.FALSE)) {
                        }
                        treeSet = this.f6784Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                        if (treeSet != null || treeSet.isEmpty()) {
                            Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            this.f6784Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = NativeProtocol.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(NativeProtocol.INSTANCE, this);
            treeSet = this.f6784Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (treeSet != null) {
            }
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }

        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        }
    }
}
