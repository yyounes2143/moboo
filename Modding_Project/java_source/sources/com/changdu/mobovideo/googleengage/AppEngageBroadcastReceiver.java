package com.changdu.mobovideo.googleengage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import androidx.core.content.ContextCompat;
import com.google.android.engage.service.BroadcastReceiverPermissions;
import com.google.android.engage.service.Intents;
import com.sensorsdata.analytics.android.sdk.aop.push.PushAutoTrackHelper;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \n2\u00020\u0001:\u0001\nB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0016¨\u0006\u000b"}, d2 = {"Lcom/changdu/mobovideo/googleengage/AppEngageBroadcastReceiver;", "Landroid/content/BroadcastReceiver;", "<init>", "()V", "onReceive", "", "context", "Landroid/content/Context;", "intent", "Landroid/content/Intent;", "Companion", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class AppEngageBroadcastReceiver extends BroadcastReceiver {
    @NotNull
    public static final Companion Companion = new Companion(null);

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0007\u0010\bR\u0014\u0010\n\u001a\u00020\t8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/changdu/mobovideo/googleengage/AppEngageBroadcastReceiver$Companion;", "", "<init>", "()V", "Landroid/content/Context;", "context", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;)V", "", "TAG", "Ljava/lang/String;", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Context context) {
            if (context != null) {
                try {
                    IntentFilter intentFilter = new IntentFilter();
                    intentFilter.addAction(Intents.ACTION_PUBLISH_RECOMMENDATION);
                    intentFilter.addAction(Intents.ACTION_PUBLISH_FEATURED);
                    intentFilter.addAction(Intents.ACTION_PUBLISH_CONTINUATION);
                    ContextCompat.registerReceiver(context, new AppEngageBroadcastReceiver(), intentFilter, BroadcastReceiverPermissions.BROADCAST_REQUEST_DATA_PUBLISH_PERMISSION, null, 2);
                } catch (Throwable unused) {
                }
            }
        }

        public Companion() {
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(@NotNull Context context, @NotNull Intent intent) {
        PushAutoTrackHelper.onBroadcastReceiver(this, context, intent);
        intent.getAction();
        String action = intent.getAction();
        if (action != null) {
            int hashCode = action.hashCode();
            if (hashCode != 104124347) {
                if (hashCode != 791159481) {
                    if (hashCode == 922495408 && action.equals(Intents.ACTION_PUBLISH_FEATURED)) {
                        GoogleEngageUpdaterWorker.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, "cpList");
                        return;
                    }
                } else if (action.equals(Intents.ACTION_PUBLISH_CONTINUATION)) {
                    GoogleEngageUpdaterWorker.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, "continueWatchingList");
                    return;
                }
            } else if (action.equals(Intents.ACTION_PUBLISH_RECOMMENDATION)) {
                GoogleEngageUpdaterWorker.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, "recoList");
                return;
            }
        }
        intent.getAction();
    }
}
