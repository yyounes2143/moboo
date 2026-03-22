package com.facebook;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Bundle;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.facebook.internal.CustomTab;
import com.facebook.internal.InstagramCustomTab;
import com.facebook.internal.NativeProtocol;
import com.facebook.internal.Utility;
import com.facebook.login.LoginTargetApp;
import com.sensorsdata.analytics.android.sdk.aop.push.PushAutoTrackHelper;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \u001b2\u00020\u0001:\u0001\u001bB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH\u0014¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\r\u0010\u0003J!\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u000e2\b\u0010\u0010\u001a\u0004\u0018\u00010\tH\u0002¢\u0006\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0016\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019¨\u0006\u001c"}, d2 = {"Lcom/facebook/CustomTabMainActivity;", "Landroid/app/Activity;", "<init>", "()V", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/content/Intent;", "intent", "onNewIntent", "(Landroid/content/Intent;)V", "onResume", "", "resultCode", "resultIntent", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(ILandroid/content/Intent;)V", "", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Z", "shouldCloseCustomTab", "Landroid/content/BroadcastReceiver;", "Wwwwwwwwwwwwwwwwwwwwwwww", "Landroid/content/BroadcastReceiver;", "redirectReceiver", "Companion", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class CustomTabMainActivity extends Activity {
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public BroadcastReceiver f5959Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f5960Wwwwwwwwwwwwwwwwwwwwwwwww = true;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @JvmField
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final String f5958Wwwwwwwwwwwwwwwwwwwwwww = Intrinsics.stringPlus(CustomTabMainActivity.class.getSimpleName(), ".extra_action");
    @JvmField
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final String f5957Wwwwwwwwwwwwwwwwwwwwww = Intrinsics.stringPlus(CustomTabMainActivity.class.getSimpleName(), ".extra_params");
    @JvmField
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final String f5956Wwwwwwwwwwwwwwwwwwwww = Intrinsics.stringPlus(CustomTabMainActivity.class.getSimpleName(), ".extra_chromePackage");
    @JvmField
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final String f5955Wwwwwwwwwwwwwwwwwwww = Intrinsics.stringPlus(CustomTabMainActivity.class.getSimpleName(), ".extra_url");
    @JvmField
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final String f5954Wwwwwwwwwwwwwwwwwww = Intrinsics.stringPlus(CustomTabMainActivity.class.getSimpleName(), ".extra_targetApp");
    @JvmField
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final String f5953Wwwwwwwwwwwwwwwwww = Intrinsics.stringPlus(CustomTabMainActivity.class.getSimpleName(), ".action_refresh");
    @JvmField
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final String f5952Wwwwwwwwwwwwwwwww = Intrinsics.stringPlus(CustomTabMainActivity.class.getSimpleName(), ".no_activity_exception");

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0014\u0010\t\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR\u0014\u0010\u000b\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\nR\u0014\u0010\f\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\f\u0010\nR\u0014\u0010\r\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\r\u0010\nR\u0014\u0010\u000e\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\nR\u0014\u0010\u000f\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\nR\u0014\u0010\u0010\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\n¨\u0006\u0011"}, d2 = {"Lcom/facebook/CustomTabMainActivity$Companion;", "", "<init>", "()V", "", "urlString", "Landroid/os/Bundle;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)Landroid/os/Bundle;", "EXTRA_ACTION", "Ljava/lang/String;", "EXTRA_CHROME_PACKAGE", "EXTRA_PARAMS", "EXTRA_TARGET_APP", "EXTRA_URL", "NO_ACTIVITY_EXCEPTION", "REFRESH_ACTION", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Bundle Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
            Uri parse = Uri.parse(str);
            Utility utility = Utility.INSTANCE;
            Bundle Illlllllllllllllll = Utility.Illlllllllllllllll(parse.getQuery());
            Illlllllllllllllll.putAll(Utility.Illlllllllllllllll(parse.getFragment()));
            return Illlllllllllllllll;
        }

        public Companion() {
        }
    }

    /* compiled from: Proguard */
    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[LoginTargetApp.valuesCustom().length];
            iArr[LoginTargetApp.INSTAGRAM.ordinal()] = 1;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, Intent intent) {
        Bundle bundle;
        BroadcastReceiver broadcastReceiver = this.f5959Wwwwwwwwwwwwwwwwwwwwwwww;
        if (broadcastReceiver != null) {
            LocalBroadcastManager.getInstance(this).unregisterReceiver(broadcastReceiver);
        }
        if (intent != null) {
            String stringExtra = intent.getStringExtra(f5955Wwwwwwwwwwwwwwwwwwww);
            if (stringExtra != null) {
                bundle = Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(stringExtra);
            } else {
                bundle = new Bundle();
            }
            NativeProtocol nativeProtocol = NativeProtocol.INSTANCE;
            Intent Wwwwwwwwwwwwwwwwwwwww2 = NativeProtocol.Wwwwwwwwwwwwwwwwwwwww(getIntent(), bundle, null);
            if (Wwwwwwwwwwwwwwwwwwwww2 != null) {
                intent = Wwwwwwwwwwwwwwwwwwwww2;
            }
            setResult(i, intent);
        } else {
            NativeProtocol nativeProtocol2 = NativeProtocol.INSTANCE;
            setResult(i, NativeProtocol.Wwwwwwwwwwwwwwwwwwwww(getIntent(), null, null));
        }
        finish();
    }

    @Override // android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        String stringExtra;
        CustomTab customTab;
        super.onCreate(bundle);
        String str = CustomTabActivity.f5949Wwwwwwwwwwwwwwwwwwwwwwww;
        if (Intrinsics.areEqual(str, getIntent().getAction())) {
            setResult(0);
            finish();
        } else if (bundle != null || (stringExtra = getIntent().getStringExtra(f5958Wwwwwwwwwwwwwwwwwwwwwww)) == null) {
        } else {
            Bundle bundleExtra = getIntent().getBundleExtra(f5957Wwwwwwwwwwwwwwwwwwwwww);
            String stringExtra2 = getIntent().getStringExtra(f5956Wwwwwwwwwwwwwwwwwwwww);
            if (WhenMappings.$EnumSwitchMapping$0[LoginTargetApp.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(getIntent().getStringExtra(f5954Wwwwwwwwwwwwwwwwwww)).ordinal()] == 1) {
                customTab = new InstagramCustomTab(stringExtra, bundleExtra);
            } else {
                customTab = new CustomTab(stringExtra, bundleExtra);
            }
            boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = customTab.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this, stringExtra2);
            this.f5960Wwwwwwwwwwwwwwwwwwwwwwwww = false;
            if (!Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2) {
                setResult(0, getIntent().putExtra(f5952Wwwwwwwwwwwwwwwww, true));
                finish();
                return;
            }
            BroadcastReceiver broadcastReceiver = new BroadcastReceiver() { // from class: com.facebook.CustomTabMainActivity$onCreate$redirectReceiver$1
                @Override // android.content.BroadcastReceiver
                public void onReceive(@NotNull Context context, @NotNull Intent intent) {
                    PushAutoTrackHelper.onBroadcastReceiver(this, context, intent);
                    Intent intent2 = new Intent(CustomTabMainActivity.this, CustomTabMainActivity.class);
                    intent2.setAction(CustomTabMainActivity.f5953Wwwwwwwwwwwwwwwwww);
                    String str2 = CustomTabMainActivity.f5955Wwwwwwwwwwwwwwwwwwww;
                    intent2.putExtra(str2, intent.getStringExtra(str2));
                    intent2.addFlags(603979776);
                    CustomTabMainActivity.this.startActivity(intent2);
                }
            };
            this.f5959Wwwwwwwwwwwwwwwwwwwwwwww = broadcastReceiver;
            LocalBroadcastManager.getInstance(this).registerReceiver(broadcastReceiver, new IntentFilter(str));
        }
    }

    @Override // android.app.Activity
    public void onNewIntent(@NotNull Intent intent) {
        PushAutoTrackHelper.onNewIntent(this, intent);
        super.onNewIntent(intent);
        if (Intrinsics.areEqual(f5953Wwwwwwwwwwwwwwwwww, intent.getAction())) {
            LocalBroadcastManager.getInstance(this).sendBroadcast(new Intent(CustomTabActivity.f5948Wwwwwwwwwwwwwwwwwwwwwww));
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(-1, intent);
        } else if (Intrinsics.areEqual(CustomTabActivity.f5949Wwwwwwwwwwwwwwwwwwwwwwww, intent.getAction())) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(-1, intent);
        }
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        if (this.f5960Wwwwwwwwwwwwwwwwwwwwwwwww) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(0, null);
        }
        this.f5960Wwwwwwwwwwwwwwwwwwwwwwwww = true;
    }
}
