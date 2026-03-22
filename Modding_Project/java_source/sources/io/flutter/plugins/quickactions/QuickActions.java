package io.flutter.plugins.quickactions;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.ChecksSdkIntAtLeast;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.pm.ShortcutInfoCompat;
import androidx.core.content.pm.ShortcutManagerCompat;
import androidx.core.graphics.drawable.IconCompat;
import androidx.media3.common.C;
import io.flutter.plugins.quickactions.Messages;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public final class QuickActions implements Messages.AndroidQuickActionsApi {
    static final String EXTRA_ACTION = "some unique action key";
    private Activity activity;
    private final Context context;

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static class UiThreadExecutor implements Executor {
        private final Handler handler = new Handler(Looper.getMainLooper());

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            this.handler.post(runnable);
        }
    }

    public QuickActions(Context context) {
        this.context = context;
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(QuickActions quickActions, List list, Executor executor, final Messages.VoidResult voidResult) {
        final boolean z;
        quickActions.getClass();
        try {
            ShortcutManagerCompat.setDynamicShortcuts(quickActions.context, list);
            z = true;
        } catch (Exception unused) {
            z = false;
        }
        executor.execute(new Runnable() { // from class: io.flutter.plugins.quickactions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                QuickActions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(z, voidResult);
            }
        });
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z, Messages.VoidResult voidResult) {
        if (z) {
            voidResult.success();
        } else {
            voidResult.error(new Messages.FlutterError("quick_action_setshortcutitems_failure", "Exception thrown when setting dynamic shortcuts", null));
        }
    }

    private Intent getIntentToOpenMainActivity(String str) {
        return this.context.getPackageManager().getLaunchIntentForPackage(this.context.getPackageName()).setAction("android.intent.action.RUN").putExtra(EXTRA_ACTION, str).addFlags(268435456).addFlags(C.BUFFER_FLAG_LAST_SAMPLE);
    }

    private int loadResourceId(Context context, String str) {
        if (str == null) {
            return 0;
        }
        String packageName = context.getPackageName();
        Resources resources = context.getResources();
        int identifier = resources.getIdentifier(str, "drawable", packageName);
        if (identifier == 0) {
            return resources.getIdentifier(str, "mipmap", packageName);
        }
        return identifier;
    }

    @SuppressLint({"UseRequiresApi"})
    @TargetApi(25)
    private List<ShortcutInfoCompat> shortcutItemMessageToShortcutInfo(@NonNull List<Messages.ShortcutItemMessage> list) {
        ArrayList arrayList = new ArrayList();
        for (Messages.ShortcutItemMessage shortcutItemMessage : list) {
            String icon = shortcutItemMessage.getIcon();
            String type = shortcutItemMessage.getType();
            String localizedTitle = shortcutItemMessage.getLocalizedTitle();
            ShortcutInfoCompat.Builder builder = new ShortcutInfoCompat.Builder(this.context, type);
            int loadResourceId = loadResourceId(this.context, icon);
            Intent intentToOpenMainActivity = getIntentToOpenMainActivity(type);
            if (loadResourceId > 0) {
                builder.setIcon(IconCompat.createWithResource(this.context, loadResourceId));
            }
            arrayList.add(builder.setLongLabel(localizedTitle).setShortLabel(localizedTitle).setIntent(intentToOpenMainActivity).build());
        }
        return arrayList;
    }

    @Override // io.flutter.plugins.quickactions.Messages.AndroidQuickActionsApi
    public void clearShortcutItems() {
        if (!isVersionAllowed()) {
            return;
        }
        ShortcutManagerCompat.removeAllDynamicShortcuts(this.context);
    }

    public Activity getActivity() {
        return this.activity;
    }

    @Override // io.flutter.plugins.quickactions.Messages.AndroidQuickActionsApi
    @Nullable
    public String getLaunchAction() {
        if (!isVersionAllowed()) {
            return null;
        }
        Activity activity = this.activity;
        if (activity != null) {
            Intent intent = activity.getIntent();
            String stringExtra = intent.getStringExtra(EXTRA_ACTION);
            if (stringExtra != null && !stringExtra.isEmpty()) {
                ShortcutManagerCompat.reportShortcutUsed(this.context, stringExtra);
                intent.removeExtra(EXTRA_ACTION);
            }
            return stringExtra;
        }
        throw new Messages.FlutterError("quick_action_getlaunchaction_no_activity", "There is no activity available when launching action", null);
    }

    @ChecksSdkIntAtLeast(api = 25)
    public boolean isVersionAllowed() {
        if (Build.VERSION.SDK_INT >= 25) {
            return true;
        }
        return false;
    }

    public void setActivity(Activity activity) {
        this.activity = activity;
    }

    @Override // io.flutter.plugins.quickactions.Messages.AndroidQuickActionsApi
    public void setShortcutItems(@NonNull List<Messages.ShortcutItemMessage> list, @NonNull final Messages.VoidResult voidResult) {
        if (!isVersionAllowed()) {
            voidResult.success();
            return;
        }
        final List<ShortcutInfoCompat> shortcutItemMessageToShortcutInfo = shortcutItemMessageToShortcutInfo(list);
        final UiThreadExecutor uiThreadExecutor = new UiThreadExecutor();
        new ThreadPoolExecutor(0, 1, 1L, TimeUnit.SECONDS, new LinkedBlockingQueue()).execute(new Runnable() { // from class: io.flutter.plugins.quickactions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                QuickActions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(QuickActions.this, shortcutItemMessageToShortcutInfo, uiThreadExecutor, voidResult);
            }
        });
    }
}
