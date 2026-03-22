package com.facebook.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.facebook.appevents.InternalAppEventsLogger;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.sensorsdata.analytics.android.sdk.aop.push.PushAutoTrackHelper;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\b\u0007\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\r\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ#\u0010\u000b\u001a\u00020\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\r\u0010\bJ\u000f\u0010\u000e\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u000e\u0010\bR\u0014\u0010\u0011\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010¨\u0006\u0013"}, d2 = {"Lcom/facebook/internal/BoltsMeasurementEventListener;", "Landroid/content/BroadcastReceiver;", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "", "finalize", "()V", "Landroid/content/Intent;", "intent", "onReceive", "(Landroid/content/Context;Landroid/content/Intent;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Landroid/content/Context;", "applicationContext", "Companion", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class BoltsMeasurementEventListener extends BroadcastReceiver {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final String f6630Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = "com.parse.bolts.measurement_event";
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static BoltsMeasurementEventListener f6631Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Context f6632Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0007\u0010\bR\u0014\u0010\n\u001a\u00020\t8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0014\u0010\f\u001a\u00020\t8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\f\u0010\u000bR\u0014\u0010\r\u001a\u00020\t8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\r\u0010\u000bR\u0018\u0010\u000e\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Lcom/facebook/internal/BoltsMeasurementEventListener$Companion;", "", "<init>", "()V", "Landroid/content/Context;", "context", "Lcom/facebook/internal/BoltsMeasurementEventListener;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;)Lcom/facebook/internal/BoltsMeasurementEventListener;", "", "BOLTS_MEASUREMENT_EVENT_PREFIX", "Ljava/lang/String;", "MEASUREMENT_EVENT_ARGS_KEY", "MEASUREMENT_EVENT_NAME_KEY", "singleton", "Lcom/facebook/internal/BoltsMeasurementEventListener;", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @Nullable
        public final BoltsMeasurementEventListener Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context) {
            if (BoltsMeasurementEventListener.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() != null) {
                return BoltsMeasurementEventListener.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            }
            BoltsMeasurementEventListener boltsMeasurementEventListener = new BoltsMeasurementEventListener(context, null);
            BoltsMeasurementEventListener.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(boltsMeasurementEventListener);
            BoltsMeasurementEventListener.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(boltsMeasurementEventListener);
            return BoltsMeasurementEventListener.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }

        public Companion() {
        }
    }

    public /* synthetic */ BoltsMeasurementEventListener(Context context, DefaultConstructorMarker defaultConstructorMarker) {
        this(context);
    }

    public static final /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(BoltsMeasurementEventListener boltsMeasurementEventListener) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(BoltsMeasurementEventListener.class)) {
            return;
        }
        try {
            f6631Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = boltsMeasurementEventListener;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, BoltsMeasurementEventListener.class);
        }
    }

    public static final /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(BoltsMeasurementEventListener boltsMeasurementEventListener) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(BoltsMeasurementEventListener.class)) {
            return;
        }
        try {
            boltsMeasurementEventListener.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, BoltsMeasurementEventListener.class);
        }
    }

    public static final /* synthetic */ BoltsMeasurementEventListener Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(BoltsMeasurementEventListener.class)) {
            return null;
        }
        try {
            return f6631Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, BoltsMeasurementEventListener.class);
            return null;
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return;
        }
        try {
            LocalBroadcastManager.getInstance(this.f6632Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww).registerReceiver(this, new IntentFilter(f6630Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww));
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return;
        }
        try {
            LocalBroadcastManager.getInstance(this.f6632Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww).unregisterReceiver(this);
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
        }
    }

    public final void finalize() throws Throwable {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return;
        }
        try {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(@Nullable Context context, @Nullable Intent intent) {
        String stringExtra;
        Bundle bundleExtra;
        PushAutoTrackHelper.onBroadcastReceiver(this, context, intent);
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return;
        }
        try {
            InternalAppEventsLogger internalAppEventsLogger = new InternalAppEventsLogger(context);
            Set<String> set = null;
            if (intent == null) {
                stringExtra = null;
            } else {
                stringExtra = intent.getStringExtra(DbParams.KEY_CHANNEL_EVENT_NAME);
            }
            String stringPlus = Intrinsics.stringPlus("bf_", stringExtra);
            if (intent == null) {
                bundleExtra = null;
            } else {
                bundleExtra = intent.getBundleExtra("event_args");
            }
            Bundle bundle = new Bundle();
            if (bundleExtra != null) {
                set = bundleExtra.keySet();
            }
            if (set != null) {
                for (String str : set) {
                    bundle.putString(new Regex("[ -]*$").replace(new Regex("^[ -]*").replace(new Regex("[^0-9a-zA-Z _-]").replace(str, "-"), ""), ""), (String) bundleExtra.get(str));
                }
            }
            internalAppEventsLogger.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(stringPlus, bundle);
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
        }
    }

    public BoltsMeasurementEventListener(Context context) {
        this.f6632Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = context.getApplicationContext();
    }
}
