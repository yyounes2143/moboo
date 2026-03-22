package dev.fluttercommunity.plus.share;

import android.content.Context;
import android.content.Intent;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.PluginRegistry;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u0000 \"2\u00020\u0001:\u0001\"B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0015\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\nJ\r\u0010\u000b\u001a\u00020\b¢\u0006\u0004\b\u000b\u0010\fJ\r\u0010\r\u001a\u00020\b¢\u0006\u0004\b\r\u0010\fJ)\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000e2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0018\u001a\u00020\b2\u0006\u0010\u0017\u001a\u00020\u0016H\u0002¢\u0006\u0004\b\u0018\u0010\u0019R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0016\u0010!\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010 ¨\u0006#"}, d2 = {"Ldev/fluttercommunity/plus/share/ShareSuccessManager;", "Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "Lio/flutter/plugin/common/MethodChannel$Result;", "callback", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lio/flutter/plugin/common/MethodChannel$Result;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "", "requestCode", "resultCode", "Landroid/content/Intent;", "data", "", "onActivityResult", "(IILandroid/content/Intent;)Z", "", "result", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)V", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Landroid/content/Context;", "Wwwwwwwwwwwwwwwwwwwwwwww", "Lio/flutter/plugin/common/MethodChannel$Result;", "Ljava/util/concurrent/atomic/AtomicBoolean;", "Wwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/concurrent/atomic/AtomicBoolean;", "isCalledBack", "Companion", "share_plus_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes6.dex */
public final class ShareSuccessManager implements PluginRegistry.ActivityResultListener {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public AtomicBoolean f11152Wwwwwwwwwwwwwwwwwwwwwww = new AtomicBoolean(true);
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public MethodChannel.Result f11153Wwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Context f11154Wwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Ldev/fluttercommunity/plus/share/ShareSuccessManager$Companion;", "", "<init>", "()V", "ACTIVITY_CODE", "", "RESULT_UNAVAILABLE", "", "share_plus_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    public ShareSuccessManager(@NotNull Context context) {
        this.f11154Wwwwwwwwwwwwwwwwwwwwwwwww = context;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("dev.fluttercommunity.plus/share/unavailable");
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull MethodChannel.Result result) {
        if (this.f11152Wwwwwwwwwwwwwwwwwwwwwww.compareAndSet(true, false)) {
            SharePlusPendingIntent.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("");
            this.f11152Wwwwwwwwwwwwwwwwwwwwwww.set(false);
            this.f11153Wwwwwwwwwwwwwwwwwwwwwwww = result;
            return;
        }
        MethodChannel.Result result2 = this.f11153Wwwwwwwwwwwwwwwwwwwwwwww;
        if (result2 != null) {
            result2.success("dev.fluttercommunity.plus/share/unavailable");
        }
        SharePlusPendingIntent.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("");
        this.f11152Wwwwwwwwwwwwwwwwwwwwwww.set(false);
        this.f11153Wwwwwwwwwwwwwwwwwwwwwwww = result;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        MethodChannel.Result result;
        if (this.f11152Wwwwwwwwwwwwwwwwwwwwwww.compareAndSet(false, true) && (result = this.f11153Wwwwwwwwwwwwwwwwwwwwwwww) != null) {
            result.success(str);
            this.f11153Wwwwwwwwwwwwwwwwwwwwwwww = null;
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        this.f11152Wwwwwwwwwwwwwwwwwwwwwww.set(true);
        this.f11153Wwwwwwwwwwwwwwwwwwwwwwww = null;
    }

    @Override // io.flutter.plugin.common.PluginRegistry.ActivityResultListener
    public boolean onActivityResult(int i, int i2, @Nullable Intent intent) {
        if (i == 22643) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(SharePlusPendingIntent.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            return true;
        }
        return false;
    }
}
